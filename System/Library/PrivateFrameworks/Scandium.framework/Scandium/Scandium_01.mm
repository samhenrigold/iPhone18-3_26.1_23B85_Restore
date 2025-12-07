void std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](uint64_t *a1, int *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void std::vector<BOOL>::push_back(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,16ul>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[10],std::string&,0>(uint64_t a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v5;
  }

  *(a1 + 64) = 5;
  return a1;
}

void sub_264808868(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[11],std::vector<float>&,0>(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[4] = 0;
  v5[5] = 0;
  v5 += 4;
  v5[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v5, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 56) = 3;
  *(a1 + 64) = 6;
  return a1;
}

void sub_2648088D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[13],std::vector<float>&,0>(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[4] = 0;
  v5[5] = 0;
  v5 += 4;
  v5[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v5, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 56) = 3;
  *(a1 + 64) = 6;
  return a1;
}

void sub_264808948(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[15],std::vector<BOOL>&,0>(uint64_t a1, char *a2, void *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::vector<BOOL>::vector(v5 + 4, a3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 6;
  return a1;
}

void sub_2648089A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[7],std::string&,0>(uint64_t a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v5;
  }

  *(a1 + 64) = 5;
  return a1;
}

void sub_264808A20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__assign_unique<std::pair<Scandium::ScandiumPPG::PathType const,float> const*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 16) = *v4;
        *(v8 + 20) = *(v4 + 4);
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_unique(a1, v8);
        v4 += 8;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    if (v10)
    {
      do
      {
        v12 = *v10;
        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::PathType,std::pair<Scandium::ScandiumPPG::PathType const,float> const&>(a1, v4, v4);
    v4 += 8;
  }
}

void sub_264808B1C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 16) == *a3)
          {
            return i;
          }
        }

        else
        {
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
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::PathType,std::pair<Scandium::ScandiumPPG::PathType const,float> const&>(void *a1, unsigned __int8 *a2, void *a3)
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
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
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

  if (*(v8 + 16) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>::unordered_map(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::channel_combination_ret_t,std::pair<Scandium::ScandiumPPG::channel_combination_ret_t const,std::string> const&>(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t ***std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::channel_combination_ret_t,std::pair<Scandium::ScandiumPPG::channel_combination_ret_t const,std::string> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__construct_node_hash<std::pair<Scandium::ScandiumPPG::channel_combination_ret_t const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_264809230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2648092F8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__deallocate_node(int a1, void **__p)
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

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::channel_combination_ret_t,std::piecewise_construct_t const&,std::tuple<Scandium::ScandiumPPG::channel_combination_ret_t const&>,std::tuple<>>(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::PathType,std::piecewise_construct_t const&,std::tuple<Scandium::ScandiumPPG::PathType const&>,std::tuple<>>(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void Scandium::ScandiumPPG::calc_ppg_ac_metrics(Scandium::ScandiumPPG *this, const float *a2, float *a3, float *a4, float *a5)
{
  v7 = a2;
  v9 = iirSOS_new(6, &Scandium::ScandiumPPG::dsc_bpf_coeff_64);
  if (iirSOS_init(v9))
  {
    goto LABEL_30;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v29, this, this + v7, v7);
  std::vector<float>::vector[abi:ne200100](v28, v7);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  iirSOS_process(v9, v29, v28[0], v7);
  if (v7 < 1)
  {
    goto LABEL_21;
  }

  v10 = 0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    v15 = v13;
    v21 = 0;
    v13 = *(v28[0] + v10);
    v16 = v14 < v15;
    if (v15 <= v13)
    {
      v16 = 0;
    }

    if (v16)
    {
      *(&v21 + 1) = v15;
    }

    v17 = v13 > v15 && v14 > v15;
    if (v17)
    {
      *&v21 = v15;
    }

    v18 = *(v28[0] + v10);
    if (v16)
    {
      std::vector<float>::push_back[abi:ne200100](&v25, &v21 + 1);
    }

    if (v17)
    {
      std::vector<float>::push_back[abi:ne200100](&__p, &v21);
    }

    v12 = v12 + v18;
    v11 = v11 + (v18 * v18);
    v10 += 4;
    v14 = v15;
  }

  while (4 * v7 != v10);
  *a4 = sqrtf(fabsf((v11 / v7) - ((v12 / v7) * (v12 / v7))));
  if (v26 == v25)
  {
    goto LABEL_21;
  }

  v19 = __p;
  if (v23 != __p)
  {
    v20 = Scandium::sort_median(v25, (v26 - v25) >> 2);
    *a3 = v20 - Scandium::sort_median(__p, (v23 - __p) >> 2);
LABEL_21:
    v19 = __p;
  }

  if (v19)
  {
    v23 = v19;
    operator delete(v19);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

LABEL_30:
  if (v9)
  {
    iirSOS_delete(v9);
  }
}

void sub_264809AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void Scandium::ScandiumPPG::calc_session_mavs(Scandium::ScandiumPPG *this@<X0>, float **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a2 >= 64)
  {
    v7 = 0;
    v8 = (a2 - 63);
    v9 = a3;
    do
    {
      if ((v7 & 0x1F) == 0)
      {
        v13 = 0.0;
        v10 = v9;
        v11 = this;
        if (a3 >= 1)
        {
          do
          {
            v12 = stats::variance((*v11 + 4 * v7), 0x40uLL, 0);
            if (v12 > v13)
            {
              v13 = v12;
            }

            v11 = (v11 + 8);
            --v10;
          }

          while (v10);
        }

        std::vector<float>::push_back[abi:ne200100](a4, &v13);
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_264809CB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumPPG::scandium_spo2_monitor_t::scandium_spo2_monitor_t(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  buf[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&buf[8], "3.0");
  buf[32] = 1;
  std::string::basic_string[abi:ne200100]<0>(&buf[40], "3.5");
  buf[64] = 2;
  std::string::basic_string[abi:ne200100]<0>(&buf[72], "3.75");
  buf[96] = 3;
  std::string::basic_string[abi:ne200100]<0>(&buf[104], "3.75p2");
  std::unordered_map<Scandium::sc_optical_gen_e,std::string>::unordered_map(v19, buf, 4);
  v10 = 0;
  while (1)
  {
    if (buf[v10 + 127] < 0)
    {
      operator delete(*&buf[v10 + 104]);
    }

    v10 -= 32;
    if (v10 == -128)
    {
      optical_gen = Scandium::find_optical_gen(a2);
      v18 = optical_gen;
      if (v19[3] == 4)
      {
        log = Scandium::algs_get_log(optical_gen);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          v14 = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::find<Scandium::ScandiumPPG::PathType>(v19, &v18);
          if (!v14)
          {
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v15 = v14 + 3;
          if (*(v14 + 47) < 0)
          {
            v15 = *v15;
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = v15;
          _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "Scandium HW Model: %s, Opt Gen: %s", buf, 0x16u);
        }

        v16 = *(a3 + 116);
        if (v16 != -1)
        {
          *buf = &v17;
          (off_287620490[v16])(buf, a3);
          memset(buf, 0, 115);
          Scandium::convert_legacy_start_pkt(a3, buf);
          operator new();
        }

        std::__throw_bad_variant_access[abi:ne200100]();
      }

      __assert_rtn("scandium_spo2_monitor_t", "scandium_spo2_processor.cpp", 39, "opt_gen_log.size() == static_cast<size_t>(sc_optical_gen_e::num)");
    }
  }
}

void sub_264809FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&a17);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&a21);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](&a25);
  std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::~__value_func[abi:ne200100](&a29);
  MEMORY[0x266741650](v30, 0x10F2C402D6576B6);
  std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::~__hash_table(&a12);
  std::unique_ptr<Scandium::ScandiumPPG::scandium_spo2_processor_t>::reset[abi:ne200100](v29, 0);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<Scandium::ScandiumPPG::scandium_spo2_processor_t>::reset[abi:ne200100](void ****a1, void ***a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Scandium::ScandiumPPG::scandium_spo2_processor_t::~scandium_spo2_processor_t(result);

    JUMPOUT(0x266741650);
  }

  return result;
}

double Scandium::ScandiumPPG::scandium_spo2_processor_t::reset(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_reset((this + 632656));
  v2 = (this + 765496);
  v3 = 16;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_reset(v2);
    v2 += 16;
    --v3;
  }

  while (v3);
  v4 = (this + 767544);
  v5 = 16;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_reset(v4);
    v4 += 16;
    --v5;
  }

  while (v5);
  v6 = (this + 769592);
  v7 = 8;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_reset(v6);
    v6 += 16;
    --v7;
  }

  while (v7);
  Scandium::ScandiumPPG::scandium_calibration_t::reset((this + 770792));
  Scandium::ScandiumPPG::scandium_calibration_t::reset((this + 770800));
  Scandium::ScandiumPPG::scandium_signal_conditioning_t::reset((this + 770616));
  Scandium::scandium_mvmt_detection_t::reset((this + 770840));
  Scandium::ScandiumPPG::scandium_quality_metric_t::reset(this + 96376);
  *(this + 772524) = 0;
  *(this + 96566) = 0;
  *(this + 193130) = 0;
  result = 0.0;
  *(this + 772548) = 0u;
  *(this + 386282) = 0;
  return result;
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::process(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, uint64_t a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v4 = this + 770048;
  v5 = *(this + 193136);
  if (!v5)
  {
    Scandium::ScandiumPPG::scandium_spo2_processor_t::log_start_packet(this, this + 120);
    v5 = *(v4 + 624);
  }

  v6 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v7 = v5;
  v8 = 4 * v5 + 252;
  v9 = *(this + 250);
  do
  {
    v10 = *(a2 + 7 + 4 * v6);
    if (v9)
    {
      v10 = v10 * 600.0 / ((*(this + 61) * *(this + v6 + 770704)) * 10.0);
    }

    if (v7 >= 0x640)
    {
      std::__throw_out_of_range[abi:ne200100]("array::at");
    }

    *(this + v8) = v10;
    ++v6;
    v8 += 6400;
  }

  while (v6 != 8);
  v11 = 0;
  v12 = 4 * v7 + 51452;
  do
  {
    v13 = *(a2 + 39 + 4 * v11);
    if (v9)
    {
      v13 = v13 * 600.0 / ((*(this + 61) * *(this + v11 + 770712)) * 10.0);
    }

    *(this + v12) = v13;
    ++v11;
    v12 += 6400;
  }

  while (v11 != 16);
  v14 = 0;
  v15 = 4 * v7 + 153852;
  do
  {
    v16 = *(a2 + 103 + 4 * v14);
    if (v9)
    {
      v16 = v16 * 600.0 / ((*(this + 61) * *(this + v14 + 770728)) * 10.0);
    }

    *(this + v15) = v16;
    ++v14;
    v15 += 6400;
  }

  while (v14 != 16);
  v17 = 0;
  v18 = this + 770700;
  v19 = 4 * v7 + 256252;
  do
  {
    v20 = *(a2 + 167 + 4 * v17);
    if (v9)
    {
      v20 = v20 * 600.0 / ((*(this + 61) * v18[v17]) * 10.0);
    }

    *(this + v19) = v20;
    ++v17;
    v19 += 6400;
  }

  while (v17 != 4);
  v21 = 0;
  v22 = 4 * v7 + 281852;
  do
  {
    v23 = *(a2 + 183 + 4 * v21);
    if (v9)
    {
      v23 = v23 * 600.0 / ((*(this + 61) * v18[v21]) * 10.0);
    }

    *(this + v22) = v23;
    ++v21;
    v22 += 6400;
  }

  while (v21 != 4);
  v24 = 0;
  v25 = 4 * v7 + 307452;
  do
  {
    *(this + v25) = *(a2 + 199 + v24) * 0.000015259;
    v24 += 4;
    v25 += 6400;
  }

  while (v24 != 12);
  v26 = 0;
  v27 = 4 * v7 + 352252;
  do
  {
    *(this + v27) = *(a2 + 211 + v26) * 0.0078125;
    v26 += 4;
    v27 += 6400;
  }

  while (v26 != 16);
  v28 = 0;
  v29 = 4 * v7 + 326652;
  do
  {
    *(this + v29) = *(a2 + 227 + v28) * 0.0078125;
    v28 += 4;
    v29 += 6400;
  }

  while (v28 != 16);
  *(this + v7 + 94463) = *(a2 + 243) * 0.0078125;
  *(this + v7 + 156460) = *(a2 + 3);
  ++*(v4 + 624);
  Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_mvmt_posture_bailout(this);
  if ((*(v4 + 624) - 1601) <= 0xFFFFF9BF)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  if (v4[2516])
  {
    v31 = 4;
  }

  else
  {
    if ((v4[2517] & 1) == 0)
    {
      v32 = *(v4 + 315);
      goto LABEL_37;
    }

    v31 = 2;
  }

  v32 = *(v4 + 315) | v31;
  *(v4 + 315) = v32;
LABEL_37:
  v33 = v4 + 2520;
  v34 = v32 & 0x7FF;
  if ((v32 & 0x7FF) != 0)
  {
    log = Scandium::algs_get_log(v30);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 0;
      __p[23] = 11;
      strcpy(__p, "00000000000");
      v37 = 10;
      do
      {
        if ((*v33 >> v36))
        {
          if (__p[23] >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = *__p;
          }

          v38[v37] = 49;
        }

        ++v36;
        --v37;
      }

      while (v36 != 11);
      v39 = __p;
      if (__p[23] < 0)
      {
        v39 = *__p;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v39;
      _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium invalid session reason: %s - force processing", &buf, 0xCu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  v40 = *(v4 + 624);
  if ((v40 - 1) >= 0x640)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  if (v34 || (*(this + (v40 - 1) + 156460) & 4) != 0)
  {
    *(v4 + 521) = v40;
    Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_dropped_samples_metrics(this);
    Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(this);
    *(v4 + 623) = 0;
    if (*(this + 59) >= 1)
    {
      v99 = this + 623296;
      v97 = this + 623308;
      v98 = this + 623368;
      v41 = vneg_f32(0x3F0000003FLL);
      do
      {
        Scandium::ScandiumPPG::scandium_spo2_processor_t::reset(this);
        v42 = *(v4 + 623);
        v43 = v40 - 320 * v42;
        if (v43 >= 960)
        {
          v44 = 960;
        }

        else
        {
          v44 = v40 - 320 * v42;
        }

        if (v43 >= 1)
        {
          v45 = (v44 & ~(v44 >> 31));
          v46 = stats::mean((this + 1280 * v42 + 307452), v45);
          Scandium::fill_valid(this + 193042, v47, v46);
          v48 = stats::mean((this + 1280 * *(v4 + 623) + 313852), v45);
          Scandium::fill_valid(this + 193043, v49, v48);
          v50 = stats::mean((this + 1280 * *(v4 + 623) + 320252), v45);
          Scandium::fill_valid(this + 193044, v51, v50);
          v42 = *(v4 + 623);
        }

        v52 = Scandium::ScandiumPPG::scandium_spo2_processor_t::copy_to_bga_window(this, v42, v40);
        if (*(v4 + 340))
        {
          std::string::basic_string[abi:ne200100]<0>(&v106, "window_process_start");
          std::string::basic_string[abi:ne200100]<0>(__p, "is_window_valid");
          __p[32] = v52 ^ 1;
          *&__p[64] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p[72], "window_idx");
          *&__p[104] = *(v4 + 623);
          *&__p[136] = 1;
          std::string::basic_string[abi:ne200100]<0>(&__p[144], "num_processing_windows");
          *&__p[176] = *(this + 59);
          *&__p[208] = 1;
          std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(&buf, __p, 3);
          v53 = *(v4 + 340);
          if (!v53)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v53 + 48))(v53, &v106, &buf);
          std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(&buf);
          for (i = 0; i != -216; i -= 72)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[i + 176]);
            if (__p[i + 167] < 0)
            {
              operator delete(*&__p[i + 144]);
            }
          }

          if (SHIBYTE(v108) < 0)
          {
            operator delete(v106);
          }
        }

        if ((v52 & 1) == 0)
        {
          Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_ppg(this);
          Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_process(this + 632656, (this + 615616), (this + 619456), (this + 568572), v55);
          beats = Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_get_beats((this + 632656));
          v57 = beats;
          if (&v109 == beats)
          {
            v112 = *(beats + 24);
          }

          else
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v109, *beats, *(beats + 8), (*(beats + 8) - *beats) >> 2);
            v58 = *(v57 + 32);
            v112 = *(v57 + 24);
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v113, v58, *(v57 + 40), (*(v57 + 40) - v58) >> 2);
          }

          Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_window_mvmt_posture(this, this + 568572);
          if (*(&v112 + 1) > 0.0 && *&v112 > 0.0)
          {
            v59 = stats::mean((this + 610812), 0x3C0);
            if (v59 >= 0.0 && v59 <= 45.0)
            {
              Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga(this, &v109);
              Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_spo2(this);
              Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_quality_metric(this);
              LODWORD(v106) = 2143289344;
              LODWORD(v103) = 2143289344;
              LODWORD(v101[0]) = 2143289344;
              LODWORD(v100.__r_.__value_.__l.__data_) = 0;
              v60 = *(this + 249);
              __p[0] = 0;
              __p[136] = 0;
              v61 = Scandium::ScandiumPPG::scandium_channel_combination_t::combine_channels(this + 32144, v60, &v106, &v103, v101, &v100, __p);
              if (__p[136] == 1)
              {
                std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&__p[56]);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              *&buf = this;
              *(&buf + 1) = this + 24;
              v118 = this + 48;
              v119 = this + 72;
              v120 = this + 96;
              v121 = v41;
              v122 = 2143289344;
              Scandium::ScandiumPPG::scandium_channel_combination_t::log_coreanalytics_metrics(this + 771456, &buf);
              v63 = *(v4 + 622);
              *&v99[4 * v63] = v106;
              *&v97[4 * v63] = v122;
              if ((v121.i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                std::vector<float>::push_back[abi:ne200100](this + 77915, &v121 + 1);
              }

              if ((v121.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                std::vector<float>::push_back[abi:ne200100](this + 77918, &v121);
              }

              if (v61 == 3)
              {
                ++*(v4 + 524);
              }

              if (v4[650] == 2)
              {
                v64 = *(v4 + 623);
                switch(v64)
                {
                  case 2:
                    v75 = *(v4 + 622);
                    if (v75 > 2)
                    {
                      goto LABEL_156;
                    }

                    Scandium::fill_valid(this + 193021, v62, *&v99[4 * v75]);
                    v67 = *(v4 + 622);
                    v68 = (this + 772100);
                    goto LABEL_119;
                  case 1:
                    v74 = *(v4 + 622);
                    if (v74 > 2)
                    {
                      goto LABEL_156;
                    }

                    Scandium::fill_valid(this + 193020, v62, *&v99[4 * v74]);
                    v67 = *(v4 + 622);
                    v68 = (this + 772096);
LABEL_119:
                    if (v67 > 2)
                    {
LABEL_156:
                      std::__throw_out_of_range[abi:ne200100]("array::at");
                    }

                    Scandium::fill_valid(v68, v66, *&v97[4 * v67]);
                    break;
                  case 0:
                    v65 = *(v4 + 622);
                    if (v65 >= 3)
                    {
                      goto LABEL_156;
                    }

                    Scandium::fill_valid(this + 193019, v62, *&v99[4 * v65]);
                    v67 = *(v4 + 622);
                    v68 = (this + 772092);
                    goto LABEL_119;
                }
              }

              v76 = *(v4 + 516);
              data = v100.__r_.__value_.__l.__data_;
              if (v76 <= SLODWORD(v100.__r_.__value_.__l.__data_))
              {
                v76 = v100.__r_.__value_.__l.__data_;
              }

              *(v4 + 516) = v76;
              v78 = *(v4 + 517);
              if (data < v78)
              {
                v78 = data;
              }

              *(v4 + 517) = v78;
              v79 = memcpy(__p, this + 623384, sizeof(__p));
              *&v98[4 * *(v4 + 622)] = Scandium::ScandiumPPG::scandium_spo2_processor_t::median_hr_allpaths(v79, __p);
              v81 = Scandium::algs_get_log(v80);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = *(v4 + 623);
                v83 = *(v4 + 622);
                v84 = *&v99[4 * v83];
                v85 = *&v98[4 * v83];
                *__p = 67109633;
                *&__p[4] = v82;
                *&__p[8] = 2049;
                *&__p[10] = v84;
                *&__p[18] = 2049;
                *&__p[20] = v85;
                _os_log_impl(&dword_2647F6000, v81, OS_LOG_TYPE_DEFAULT, "scandium session results: session %d spo2: %{private}.9g hr: %{private}.9g", __p, 0x1Cu);
              }

              v86 = *(v4 + 622) + 1;
              *(v4 + 622) = v86;
              *(v4 + 520) = v86;
              goto LABEL_93;
            }
          }

          *(v4 + 310) |= 0x20uLL;
        }

        LOBYTE(v61) = 6;
LABEL_93:
        if (*(v4 + 340))
        {
          v69 = 0;
          v106 = 0;
          v107 = 0;
          v108 = 0;
          v103 = 0;
          v104 = 0;
          v105 = 0;
          *__p = 0;
          do
          {
            v70 = 1 << v69;
            if ((*(v4 + 310) & (1 << v69)) != 0)
            {
              std::vector<int>::push_back[abi:ne200100](&v106, __p);
              v69 = *__p;
              v70 = 1 << __p[0];
            }

            if ((v70 & *v33) != 0)
            {
              std::vector<int>::push_back[abi:ne200100](&v103, __p);
              v69 = *__p;
            }

            *__p = ++v69;
          }

          while (v69 < 0xB);
          std::string::basic_string[abi:ne200100]<0>(v101, "window_process_end");
          std::string::basic_string[abi:ne200100]<0>(__p, "window_posture_valid");
          __p[32] = v4[2472];
          *&__p[64] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p[72], "window_movement_valid");
          __p[104] = v4[2473];
          *&__p[136] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p[144], "window_wrist_is_rotated");
          __p[176] = v4[2474];
          *&__p[208] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p[216], "window_arm_is_hanging");
          __p[248] = v4[2475];
          *&__p[280] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p[288], "window_is_session_full");
          __p[320] = v4[2476];
          *&__p[352] = 0;
          Scandium::ScandiumPPG::scandium_channel_combination_t::get_return_message(v61, &v100);
          std::string::basic_string[abi:ne200100]<0>(&__p[360], "channel_combination_return");
          *&__p[392] = v100;
          memset(&v100, 0, sizeof(v100));
          *&__p[424] = 5;
          std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[23],std::vector<int>&,0>(&__p[432], "window_invalid_reasons", &v106);
          std::string::basic_string[abi:ne200100]<0>(&__p[504], "invalid_sample_counter_total");
          *&__p[536] = *(v4 + 625);
          *&__p[568] = 1;
          std::string::basic_string[abi:ne200100]<0>(&__p[576], "invalid_sample_counter_cont");
          *&__p[608] = *(v4 + 626);
          *&__p[640] = 1;
          std::string::basic_string[abi:ne200100]<0>(&__p[648], "invalid_accl_sample_counter_total");
          *&__p[680] = *(v4 + 627);
          *&__p[712] = 1;
          std::string::basic_string[abi:ne200100]<0>(&__p[720], "invalid_accl_sample_counter_cont");
          *&__p[752] = *(v4 + 628);
          *&__p[784] = 1;
          std::string::basic_string[abi:ne200100]<0>(&__p[792], "posture_abort");
          __p[824] = v4[2516];
          *&__p[856] = 0;
          std::string::basic_string[abi:ne200100]<0>(&__p[864], "movement_abort");
          __p[896] = v4[2517];
          *&__p[928] = 0;
          std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[24],std::vector<int>&,0>(&__p[936], "session_invalid_reasons", &v103);
          std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(&buf, __p, 14);
          v71 = *(v4 + 340);
          if (!v71)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v71 + 48))(v71, v101, &buf);
          std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(&buf);
          v72 = 1008;
          do
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v111 + v72);
            if (*(&v109 + v72 + 7) < 0)
            {
              operator delete(*(&v107 + v72));
            }

            v72 -= 72;
          }

          while (v72);
          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (v102 < 0)
          {
            operator delete(v101[0]);
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
        }

        *(v4 + 315) |= *(v4 + 310);
        v73 = *(v4 + 623) + 1;
        *(v4 + 623) = v73;
      }

      while (v73 < *(this + 59));
    }

    Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_hw_fom_core_analytics(this);
    v88 = *(v4 + 622);
    if (v88 < 1 || (v89 = stats::max((this + 623296), v88), (v89 - stats::min((this + 623296), *(v4 + 622))) >= 7.0))
    {
      if ((*v33 & 0x7FF) != 0)
      {
        v91 = Scandium::algs_get_log(v87);
        if (v91)
        {
          v92 = Scandium::algs_get_log(v91);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = 0;
            __p[23] = 11;
            strcpy(__p, "00000000000");
            v94 = 10;
            do
            {
              if ((*v33 >> v93))
              {
                if (__p[23] >= 0)
                {
                  v95 = __p;
                }

                else
                {
                  v95 = *__p;
                }

                v95[v94] = 49;
              }

              ++v93;
              --v94;
            }

            while (v93 != 11);
            v96 = __p;
            if (__p[23] < 0)
            {
              v96 = *__p;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v96;
            _os_log_impl(&dword_2647F6000, v92, OS_LOG_TYPE_DEFAULT, "Scandium algs bailout due to: %s", &buf, 0xCu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }
      }

      Scandium::ScandiumPPG::scandium_spo2_processor_t::invoke_abort(this, v4 + 315);
    }

    else
    {
      Scandium::ScandiumPPG::scandium_spo2_processor_t::report_rslts(this, v90);
    }
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }
}

uint64_t Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v63[4] = *MEMORY[0x277D85DE8];
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v13 = a1 + 770680;
  v14 = a1 + 632488;
  v15 = a1 + 623320;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  *(a1 + 168) = a3[3];
  *(a1 + 152) = v18;
  *(a1 + 136) = v17;
  *(a1 + 120) = v16;
  v19 = a3[4];
  v20 = a3[5];
  v21 = a3[6];
  *(a1 + 231) = *(a3 + 111);
  *(a1 + 216) = v21;
  *(a1 + 200) = v20;
  *(a1 + 184) = v19;
  *(a1 + 249) = a8;
  *(a1 + 250) = a9;
  v22 = (a1 + 623384);
  bzero((a1 + 614656), 0x3C0uLL);
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  v23 = 1792;
  *v15 = 0u;
  do
  {
    Scandium::ScandiumPPG::BGA_t::reset(v22);
    v22 = (v22 + 112);
    v23 -= 112;
  }

  while (v23);
  *(v15 + 2512) = 0;
  *(v15 + 2496) = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0;
  Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_t((a1 + 632656));
  v24 = 0;
  v25 = a1 + 765368;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_t((v25 + 128));
    v24 += 128;
    v25 = v26;
  }

  while (v24 != 2048);
  v27 = 0;
  v28 = a1 + 767416;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_t((v28 + 128));
    v27 += 128;
    v28 = v29;
  }

  while (v27 != 2048);
  v30 = 0;
  v31 = a1 + 769464;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_t((v31 + 128));
    v30 += 128;
    v31 = v32;
  }

  while (v30 != 1024);
  Scandium::ScandiumPPG::scandium_signal_conditioning_t::scandium_signal_conditioning_t(a1 + 770616);
  Scandium::ScandiumPPG::scandium_calibration_t::reset((a1 + 770792));
  Scandium::ScandiumPPG::scandium_spo2_t::scandium_spo2_t((a1 + 770800));
  v63[0] = &unk_2876204B0;
  v63[1] = a1;
  v63[3] = v63;
  v62[0] = &unk_287620530;
  v62[1] = a1;
  v62[3] = v62;
  Scandium::scandium_mvmt_detection_t::scandium_mvmt_detection_t(a1 + 770840, v63, v62);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v62);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v63);
  Scandium::ScandiumPPG::scandium_quality_metric_t::scandium_quality_metric_t(a1 + 771008, *(a3 + 13), a2, *(a3 + 107), *(a3 + 54));
  Scandium::ScandiumPPG::scandium_channel_combination_t::scandium_channel_combination_t(a1 + 771456, v13 + 1832, a1 + 625176);
  __asm { FMOV            V0.4S, #-1.0 }

  *(v13 + 1668) = _Q0;
  *(v13 + 1684) = _Q0;
  *(v13 + 1700) = _Q0;
  *(v13 + 1716) = _Q0;
  *(v13 + 1732) = _Q0;
  *(v13 + 1748) = _Q0;
  *(v13 + 1764) = _Q0;
  *(v13 + 1780) = _Q0;
  *(v13 + 1796) = _Q0;
  v53 = _Q0;
  *(v13 + 1812) = _Q0;
  *(v13 + 1848) = 0;
  *(v13 + 1888) = 0;
  std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::__value_func[abi:ne200100](a1 + 772616, a4);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::__value_func[abi:ne200100](a1 + 772648, a5);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](a1 + 772680, a6);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](a1 + 772712, a7);
  *(v13 + 2088) = 0;
  v38 = std::string::basic_string[abi:ne200100]<0>(&v57, "ppg");
  v39 = *(v13 + 18);
  if (v39 == 1)
  {
    v40 = 0x200000001;
    v41 = "-foreground";
  }

  else
  {
    if (v39 != 2)
    {
      goto LABEL_14;
    }

    v40 = 0x400000003;
    v41 = "-background";
  }

  *(a1 + 236) = v40;
  v38 = std::string::append(&v57, v41, 0xBuLL);
LABEL_14:
  log = Scandium::algs_get_log(v38);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v43 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v43 = v57.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v59 = "11.3.2";
    v60 = 2080;
    v61 = v43;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "Scandium Algs v%s Mode: %s", buf, 0x16u);
  }

  Scandium::ScandiumPPG::scandium_spo2_processor_t::reset(a1);
  if (a2)
  {
    v44 = 4608846;
  }

  else
  {
    v44 = 2388286;
  }

  *(a1 + 244) = v44;
  *(v13 + 1836) = a2;
  v45 = *(a3 + 13);
  *(v13 + 1832) = v45;
  *(v13 + 1864) = 0;
  *(v13 + 1856) = 0;
  *v13 = *a3;
  *(v13 + 2) = *(a3 + 1);
  *(v13 + 8) = *(a3 + 3);
  *(v13 + 16) = *(a3 + 11);
  *(v13 + 18) = v45;
  *(v13 + 19) = *(a3 + 14);
  *(a1 + 772072) = 0u;
  *(a1 + 772088) = 0u;
  *(a1 + 772104) = 0u;
  *(a1 + 772117) = 0;
  *(a1 + 772128) = 0u;
  *(a1 + 772144) = 0u;
  *(a1 + 772160) = 0u;
  *(a1 + 772176) = 0u;
  *(a1 + 772192) = 0u;
  *(a1 + 772208) = 0u;
  *(a1 + 772222) = 0;
  *(a1 + 772232) = 0u;
  *(a1 + 772248) = 0u;
  *(a1 + 772264) = 0u;
  *(a1 + 772280) = 0u;
  *(a1 + 772296) = 0u;
  *(a1 + 772312) = 0u;
  *(a1 + 772328) = 0u;
  *(a1 + 772344) = 0;
  *(v13 + 1828) = 0;
  *(v13 + 1830) = 0;
  *(v13 + 1408) = v53;
  v46.i64[0] = 0xFFFFFFFF00000000;
  v46.i64[1] = 0xFFFFFFFF00000000;
  *(v13 + 1424) = vnegq_f32(v46);
  *(v13 + 1440) = *(a3 + 55);
  *(v13 + 1442) = *(a3 + 112);
  *(v13 + 1443) = *(a3 + 113);
  *(v13 + 1480) = xmmword_264821620;
  *(v13 + 1496) = xmmword_264821630;
  v46.i64[0] = -1;
  v46.i64[1] = -1;
  *(v13 + 1452) = -1;
  *(a1 + 772316) = v46;
  *(a1 + 772332) = v46;
  *(v13 + 1668) = v53;
  *(v13 + 1684) = v53;
  *(v13 + 1700) = v53;
  *(v13 + 1716) = v53;
  *(v13 + 1732) = v53;
  *(v13 + 1748) = v53;
  *(v13 + 1764) = v53;
  *(v13 + 1780) = v53;
  *(v13 + 1796) = v53;
  *(v13 + 1812) = v53;
  *(v13 + 1600) = -1082130432;
  *(v13 + 1512) = xmmword_264821640;
  *(v13 + 1828) = *(a3 + 107);
  *(v13 + 1830) = *(a3 + 54);
  *(a1 + 248) = 1;
  v47 = *(v13 + 18);
  if (v47 == 1)
  {
    v50 = 0x4000000020;
    v48 = 0x200000001;
    v49 = 0x40C000003F800000;
    v51 = 64;
  }

  else
  {
    if (v47 != 2)
    {
      goto LABEL_26;
    }

    v48 = 0x400000003;
    v49 = 981668463;
    v50 = 0xA0000000A0;
    v51 = 1600;
  }

  *(a1 + 236) = v48;
  *(v13 + 1904) = v51;
  *(v13 + 1896) = v50;
  *(v13 + 1908) = 981668463;
  *(v13 + 1912) = v49;
  *(v13 + 1928) = 1060439283;
  *(v13 + 1920) = 0;
LABEL_26:
  Scandium::scandium_mvmt_detection_t::set_config((a1 + 770840), a1 + 772576);
  *(v13 + 20) = *(a3 + 15);
  *(v13 + 24) = *(a3 + 19);
  *(a1 + 770712) = *(a3 + 27);
  *(a1 + 770728) = *(a3 + 43);
  *(a1 + 770744) = *(a3 + 59);
  *(a1 + 770760) = *(a3 + 75);
  *(a1 + 770776) = *(a3 + 91);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_26480BBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](v29 + 772744);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v29 + 772712);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v29 + 772680);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](v29 + 772648);
  std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::~__value_func[abi:ne200100](v29 + 772616);
  Scandium::ScandiumPPG::scandium_channel_combination_t::~scandium_channel_combination_t((v29 + 771456));
  Scandium::ScandiumPPG::scandium_quality_metric_t::~scandium_quality_metric_t((v29 + 771008));
  Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t((v29 + 770840));
  Scandium::ScandiumPPG::scandium_spo2_t::~scandium_spo2_t((v29 + 770800));
  Scandium::ScandiumPPG::scandium_calibration_t::reset((v29 + 770792));
  Scandium::ScandiumPPG::scandium_signal_conditioning_t::~scandium_signal_conditioning_t((v29 + 770616));
  v32 = (v29 + 770488);
  v33 = -1024;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(v32);
    v32 = (v34 - 128);
    v33 += 128;
  }

  while (v33);
  v35 = (v29 + 769464);
  v36 = -2048;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(v35);
    v35 = (v37 - 128);
    v36 += 128;
  }

  while (v36);
  v38 = (v29 + 767416);
  v39 = -2048;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(v38);
    v38 = (v40 - 128);
    v39 += 128;
  }

  while (v39);
  Scandium::ScandiumPPG::scandium_beat_detection_t::~scandium_beat_detection_t((v29 + 632656));
  v41 = *(a10 + 96);
  if (v41)
  {
    *(a10 + 104) = v41;
    operator delete(v41);
  }

  v42 = *(a10 + 72);
  if (v42)
  {
    *(a10 + 80) = v42;
    operator delete(v42);
  }

  v43 = *(a10 + 48);
  if (v43)
  {
    *(a10 + 56) = v43;
    operator delete(v43);
  }

  v44 = *(a10 + 24);
  if (v44)
  {
    *(a10 + 32) = v44;
    operator delete(v44);
  }

  v45 = (a11 + 2496);
  v46 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v46;
    operator delete(v46);
  }

  v47 = *v45;
  if (*v45)
  {
    *(a11 + 2504) = v47;
    operator delete(v47);
  }

  v48 = *(a11 + 24);
  if (v48)
  {
    *(a11 + 32) = v48;
    operator delete(v48);
  }

  v49 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v49;
    operator delete(v49);
  }

  v50 = v30 + 96;
  v51 = -384;
  while (1)
  {
    v52 = *(v50 - 1);
    if (v52)
    {
      *v50 = v52;
      operator delete(v52);
    }

    v50 -= 3;
    v51 += 24;
    if (!v51)
    {
      v53 = v30 + 48;
      v54 = -384;
      while (1)
      {
        v55 = *(v53 - 1);
        if (v55)
        {
          *v53 = v55;
          operator delete(v55);
        }

        v53 -= 3;
        v54 += 24;
        if (!v54)
        {
          v56 = -192;
          while (1)
          {
            v57 = *(v30 - 1);
            if (v57)
            {
              *v30 = v57;
              operator delete(v57);
            }

            v30 -= 3;
            v56 += 24;
            if (!v56)
            {
              v58 = *(v29 + 96);
              if (v58)
              {
                *(v29 + 104) = v58;
                operator delete(v58);
              }

              v59 = *(v29 + 72);
              if (v59)
              {
                *(v29 + 80) = v59;
                operator delete(v59);
              }

              v60 = *(v29 + 48);
              if (v60)
              {
                *(v29 + 56) = v60;
                operator delete(v60);
              }

              v61 = *(v29 + 24);
              if (v61)
              {
                *(v29 + 32) = v61;
                operator delete(v61);
              }

              v62 = *v29;
              if (*v29)
              {
                *(v29 + 8) = v62;
                operator delete(v62);
              }

              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::~scandium_spo2_processor_t(void ***this)
{
  v38 = *MEMORY[0x277D85DE8];
  log = Scandium::algs_get_log(this);
  v3 = this + 79061;
  v4 = this + 77915;
  v5 = this + 76854;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 193136);
    v37[0] = 67109120;
    v37[1] = v6;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium process packet counts: %d", v37, 8u);
  }

  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100]((this + 96593));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((this + 96589));
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100]((this + 96585));
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100]((this + 96581));
  std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::~__value_func[abi:ne200100]((this + 96577));
  Scandium::ScandiumPPG::scandium_channel_combination_t::~scandium_channel_combination_t((this + 96432));
  Scandium::ScandiumPPG::scandium_quality_metric_t::~scandium_quality_metric_t((this + 96376));
  Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t((this + 96355));
  Scandium::ScandiumPPG::scandium_spo2_t::~scandium_spo2_t(this + 96350);
  Scandium::ScandiumPPG::scandium_calibration_t::reset((this + 96349));
  Scandium::ScandiumPPG::scandium_signal_conditioning_t::~scandium_signal_conditioning_t(this + 96327);
  v7 = (this + 96311);
  v8 = -1024;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(v7);
    v7 = (v9 - 128);
    v8 += 128;
  }

  while (v8);
  v10 = (this + 96183);
  v11 = -2048;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(v10);
    v10 = (v12 - 128);
    v11 += 128;
  }

  while (v11);
  v13 = (this + 95927);
  v14 = -2048;
  do
  {
    Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(v13);
    v13 = (v15 - 128);
    v14 += 128;
  }

  while (v14);
  Scandium::ScandiumPPG::scandium_beat_detection_t::~scandium_beat_detection_t((this + 79082));
  v16 = this[79073];
  if (v16)
  {
    this[79074] = v16;
    operator delete(v16);
  }

  v17 = this[79070];
  if (v17)
  {
    this[79071] = v17;
    operator delete(v17);
  }

  v18 = this[79067];
  if (v18)
  {
    this[79068] = v18;
    operator delete(v18);
  }

  v19 = this[79064];
  if (v19)
  {
    this[79065] = v19;
    operator delete(v19);
  }

  v20 = *v3;
  if (*v3)
  {
    this[79062] = v20;
    operator delete(v20);
  }

  v21 = this[78227];
  if (v21)
  {
    this[78228] = v21;
    operator delete(v21);
  }

  v22 = this[77918];
  if (v22)
  {
    this[77919] = v22;
    operator delete(v22);
  }

  v23 = *v4;
  if (*v4)
  {
    this[77916] = v23;
    operator delete(v23);
  }

  v24 = this + 76950;
  v25 = -384;
  do
  {
    v26 = *(v24 - 1);
    if (v26)
    {
      *v24 = v26;
      operator delete(v26);
    }

    v24 -= 3;
    v25 += 24;
  }

  while (v25);
  v27 = this + 76902;
  v28 = -384;
  do
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 3;
    v28 += 24;
  }

  while (v28);
  v30 = -192;
  do
  {
    v31 = *(v5 - 1);
    if (v31)
    {
      *v5 = v31;
      operator delete(v31);
    }

    v5 -= 3;
    v30 += 24;
  }

  while (v30);
  v32 = this[12];
  if (v32)
  {
    this[13] = v32;
    operator delete(v32);
  }

  v33 = this[9];
  if (v33)
  {
    this[10] = v33;
    operator delete(v33);
  }

  v34 = this[6];
  if (v34)
  {
    this[7] = v34;
    operator delete(v34);
  }

  v35 = this[3];
  if (v35)
  {
    this[4] = v35;
    operator delete(v35);
  }

  v36 = *this;
  if (*this)
  {
    this[1] = v36;
    operator delete(v36);
  }
}

void sub_26480C200(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

float Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_median_hr(int a1, const float *a2, stats *this)
{
  if (a2 == 3)
  {
    return stats::median(this, a2);
  }

  if (a2 == 2)
  {
    return stats::mean(this, a2);
  }

  result = 0.0;
  if (a2 == 1)
  {
    return *this->cp_time;
  }

  return result;
}

float Scandium::ScandiumPPG::scandium_spo2_processor_t::median_hr_allpaths(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  v2 = (a2 + 96);
  v3 = 16;
  do
  {
    std::vector<float>::push_back[abi:ne200100](&__p, v2);
    v2 += 28;
    --v3;
  }

  while (v3);
  v4 = stats::median(__p, 0x10uLL);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4;
}

void sub_26480C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Scandium::ScandiumPPG::scandium_spo2_processor_t::copy_to_bga_window(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, int a2, int a3)
{
  v5 = this + 770048;
  v6 = 320 * a2;
  v7 = 320 * a2 + 960;
  if (320 * a2 < a3)
  {
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = 320 * a2 + 960;
    }

    v9 = v6;
    v10 = v8;
    do
    {
      Scandium::flag_to_abort_reason(*(this + v9++ + 156460), this + 96566);
    }

    while (v9 < v10);
  }

  v11 = (*(v5 + 1240) & 0x7FF) != 0;
  if (v7 <= a3)
  {
    v5[2476] = 1;
    v12 = this + 4 * v6 + 252;
    v13 = this + 384252;
    v14 = 8;
    do
    {
      memmove(v13, v12, 0xF00uLL);
      v13 += 3840;
      v12 += 6400;
      --v14;
    }

    while (v14);
    v15 = 0;
    v16 = this + 4 * v6;
    v17 = v16 + 51452;
    do
    {
      memmove(this + v15 + 414972, v17, 0xF00uLL);
      v15 += 3840;
      v17 += 6400;
    }

    while (v15 != 61440);
    v18 = 0;
    v19 = v16 + 153852;
    do
    {
      memmove(this + v18 + 476412, v19, 0xF00uLL);
      v18 += 3840;
      v19 += 6400;
    }

    while (v18 != 61440);
    v20 = v16 + 256252;
    v21 = this + 537852;
    v22 = 4;
    do
    {
      memmove(v21, v20, 0xF00uLL);
      v21 += 3840;
      v20 += 6400;
      --v22;
    }

    while (v22);
    v23 = v16 + 281852;
    v24 = this + 553212;
    v25 = 4;
    do
    {
      memmove(v24, v23, 0xF00uLL);
      v24 += 3840;
      v23 += 6400;
      --v25;
    }

    while (v25);
    v26 = v16 + 307452;
    v27 = this + 568572;
    v28 = 3;
    do
    {
      memmove(v27, v26, 0xF00uLL);
      v27 += 3840;
      v26 += 6400;
      --v28;
    }

    while (v28);
    v29 = v16 + 352252;
    v30 = this + 595452;
    v31 = 4;
    do
    {
      memmove(v30, v29, 0xF00uLL);
      v30 += 3840;
      v29 += 6400;
      --v31;
    }

    while (v31);
    v32 = v16 + 326652;
    v33 = this + 580092;
    v34 = 4;
    do
    {
      memmove(v33, v32, 0xF00uLL);
      v33 += 3840;
      v32 += 6400;
      --v34;
    }

    while (v34);
    memmove(this + 610812, v16 + 377852, 0xF00uLL);
  }

  else
  {
    v5[2476] = 0;
    return 1;
  }

  return v11;
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::invoke_abort(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = 0;
  }

  else if ((v2 & 2) != 0)
  {
    v5 = 1;
  }

  else if ((v2 & 4) != 0)
  {
    v5 = 2;
  }

  else if ((v2 & 0x20) != 0)
  {
    v5 = 5;
  }

  else if ((v2 & 0x200) != 0)
  {
    v5 = 9;
  }

  else
  {
    if ((v2 & 0x80) != 0)
    {
      v3 = 7;
    }

    else
    {
      v3 = 8;
    }

    if ((v2 & 0x400) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = 6;
    }

    else
    {
      v5 = v4;
    }
  }

  Scandium::ScandiumPPG::scandium_spo2_processor_t::abort_handler_proxy(a1, v5);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::abort_handler_proxy(uint64_t a1, int a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a1 + 770048;
  log = Scandium::algs_get_log(a1);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v16 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v16;
        v8 = "scandium abort handler pkt %d: posture";
      }

      else if (a2 == 3)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v13 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v13;
        v8 = "scandium abort handler pkt %d: low HR";
      }

      else
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v9 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v9;
        v8 = "scandium abort handler pkt %d: high HR";
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      if (!v6)
      {
        goto LABEL_37;
      }

      v12 = *(v4 + 2496);
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v12;
      v8 = "scandium abort handler pkt %d: thermistor_broken";
      goto LABEL_35;
    }

    if (a2 == 1)
    {
      if (!v6)
      {
        goto LABEL_37;
      }

      v11 = *(v4 + 2496);
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v11;
      v8 = "scandium abort handler pkt %d: motion";
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v17 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v17;
        v8 = "scandium abort handler pkt %d: poor_signal";
      }

      else if (a2 == 6)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v14 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v14;
        v8 = "scandium abort handler pkt %d: samples_dropped";
      }

      else
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v7 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v7;
        v8 = "scandium abort handler pkt %d: hardware_recovery";
      }

      goto LABEL_35;
    }

    switch(a2)
    {
      case 8:
        if (!v6)
        {
          goto LABEL_37;
        }

        v18 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v18;
        v8 = "scandium abort handler pkt %d: err_failed";
        goto LABEL_35;
      case 9:
        if (!v6)
        {
          goto LABEL_37;
        }

        v15 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v15;
        v8 = "scandium abort handler pkt %d: accel_poor_signal";
        goto LABEL_35;
      case 10:
        if (!v6)
        {
          goto LABEL_37;
        }

        v10 = *(v4 + 2496);
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v10;
        v8 = "scandium abort handler pkt %d: excessive_invalid_samples";
LABEL_35:
        v19 = log;
        v20 = 8;
LABEL_36:
        _os_log_impl(&dword_2647F6000, v19, OS_LOG_TYPE_DEFAULT, v8, &buf, v20);
        goto LABEL_37;
    }
  }

  if (v6)
  {
    v24 = *(v4 + 2496);
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v24;
    v36 = 1024;
    v37 = a2;
    v8 = "scandium abort handler pkt %d: %d";
    v19 = log;
    v20 = 14;
    goto LABEL_36;
  }

LABEL_37:
  Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(a1);
  if (*(v4 + 2720))
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "abort");
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[13],char const(&)[7],0>(&buf, "algs_version", "11.3.2");
    std::string::basic_string[abi:ne200100]<0>(v38, "algs_mode");
    v39 = *(v4 + 650);
    v40 = 1;
    v21 = *(v4 + 2488);
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v29, (a1 + 623296), a1 + 623296 + 4 * v21, v21);
    std::string::basic_string[abi:ne200100]<0>(v41, "window_spo2");
    v42 = *v29;
    v43 = v30;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    v44 = 3;
    v45 = 6;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v27, (a1 + 623308), a1 + 623320, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v46, "window_spo2_no_conf_gate");
    v47 = *v27;
    v48 = v28;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    v49 = 3;
    v50 = 6;
    __p[0] = 0;
    __p[1] = 0;
    v26 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, (a1 + 623368), a1 + 623380, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v51, "window_hr");
    v52 = *__p;
    v53 = v26;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    v54 = 3;
    v55 = 6;
    std::string::basic_string[abi:ne200100]<0>(v56, "abort_reason");
    v57 = a2;
    v58 = 1;
    std::string::basic_string[abi:ne200100]<0>(v59, "packet_idx");
    v60 = *(v4 + 2496);
    v61 = 1;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v32, &buf, 7);
    v22 = *(v4 + 2720);
    if (!v22)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v22 + 48))(v22, v33, v32);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v32);
    v23 = 504;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v32[v23 + 24]);
      if (v32[v23 + 15] < 0)
      {
        operator delete(*&v31[v23]);
      }

      v23 -= 72;
    }

    while (v23);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (v29[0])
    {
      v29[1] = v29[0];
      operator delete(v29[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    Scandium::ScandiumPPG::scandium_spo2_processor_t::log_core_analytics(a1);
  }

  if (*(v4 + 2624))
  {
    std::function<void ()(Scandium::AbortReason)>::operator()(a1 + 772648, a2);
  }
}

void sub_26480CBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  v34 = -504;
  v35 = v32;
  do
  {
    v35 = std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v35) - 72;
    v34 += 72;
  }

  while (v34);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::log_start_packet(uint64_t a1, unsigned __int8 *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  if (*(a1 + 772768))
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "start_packet");
    std::string::basic_string[abi:ne200100]<0>(v25, "frame_type");
    v26 = *a2;
    v27 = 1;
    std::string::basic_string[abi:ne200100]<0>(v28, "frame_index");
    v29 = *(a2 + 1);
    v30 = 1;
    v4 = *(a2 + 3);
    std::string::basic_string[abi:ne200100]<0>(v31, "rtp_timestamp");
    v31[4] = v4;
    v32 = 2;
    std::string::basic_string[abi:ne200100]<0>(v33, "num_of_samples");
    v34 = *(a2 + 11);
    v35 = 1;
    std::string::basic_string[abi:ne200100]<0>(v36, "sc_algs_mode");
    v37 = a2[13];
    v38 = 1;
    std::string::basic_string[abi:ne200100]<0>(v39, "cookie");
    v40 = a2[14];
    v41 = 1;
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v19, a2 + 15, a2 + 19, 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v42, "blank_tia_gains");
    v43 = *v19;
    v44 = v20;
    v19[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v45 = 1;
    v46 = 6;
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v17, a2 + 19, a2 + 27, 8uLL);
    std::string::basic_string[abi:ne200100]<0>(v47, "green_tia_gains");
    v48 = *v17;
    v49 = v18;
    v17[1] = 0;
    v18 = 0;
    v17[0] = 0;
    v50 = 1;
    v51 = 6;
    v15[0] = 0;
    v15[1] = 0;
    v16 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v15, a2 + 27, a2 + 43, 0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(v52, "red_tia_gains");
    v53 = *v15;
    v54 = v16;
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0;
    v55 = 1;
    v56 = 6;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v13, a2 + 43, a2 + 59, 0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(v57, "ir_tia_gains");
    v58 = *v13;
    v59 = v14;
    v13[1] = 0;
    v14 = 0;
    v13[0] = 0;
    v60 = 1;
    v61 = 6;
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v11, (a2 + 59), (a2 + 75), 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v62, "green_iled");
    v63 = *v11;
    v64 = v12;
    v11[1] = 0;
    v12 = 0;
    v11[0] = 0;
    v65 = 3;
    v66 = 6;
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v9, (a2 + 75), (a2 + 91), 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v67, "red_iled");
    v68 = *v9;
    v69 = v10;
    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    v70 = 3;
    v71 = 6;
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, (a2 + 91), (a2 + 107), 4uLL);
    std::string::basic_string[abi:ne200100]<0>(v72, "ir_iled");
    v73 = *__p;
    v74 = v8;
    __p[1] = 0;
    v8 = 0;
    __p[0] = 0;
    v75 = 3;
    v76 = 6;
    std::string::basic_string[abi:ne200100]<0>(v77, "hfw");
    v78 = a2[107];
    v79 = 1;
    std::string::basic_string[abi:ne200100]<0>(v80, "win_len");
    v81 = *(a2 + 54);
    v82 = 1;
    std::string::basic_string[abi:ne200100]<0>(v83, "agc_opc_duration_ms");
    v84 = *(a2 + 55);
    v85 = 1;
    std::string::basic_string[abi:ne200100]<0>(v86, "agc_opc_green_fs_enum");
    v87 = a2[112];
    v88 = 1;
    std::string::basic_string[abi:ne200100]<0>(v89, "agc_opc_num_retries");
    v90 = a2[113];
    v91 = 1;
    std::string::basic_string[abi:ne200100]<0>(v92, "agc_opc_num_converged");
    v93 = a2[114];
    v94 = 1;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v22, v25, 19);
    v5 = *(a1 + 772768);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v23, v22);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v22);
    v6 = 1368;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22[v6 + 24]);
      if (v22[v6 + 15] < 0)
      {
        operator delete(*&v21[v6]);
      }

      v6 -= 72;
    }

    while (v6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }

    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }

    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_26480D270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  v50 = -1368;
  v51 = v48;
  do
  {
    v51 = std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v51) - 72;
    v50 += 72;
  }

  while (v50);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

uint64_t Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(uint64_t this)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(this + 772768))
  {
    v1 = this;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v17 = 115;
    v18 = 0x900000000000000;
    v16 = *"green_dcs";
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((this + 252), (this + 51452), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 7;
      v2 = v16;
    }

    else
    {
      HIBYTE(v18) = 7;
      v2 = &v16;
    }

    strcpy(v2, "red_dcs");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 51452), (v1 + 153852), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 6;
      v3 = v16;
    }

    else
    {
      HIBYTE(v18) = 6;
      v3 = &v16;
    }

    strcpy(v3, "ir_dcs");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 153852), (v1 + 256252), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 9;
      v4 = v16;
    }

    else
    {
      HIBYTE(v18) = 9;
      v4 = &v16;
    }

    strcpy(v4, "blank_dcs");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 256252), (v1 + 281852), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 11;
      v5 = v16;
    }

    else
    {
      HIBYTE(v18) = 11;
      v5 = &v16;
    }

    strcpy(v5, "blank_light");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 281852), (v1 + 307452), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 5;
      v6 = v16;
    }

    else
    {
      HIBYTE(v18) = 5;
      v6 = &v16;
    }

    strcpy(v6, "accel");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 307452), (v1 + 326652), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 13;
      v7 = v16;
    }

    else
    {
      HIBYTE(v18) = 13;
      v7 = &v16;
    }

    strcpy(v7, "ir_wavelength");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 326652), (v1 + 352252), v19, &v16);
    if (SHIBYTE(v18) < 0)
    {
      v17 = 14;
      v8 = v16;
    }

    else
    {
      HIBYTE(v18) = 14;
      v8 = &v16;
    }

    strcpy(v8, "red_wavelength");
    std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>((v1 + 352252), (v1 + 377852), v19, &v16);
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, (v1 + 377852), v1 + 384252, 0x640uLL);
    std::string::basic_string[abi:ne200100]<0>(v21, "temperature");
    v23 = *v14;
    v24 = v15;
    v14[1] = 0;
    v15 = 0;
    v14[0] = 0;
    v25 = 3;
    v26 = 6;
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, (v1 + 625840), (v1 + 632240), 0x640uLL);
    std::string::basic_string[abi:ne200100]<0>(v27, "failure_flags");
    v9 = 0;
    v28 = *__p;
    v29 = v13;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    v30 = 1;
    v31 = 6;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&>(v19, &v21[v9], &v21[v9]);
      v9 += 9;
    }

    while (v9 != 18);
    for (i = 0; i != -18; i -= 9)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v28 + i * 8);
      if (SHIBYTE(v27[i + 2]) < 0)
      {
        operator delete(v27[i]);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "input_buffer");
    v11 = *(v1 + 772768);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(v11, v21, v19);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }

    return std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v19);
  }

  return this;
}

void sub_26480D8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(&a22);
  _Unwind_Resume(a1);
}

void std::accumulate[abi:ne200100]<std::array<float,1600ul> *,int,Scandium::ScandiumPPG::scandium_spo2_processor_t::log_input_signal(void)::$_0>(int *a1, int *a2, void *a3, const void **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v7 = a1;
    v8 = 0;
    do
    {
      if (*(a4 + 23) >= 0)
      {
        v9 = *(a4 + 23);
      }

      else
      {
        v9 = a4[1];
      }

      std::string::basic_string[abi:ne200100](&v21, v9 + 1);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v21.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(a4 + 23) >= 0)
        {
          v11 = a4;
        }

        else
        {
          v11 = *a4;
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      std::to_string(&v20, v8);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v20;
      }

      else
      {
        v12 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v21, v12, size);
      v15 = v14->__r_.__value_.__r.__words[0];
      v22[0] = v14->__r_.__value_.__l.__size_;
      *(v22 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = v7 + 1600;
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v18, v7, v7 + 1600, 0x640uLL);
      __p = v15;
      *v24 = v22[0];
      *&v24[7] = *(v22 + 7);
      v25 = v16;
      v26 = *v18;
      v27 = v19;
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      v28 = 3;
      v29 = 6;
      std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&>(a3, &__p, &__p);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v26);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      ++v8;
      v7 += 1600;
    }

    while (v17 != a2);
  }
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_mvmt_posture_bailout(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v1 = off_28761FF08(this);
  v2 = v1 + 192512;
  v3 = *(v1 + 193136);
  if (!(v3 % *(v1 + 193144)) && *(v1 + 193146) <= v3)
  {
    if (v3 >= 0x641)
    {
      Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_mvmt_posture_bailout();
    }

    v4 = v1;
    v5 = *(v1 + 193145);
    v6 = &v1[v3 - v5 + 76863];
    v7 = -11520;
    do
    {
      if (v5)
      {
        memcpy(&v29[v7 + 11520], v6, 4 * v5);
      }

      v6 += 1600;
      v7 += 3840;
    }

    while (v7);
    Scandium::scandium_mvmt_detection_t::process((v4 + 192710), v29, 0, v5);
    if (v2[616] == 1)
    {
      *(v2 + 2516) |= *(v2 + 825);
      *(v2 + 2517) |= *(v2 + 824);
    }

    __p = 0;
    v28[0] = 0;
    v28[1] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v2 + 117), *(v2 + 118), (*(v2 + 118) - *(v2 + 117)) >> 2);
    v9 = __p;
    if (v28[0] != __p)
    {
      if (*(v2 + 650) == 1)
      {
        v10 = (__p + 4);
        if (__p + 4 != v28[0])
        {
          v11 = *__p;
          v12 = (__p + 4);
          do
          {
            v13 = *v12++;
            v14 = v13;
            if (v11 < v13)
            {
              v11 = v14;
              v9 = v10;
            }

            v10 = v12;
          }

          while (v12 != v28[0]);
        }

        Scandium::fill_valid(v4 + 193038, v8, *v9);
        v16 = __p;
        v17 = (__p + 4);
        if (__p != v28[0] && v17 != v28[0])
        {
          v19 = *__p;
          v20 = (__p + 4);
          do
          {
            v21 = *v20++;
            v22 = v21;
            if (v21 < v19)
            {
              v19 = v22;
              v16 = v17;
            }

            v17 = v20;
          }

          while (v20 != v28[0]);
        }

        Scandium::fill_valid(v4 + 193037, v15, *v16);
        v23 = Scandium::sort_median(__p, (v28[0] - __p) >> 2);
        v25 = Scandium::fill_valid(v4 + 193039, v24, v23);
        log = Scandium::algs_get_log(v25);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          Scandium::ScandiumMvmt::scandium_mvmt_processor_t::compute_mvmt_posture_bailout(v28, log);
        }
      }

      v9 = __p;
    }

    if (v9)
    {
      v28[0] = v9;
      operator delete(v9);
    }
  }
}

void sub_26480DE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_dropped_samples_metrics(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v2 = 0;
  v3 = this + 770698;
  v4 = this + 632608;
  v5 = this + 625840;
  v12 = this + 632608;
  do
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        LODWORD(v6) = 320;
      }

      else
      {
        LODWORD(v6) = 640;
      }
    }

    else
    {
      if (!v2)
      {
        v6 = 0;
        v7 = *(this + 193136);
        goto LABEL_15;
      }

      LODWORD(v6) = 0;
    }

    if (*v3 == 1)
    {
      v7 = 0;
      v6 = 0;
    }

    else
    {
      if (((*(this + 193136) - v6) & ~((*(this + 193136) - v6) >> 31)) >= 960)
      {
        v7 = 960;
      }

      else
      {
        v7 = (*(this + 193136) - v6) & ~((*(this + 193136) - v6) >> 31);
      }

      v6 = v6;
    }

LABEL_15:
    v8 = 0;
    v9 = &v5[4 * v6];
    v10 = v4;
    do
    {
      Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_dropped_samples_metrics_for_window_and_type(this, v10, v9, v7, dword_26481FDA0[v8++]);
      v10 += 4;
    }

    while (v8 != 3);
    ++v2;
    v4 += 12;
  }

  while (v2 != 4);
  result.n128_u64[0] = *v12;
  result.n128_u16[4] = *(v12 + 6);
  result.n128_u16[5] = *(v12 + 8);
  result.n128_u16[6] = *(v12 + 12);
  result.n128_u16[7] = *(v12 + 14);
  *(v3 + 765) = *(v12 + 4);
  *(v3 + 1510) = result;
  *(v3 + 763) = *(v12 + 18);
  *(v3 + 764) = *(v12 + 20);
  return result;
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_ppg(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v2 = 632240;
  v3 = 614848;
  v4 = 414972;
  v29 = this + 770704;
  v30 = this + 384252;
  v28 = this + 614656;
  bzero(this + 615616, 0x1E00uLL);
  v5 = 0;
  v6 = 0;
  v7 = 476412;
  v8 = 615232;
  v9 = 632304;
  v10 = 632368;
  v35 = -1;
  v11 = 770728;
  do
  {
    v23 = v6;
    v12 = byte_264821744;
    v31 = &Scandium::ScandiumPPG::path_array[4 * byte_264821744[v6]];
    v19 = v10;
    v36 = v10;
    v20 = v9;
    v21 = v8;
    v25 = v4;
    v26 = v3;
    v27 = v2;
    v22 = v7;
    v18 = v11;
    v13 = 4;
    v24 = v5;
    do
    {
      v33 = v13;
      v34 = v12 + 1;
      v32 = v31[*v12];
      v14 = *(this + v11);
      v42 = this + v2;
      v43 = this + v8;
      __B = 0;
      v38 = v5;
      v39 = this + v7;
      v40 = 960;
      v41 = v14;
      Scandium::ScandiumPPG::scandium_signal_conditioning_t::process(this + 96327, &__B, &v42);
      MEMORY[0x266741B90](this + 619456, 1, *(this + v8), 1, this + 619456, 1, 960);
      v15 = *(this + v11 - 16);
      v42 = this + v9;
      v43 = this + v3;
      __B = 1;
      v38 = v5;
      v39 = this + v4;
      v40 = 960;
      v41 = v15;
      Scandium::ScandiumPPG::scandium_signal_conditioning_t::process(this + 96327, &__B, &v42);
      v16 = v35;
      if (v32 != 2)
      {
        v16 = v35 + 1;
      }

      v35 = v16;
      if (v32 != 2)
      {
        v17 = v29[v16];
        v42 = this + v36;
        v43 = &v28[24 * v35];
        __B = 2;
        v38 = v5;
        v39 = &v30[3840 * v35];
        v40 = 960;
        v41 = v17;
        Scandium::ScandiumPPG::scandium_signal_conditioning_t::process(this + 96327, &__B, &v42);
        MEMORY[0x266741B90](this + 615616, 1, &v30[3840 * v35], 1, this + 615616, 1, 960);
      }

      ++v5;
      v7 += 3840;
      v8 += 24;
      v2 += 4;
      v4 += 3840;
      v3 += 24;
      v9 += 4;
      v36 += 4;
      ++v11;
      v12 = v34;
      v13 = v33 - 1;
    }

    while (v33 != 1);
    v6 = v23 + 1;
    v5 = v24 + 4;
    v11 = v18 + 4;
    v7 = v22 + 15360;
    v8 = v21 + 96;
    v2 = v27 + 16;
    v4 = v25 + 15360;
    v3 = v26 + 96;
    v9 = v20 + 16;
    v10 = v19 + 16;
  }

  while (v23 != 3);
  __B = 1090519040;
  vDSP_vsdiv(this + 153904, 1, &__B, this + 153904, 1, 0x3C0uLL);
  __B = 1098907648;
  vDSP_vsdiv(this + 154864, 1, &__B, this + 154864, 1, 0x3C0uLL);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_window_mvmt_posture(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v12[3] = 0;
  Scandium::scandium_mvmt_detection_t::scandium_mvmt_detection_t(v15, v13, v12);
  v4 = a1 + 770048;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v13);
  if (*(v4 + 2464) == 2)
  {
    v5 = 3.4028e38;
  }

  else
  {
    v5 = *(v4 + 2556);
  }

  v6 = 0;
  v7 = 0;
  v8 = -160;
  do
  {
    Scandium::scandium_mvmt_detection_t::processMvmt(v15, a2, v8 + 160, 0xA0uLL, *(v4 + 2544));
    Scandium::scandium_mvmt_detection_t::processPosture(v15, a2, v8 + 160, 0xA0, *(v4 + 2560), v5);
    v7 += v15[0].u8[0];
    v6 += v16;
    v8 += 160;
  }

  while (v8 < 0x320);
  v9 = *(v4 + 2464) != 2 || *(v4 + 2548) >= v7;
  *(v4 + 2473) = v9;
  *(v4 + 2472) = *(v4 + 2552) >= v6;
  v10 = stats::mean(a2, 0x3C0);
  v11 = stats::mean((a2 + 7680), 0x3C0);
  *(v4 + 2475) = fabsf(v10) >= *(v4 + 2560);
  *(v4 + 2474) = v11 >= *(v4 + 2556);
  Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t(v15);
}

void sub_26480E4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t(va);
  _Unwind_Resume(a1);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, Scandium::ScandiumPPG::beats_t *a2)
{
  memset(&v83, 0, sizeof(v83));
  *&v3 = Scandium::ScandiumPPG::BGA_t::reset(v77);
  v4 = 0;
  v5 = 0;
  v72 = this + 623456;
  v6 = 765496;
  v7 = 623384;
  v8 = 614848;
  v63 = this + 614656;
  v64 = this + 769592;
  v61 = this + 595452;
  v62 = this + 580092;
  v9 = 615232;
  v10 = 615240;
  v11 = 625176;
  v12 = 767544;
  LODWORD(v70) = -1;
  v71 = this;
  do
  {
    v66 = &Scandium::ScandiumPPG::path_array[4 * byte_264821744[v5]];
    v58 = v6;
    v59 = v5;
    v65 = 3840 * v5;
    v53 = v11;
    v54 = v10;
    v56 = v8;
    v57 = v7;
    v13 = 4;
    v55 = v9;
    v52 = v12;
    v60 = v4;
    v68 = byte_264821744;
    do
    {
      v14 = *v68++;
      *(v72 + 296) = *(v72 + 295);
      v69 = v66[v14];
      v15 = v70;
      if (v69 != 2)
      {
        v15 = v70 + 1;
      }

      v70 = v15;
      if (*(this + v10) - *(this + v10 - 8) <= 8uLL)
      {
        *&v3 = Scandium::ScandiumPPG::BGA_t::reset((this + v7));
      }

      else
      {
        Scandium::ScandiumPPG::scandium_bga_t::compute_bga_measures(v75, a2, 960, *&v3);
        v81 = *v75;
        v16 = v76;
        v82 = v76;
        *&v80 = v75[1];
        v75[0] = 0;
        v75[1] = 0;
        v76 = 0;
        v73.__r_.__value_.__s.__data_[0] = 1;
        std::vector<BOOL>::assign(v75, v16, &v73);
        *&v73.__r_.__value_.__l.__data_ = v81;
        LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
        Scandium::ScandiumPPG::scandium_bga_t::compute_ppg_snips((v71 + v6), (v71 + v9), a2, &v73, v77, v75, 0);
        *&v73.__r_.__value_.__l.__data_ = v81;
        LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
        Scandium::ScandiumPPG::scandium_bga_t::compute_ppg_snips((v71 + v12), (v71 + v8), a2, &v73, v77, v75, 1u);
        if (v69 != 2)
        {
          *&v73.__r_.__value_.__l.__data_ = v81;
          LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
          Scandium::ScandiumPPG::scandium_bga_t::compute_ppg_snips(&v64[128 * v70], &v63[24 * v70], a2, &v73, v77, v75, 2u);
        }

        v17 = std::vector<BOOL>::vector(__p, v75);
        Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_good_snips(v17, (v72 + 2360), &v81, __p, v77);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        if (*(v72 + 296) != *(v72 + 295))
        {
          *&v73.__r_.__value_.__l.__data_ = v81;
          LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
          Scandium::ScandiumPPG::scandium_bga_t::compile_bga_metrics((v71 + v6), (v71 + v9), v72 + 295, &v73, v77, 0, *&v81);
          *&v73.__r_.__value_.__l.__data_ = v81;
          LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
          Scandium::ScandiumPPG::scandium_bga_t::compile_bga_metrics((v71 + v12), (v71 + v8), v72 + 295, &v73, v77, 1, *&v81);
          Scandium::ScandiumPPG::scandium_bga_t::compute_wavelength((v71 + v6), v18, v4, &v62[v65], v72 + 295, &v81, v77, 0);
          Scandium::ScandiumPPG::scandium_bga_t::compute_wavelength((v71 + v12), v19, v4, &v61[v65], v72 + 295, &v81, v77, 1);
          if (v69 != 2)
          {
            *&v73.__r_.__value_.__l.__data_ = v81;
            LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
            Scandium::ScandiumPPG::scandium_bga_t::compile_bga_metrics(&v64[128 * v70], &v63[24 * v70], v72 + 295, &v73, v77, 2, *&v81);
          }

          *&v73.__r_.__value_.__l.__data_ = v81;
          LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
          Scandium::ScandiumPPG::scandium_bga_t::compute_snip_corr(v71 + v6, (v71 + v9), v72 + 295, &v73, v77, 0);
          *&v73.__r_.__value_.__l.__data_ = v81;
          LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
          Scandium::ScandiumPPG::scandium_bga_t::compute_snip_corr(v71 + v12, (v71 + v8), v72 + 295, &v73, v77, 1);
          if (v69 != 2)
          {
            *&v73.__r_.__value_.__l.__data_ = v81;
            LODWORD(v73.__r_.__value_.__r.__words[2]) = v82;
            Scandium::ScandiumPPG::scandium_bga_t::compute_snip_corr(&v64[128 * v70], &v63[24 * v70], v72 + 295, &v73, v77, 2);
          }

          v20 = v81;
          v21 = stats::pearsonr(**&v77[0], **(&v77[0] + 1), v81);
          *(&v79 + 1) = __PAIR64__(COERCE_UNSIGNED_INT(Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga_openness(v22, **&v77[0], **(&v77[0] + 1), v20)), LODWORD(v21));
        }

        this = v71;
        v23 = (v71 + v7);
        v24 = v79;
        v25 = v80;
        v23[4] = v78;
        v23[5] = v24;
        v23[6] = v25;
        v26 = v77[1];
        *v23 = v77[0];
        v23[1] = v26;
        v3 = v77[3];
        v23[2] = v77[2];
        v23[3] = v3;
        LODWORD(v3) = HIDWORD(v78);
        *(v71 + v11) = HIDWORD(v78);
        if (v75[0])
        {
          operator delete(v75[0]);
        }
      }

      v4 = (v4 + 1);
      v12 += 128;
      v6 += 128;
      v9 += 24;
      v10 += 24;
      v8 += 24;
      v7 += 112;
      v11 += 40;
      --v13;
    }

    while (v13);
    v5 = v59 + 1;
    v4 = (v60 + 4);
    v12 = v52 + 512;
    v6 = v58 + 512;
    v9 = v55 + 96;
    v10 = v54 + 96;
    v8 = v56 + 96;
    v7 = v57 + 448;
    v11 = v53 + 160;
  }

  while (v59 != 3);
  v27 = this + 632464;
  v28 = *(this + 193134);
  v29 = this + 632476;
  v30 = *(this + v28 + 158116);
  v31 = *(this + v28 + 158119);
  v32 = 16;
  v33 = v72;
  do
  {
    v30 = *(v33 - 1) + v30;
    *&v27[4 * v28] = v30;
    v34 = *v33;
    v33 += 28;
    v31 = v34 + v31;
    *&v29[4 * v28] = v31;
    --v32;
  }

  while (v32);
  *&v27[4 * v28] = v30 * 0.0625;
  *&v29[4 * v28] = v31 * 0.0625;
  std::string::resize(&v83, 0, 0);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    v83.__r_.__value_.__l.__size_ = 20;
    v35 = v83.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v83.__r_.__value_.__s + 23) = 20;
    v35 = &v83;
  }

  v36 = 0;
  strcpy(v35, "scandium median HR: ");
  v37 = this + 623480;
  do
  {
    std::to_string(&v73, *&v37[v36]);
    v38 = std::string::append(&v73, " ", 1uLL);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v76 = v38->__r_.__value_.__r.__words[2];
    *v75 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v76 >= 0)
    {
      v40 = v75;
    }

    else
    {
      v40 = v75[0];
    }

    if (v76 >= 0)
    {
      v41 = HIBYTE(v76);
    }

    else
    {
      v41 = v75[1];
    }

    v42 = std::string::append(&v83, v40, v41);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75[0]);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    v36 += 112;
  }

  while (v36 != 1792);
  log = Scandium::algs_get_log(v42);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga();
  }

  std::string::resize(&v83, 0, 0);
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    v83.__r_.__value_.__l.__size_ = 18;
    v44 = v83.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v83.__r_.__value_.__s + 23) = 18;
    v44 = &v83;
  }

  v45 = 0;
  strcpy(v44, "scandium mean HR: ");
  do
  {
    std::to_string(&v73, *(v71 + v45 + 623484));
    v46 = std::string::append(&v73, " ", 1uLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v76 = v46->__r_.__value_.__r.__words[2];
    *v75 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if (v76 >= 0)
    {
      v48 = v75;
    }

    else
    {
      v48 = v75[0];
    }

    if (v76 >= 0)
    {
      v49 = HIBYTE(v76);
    }

    else
    {
      v49 = v75[1];
    }

    v50 = std::string::append(&v83, v48, v49);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v75[0]);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    v45 += 112;
  }

  while (v45 != 1792);
  v51 = Scandium::algs_get_log(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga();
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }
}

void sub_26480ECD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_spo2(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 623456;
  v5 = 614848;
  memset(&v46, 0, sizeof(v46));
  v6 = 615232;
  v7 = 625192;
  v8 = 625196;
  do
  {
    v32 = v4;
    v33 = v3;
    v9 = byte_264821744;
    v37 = byte_264821744[v3];
    v10 = 4;
    v28 = v8;
    v29 = v7;
    v30 = v6;
    v31 = v5;
    v35 = v1;
    v34 = v2;
    do
    {
      v38 = v10;
      v11 = *v9++;
      Scandium::ScandiumPPG::scandium_calibration_t::process(this + 770792, v37, v11, &v45[v1], *(this + v4), *(this + v4 - 4));
      v42 = *&v45[v1];
      v43 = *&v45[v1 + 8];
      v39.__r_.__value_.__r.__words[0] = this + v8;
      v39.__r_.__value_.__l.__size_ = this + v7;
      __p[0] = v2;
      __p[1] = this + v6;
      v41 = this + v5;
      v44 = 0;
      Scandium::ScandiumPPG::scandium_spo2_t::process(this + 770800, __p, &v39);
      ++v2;
      v4 += 112;
      v1 += 12;
      v6 += 24;
      v5 += 24;
      v7 += 40;
      v8 += 40;
      v10 = v38 - 1;
    }

    while (v38 != 1);
    v3 = v33 + 1;
    v2 = v34 + 4;
    v4 = v32 + 448;
    v1 = v35 + 48;
    v6 = v30 + 96;
    v5 = v31 + 96;
    v7 = v29 + 160;
    v8 = v28 + 160;
  }

  while (v33 != 3);
  std::string::resize(&v46, 0, 0);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    v46.__r_.__value_.__l.__size_ = 15;
    v12 = v46.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v46.__r_.__value_.__s + 23) = 15;
    v12 = &v46;
  }

  v13 = 0;
  strcpy(v12, "scandium spo2: ");
  do
  {
    std::to_string(&v39, *(this + v13 + 625196));
    v14 = std::string::append(&v39, " ", 1uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v41 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v41) >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (SHIBYTE(v41) >= 0)
    {
      v17 = HIBYTE(v41);
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::append(&v46, v16, v17);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v13 += 40;
  }

  while (v13 != 640);
  log = Scandium::algs_get_log(v18);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga();
  }

  std::string::resize(&v46, 0, 0);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    v46.__r_.__value_.__l.__size_ = 19;
    v20 = v46.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v46.__r_.__value_.__s + 23) = 19;
    v20 = &v46;
  }

  v21 = 0;
  strcpy(v20, "scandium raw conf: ");
  do
  {
    std::to_string(&v39, *(this + v21 + 625192));
    v22 = std::string::append(&v39, " ", 1uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v41 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v41) >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (SHIBYTE(v41) >= 0)
    {
      v25 = HIBYTE(v41);
    }

    else
    {
      v25 = __p[1];
    }

    v26 = std::string::append(&v46, v24, v25);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v21 += 40;
  }

  while (v21 != 640);
  v27 = Scandium::algs_get_log(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga();
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_26480F12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  _Unwind_Resume(exception_object);
}

float *Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_quality_metric(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v1 = 0;
  v121 = *MEMORY[0x277D85DE8];
  v2 = (this + 771008);
  v87 = this + 632488;
  v103[0] = 0;
  v103[1] = 0;
  v3 = this + 632240;
  v4 = this + 632304;
  v102[0] = 0;
  v102[1] = 0;
  v101[0] = 0;
  v101[1] = 0;
  v5 = this + 632368;
  do
  {
    v6 = 0;
    v7 = byte_264821744[v1];
    v8 = &Scandium::ScandiumPPG::path_array[4 * v7];
    v9 = 4 * v7;
    v10 = *(v103 + v1);
    v11 = *(v102 + v1);
    do
    {
      v12 = byte_264821744[v6];
      v13 = v8[v12];
      v14 = v9 + v12;
      if (v13 != 2)
      {
        *(v101 + v1) = *&v5[4 * v14] + *(v101 + v1);
      }

      v10 = *&v3[4 * v14] + v10;
      v11 = *&v4[4 * v14] + v11;
      ++v6;
    }

    while (v6 != 4);
    *(v103 + v1) = v10;
    *(v102 + v1++) = v11;
  }

  while (v1 != 4);
  v88 = v2;
  for (i = 0; i != 4; ++i)
  {
    memset(__p, 0, 24);
    memset(v104, 0, 24);
    memset(v100, 0, 24);
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v100, this + 3840 * i + 553212, this + 3840 * i + 557052, 0x3C0uLL);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    *__p = v100[0];
    *&__p[8] = *&v100[1];
    *(this + i + 158108) = stats::mean(v100[0], ((v100[1] - v100[0]) >> 2)) / 1000000.0;
    *&__p[8] = *__p;
    memset(v100, 0, 24);
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v100, this + 3840 * i + 537852, this + 3840 * i + 541692, 0x3C0uLL);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    *__p = *v100;
    *&__p[16] = v100[2];
    v16 = v100[1];
    for (j = v100[0]->cp_time; j != v16; ++j)
    {
      *j = *j / 1000000.0;
    }

    Scandium::ScandiumPPG::scandium_signal_conditioning_t::compute_ac(this + 96327, __p, v104);
    *(this + i + 158112) = stats::std(*v104, ((*&v104[8] - *v104) >> 2), 1);
    if (*v104)
    {
      *&v104[8] = *v104;
      operator delete(*v104);
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 623440;
  v92 = this + 623384;
  v24 = 623448;
  v25 = 623460;
  v26 = 623472;
  v27 = 623480;
  v28 = 623488;
  do
  {
    v29 = byte_264821744;
    v91 = v21;
    v89 = byte_264821744[v21];
    v90 = &Scandium::ScandiumPPG::path_array[4 * v89];
    v98 = v18;
    v99 = -16;
    v85 = v19;
    v86 = v18;
    v80 = v26;
    v81 = v25;
    v30 = v25;
    v31 = v26;
    v78 = v28;
    v79 = v27;
    v97 = v27;
    v82 = v24;
    v83 = v23;
    v84 = v20;
    do
    {
      v96 = v22;
      v32 = *v29;
      v95 = v29 + 1;
      v33 = v90[v32];
      v34 = this + 623384;
      v35 = *&v92[v19];
      if (v35)
      {
        v36 = *&v92[v19 + 16];
        if (v36)
        {
          v37 = v28;
          v38 = v90[v32];
          Scandium::ScandiumPPG::scandium_spo2_t::compute_orthogonal_regression(this + 770800, v35, v36, &v92[v20 + 1816]);
          v34 = this + 623384;
          v33 = v38;
          v28 = v37;
        }
      }

      *&v39 = *(this + v30);
      v40 = v31;
      DWORD2(v39) = *(this + v31);
      v41 = &v34[v20];
      HIDWORD(v39) = *&v34[v20 + 1812];
      *__p = v39;
      LODWORD(v39) = *(this + v97);
      v94 = v28;
      *&__p[20] = *(this + v28);
      v42 = *&v34[v20 + 1816];
      *&__p[16] = v39;
      *&__p[28] = v42;
      *&v39 = *(this + v23);
      DWORD2(v39) = *(this + v24);
      HIDWORD(v39) = *&v34[v98 + 8856];
      *&v115[8] = v39;
      v43 = *&v34[v98 + 8984];
      *&v115[24] = *&v34[v98 + 8920];
      *&v115[28] = v43;
      v44 = *(v102 + v91);
      LODWORD(v116) = *(v103 + v91);
      DWORD1(v116) = v44;
      v45 = *&v34[v99 + 9064];
      DWORD2(v116) = *(v101 + v91);
      HIDWORD(v116) = v45;
      *v117 = *&v34[v99 + 9080];
      v46 = *(this + 770716);
      *&v117[4] = *(this + 770700);
      v47 = *(this + 770744);
      v48 = *(this + 770760);
      *&v117[32] = *(this + 770728);
      v118 = v47;
      *v115 = v33;
      v115[4] = v89;
      v115[5] = v32;
      *&v117[20] = v46;
      v49 = *(this + 770776);
      v119 = v48;
      v120 = v49;
      v111 = v47;
      v112 = v48;
      v113 = v49;
      v107 = v116;
      v108 = *v117;
      v109 = *&v117[16];
      v110 = *&v117[32];
      *v104 = *__p;
      *&v104[16] = *&__p[16];
      v105 = *v115;
      v106 = *&v115[16];
      v50 = v33;
      Scandium::ScandiumPPG::scandium_quality_metric_t::process(v88, v104);
      v51 = *v88;
      if (v50 == 2)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v88->u32[0] >> 1) & 1;
      }

      v41[1828] = (~v88->u8[0] & 0x7C) == 0;
      *&v53 = *__p;
      *(&v53 + 1) = __PAIR64__(*&__p[16], *&__p[8]);
      *(v41 + 112) = v53;
      *(v41 + 1820) = *&__p[20];
      if (v51.i8[0])
      {
        if (v50)
        {
          v54 = (v87 + 24);
          v55 = &v115[8];
          if (v50 != 1)
          {
            if (v50 != 2)
            {
              goto LABEL_35;
            }

            std::vector<float>::push_back[abi:ne200100](v87, &v115[8]);
            v54 = (v87 + 48);
            v55 = &v115[12];
          }
        }

        else
        {
          v54 = (v87 + 72);
          v55 = &v115[12];
        }

        std::vector<float>::push_back[abi:ne200100](v54, v55);
      }

LABEL_35:
      v22 = v96 + v52;
      v20 += 40;
      v24 += 112;
      v23 += 112;
      v28 = v94 + 112;
      v31 = v40 + 112;
      v30 += 112;
      v19 += 112;
      v97 += 112;
      v98 += 4;
      v56 = v99 == -4;
      v99 += 4;
      v29 = v95;
    }

    while (!v56);
    v21 = v91 + 1;
    v20 = v84 + 160;
    v24 = v82 + 448;
    v23 = v83 + 448;
    v28 = v78 + 448;
    v27 = v79 + 448;
    v26 = v80 + 448;
    v25 = v81 + 448;
    v19 = v85 + 448;
    v18 = v86 + 16;
  }

  while (v91 != 3);
  v57 = v88[137].i32[0];
  if (v57 <= v22)
  {
    v57 = v96 + v52;
  }

  v88[137].i32[0] = v57;
  v58 = v88[137].i32[1];
  if (v22 < v58)
  {
    v58 = v96 + v52;
  }

  v88[137].i32[1] = v58;
  if (v22 <= 0)
  {
    ++v88[141].i32[1];
  }

  v59 = *(v87 + 1);
  if (*v87 != v59)
  {
    v60 = stats::mean(*v87, ((v59 - *v87) >> 2));
    Scandium::fill_valid(this + 193045, v61, v60);
  }

  v62 = *(v87 + 3);
  v63 = *(v87 + 4);
  if (v62 != v63)
  {
    v64 = stats::mean(v62, ((v63 - v62) >> 2));
    Scandium::fill_valid(this + 193046, v65, v64);
  }

  v66 = *(v87 + 6);
  v67 = *(v87 + 7);
  if (v66 != v67)
  {
    v68 = stats::mean(v66, ((v67 - v66) >> 2));
    Scandium::fill_valid(this + 193047, v69, v68);
  }

  v70 = *(v87 + 9);
  v71 = *(v87 + 10);
  if (v70 != v71)
  {
    v72 = stats::mean(v70, ((v71 - v70) >> 2));
    Scandium::fill_valid(this + 193048, v73, v72);
  }

  result = *(v87 + 12);
  v75 = *(v87 + 13);
  if (result != v75)
  {
    v76 = stats::mean(result, ((v75 - result) >> 2));
    return Scandium::fill_valid(this + 193049, v77, v76);
  }

  return result;
}

void sub_26480F8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a65)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_hw_fom_core_analytics(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770728, this + 770744, 16);
  median_of_path = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 258, v2);
  Scandium::fill_valid(this + 193111, v4, median_of_path);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770728, this + 770744, 16);
  v6 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 257, v5);
  Scandium::fill_valid(this + 193112, v7, v6);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770728, this + 770744, 16);
  v9 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 256, v8);
  Scandium::fill_valid(this + 193113, v10, v9);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770712, this + 770728, 16);
  v12 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 258, v11);
  Scandium::fill_valid(this + 193114, v13, v12);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770712, this + 770728, 16);
  v15 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 257, v14);
  Scandium::fill_valid(this + 193115, v16, v15);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770712, this + 770728, 16);
  v18 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 256, v17);
  Scandium::fill_valid(this + 193116, v19, v18);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770704, this + 770712, 8);
  v21 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 0, v20);
  Scandium::fill_valid(this + 193117, v22, v21);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v122, this + 770700, this + 770704, 4);
  v24 = Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(&v122, 0, v23);
  Scandium::fill_valid(this + 193118, v25, v24);
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v122, this + 770776, this + 770792, 4uLL);
  v26 = v122;
  v27 = Scandium::sort_median(v122, (v123 - v122) >> 2);
  Scandium::fill_valid(this + 193119, v28, v27);
  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v122, this + 770760, this + 770776, 4uLL);
  if (v26)
  {
    operator delete(v26);
  }

  v29 = v122;
  v30 = Scandium::sort_median(v122, (v123 - v122) >> 2);
  Scandium::fill_valid(this + 193120, v31, v30);
  v122 = 0;
  v123 = 0;
  v124 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v122, this + 770744, this + 770760, 4uLL);
  if (v29)
  {
    operator delete(v29);
  }

  v32 = v122;
  v33 = Scandium::sort_median(v122, (v123 - v122) >> 2);
  Scandium::fill_valid(this + 193121, v34, v33);
  v35 = *(this + 193136);
  if (v35 >= 1)
  {
    LODWORD(v121[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](&v122, 8uLL, v121);
    LODWORD(v120[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v121, 8uLL, v120);
    LODWORD(v119[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v120, 8uLL, v119);
    LODWORD(v118[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v119, 0x10uLL, v118);
    LODWORD(v117[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v118, 0x10uLL, v117);
    LODWORD(v116[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v117, 0x10uLL, v116);
    LODWORD(v115[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v116, 0x10uLL, v115);
    LODWORD(v114[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v115, 0x10uLL, v114);
    LODWORD(v113[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v114, 0x10uLL, v113);
    LODWORD(v112[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v113, 4uLL, v112);
    LODWORD(v111[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v112, 4uLL, v111);
    LODWORD(v110[0]) = -1082130432;
    std::vector<float>::vector[abi:ne200100](v111, 4uLL, v110);
    v37 = 0;
    v38 = (this + 153852);
    do
    {
      Scandium::ScandiumPPG::calc_ppg_ac_metrics(v38, v35, (v116[0] + v37), (v115[0] + v37), v36);
      v39 = stats::mean(v38, v35);
      *(v114[0] + v37) = v39;
      v37 += 4;
      v38 = (v38 + 6400);
    }

    while (v37 != 64);
    v40 = 0;
    v41 = (this + 51452);
    do
    {
      Scandium::ScandiumPPG::calc_ppg_ac_metrics(v41, v35, (v119[0] + v40), (v118[0] + v40), v36);
      v42 = stats::mean(v41, v35);
      *(v117[0] + v40) = v42;
      v40 += 4;
      v41 = (v41 + 6400);
    }

    while (v40 != 64);
    v43 = 0;
    v44 = (this + 252);
    do
    {
      Scandium::ScandiumPPG::calc_ppg_ac_metrics(v44, v35, &v122[v43], (v121[0] + v43), v36);
      v45 = stats::mean(v44, v35);
      *(v120[0] + v43) = v45;
      v43 += 4;
      v44 = (v44 + 6400);
    }

    while (v43 != 32);
    v46 = 0;
    v47 = (this + 256252);
    do
    {
      Scandium::ScandiumPPG::calc_ppg_ac_metrics(v47, v35, (v113[0] + v46), (v112[0] + v46), v36);
      v48 = stats::mean(v47, v35);
      *(v111[0] + v46) = v48;
      v46 += 4;
      v47 = (v47 + 6400);
    }

    while (v46 != 16);
    v49 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v116, 258);
    Scandium::fill_valid(this + 193087, v50, v49);
    v51 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v116, 257);
    Scandium::fill_valid(this + 193088, v52, v51);
    v53 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v116, 256);
    Scandium::fill_valid(this + 193089, v54, v53);
    v55 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v115, 258);
    Scandium::fill_valid(this + 193095, v56, v55);
    v57 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v115, 257);
    Scandium::fill_valid(this + 193096, v58, v57);
    v59 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v115, 256);
    Scandium::fill_valid(this + 193097, v60, v59);
    v61 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v114, 258);
    Scandium::fill_valid(this + 193103, v62, v61);
    v63 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v114, 257);
    Scandium::fill_valid(this + 193104, v64, v63);
    v65 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v114, 256);
    Scandium::fill_valid(this + 193105, v66, v65);
    v67 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v119, 258);
    Scandium::fill_valid(this + 193090, v68, v67);
    v69 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v119, 257);
    Scandium::fill_valid(this + 193091, v70, v69);
    v71 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v119, 256);
    Scandium::fill_valid(this + 193092, v72, v71);
    v73 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v118, 258);
    Scandium::fill_valid(this + 193098, v74, v73);
    v75 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v118, 257);
    Scandium::fill_valid(this + 193099, v76, v75);
    v77 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v118, 256);
    Scandium::fill_valid(this + 193100, v78, v77);
    v79 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v117, 258);
    Scandium::fill_valid(this + 193106, v80, v79);
    v81 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v117, 257);
    Scandium::fill_valid(this + 193107, v82, v81);
    v83 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v117, 256);
    Scandium::fill_valid(this + 193108, v84, v83);
    v85 = Scandium::ScandiumPPG::get_median_of_path_type<float>(&v122, 0);
    Scandium::fill_valid(this + 193093, v86, v85);
    v87 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v121, 0);
    Scandium::fill_valid(this + 193101, v88, v87);
    v89 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v120, 0);
    Scandium::fill_valid(this + 193109, v90, v89);
    v91 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v113, 0);
    Scandium::fill_valid(this + 193094, v92, v91);
    v93 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v112, 0);
    Scandium::fill_valid(this + 193102, v94, v93);
    v95 = Scandium::ScandiumPPG::get_median_of_path_type<float>(v111, 0);
    Scandium::fill_valid(this + 193110, v96, v95);
    v110[0] = this + 307452;
    v110[1] = this + 313852;
    v110[2] = this + 320252;
    Scandium::ScandiumPPG::calc_session_mavs(v110, v35, 3u, &__p);
    v97 = __p;
    if (v109 != __p)
    {
      v98 = stats::min(__p, ((v109 - __p) >> 2));
      Scandium::fill_valid(this + 193122, v99, v98);
      v100 = stats::max(__p, ((v109 - __p) >> 2));
      Scandium::fill_valid(this + 193123, v101, v100);
      v102 = stats::mean(__p, ((v109 - __p) >> 2));
      Scandium::fill_valid(this + 193124, v103, v102);
      v104 = Scandium::sort_median(__p, (v109 - __p) >> 2);
      Scandium::fill_valid(this + 193125, v105, v104);
      v106 = stats::std(__p, ((v109 - __p) >> 2), 0);
      Scandium::fill_valid(this + 193126, v107, v106);
      v97 = __p;
    }

    if (v97)
    {
      v109 = v97;
      operator delete(v97);
    }

    if (v111[0])
    {
      v111[1] = v111[0];
      operator delete(v111[0]);
    }

    if (v112[0])
    {
      v112[1] = v112[0];
      operator delete(v112[0]);
    }

    if (v113[0])
    {
      v113[1] = v113[0];
      operator delete(v113[0]);
    }

    if (v114[0])
    {
      v114[1] = v114[0];
      operator delete(v114[0]);
    }

    if (v115[0])
    {
      v115[1] = v115[0];
      operator delete(v115[0]);
    }

    if (v116[0])
    {
      v116[1] = v116[0];
      operator delete(v116[0]);
    }

    if (v117[0])
    {
      v117[1] = v117[0];
      operator delete(v117[0]);
    }

    if (v118[0])
    {
      v118[1] = v118[0];
      operator delete(v118[0]);
    }

    if (v119[0])
    {
      v119[1] = v119[0];
      operator delete(v119[0]);
    }

    if (v120[0])
    {
      v120[1] = v120[0];
      operator delete(v120[0]);
    }

    if (v121[0])
    {
      v121[1] = v121[0];
      operator delete(v121[0]);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }
  }

  if (v32)
  {
    operator delete(v32);
  }
}

void sub_264810398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v37 = *(v35 - 184);
  if (v37)
  {
    *(v35 - 176) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 160);
  if (v38)
  {
    *(v35 - 152) = v38;
    operator delete(v38);
  }

  v39 = *(v35 - 136);
  if (v39)
  {
    *(v35 - 128) = v39;
    operator delete(v39);
  }

  v40 = *(v35 - 112);
  if (v40)
  {
    *(v35 - 104) = v40;
    operator delete(v40);
  }

  v41 = *(v35 - 88);
  if (v41)
  {
    *(v35 - 80) = v41;
    operator delete(v41);
  }

  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::report_rslts(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, float *a2)
{
  v3 = this + 770698;
  v4 = (this + 623296);
  v5 = *(this + 770698);
  if (v5 == 1)
  {
    v6 = (this + 632464);
    Scandium::fill_valid(this + 193018, a2, *v4);
    Scandium::fill_valid(this + 193022, v7, v4[3]);
    Scandium::fill_valid(this + 193040, v8, *v6);
    Scandium::fill_valid(this + 193041, v9, *(this + 158119));
    v10 = &Scandium::ScandiumPPG::MAX_SPO2_DISPLAY_VALUE;
    if (*v4 <= 100.0)
    {
      v10 = v4;
    }

    if (*v4 < 60.0)
    {
      v10 = &Scandium::ScandiumPPG::MIN_SPO2_DISPLAY_VALUE;
    }

    v11 = *v10;
    v12 = memcpy(v48, this + 623384, sizeof(v48));
    v13 = Scandium::ScandiumPPG::scandium_spo2_processor_t::median_hr_allpaths(v12, v48);
    goto LABEL_35;
  }

  v15 = nan(&unk_264824E3E);
  if (v5 != 2)
  {
    v13 = v15;
    v11 = v13;
LABEL_35:
    v47 = v11;
    goto LABEL_36;
  }

  v16 = (v3 + 1838);
  v17 = *(v3 + 1838);
  if (v17 < 1)
  {
    goto LABEL_14;
  }

  v18 = 0;
  v19 = 0.0;
  v20 = v4;
  do
  {
    v21 = *v20++;
    v22 = v19 + v21;
    v19 = v19 + v21;
    ++v18;
    --v17;
  }

  while (v17);
  if (v18)
  {
    v23 = v22 / v18;
  }

  else
  {
LABEL_14:
    v23 = NAN;
  }

  Scandium::fill_valid(this + 193018, v14, roundf(v23));
  v25 = *v16;
  if (v25 < 1)
  {
    goto LABEL_20;
  }

  v26 = 0;
  v27 = v4 + 3;
  v28 = 0.0;
  do
  {
    v29 = *v27++;
    v30 = v28 + v29;
    v28 = v28 + v29;
    ++v26;
    --v25;
  }

  while (v25);
  if (v26)
  {
    v31 = v30 / v26;
  }

  else
  {
LABEL_20:
    v31 = NAN;
  }

  Scandium::fill_valid(this + 193022, v24, v31);
  v33 = *v16;
  v48[0] = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  if (v33 >= 1)
  {
    vDSP_meanv_wrapper(this + 158116, 1, v48, v33);
    v35 = v48[0];
  }

  Scandium::fill_valid(this + 193040, v32, v35);
  v37 = *v16;
  v48[0] = 0.0;
  if (v37 >= 1)
  {
    vDSP_meanv_wrapper(this + 158119, 1, v48, v37);
    v34 = v48[0];
  }

  v38 = Scandium::fill_valid(this + 193041, v36, v34);
  v39 = *v16;
  if (v39 < 1)
  {
    goto LABEL_30;
  }

  v40 = 0;
  v41 = 0.0;
  v42 = *v16;
  do
  {
    v43 = *v4++;
    v44 = v41 + v43;
    v41 = v41 + v43;
    ++v40;
    --v42;
  }

  while (v42);
  if (v40)
  {
    v45 = v44 / v40;
  }

  else
  {
LABEL_30:
    v45 = NAN;
  }

  v46 = roundf(v45);
  if (v46 <= 100.0)
  {
    v11 = v46;
  }

  else
  {
    v11 = 100.0;
  }

  v13 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_median_hr(v38, v39, (this + 623368));
  v47 = 60.0;
  if (v46 >= 60.0)
  {
    goto LABEL_35;
  }

LABEL_36:
  Scandium::ScandiumPPG::scandium_spo2_processor_t::result_handler_proxy(this, v47, v13);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::result_handler_proxy(uint64_t a1, float a2, float a3)
{
  v52 = *MEMORY[0x277D85DE8];
  log = Scandium::algs_get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283777;
    v22 = a2;
    v23 = 2049;
    v24 = a3;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium report results: spo2: %{private}.06f hr: %{private}.06f", buf, 0x16u);
  }

  Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(a1);
  if (*(a1 + 772768))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "report");
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[13],char const(&)[7],0>(buf, "algs_version", "11.3.2");
    std::string::basic_string[abi:ne200100]<0>(v25, "algs_mode");
    v26 = *(a1 + 770698);
    v27 = 1;
    v7 = *(a1 + 772516);
    std::string::basic_string[abi:ne200100]<0>(v28, "optical_gen");
    v29 = v7;
    v30 = 1;
    v8 = *(a1 + 772536);
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, (a1 + 623296), a1 + 623296 + 4 * v8, v8);
    std::string::basic_string[abi:ne200100]<0>(v31, "window_spo2");
    v32 = *v15;
    v33 = v16;
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0;
    v34 = 3;
    v35 = 6;
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, (a1 + 623308), a1 + 623320, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v36, "window_spo2_no_conf_gate");
    v37 = *v13;
    v38 = v14;
    v13[1] = 0;
    v14 = 0;
    v13[0] = 0;
    v39 = 3;
    v40 = 6;
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, (a1 + 623368), a1 + 623380, 3uLL);
    std::string::basic_string[abi:ne200100]<0>(v41, "window_hr");
    v42 = *__p;
    v43 = v12;
    __p[1] = 0;
    v12 = 0;
    __p[0] = 0;
    v44 = 3;
    v45 = 6;
    std::string::basic_string[abi:ne200100]<0>(v46, "result_spo2");
    v47 = a2;
    v48 = 3;
    std::string::basic_string[abi:ne200100]<0>(v49, "result_hr");
    v50 = a3;
    v51 = 3;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v18, buf, 8);
    v9 = *(a1 + 772768);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9, v19, v18);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v18);
    v10 = 576;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18[v10 + 24]);
      if (v18[v10 + 15] < 0)
      {
        operator delete(*&v17[v10]);
      }

      v10 -= 72;
    }

    while (v10);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v13[0])
    {
      v13[1] = v13[0];
      operator delete(v13[0]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    Scandium::ScandiumPPG::scandium_spo2_processor_t::log_core_analytics(a1);
  }

  if (*(a1 + 772640))
  {
    std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>::operator()(a1 + 772616, roundf(a2), roundf(a3));
  }
}

void sub_264810C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  v34 = -576;
  v35 = v32;
  do
  {
    v35 = std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v35) - 72;
    v34 += 72;
  }

  while (v34);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

float Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_bga_openness(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, stats *a2, stats *a3, const float *a4)
{
  if (!a4)
  {
    return NAN;
  }

  v6 = a2;
  v24 = 0;
  v7 = stats::mean(a2, a4);
  v8 = stats::mean(a3, a4);
  vDSP_maxv_wrapper(v6, 1, &v24 + 1, a4);
  vDSP_minv_wrapper(v6, 1, &v24, a4);
  v9 = v24;
  vDSP_maxv_wrapper(a3->cp_time, 1, &v24 + 1, a4);
  vDSP_minv_wrapper(a3->cp_time, 1, &v24, a4);
  result = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if (a4 >= 1)
  {
    v14 = a4;
    v13 = 0.0;
    v11 = 0.0;
    do
    {
      v15 = *v6++;
      v16 = (v15 - v7) / (*(&v9 + 1) - *&v9);
      v17 = *a3->cp_time;
      a3 = (a3 + 4);
      v18 = (v17 - v8) / (*(&v24 + 1) - *&v24);
      v13 = v13 + (v16 * v16);
      v12 = v12 + (v16 * v18);
      v11 = v11 + (v18 * v18);
      --v14;
    }

    while (v14);
  }

  v19 = v13 / a4;
  v20 = v11 / a4;
  v21 = sqrtf((((v12 / a4) * (v12 / a4)) * 4.0) + ((v20 - v19) * (v20 - v19)));
  v22 = v20 + v19;
  v23 = (v22 - v21) * 0.5;
  if (v23 >= 0.0)
  {
    return sqrtf(v23 / ((v22 + v21) * 0.5));
  }

  return result;
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_good_snips(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = 0;
  v7 = *(a3 + 16);
  if (v7 >= 1)
  {
    for (i = 0; i < v7; v11 = i)
    {
      if ((*(*a4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
      {
        std::vector<int>::push_back[abi:ne200100](a2, &v11);
        i = v11;
        v7 = *(a3 + 16);
      }

      ++i;
    }
  }

  *(a5 + 48) = a2;
  *(a5 + 104) = (*(a2 + 8) - *a2) >> 2;
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::compute_dropped_samples_metrics_for_window_and_type(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, int a5)
{
  *a2 = 0;
  v5 = a4 - 1;
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = a4; i; --i)
    {
      v11 = *a3++;
      v12 = (v11 & a5) != 0;
      if ((v11 & a5) != 0)
      {
        ++v9;
        *a2 = ++v7;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      else if (v8)
      {
LABEL_7:
        if (v9 > v6)
        {
          *(a2 + 2) = v9;
          v6 = v9;
        }

        v9 = 0;
      }

      --v5;
      v8 = v12;
    }
  }
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(float *this)
{
  v133 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v1 = *(this + 1);
  if (v1 != *this && *(this + 4) != *(this + 3) && *(this + 7) != *(this + 6) && *(this + 10) != *(this + 9) && *(this + 13) != *(this + 12))
  {
    v123 = 0;
    v124 = 0;
    v125 = 0;
    do
    {
      v4 = 0;
      v129 = 0;
      v130 = 0;
      v5 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        v6 = *v5++;
        if (v6 == 1)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v2 + v4));
        }

        v4 += 4;
      }

      while (v4 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v123, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      v2 += 64;
    }

    while (v2 != v1);
    v7 = *this;
    v8 = *(this + 1);
    v120 = 0;
    v121 = 0;
    v122 = 0;
    if (v7 != v8)
    {
      do
      {
        v9 = 0;
        v129 = 0;
        v130 = 0;
        v10 = &Scandium::ScandiumPPG::path_idx_to_type;
        v131 = 0;
        do
        {
          if (!*v10++)
          {
            std::vector<float>::push_back[abi:ne200100](&v129, (v7 + v9));
          }

          v9 += 4;
        }

        while (v9 != 64);
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v120, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v7 += 64;
      }

      while (v7 != v8);
      v7 = *this;
      v8 = *(this + 1);
    }

    v117 = 0;
    v118 = 0;
    for (i = 0; v7 != v8; v7 += 64)
    {
      v12 = 0;
      v129 = 0;
      v130 = 0;
      v13 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        v14 = *v13++;
        if (v14 == 2)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v7 + v12));
        }

        v12 += 4;
      }

      while (v12 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v117, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }
    }

    memset(v116, 0, sizeof(v116));
    v15 = *(this + 9);
    v16 = *(this + 10);
    if (v15 != v16)
    {
      do
      {
        v17 = v15 + 16;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v129, v15, v15 + 16, 0x10uLL);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v116, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v15 += 16;
      }

      while (v17 != v16);
      v15 = *(this + 9);
      v16 = *(this + 10);
    }

    memset(v115, 0, sizeof(v115));
    if (v15 != v16)
    {
      do
      {
        v18 = 0;
        v129 = 0;
        v130 = 0;
        v19 = &Scandium::ScandiumPPG::path_idx_to_type;
        v131 = 0;
        do
        {
          v20 = *v19++;
          if (v20 == 1)
          {
            std::vector<float>::push_back[abi:ne200100](&v129, &v15[v18]);
          }

          ++v18;
        }

        while (v18 != 16);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v115, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v15 += 16;
      }

      while (v15 != v16);
      v15 = *(this + 9);
      v16 = *(this + 10);
    }

    memset(v114, 0, sizeof(v114));
    if (v15 != v16)
    {
      do
      {
        v21 = 0;
        v129 = 0;
        v130 = 0;
        v22 = &Scandium::ScandiumPPG::path_idx_to_type;
        v131 = 0;
        do
        {
          if (!*v22++)
          {
            std::vector<float>::push_back[abi:ne200100](&v129, &v15[v21]);
          }

          ++v21;
        }

        while (v21 != 16);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v114, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v15 += 16;
      }

      while (v15 != v16);
      v15 = *(this + 9);
      v16 = *(this + 10);
    }

    memset(v113, 0, sizeof(v113));
    if (v15 != v16)
    {
      do
      {
        v24 = 0;
        v129 = 0;
        v130 = 0;
        v25 = &Scandium::ScandiumPPG::path_idx_to_type;
        v131 = 0;
        do
        {
          v26 = *v25++;
          if (v26 == 2)
          {
            std::vector<float>::push_back[abi:ne200100](&v129, &v15[v24]);
          }

          ++v24;
        }

        while (v24 != 16);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v113, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v15 += 16;
      }

      while (v15 != v16);
      v15 = *(this + 9);
      v16 = *(this + 10);
    }

    memset(v112, 0, sizeof(v112));
    if (v15 != v16)
    {
      do
      {
        v27 = v15 + 16;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v129, v15, v15 + 16, 0x10uLL);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v112, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v15 += 16;
      }

      while (v27 != v16);
    }

    memset(v111, 0, sizeof(v111));
    v28 = *(this + 6);
    v29 = *(this + 7);
    if (v28 != v29)
    {
      do
      {
        v30 = 0;
        v129 = 0;
        v130 = 0;
        v31 = &Scandium::ScandiumPPG::path_idx_to_type;
        v131 = 0;
        do
        {
          v32 = *v31++;
          if (v32 == 1)
          {
            std::vector<float>::push_back[abi:ne200100](&v129, (v28 + v30));
          }

          v30 += 4;
        }

        while (v30 != 64);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v111, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v28 += 64;
      }

      while (v28 != v29);
      v28 = *(this + 6);
      v29 = *(this + 7);
    }

    memset(v110, 0, sizeof(v110));
    if (v28 != v29)
    {
      do
      {
        v33 = 0;
        v129 = 0;
        v130 = 0;
        v34 = &Scandium::ScandiumPPG::path_idx_to_type;
        v131 = 0;
        do
        {
          if (!*v34++)
          {
            std::vector<float>::push_back[abi:ne200100](&v129, (v28 + v33));
          }

          v33 += 4;
        }

        while (v33 != 64);
        std::vector<std::vector<float>>::push_back[abi:ne200100](v110, &v129);
        if (v129)
        {
          v130 = v129;
          operator delete(v129);
        }

        v28 += 64;
      }

      while (v28 != v29);
      v28 = *(this + 6);
      v29 = *(this + 7);
    }

    memset(v109, 0, sizeof(v109));
    for (; v28 != v29; v28 += 64)
    {
      v36 = 0;
      v129 = 0;
      v130 = 0;
      v37 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        v38 = *v37++;
        if (v38 == 2)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v28 + v36));
        }

        v36 += 4;
      }

      while (v36 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](v109, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }
    }

    if (v118 == v117)
    {
      std::vector<float>::__throw_out_of_range[abi:ne200100]();
    }

    if (v124 == v123)
    {
      std::vector<float>::__throw_out_of_range[abi:ne200100]();
    }

    if (v121 == v120)
    {
      std::vector<float>::__throw_out_of_range[abi:ne200100]();
    }

    v40 = *v117;
    v39 = v117[1];
    v104 = *v123;
    v105 = v123[1];
    v102 = *v120;
    v103 = v120[1];
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v41 = *(this + 12);
    for (j = *(this + 13); v41 != j; v41 += 64)
    {
      v43 = 0;
      v129 = 0;
      v130 = 0;
      v44 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        v45 = *v44++;
        if (v45 != 2)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v41 + v43));
        }

        v43 += 4;
      }

      while (v43 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v106, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }
    }

    v129 = &unk_2876205B0;
    v130 = Scandium::sort_median;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = Scandium::sort_median;
    v128 = &v126;
    v46 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v106, &v129, &v126);
    Scandium::fill_valid(this + 193070, v47, v46);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    v48 = std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v129 = &v106;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v48);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::min;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    v49 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v123, &v129, &v126);
    Scandium::fill_valid(this + 193058, v50, v49);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::min;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    v51 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v120, &v129, &v126);
    Scandium::fill_valid(this + 193059, v52, v51);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::min;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    v53 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v117, &v129, &v126);
    Scandium::fill_valid(this + 193060, v54, v53);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = Scandium::sort_median;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = Scandium::sort_median;
    v55 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v123, &v129, &v126);
    Scandium::fill_valid(this + 193061, v56, v55);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = Scandium::sort_median;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = Scandium::sort_median;
    v57 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v120, &v129, &v126);
    Scandium::fill_valid(this + 193062, v58, v57);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = Scandium::sort_median;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = Scandium::sort_median;
    v59 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v117, &v129, &v126);
    Scandium::fill_valid(this + 193063, v60, v59);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::max;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    v61 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v123, &v129, &v126);
    Scandium::fill_valid(this + 193064, v62, v61);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::max;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    v63 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v120, &v129, &v126);
    Scandium::fill_valid(this + 193065, v64, v63);
    v65 = v39;
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::max;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    v66 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v117, &v129, &v126);
    Scandium::fill_valid(this + 193066, v67, v66);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v68 = *(this + 3);
    for (k = *(this + 4); v68 != k; v68 += 64)
    {
      v70 = 0;
      v129 = 0;
      v130 = 0;
      v71 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        v72 = *v71++;
        if (v72 == 1)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v68 + v70));
        }

        v70 += 4;
      }

      while (v70 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v106, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }
    }

    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::mean;
    v73 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v106, &v129, &v126);
    Scandium::fill_valid(this + 193067, v74, v73);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    v75 = std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v129 = &v106;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v75);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v76 = *(this + 3);
    for (m = *(this + 4); v76 != m; v76 += 64)
    {
      v78 = 0;
      v129 = 0;
      v130 = 0;
      v79 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        if (!*v79++)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v76 + v78));
        }

        v78 += 4;
      }

      while (v78 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v106, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }
    }

    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::mean;
    v81 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v106, &v129, &v126);
    Scandium::fill_valid(this + 193068, v82, v81);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    v83 = std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v129 = &v106;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v83);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v84 = *(this + 3);
    for (n = *(this + 4); v84 != n; v84 += 64)
    {
      v86 = 0;
      v129 = 0;
      v130 = 0;
      v87 = &Scandium::ScandiumPPG::path_idx_to_type;
      v131 = 0;
      do
      {
        v88 = *v87++;
        if (v88 == 2)
        {
          std::vector<float>::push_back[abi:ne200100](&v129, (v84 + v86));
        }

        v86 += 4;
      }

      while (v86 != 64);
      std::vector<std::vector<float>>::push_back[abi:ne200100](&v106, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }
    }

    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::mean;
    v89 = Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(&v106, &v129, &v126);
    Scandium::fill_valid(this + 193069, v90, v89);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    v91 = std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v129 = &v106;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v91);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    *(this + 193071) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v116, &v129, &v126) * 16.0);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193072) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v116, &v129, &v126) * 16.0);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    v92 = ((v105 - v104) >> 2);
    *(this + 193073) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v115, &v129, &v126) * v92);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193074) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v115, &v129, &v126) * v92);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    v93 = ((v103 - v102) >> 2);
    *(this + 193075) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v114, &v129, &v126) * v93);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193076) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v114, &v129, &v126) * v93);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    v94 = ((v65 - v40) >> 2);
    *(this + 193077) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v113, &v129, &v126) * v94);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193078) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v113, &v129, &v126) * v94);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    *(this + 193079) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v112, &v129, &v126) * 16.0);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193080) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v112, &v129, &v126) * 16.0);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    *(this + 193081) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v111, &v129, &v126) * v92);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193082) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v111, &v129, &v126) * v92);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    *(this + 193083) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v110, &v129, &v126) * v93);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193084) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v110, &v129, &v126) * v93);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::max;
    *(this + 193085) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v109, &v129, &v126) * v94);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v128 = &v126;
    v129 = &unk_2876205B0;
    v130 = stats::mean;
    v132 = &v129;
    v126 = &unk_2876205B0;
    v127 = stats::min;
    *(this + 193086) = llroundf(Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(v109, &v129, &v126) * v94);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v126);
    std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](&v129);
    v95 = *(this + 77916) - *(this + 77915);
    if (v95)
    {
      v96 = Scandium::sort_median(*(this + 77915), v95 >> 2);
      Scandium::fill_valid(this + 193050, v97, v96);
    }

    v98 = *(this + 77918);
    v99 = *(this + 77919) - v98;
    if (v99)
    {
      v100 = Scandium::sort_median(v98, v99 >> 2);
      Scandium::fill_valid(this + 193051, v101, v100);
    }

    v129 = v109;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v110;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v111;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v112;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v113;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v114;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v115;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = v116;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = &v117;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = &v120;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
    v129 = &v123;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v129);
  }
}

void sub_264812840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](v42 - 192);
  std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](v42 - 160);
  *(v42 - 160) = &a18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a24;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a27;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a30;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a33;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a36;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a39;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = &a42;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = v42 - 240;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  *(v42 - 160) = v42 - 216;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v42 - 160));
  _Unwind_Resume(a1);
}

float Scandium::ScandiumPPG::scandium_spo2_processor_t::calc_dl_core_analytics(void)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    do
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
      std::function<float ()(float const*,int)>::operator()(a2, __p, (v17 - __p) >> 2);
      v19 = v7;
      std::vector<float>::push_back[abi:ne200100](&v13, &v19);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      v4 += 24;
    }

    while (v4 != v5);
    v8 = v13;
    v9 = v14;
  }

  std::function<float ()(float const*,int)>::operator()(a3, v8, (v9 - v8) >> 2);
  v11 = v10;
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v11;
}

void sub_264812C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float Scandium::ScandiumPPG::get_median_of_path_type<unsigned char>(uint64_t *a1, __int16 a2, float a3)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  if ((a2 & 0x100) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = 4;
      v10 = v6;
      do
      {
        if (Scandium::ScandiumPPG::path_array[v10] == v8)
        {
          if (a1[1] - *a1 <= v10)
          {
            std::vector<float>::__throw_out_of_range[abi:ne200100]();
          }

          LOBYTE(a3) = *(*a1 + v10);
          v13 = LODWORD(a3);
          std::vector<float>::push_back[abi:ne200100](&__p, &v13);
        }

        ++v10;
        --v9;
      }

      while (v9);
      ++v7;
      v6 += 4;
    }

    while (v7 != 4);
  }

  else
  {
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      do
      {
        LOBYTE(a3) = *(v4 + v5);
        v13 = LODWORD(a3);
        std::vector<float>::push_back[abi:ne200100](&__p, &v13);
        ++v5;
        v4 = *a1;
      }

      while (a1[1] - *a1 > v5);
    }
  }

  v11 = Scandium::sort_median(__p, (v15 - __p) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_264812D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float Scandium::ScandiumPPG::get_median_of_path_type<float>(uint64_t *a1, __int16 a2)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  if ((a2 & 0x100) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = 4;
      v9 = v5;
      do
      {
        if (Scandium::ScandiumPPG::path_array[v9] == v7)
        {
          if (v9 >= (a1[1] - *a1) >> 2)
          {
            std::vector<float>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = *(*a1 + 4 * v9);
          std::vector<float>::push_back[abi:ne200100](&__p, &v12);
        }

        ++v9;
        --v8;
      }

      while (v8);
      ++v6;
      v5 += 4;
    }

    while (v6 != 4);
  }

  else
  {
    v3 = *a1;
    if (a1[1] != *a1)
    {
      v4 = 0;
      do
      {
        v12 = *(v3 + 4 * v4);
        std::vector<float>::push_back[abi:ne200100](&__p, &v12);
        ++v4;
        v3 = *a1;
      }

      while (v4 < (a1[1] - *a1) >> 2);
    }
  }

  v10 = Scandium::sort_median(__p, (v14 - __p) >> 2);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_264812EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::log_core_analytics(Scandium::ScandiumPPG::scandium_spo2_processor_t *this)
{
  v1 = off_28761FF08(this);
  v362 = *MEMORY[0x277D85DE8];
  v2 = v1 + 770048;
  if (*(v1 + 772768))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "coreanalytics");
    std::string::basic_string[abi:ne200100]<0>(v9, "rawSpO2");
    v10 = *(v2 + 2024);
    v11 = 3;
    std::string::basic_string[abi:ne200100]<0>(v12, "rawSpO2_BGWin0");
    v13 = *(v2 + 2028);
    v14 = 3;
    std::string::basic_string[abi:ne200100]<0>(v15, "rawSpO2_BGWin1");
    v16 = *(v2 + 2032);
    v17 = 3;
    std::string::basic_string[abi:ne200100]<0>(v18, "rawSpO2_BGWin2");
    v19 = *(v2 + 2036);
    v20 = 3;
    std::string::basic_string[abi:ne200100]<0>(v21, "rawSpO2NoConfGate");
    v22 = *(v2 + 2040);
    v23 = 3;
    std::string::basic_string[abi:ne200100]<0>(v24, "rawSpO2NoConfGate_BGWin0");
    v25 = *(v2 + 2044);
    v26 = 3;
    std::string::basic_string[abi:ne200100]<0>(v27, "rawSpO2NoConfGate_BGWin1");
    v28 = *(v2 + 2048);
    v29 = 3;
    std::string::basic_string[abi:ne200100]<0>(v30, "rawSpO2NoConfGate_BGWin2");
    v31 = *(v2 + 2052);
    v32 = 3;
    std::string::basic_string[abi:ne200100]<0>(v33, "numChannelsPassingGIRPIRMax");
    v34 = *(v2 + 2056);
    v35 = 1;
    std::string::basic_string[abi:ne200100]<0>(v36, "numChannelsPassingGIRPIRMin");
    v37 = *(v2 + 2060);
    v38 = 1;
    std::string::basic_string[abi:ne200100]<0>(v39, "numValidChannelsMax");
    v40 = *(v2 + 2064);
    v41 = 1;
    std::string::basic_string[abi:ne200100]<0>(v42, "numValidChannelsMin");
    v43 = *(v2 + 2068);
    v44 = 1;
    std::string::basic_string[abi:ne200100]<0>(v45, "agc_opc_duration_ms");
    v46 = *(v2 + 2072);
    v47 = 1;
    std::string::basic_string[abi:ne200100]<0>(v48, "agc_opc_green_fs_enum");
    v49 = *(v2 + 2074);
    v50 = 1;
    std::string::basic_string[abi:ne200100]<0>(v51, "agc_opc_num_retries");
    v52 = *(v2 + 2075);
    v53 = 1;
    std::string::basic_string[abi:ne200100]<0>(v54, "agc_opc_num_converged");
    v55 = *(v2 + 2076);
    v56 = 1;
    std::string::basic_string[abi:ne200100]<0>(v57, "numSuccessfulWindows");
    v58 = *(v2 + 2080);
    v59 = 1;
    std::string::basic_string[abi:ne200100]<0>(v60, "sessionLen");
    v61 = *(v2 + 2084);
    v62 = 1;
    std::string::basic_string[abi:ne200100]<0>(v63, "bailoutIndex");
    v64 = *(v2 + 2088);
    v65 = 1;
    std::string::basic_string[abi:ne200100]<0>(v66, "numFailedWinAggGIRPIR");
    v67 = *(v2 + 2092);
    v68 = 1;
    std::string::basic_string[abi:ne200100]<0>(v69, "numFailedWinStd");
    v70 = *(v2 + 2096);
    v71 = 1;
    std::string::basic_string[abi:ne200100]<0>(v72, "min_mav");
    v73 = *(v2 + 2100);
    v74 = 3;
    std::string::basic_string[abi:ne200100]<0>(v75, "max_mav");
    v76 = *(v2 + 2104);
    v77 = 3;
    std::string::basic_string[abi:ne200100]<0>(v78, "median_mav");
    v79 = *(v2 + 2108);
    v80 = 3;
    std::string::basic_string[abi:ne200100]<0>(v81, "ir_wavelength");
    v82 = *(v2 + 2112);
    v83 = 3;
    std::string::basic_string[abi:ne200100]<0>(v84, "red_wavelength");
    v85 = *(v2 + 2116);
    v86 = 3;
    std::string::basic_string[abi:ne200100]<0>(v87, "mean_accelX");
    v88 = *(v2 + 2120);
    v89 = 3;
    std::string::basic_string[abi:ne200100]<0>(v90, "mean_accelY");
    v91 = *(v2 + 2124);
    v92 = 3;
    std::string::basic_string[abi:ne200100]<0>(v93, "mean_accelZ");
    v94 = *(v2 + 2128);
    v95 = 3;
    std::string::basic_string[abi:ne200100]<0>(v96, "mean_pi_ir_long");
    v97 = *(v2 + 2132);
    v98 = 3;
    std::string::basic_string[abi:ne200100]<0>(v99, "mean_pi_ir_short");
    v100 = *(v2 + 2136);
    v101 = 3;
    std::string::basic_string[abi:ne200100]<0>(v102, "mean_pi_red_long");
    v103 = *(v2 + 2140);
    v104 = 3;
    std::string::basic_string[abi:ne200100]<0>(v105, "mean_pi_red_short");
    v106 = *(v2 + 2144);
    v107 = 3;
    std::string::basic_string[abi:ne200100]<0>(v108, "mean_pi_green");
    v109 = *(v2 + 2148);
    v110 = 3;
    std::string::basic_string[abi:ne200100]<0>(v111, "medianGIRPIRShort");
    v112 = *(v2 + 2232);
    v113 = 3;
    std::string::basic_string[abi:ne200100]<0>(v114, "medianMeasurementConfidence");
    v115 = *(v2 + 2152);
    v116 = 3;
    std::string::basic_string[abi:ne200100]<0>(v117, "medianWeightedStdDev");
    v118 = *(v2 + 2156);
    v119 = 3;
    std::string::basic_string[abi:ne200100]<0>(v120, "dropped_sessWin_CPMSAll_total_len");
    v121 = *(v2 + 2160);
    v122 = 1;
    std::string::basic_string[abi:ne200100]<0>(v123, "dropped_sessWin_CPMSAll_max_seg_len");
    v124 = *(v2 + 2162);
    v125 = 1;
    std::string::basic_string[abi:ne200100]<0>(v126, "dropped_sessWin_Saturation_total_len");
    v127 = *(v2 + 2164);
    v128 = 1;
    std::string::basic_string[abi:ne200100]<0>(v129, "dropped_sessWin_Saturation_max_seg_len");
    v130 = *(v2 + 2166);
    v131 = 1;
    std::string::basic_string[abi:ne200100]<0>(v132, "dropped_BGWin0_CPMSAll_total_len");
    v133 = *(v2 + 2168);
    v134 = 1;
    std::string::basic_string[abi:ne200100]<0>(v135, "dropped_BGWin0_Saturation_total_len");
    v136 = *(v2 + 2170);
    v137 = 1;
    std::string::basic_string[abi:ne200100]<0>(v138, "dropped_BGWin1_CPMSAll_total_len");
    v139 = *(v2 + 2172);
    v140 = 1;
    std::string::basic_string[abi:ne200100]<0>(v141, "dropped_BGWin1_Saturation_total_len");
    v142 = *(v2 + 2174);
    v143 = 1;
    std::string::basic_string[abi:ne200100]<0>(v144, "dropped_BGWin2_CPMSAll_total_len");
    v145 = *(v2 + 2176);
    v146 = 1;
    std::string::basic_string[abi:ne200100]<0>(v147, "dropped_BGWin2_Saturation_total_len");
    v148 = *(v2 + 2178);
    v149 = 1;
    std::string::basic_string[abi:ne200100]<0>(v150, "dropped_sessWin_TX_DOWNAll_total_len");
    v151 = *(v2 + 2180);
    v152 = 1;
    std::string::basic_string[abi:ne200100]<0>(v153, "minChannelConfidenceShortIR");
    v154 = *(v2 + 2184);
    v155 = 3;
    std::string::basic_string[abi:ne200100]<0>(v156, "minChannelConfidenceShortRed");
    v157 = *(v2 + 2188);
    v158 = 3;
    std::string::basic_string[abi:ne200100]<0>(v159, "minChannelConfidenceLong");
    v160 = *(v2 + 2192);
    v161 = 3;
    std::string::basic_string[abi:ne200100]<0>(v162, "medianChannelConfidenceShortIR");
    v163 = *(v2 + 2196);
    v164 = 3;
    std::string::basic_string[abi:ne200100]<0>(v165, "medianChannelConfidenceShortRed");
    v166 = *(v2 + 2200);
    v167 = 3;
    std::string::basic_string[abi:ne200100]<0>(v168, "medianChannelConfidenceLong");
    v169 = *(v2 + 2204);
    v170 = 3;
    std::string::basic_string[abi:ne200100]<0>(v171, "maxChannelConfidenceShortIR");
    v172 = *(v2 + 2208);
    v173 = 3;
    std::string::basic_string[abi:ne200100]<0>(v174, "maxChannelConfidenceShortRed");
    v175 = *(v2 + 2212);
    v176 = 3;
    std::string::basic_string[abi:ne200100]<0>(v177, "maxChannelConfidenceLong");
    v178 = *(v2 + 2216);
    v179 = 3;
    std::string::basic_string[abi:ne200100]<0>(v180, "meanSpO2ShortIR");
    v181 = *(v2 + 2220);
    v182 = 3;
    std::string::basic_string[abi:ne200100]<0>(v183, "meanSpO2ShortRed");
    v184 = *(v2 + 2224);
    v185 = 3;
    std::string::basic_string[abi:ne200100]<0>(v186, "meanSpO2Long");
    v187 = *(v2 + 2228);
    v188 = 3;
    std::string::basic_string[abi:ne200100]<0>(v189, "numHighConfidenceChannelsMax");
    v190 = *(v2 + 2236);
    v191 = 1;
    std::string::basic_string[abi:ne200100]<0>(v192, "numHighConfidenceChannelsMin");
    v193 = *(v2 + 2240);
    v194 = 1;
    std::string::basic_string[abi:ne200100]<0>(v195, "numHighConfidenceChannelsMaxShortIR");
    v196 = *(v2 + 2244);
    v197 = 1;
    std::string::basic_string[abi:ne200100]<0>(v198, "numHighConfidenceChannelsMinShortIR");
    v199 = *(v2 + 2248);
    v200 = 1;
    std::string::basic_string[abi:ne200100]<0>(v201, "numHighConfidenceChannelsMaxShortRed");
    v202 = *(v2 + 2252);
    v203 = 1;
    std::string::basic_string[abi:ne200100]<0>(v204, "numHighConfidenceChannelsMinShortRed");
    v205 = *(v2 + 2256);
    v206 = 1;
    std::string::basic_string[abi:ne200100]<0>(v207, "numHighConfidenceChannelsMaxLong");
    v208 = *(v2 + 2260);
    v209 = 1;
    std::string::basic_string[abi:ne200100]<0>(v210, "numHighConfidenceChannelsMinLong");
    v211 = *(v2 + 2264);
    v212 = 1;
    std::string::basic_string[abi:ne200100]<0>(v213, "numChannelsPassingSNRMax");
    v214 = *(v2 + 2268);
    v215 = 1;
    std::string::basic_string[abi:ne200100]<0>(v216, "numChannelsPassingSNRMin");
    v217 = *(v2 + 2272);
    v218 = 1;
    std::string::basic_string[abi:ne200100]<0>(v219, "numChannelsPassingSNRMaxShortIR");
    v220 = *(v2 + 2276);
    v221 = 1;
    std::string::basic_string[abi:ne200100]<0>(v222, "numChannelsPassingSNRMinShortIR");
    v223 = *(v2 + 2280);
    v224 = 1;
    std::string::basic_string[abi:ne200100]<0>(v225, "numChannelsPassingSNRMaxShortRed");
    v226 = *(v2 + 2284);
    v227 = 1;
    std::string::basic_string[abi:ne200100]<0>(v228, "numChannelsPassingSNRMinShortRed");
    v229 = *(v2 + 2288);
    v230 = 1;
    std::string::basic_string[abi:ne200100]<0>(v231, "numChannelsPassingSNRMaxLong");
    v232 = *(v2 + 2292);
    v233 = 1;
    std::string::basic_string[abi:ne200100]<0>(v234, "numChannelsPassingSNRMinLong");
    v235 = *(v2 + 2296);
    v236 = 1;
    std::string::basic_string[abi:ne200100]<0>(v237, "ppg_ac_pp_ir_long");
    v238 = *(v2 + 2300);
    v239 = 3;
    std::string::basic_string[abi:ne200100]<0>(v240, "ppg_ac_pp_ir_short_ir");
    v241 = *(v2 + 2304);
    v242 = 3;
    std::string::basic_string[abi:ne200100]<0>(v243, "ppg_ac_pp_ir_short_red");
    v244 = *(v2 + 2308);
    v245 = 3;
    std::string::basic_string[abi:ne200100]<0>(v246, "ppg_ac_std_ir_long");
    v247 = *(v2 + 2332);
    v248 = 3;
    std::string::basic_string[abi:ne200100]<0>(v249, "ppg_ac_std_ir_short_ir");
    v250 = *(v2 + 2336);
    v251 = 3;
    std::string::basic_string[abi:ne200100]<0>(v252, "ppg_ac_std_ir_short_red");
    v253 = *(v2 + 2340);
    v254 = 3;
    std::string::basic_string[abi:ne200100]<0>(v255, "ppg_mean_ir_long");
    v256 = *(v2 + 2364);
    v257 = 3;
    std::string::basic_string[abi:ne200100]<0>(v258, "ppg_mean_ir_short_ir");
    v259 = *(v2 + 2368);
    v260 = 3;
    std::string::basic_string[abi:ne200100]<0>(v261, "ppg_mean_ir_short_red");
    v262 = *(v2 + 2372);
    v263 = 3;
    std::string::basic_string[abi:ne200100]<0>(v264, "ppg_ac_pp_red_long");
    v265 = *(v2 + 2312);
    v266 = 3;
    std::string::basic_string[abi:ne200100]<0>(v267, "ppg_ac_pp_red_short_ir");
    v268 = *(v2 + 2316);
    v269 = 3;
    std::string::basic_string[abi:ne200100]<0>(v270, "ppg_ac_pp_red_short_red");
    v271 = *(v2 + 2320);
    v272 = 3;
    std::string::basic_string[abi:ne200100]<0>(v273, "ppg_ac_std_red_long");
    v274 = *(v2 + 2344);
    v275 = 3;
    std::string::basic_string[abi:ne200100]<0>(v276, "ppg_ac_std_red_short_ir");
    v277 = *(v2 + 2348);
    v278 = 3;
    std::string::basic_string[abi:ne200100]<0>(v279, "ppg_ac_std_red_short_red");
    v280 = *(v2 + 2352);
    v281 = 3;
    std::string::basic_string[abi:ne200100]<0>(v282, "ppg_mean_red_long");
    v283 = *(v2 + 2376);
    v284 = 3;
    std::string::basic_string[abi:ne200100]<0>(v285, "ppg_mean_red_short_ir");
    v286 = *(v2 + 2380);
    v287 = 3;
    std::string::basic_string[abi:ne200100]<0>(v288, "ppg_mean_red_short_red");
    v289 = *(v2 + 2384);
    v290 = 3;
    std::string::basic_string[abi:ne200100]<0>(v291, "ppg_ac_pp_green");
    v292 = *(v2 + 2324);
    v293 = 3;
    std::string::basic_string[abi:ne200100]<0>(v294, "ppg_ac_std_green");
    v295 = *(v2 + 2356);
    v296 = 3;
    std::string::basic_string[abi:ne200100]<0>(v297, "ppg_mean_green");
    v298 = *(v2 + 2388);
    v299 = 3;
    std::string::basic_string[abi:ne200100]<0>(v300, "ppg_ac_pp_blank");
    v301 = *(v2 + 2328);
    v302 = 3;
    std::string::basic_string[abi:ne200100]<0>(v303, "ppg_ac_std_blank");
    v304 = *(v2 + 2360);
    v305 = 3;
    std::string::basic_string[abi:ne200100]<0>(v306, "ppg_mean_blank");
    v307 = *(v2 + 2392);
    v308 = 3;
    std::string::basic_string[abi:ne200100]<0>(v309, "tia_gain_ir_long");
    v310 = *(v2 + 2396);
    v311 = 3;
    std::string::basic_string[abi:ne200100]<0>(v312, "tia_gain_ir_short_ir");
    v313 = *(v2 + 2400);
    v314 = 3;
    std::string::basic_string[abi:ne200100]<0>(v315, "tia_gain_ir_short_red");
    v316 = *(v2 + 2404);
    v317 = 3;
    std::string::basic_string[abi:ne200100]<0>(v318, "tia_gain_red_long");
    v319 = *(v2 + 2408);
    v320 = 3;
    std::string::basic_string[abi:ne200100]<0>(v321, "tia_gain_red_short_ir");
    v322 = *(v2 + 2412);
    v323 = 3;
    std::string::basic_string[abi:ne200100]<0>(v324, "tia_gain_red_short_red");
    v325 = *(v2 + 2416);
    v326 = 3;
    std::string::basic_string[abi:ne200100]<0>(v327, "tia_gain_green");
    v328 = *(v2 + 2420);
    v329 = 3;
    std::string::basic_string[abi:ne200100]<0>(v330, "tia_gain_blank");
    v331 = *(v2 + 2424);
    v332 = 3;
    std::string::basic_string[abi:ne200100]<0>(v333, "iled_ir");
    v334 = *(v2 + 2428);
    v335 = 3;
    std::string::basic_string[abi:ne200100]<0>(v336, "iled_red");
    v337 = *(v2 + 2432);
    v338 = 3;
    std::string::basic_string[abi:ne200100]<0>(v339, "iled_green");
    v340 = *(v2 + 2436);
    v341 = 3;
    std::string::basic_string[abi:ne200100]<0>(v342, "min_mav_1s");
    v343 = *(v2 + 2440);
    v344 = 3;
    std::string::basic_string[abi:ne200100]<0>(v345, "max_mav_1s");
    v346 = *(v2 + 2444);
    v347 = 3;
    std::string::basic_string[abi:ne200100]<0>(v348, "mean_mav_1s");
    v349 = *(v2 + 2448);
    v350 = 3;
    std::string::basic_string[abi:ne200100]<0>(v351, "median_mav_1s");
    v352 = *(v2 + 2452);
    v353 = 3;
    std::string::basic_string[abi:ne200100]<0>(v354, "std_mav_1s");
    v355 = *(v2 + 2456);
    v356 = 3;
    std::string::basic_string[abi:ne200100]<0>(v357, "hfw");
    v358 = *(v2 + 2460);
    v359 = 1;
    std::string::basic_string[abi:ne200100]<0>(v360, "win_len");
    v361[0] = *(v2 + 2462);
    v361[8] = 1;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v6, v9, 118);
    v3 = *(v2 + 2720);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v3 + 48))(v3, __p, v6);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v6);
    v4 = v361;
    v5 = -8496;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4);
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
      }

      v4 -= 9;
      v5 += 72;
    }

    while (v5);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2648140E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  v22 = &STACK[0x2130];
  v23 = -8496;
  do
  {
    v22 = (std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v22) - 72);
    v23 += 72;
  }

  while (v23);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>::operator()(uint64_t a1, float a2, float a3)
{
  *v5 = a2;
  *&v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, v5);
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::motion_status_handler_proxy(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = this + 770048;
  log = Scandium::algs_get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v4 + 624);
    v7[0] = 67109376;
    v7[1] = v6;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium motion handler pkt %d: %d", v7, 0xEu);
  }

  if (*(v4 + 332))
  {
    std::function<void ()(BOOL)>::operator()(this + 772680, a2);
  }
}

void Scandium::ScandiumPPG::scandium_spo2_processor_t::posture_status_handler_proxy(Scandium::ScandiumPPG::scandium_spo2_processor_t *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = this + 770048;
  log = Scandium::algs_get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v4 + 624);
    v7[0] = 67109376;
    v7[1] = v6;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium posture handler pkt %d: %d", v7, 0xEu);
  }

  if (*(v4 + 336))
  {
    std::function<void ()(BOOL)>::operator()(this + 772712, a2);
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<Scandium::ScandiumPPG::scandium_spo2_monitor_t::scandium_spo2_monitor_t(std::string const&,std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL)::$_0,Scandium::ScandiumPPG::scandium_spo2_monitor_t::(std::string const&,std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&>(Scandium *a1)
{
  log = Scandium::algs_get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "Scandium Algs using legacy packets.", v3, 2u);
  }

  return 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<Scandium::ScandiumPPG::scandium_spo2_monitor_t::scandium_spo2_monitor_t(std::string const&,std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL)::$_0,Scandium::ScandiumPPG::scandium_spo2_monitor_t::(std::string const&,std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&>(Scandium *a1)
{
  log = Scandium::algs_get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "Scandium Algs using current packets.", v3, 2u);
  }

  return 0;
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::~scandium_beat_detection_t(Scandium::ScandiumPPG::scandium_beat_detection_t *this)
{
  v2 = (this + 0x20000);
  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](this + 132808);
  v3 = v2[214];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = v2[211];
  if (v4)
  {
    v2[212] = v4;
    operator delete(v4);
  }

  v5 = v2[208];
  if (v5)
  {
    v2[209] = v5;
    operator delete(v5);
  }

  v6 = v2[205];
  if (v6)
  {
    v2[206] = v6;
    operator delete(v6);
  }

  v7 = v2[202];
  if (v7)
  {
    v2[203] = v7;
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  v9 = *(this + 11);
  if (v9)
  {
    *(this + 12) = v9;
    operator delete(v9);
  }
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t *result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_264814518(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_264814618(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

uint64_t std::optional<Scandium::ScandiumPPG::channel_combination_param_t>::~optional(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(a1 + 56);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[23],std::vector<int>&,0>(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[4] = 0;
  v5[5] = 0;
  v5 += 4;
  v5[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 56) = 1;
  *(a1 + 64) = 6;
  return a1;
}

void sub_2648147FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[24],std::vector<int>&,0>(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[4] = 0;
  v5[5] = 0;
  v5 += 4;
  v5[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 56) = 1;
  *(a1 + 64) = 6;
  return a1;
}

void sub_26481486C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumPPG::beats_t::~beats_t(Scandium::ScandiumPPG::beats_t *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t *std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
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
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_264814A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

const void **std::vector<std::vector<float>>::push_back[abi:ne200100](const void **result, uint64_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
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
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
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

uint64_t std::function<float ()(float const*,int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
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

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_264814E28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unordered_map<Scandium::sc_optical_gen_e,std::string>::unordered_map(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::__unordered_map_hasher<Scandium::sc_optical_gen_e,std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::hash<Scandium::sc_optical_gen_e>,std::equal_to<Scandium::sc_optical_gen_e>,true>,std::__unordered_map_equal<Scandium::sc_optical_gen_e,std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::equal_to<Scandium::sc_optical_gen_e>,std::hash<Scandium::sc_optical_gen_e>,true>,std::allocator<std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>>>::__emplace_unique_key_args<Scandium::sc_optical_gen_e,std::pair<Scandium::sc_optical_gen_e const,std::string> const&>(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t ***std::__hash_table<std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::__unordered_map_hasher<Scandium::sc_optical_gen_e,std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::hash<Scandium::sc_optical_gen_e>,std::equal_to<Scandium::sc_optical_gen_e>,true>,std::__unordered_map_equal<Scandium::sc_optical_gen_e,std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::equal_to<Scandium::sc_optical_gen_e>,std::hash<Scandium::sc_optical_gen_e>,true>,std::allocator<std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>>>::__emplace_unique_key_args<Scandium::sc_optical_gen_e,std::pair<Scandium::sc_optical_gen_e const,std::string> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::__unordered_map_hasher<Scandium::sc_optical_gen_e,std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::hash<Scandium::sc_optical_gen_e>,std::equal_to<Scandium::sc_optical_gen_e>,true>,std::__unordered_map_equal<Scandium::sc_optical_gen_e,std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>,std::equal_to<Scandium::sc_optical_gen_e>,std::hash<Scandium::sc_optical_gen_e>,true>,std::allocator<std::__hash_value_type<Scandium::sc_optical_gen_e,std::string>>>::__construct_node_hash<std::pair<Scandium::sc_optical_gen_e const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_26481511C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2648151E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_0,std::allocator<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2876204B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_0,std::allocator<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_1,std::allocator<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_1>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287620530;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_1,std::allocator<Scandium::ScandiumPPG::scandium_spo2_processor_t::scandium_spo2_processor_t(Scandium::sc_optical_gen_e,Scandium::sc_sess_start_pkt_v4_t const&,std::function<void ()(Scandium::ScandiumPPG::SpO2Result)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>,BOOL,BOOL)::$_1>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<float (*)(float const*,int),std::allocator<float (*)(float const*,int)>,float ()(float const*,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2876205B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<float (*)(float const*,int),std::allocator<float (*)(float const*,int)>,float ()(float const*,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(float const*,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

double Scandium::ScandiumPPG::BGA_t::reset(Scandium::ScandiumPPG::BGA_t *this)
{
  *(this + 16) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 27) = 0;
  return result;
}

void *Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_reset(void *this)
{
  this[1] = *this;
  this[4] = this[3];
  this[7] = this[6];
  this[10] = this[9];
  return this;
}

double Scandium::ScandiumPPG::scandium_bga_t::scandium_bga_t(Scandium::ScandiumPPG::scandium_bga_t *this)
{
  *(this + 15) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

void Scandium::ScandiumPPG::scandium_bga_t::~scandium_bga_t(Scandium::ScandiumPPG::scandium_bga_t *this)
{
  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](this + 96);
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void Scandium::ScandiumPPG::scandium_bga_t::compute_bga_measures(uint64_t *__return_ptr a1@<X8>, Scandium::ScandiumPPG::beats_t *a2@<X1>, int a3@<W2>, int32x2_t a4@<D0>)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 4) = 0;
  a4.i32[0] = *(a2 + 6);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5) - v4;
  v6 = vcvt_n_s32_f32(vdiv_f32(0x4190000042700000, vdup_lane_s32(a4, 0)), 6uLL);
  *a1 = v6;
  if ((v5 >> 2) < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = (v5 >> 2) & 0x7FFFFFFF;
    do
    {
      v9 = *v4++;
      v10 = v6 - HIDWORD(v6) + v9;
      if (v9 >= SHIDWORD(v6) && v10 <= a3)
      {
        ++v7;
      }

      --v8;
    }

    while (v8);
  }

  *(a1 + 4) = v7;
  v12 = *(a2 + 7);
  *(a1 + 2) = a4.i32[0];
  *(a1 + 3) = v12;
}

void Scandium::ScandiumPPG::scandium_bga_t::compute_ppg_snips(void *a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, unsigned int a7)
{
  v11 = *(a3 + 40) - *(a3 + 32);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (v11 >> 2));
  if ((v11 >> 2) >= 1)
  {
    v12 = 0;
    v13 = *(a3 + 32);
    v14 = (a1 + 6);
    v15 = (v11 >> 2) & 0x7FFFFFFF;
    v58 = a1;
    do
    {
      v16 = *v13++;
      v17 = a4[1];
      v18 = v16 - v17;
      if (v16 >= v17 && v18 + *a4 - 1 < ((a2[1] - *a2) >> 2))
      {
        v20 = a1[7];
        v19 = a1[8];
        if (v20 >= v19)
        {
          v59[0] = v12;
          v22 = *v14;
          v23 = v20 - *v14;
          v24 = v23 >> 2;
          v25 = (v23 >> 2) + 1;
          if (v25 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v26 = v19 - v22;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
          v28 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v28 = v25;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v14, v28);
          }

          a1 = v58;
          *(4 * v24) = v18;
          v21 = 4 * v24 + 4;
          memcpy(0, v22, v23);
          v29 = v58[6];
          v58[6] = 0;
          v58[7] = v21;
          v58[8] = 0;
          if (v29)
          {
            operator delete(v29);
          }

          v12 = v59[0];
        }

        else
        {
          *v20 = v18;
          v21 = (v20 + 4);
        }

        a1[7] = v21;
        ++v12;
      }

      --v15;
    }

    while (v15);
    if (v12 > 0)
    {
      memset(&v60, 0, sizeof(v60));
      v59[0] = v12;
      v30 = v12;
      std::vector<float>::reserve(&v60, v12);
      v31 = 0;
      *&v59[1] = 0;
      do
      {
        vDSP_maxv_wrapper((*a2 + 4 * *(*v14 + v31)), 1, &v59[1], *a4);
        vDSP_minv_wrapper((*a2 + 4 * *(*v14 + v31)), 1, &v59[2], *a4);
        v32 = *&v59[1] - *&v59[2];
        end = v60.__end_;
        if (v60.__end_ >= v60.__end_cap_.__value_)
        {
          begin = v60.__begin_;
          v36 = v60.__end_ - v60.__begin_;
          v37 = v60.__end_ - v60.__begin_;
          v38 = v37 + 1;
          if ((v37 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v39 = v60.__end_cap_.__value_ - v60.__begin_;
          if ((v60.__end_cap_.__value_ - v60.__begin_) >> 1 > v38)
          {
            v38 = v39 >> 1;
          }

          v27 = v39 >= 0x7FFFFFFFFFFFFFFCLL;
          v40 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v40 = v38;
          }

          if (v40)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v60, v40);
          }

          *(4 * v37) = v32;
          v34 = (4 * v37 + 4);
          memcpy(0, begin, v36);
          v41 = v60.__begin_;
          v60.__begin_ = 0;
          v60.__end_ = v34;
          v60.__end_cap_.__value_ = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *v60.__end_ = v32;
          v34 = end + 1;
        }

        v31 += 4;
        v60.__end_ = v34;
      }

      while (4 * v30 != v31);
      v43 = stats::std(v60.__begin_, v59[0], 1);
      v44 = 0;
      v45 = __p[0];
      v46 = xmmword_2648215F0;
      v47 = vdupq_n_s64(v30 - 1);
      v48 = vdupq_n_s64(2uLL);
      do
      {
        v49 = vmovn_s64(vcgeq_u64(v47, v46));
        if (v49.i8[0])
        {
          v45[v44] = v44;
        }

        if (v49.i8[4])
        {
          v45[v44 + 1] = v44 + 1;
        }

        v44 += 2;
        v46 = vaddq_s64(v46, v48);
      }

      while (((v30 + 1) & 0xFFFFFFFE) != v44);
      stats::median_vdsp(v60.__begin_, v45, v59[0], v42);
      v50 = 0;
      v51 = v60.__begin_;
      v53 = v52 + (v43 * 2.0);
      v54 = *a6;
      do
      {
        if (*&v51[v50] > v53)
        {
          *(v54 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v50);
        }

        ++v50;
      }

      while (v30 != v50);
      *(a5 + 108) = (v58[7] - v58[6]) >> 2;
      if (a7 < 3)
      {
        *(a5 + 8 * a7 + 24) = v14;
      }

      if (v60.__begin_)
      {
        v60.__end_ = v60.__begin_;
        operator delete(v60.__begin_);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_264815BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *Scandium::ScandiumPPG::scandium_bga_t::compute_wavelength(uint64_t *result, int16x4_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int *a6, uint64_t a7, int a8)
{
  v10 = a5[1];
  v11 = v10 - *a5;
  if (v10 == *a5)
  {
    v30 = 0.0;
  }

  else
  {
    v14 = result;
    v15 = *a6;
    v16 = v15;
    v31 = 0;
    result = std::vector<float>::assign(result + 9, v15, &v31, a2);
    if ((v11 >> 2) >= 1)
    {
      v17 = 0;
      v18 = *a5;
      v19 = v14[6];
      do
      {
        if (v16 >= 1)
        {
          v20 = (a4 + 4 * *(v19 + 4 * *(v18 + 4 * v17)));
          v21 = v14[9];
          v22 = v16;
          do
          {
            v23 = *v20++;
            *v21 = v23 + *v21;
            ++v21;
            --v22;
          }

          while (v22);
        }

        ++v17;
      }

      while (v17 != ((v11 >> 2) & 0x7FFFFFFF));
    }

    if (v16 < 1)
    {
      v27 = 0.0;
    }

    else
    {
      v24 = v14[9];
      v25 = v16;
      do
      {
        *v24 = *v24 / (v11 >> 2);
        ++v24;
        --v25;
      }

      while (v25);
      v26 = v14[9];
      v27 = 0.0;
      v28 = v16;
      do
      {
        v29 = *v26++;
        v27 = v27 + v29;
        --v28;
      }

      while (v28);
    }

    v30 = v27 / v16;
  }

  if (a8 == 1)
  {
    *(a7 + 72) = v30;
  }

  else if (!a8)
  {
    *(a7 + 68) = v30;
  }

  return result;
}

void Scandium::ScandiumPPG::scandium_bga_t::compile_bga_metrics(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int *a4, uint64_t a5, int a6, int16x4_t a7)
{
  v11 = a3[1];
  v12 = v11 - *a3;
  if (v11 == *a3)
  {
    v29 = NAN;
    v30 = a3[1];
  }

  else
  {
    v15 = *a4;
    v31 = 0;
    std::vector<float>::assign(a1, v15, &v31, a7);
    v16 = *a4;
    if ((v12 >> 2) >= 1)
    {
      v17 = 0;
      v18 = *a3;
      v19 = a1[6];
      v20 = *a2;
      do
      {
        if (v16 >= 1)
        {
          v21 = (v20 + 4 * *(v19 + 4 * *(v18 + 4 * v17)));
          v22 = *a1;
          v23 = v16;
          do
          {
            v24 = *v21++;
            *v22 = v24 + *v22;
            ++v22;
            v23 = (v23 - 1);
          }

          while (v23);
        }

        ++v17;
      }

      while (v17 != ((v12 >> 2) & 0x7FFFFFFF));
    }

    v25 = *a1;
    if (v16 >= 1)
    {
      v26 = v16;
      v27 = *a1;
      do
      {
        *v27 = *v27 / (v12 >> 2);
        ++v27;
        v26 = (v26 - 1);
      }

      while (v26);
    }

    v28 = stats::max(v25, v16);
    v29 = v28 - stats::min(*a1, *a4);
    v11 = *a3;
    v30 = a3[1];
  }

  *(a5 + 48) = a3;
  *(a5 + 104) = (v30 - v11) >> 2;
  switch(a6)
  {
    case 2:
      *(a5 + 16) = a1;
      *(a5 + 64) = v29;
      break;
    case 1:
      *(a5 + 8) = a1;
      *(a5 + 60) = v29;
      break;
    case 0:
      *a5 = a1;
      *(a5 + 56) = v29;
      break;
  }
}

void Scandium::ScandiumPPG::scandium_bga_t::compute_snip_corr(uint64_t a1, void *a2, void *a3, unsigned int *a4, float *a5, int a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a3[1];
  v9 = v8 - *a3;
  if (v8 == *a3)
  {
    v31 = NAN;
  }

  else
  {
    v34 = (v9 >> 2);
    std::vector<float>::reserve((a1 + 24), v34);
    if ((v9 >> 2) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = stats::pearsonr(*a1, (*a2 + 4 * *(*(a1 + 48) + 4 * *(*a3 + 4 * v14))), *a4);
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        if (v17 >= v16)
        {
          v19 = *(a1 + 24);
          v20 = v17 - v19;
          v21 = (v17 - v19) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v23 = v16 - v19;
          if (v23 >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1 + 24, v24);
          }

          v25 = (v17 - v19) >> 2;
          v26 = (4 * v21);
          v27 = (4 * v21 - 4 * v25);
          *v26 = v15;
          v18 = v26 + 1;
          memcpy(v27, v19, v20);
          v28 = *(a1 + 24);
          *(a1 + 24) = v27;
          *(a1 + 32) = v18;
          *(a1 + 40) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v15;
          v18 = v17 + 1;
        }

        *(a1 + 32) = v18;
        ++v14;
      }

      while (((v9 >> 2) & 0x7FFFFFFF) != v14);
    }

    v36 = 0.0;
    std::vector<float>::vector[abi:ne200100](__p, v34);
    v29 = __p[0];
    MEMORY[0x266741BE0](*(a1 + 24), 1, __p[0], 1, v34);
    vDSP_meanv_wrapper(v29, 1, &v36, v34);
    v30 = v36;
    v7 = a5;
    v6 = a6;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v31 = sqrtf(v30);
  }

  switch(v6)
  {
    case 2:
      v7[21] = v31;
      break;
    case 1:
      v7[20] = v31;
      break;
    case 0:
      v7[19] = v31;
      break;
  }
}

void sub_2648160E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_264816158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Scandium::scandium_mvmt_detection_t::scandium_mvmt_detection_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 36) = 0x3F3504F33A83126FLL;
  *(a1 + 44) = 0;
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](a1 + 48, a2);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](a1 + 80, a3);
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  Scandium::scandium_mvmt_detection_t::reset(a1);
  return a1;
}

void Scandium::scandium_mvmt_detection_t::reset(Scandium::scandium_mvmt_detection_t *this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  v2 = this + 8;
  v3 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(&v2, 8uLL);
  v2 = this + 24;
  v3 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(&v2, 1uLL);
  *(this + 19) = *(this + 18);
}

void Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t(Scandium::scandium_mvmt_detection_t *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](this + 112);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 48);
}

int32x2_t Scandium::scandium_mvmt_detection_t::set_config(int32x2_t *a1, uint64_t a2)
{
  a1[4].i32[1] = *(a2 + 12);
  result = vrev64_s32(*(a2 + 28));
  a1[5] = result;
  return result;
}

uint64_t Scandium::scandium_mvmt_detection_t::process(uint64_t a1, uint64_t a2, unsigned int a3, const float *__sz)
{
  *(a1 + 32) = 0;
  result = 1;
  if (__sz)
  {
    if (__sz + a3 <= 0x3C0)
    {
      Scandium::scandium_mvmt_detection_t::processMvmt(a1, a2, a3, __sz, *(a1 + 36));
      Scandium::scandium_mvmt_detection_t::processPosture(a1, a2, a3, __sz, *(a1 + 40), *(a1 + 44));
      return 0;
    }
  }

  return result;
}

uint64_t Scandium::scandium_mvmt_detection_t::processMvmt(int8x8_t *a1, uint64_t a2, unsigned int a3, std::vector<int>::size_type __sz, float a5)
{
  result = 1;
  if (__sz && __sz + a3 <= 0x3C0)
  {
    v9 = (a2 + 4 * a3);
    v10 = 0.0;
    v11 = 11520;
    do
    {
      v12 = stats::variance(v9, __sz, 1);
      if (v10 < v12)
      {
        v10 = v12;
      }

      v9 = (v9 + 3840);
      v11 -= 3840;
    }

    while (v11);
    v13 = a1->u8[0];
    a1->i8[0] = v10 >= a5;
    v15 = a1[19];
    v14 = a1[20];
    if (v15 >= v14)
    {
      v17 = a1[18];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 2;
      v20 = v19 + 1;
      if ((v19 + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 1 > v20)
      {
        v20 = v21 >> 1;
      }

      v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
      v23 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v20;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&a1[18], v23);
      }

      v24 = (v15 - v17) >> 2;
      v25 = (4 * v19);
      v26 = (4 * v19 - 4 * v24);
      *v25 = v10;
      v16 = v25 + 1;
      memcpy(v26, v17, v18);
      v27 = a1[18];
      a1[18] = v26;
      a1[19] = v16;
      a1[20] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v15 = v10;
      v16 = v15 + 1;
    }

    a1[19] = v16;
    if (a1->i8[0])
    {
      v29 = a1[1];
      std::bitset<8ul>::operator<<=[abi:ne200100](&v29, 1uLL);
      v28 = *&v29 | 1;
    }

    else
    {
      v29 = a1[1];
      std::bitset<8ul>::operator<<=[abi:ne200100](&v29, 1uLL);
      v28 = *&v29 & 0xFFFFFFFFFFFFFFFELL;
    }

    a1[1] = v28;
    if (v13 != a1->i8[0] && std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(a1 + 1, 0, 8uLL) <= 7 && *&a1[9])
    {
      std::function<void ()(BOOL)>::operator()(&a1[6], a1->i8[0]);
    }

    if (std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(a1 + 1, 0, 8uLL) < 8)
    {
      return 0;
    }

    else
    {
      result = 0;
      a1[4].i8[0] = 1;
    }
  }

  return result;
}

uint64_t Scandium::scandium_mvmt_detection_t::processPosture(int8x8_t *a1, uint64_t a2, unsigned int a3, const float *a4, float a5, float a6)
{
  result = 1;
  if (a4 && a4 + a3 <= 0x3C0)
  {
    v11 = a2 + 4 * a3;
    v12 = stats::mean(v11, a4);
    v13 = stats::mean((v11 + 7680), a4);
    v14 = a1[2].u8[0];
    v15 = fabsf(v12) > a5;
    if (v13 > a6)
    {
      v15 = 1;
    }

    a1[2].i8[0] = v15;
    v17 = a1[3];
    if (v15)
    {
      std::bitset<1ul>::operator<<=[abi:ne200100](&v17, 1);
      v16 = *&v17 | 1;
    }

    else
    {
      std::bitset<1ul>::operator<<=[abi:ne200100](&v17, 1);
      v16 = *&v17 & 0xFFFFFFFFFFFFFFFELL;
    }

    a1[3] = v16;
    if (v14 != a1[2].u8[0] && !std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(a1 + 3, 0, 1uLL) && *&a1[13])
    {
      std::function<void ()(BOOL)>::operator()(&a1[10], a1[2].i8[0]);
    }

    result = std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(a1 + 3, 0, 1uLL);
    if (result)
    {
      result = 0;
      a1[4].i8[1] = 1;
    }
  }

  return result;
}

uint64_t std::bitset<8ul>::operator<<=[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = a2;
  }

  v10 = a1;
  v11 = 0;
  v8 = a1;
  v9 = 8 - v3;
  v6 = a1;
  if (a2)
  {
    v7 = 8;
    std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<1ul,8ul>,false>(&v10, &v8, &v6, v5);
    v10 = a1;
    v11 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(&v10, v3);
  }

  else
  {
    v7 = 8 - v3;
    std::__copy_backward_aligned[abi:ne200100]<std::__bitset<1ul,8ul>,false>(&v10, &v8, &v6, v5);
  }

  return a1;
}

unsigned int *std::__copy_backward_aligned[abi:ne200100]<std::__bitset<1ul,8ul>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = result[2];
  v8 = v6 + 8 * (*a2 - *result) - v7;
  v9 = *a3;
  if (v8 >= 1)
  {
    if (v6)
    {
      if (v8 >= v6)
      {
        v11 = *(a2 + 8);
      }

      else
      {
        v11 = v6 + 8 * (*a2 - *result) - v7;
      }

      v8 -= v11;
      v12 = (-1 << (v6 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      *v9 = *v9 & ~v12 | **a2 & v12;
      *(a3 + 8) = (*(a3 + 8) - v11) & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    *a3 = &v9[-(v13 >> 6)];
    v15 = (*a2 - 8 * (v13 >> 6));
    *a2 = v15;
    if ((v8 + 63) >= 0x7F)
    {
      result = memmove(*a3, v15, 8 * v14);
    }

    if (v8 - (v14 << 6) <= 0)
    {
      v9 = *a3;
    }

    else
    {
      v16 = *(*a2 - 8);
      *a2 -= 8;
      v9 = (*a3 - 8);
      v17 = *v9;
      *a3 = v9;
      *v9 = v17 & ~(-1 << ((v14 << 6) - v8)) | v16 & (-1 << ((v14 << 6) - v8));
      *(a3 + 8) = -v8 & 0x3F;
    }
  }

  *a4 = v9;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unint64_t std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<1ul,8ul>,false>@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v16 = *(a3 + 8);
  }

  else
  {
    if (v4)
    {
      if (v6 >= v4)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v7;
      v8 = (-1 << (v4 - v7)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v9 = *(a3 + 8);
      if (v7 >= v9)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = v7;
      }

      if (v9)
      {
        v11 = v8 >> (v4 - v9);
        v12 = v9 >= v4;
        v14 = v9 - v4;
        v13 = v14 != 0 && v12;
        v15 = v8 << v14;
        if (!v13)
        {
          v15 = v11;
        }

        **a3 = **a3 & ~((-1 << (v9 - v10)) & (0xFFFFFFFFFFFFFFFFLL >> -v9)) | v15;
        v16 = (v9 - v10) & 0x3F;
        *(a3 + 8) = v16;
        v7 -= v10;
      }

      else
      {
        v16 = 0;
      }

      if (v7 >= 1)
      {
        v18 = (*a3 - 8);
        v17 = *v18;
        *a3 = v18;
        *(a3 + 8) = -v7 & 0x3F;
        v19 = v17 & ~(-1 << -v7);
        v20 = *(a2 + 8) - v7 - v10;
        *(a2 + 8) = v20;
        v16 = *(a3 + 8);
        *v18 = (v8 << (v16 - v20)) | v19;
      }
    }

    else
    {
      v16 = *(a3 + 8);
    }

    v21 = 64 - v16;
    v22 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
    if (v6 < 64)
    {
      v26 = v6;
    }

    else
    {
      do
      {
        v23 = *(*a2 - 8);
        *a2 -= 8;
        v24 = *a3;
        result = v23 >> v21;
        *v24 = **a3 & ~v22 | (v23 >> v21);
        v25 = *--v24;
        *a3 = v24;
        *v24 = v25 & v22 | (v23 << v16);
        v26 = v6 - 64;
        v13 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v13);
    }

    if (v26 >= 1)
    {
      v27 = *(*a2 - 8);
      *a2 -= 8;
      v28 = v27 & (-1 << -v26);
      if (v26 >= v16)
      {
        v29 = v16;
      }

      else
      {
        v29 = v26;
      }

      v30 = (-1 << (v16 - v29)) & v22;
      v31 = *a3;
      **a3 = **a3 & ~v30 | (v28 >> v21);
      v16 = (v16 - v29) & 0x3F;
      *(a3 + 8) = v16;
      if (v26 - v29 >= 1)
      {
        v33 = *(v31 - 1);
        v32 = v31 - 1;
        *a3 = v32;
        v16 = (v29 - v26) & 0x3F;
        *(a3 + 8) = v16;
        *v32 = v33 & ~(-1 << (v29 - v26)) | (v28 << (v26 + ((v29 - v26) & 0x3F)));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = v16;
  return result;
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::__bitset<1ul,8ul>,true>(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t std::bitset<1ul>::operator<<=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = a2 != 0;
  v10 = a1;
  v11 = 0;
  v8 = a1;
  v9 = a2 == 0;
  v6 = a1;
  v7 = 1;
  if (a2)
  {
    std::__copy_backward_unaligned[abi:ne200100]<std::__bitset<1ul,8ul>,false>(&v10, &v8, &v6, v5);
    v10 = a1;
    v11 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(&v10, v3);
  }

  else
  {
    std::__copy_backward_aligned[abi:ne200100]<std::__bitset<1ul,8ul>,false>(&v10, &v8, &v6, v5);
  }

  return a1;
}

uint64_t scandium::Processor::convert_algs_analytics@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 244) = 0u;
  *(a3 + 228) = 0u;
  *(a3 + 212) = 0u;
  *(a3 + 196) = 0u;
  *(a3 + 180) = 0u;
  *(a3 + 164) = 0u;
  *(a3 + 148) = 0u;
  *(a3 + 132) = 0u;
  *(a3 + 116) = 0u;
  *(a3 + 100) = 0u;
  *(a3 + 84) = 0u;
  *(a3 + 68) = 0u;
  *(a3 + 52) = 0u;
  *(a3 + 420) = 0u;
  *(a3 + 436) = 0u;
  *(a3 + 388) = 0u;
  *(a3 + 404) = 0u;
  *(a3 + 356) = 0u;
  *(a3 + 372) = 0u;
  *(a3 + 324) = 0u;
  *(a3 + 340) = 0u;
  *(a3 + 292) = 0u;
  *(a3 + 308) = 0u;
  *(a3 + 260) = 0u;
  *(a3 + 276) = 0u;
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 50);
  v6 = *(a1 + 51);
  *(a3 + 56) = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a3 + 80) = *(a1 + 68);
  *(a3 + 88) = *(a1 + 76);
  v8 = *(a1 + 96);
  DWORD2(v8) = *(a1 + 104);
  HIDWORD(v8) = *(a1 + 196);
  *(a3 + 104) = *(a1 + 92);
  v9 = *(a1 + 200);
  *(&v9 + 1) = *(a1 + 108);
  *(a3 + 112) = v8;
  *(a3 + 128) = v9;
  *(a3 + 144) = *(a1 + 116);
  *(a3 + 152) = *(a1 + 124);
  *(a3 + 156) = *(a1 + 136);
  v10 = *(a1 + 152);
  v12 = *(a1 + 244);
  result = a1 + 244;
  v13 = v12;
  v14 = *(result - 16);
  *(a3 + 216) = *(result - 32);
  *(a3 + 452) = 0;
  *(a3 + 232) = v14;
  *(a3 + 248) = *(result - 84);
  *(a3 + 264) = *(result - 68);
  *(a3 + 280) = *(result - 52);
  v15 = *(result - 116);
  DWORD2(v15) = *(result - 36);
  HIDWORD(v15) = *(result + 32);
  *(a3 + 284) = v15;
  *(a3 + 300) = *(result + 36);
  *(a3 + 316) = *(result + 52);
  *(a3 + 332) = *(result + 68);
  *(a3 + 348) = *(result + 84);
  *(a3 + 364) = *(result + 100);
  *(a3 + 380) = *(result + 116);
  *(a3 + 396) = *(result + 132);
  *(a3 + 412) = *(result + 148);
  *(a3 + 428) = *(result + 164);
  *(a3 + 444) = *(result + 180);
  *(a3 + 452) = *(result + 188);
  *(a3 + 108) = *(a2 + 14);
  *(a3 + 48) = v4;
  *(a3 + 50) = v5;
  *(a3 + 51) = v6;
  *(a3 + 64) = v7;
  *(a3 + 172) = v10;
  *(a3 + 174) = *(result - 90);
  *(a3 + 176) = *(result - 88);
  *(a3 + 178) = *(result + 192);
  v16 = (a3 + 184);
  v17 = *(result + 16);
  *&v8 = vextq_s8(v17, v17, 8uLL).u64[0];
  *(a3 + 180) = *(result + 194);
  v18 = vextq_s8(v13, v13, 8uLL).u64[0];
  v19 = *(a2 + 12);
  vst4_f32(v16, *(&v8 - 8));
  if (v19)
  {
    v20 = *a2 * 0.0078125 / v19;
    if ((*(a3 + 76) & 1) == 0)
    {
      *(a3 + 76) = 1;
    }

    v21 = v20;
    *(a3 + 72) = v21;
  }

  *(a3 + 68) = *(a2 + 8);
  return result;
}

void scandium::Processor::Processor(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, char a10, uint64_t a11)
{
  v42 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *a1 = 0;
  v12 = *(a2 + 29);
  if (v12 != -1)
  {
    *&v41 = v39;
    *(a1 + 16) = (off_287620650[v12])(&v41);
    v20 = *(a2 + 29);
    if (v20 != -1)
    {
      *&v41 = v39;
      *(a1 + 18) = (off_287620660[v20])(&v41, a2);
      *(a1 + 24) = 0;
      *(a1 + 31) = 0;
      if (*(a1 + 16))
      {
        v21 = *(a2 + 29);
        if (v21)
        {
          if (v21 != 1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v22 = a2[5];
          v39[4] = a2[4];
          v39[5] = v22;
          v40[0] = a2[6];
          *(v40 + 15) = *(a2 + 111);
          v23 = a2[1];
          v39[0] = *a2;
          v39[1] = v23;
          v24 = a2[3];
          v39[2] = a2[2];
          v39[3] = v24;
        }

        else
        {
          v25 = a2[5];
          v40[6] = a2[4];
          v40[7] = v25;
          v40[8] = a2[6];
          v26 = a2[1];
          v40[2] = *a2;
          v40[3] = v26;
          v27 = a2[3];
          v40[4] = a2[2];
          v40[5] = v27;
        }

        std::__function::__value_func<void ()(scandium::Result,scandium::Analytics const&)>::__value_func[abi:ne200100](v37, a3);
        v38 = a1;
        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v36, a5);
        std::__function::__value_func<void ()(scandium::AbortReason,scandium::Analytics const&)>::__value_func[abi:ne200100](v33, a4);
        v34 = a1;
        std::__function::__value_func<void ()(scandium::AbortReason)>::__value_func[abi:ne200100](&v35, a6);
        std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v31, a7);
        v32 = a1;
        std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v29, a8);
        v30 = a1;
        if (a10)
        {
          if (v21)
          {
            operator new();
          }

          operator new();
        }

        if (v21)
        {
          operator new();
        }

        operator new();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x266741580](exception, "start packet indicated a zero-length session");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  std::__throw_bad_variant_access[abi:ne200100]();
}

{
  scandium::Processor::Processor(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_264817824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Scandium::ScandiumMvmt::scandium_mvmt_processor_t ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&STACK[0x208]);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&a65);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&STACK[0x250]);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&STACK[0x228]);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](&STACK[0x2B8]);
  std::__function::__value_func<void ()(scandium::AbortReason)>::~__value_func[abi:ne200100](v68 + 40);
  std::__function::__value_func<void ()(scandium::AbortReason,scandium::Analytics const&)>::~__value_func[abi:ne200100](&STACK[0x270]);
  std::__function::__value_func<void ()(Scandium::ScandiumPPG::SpO2Result)>::~__value_func[abi:ne200100](v69 - 256);
  std::__function::__value_func<void ()(scandium::Result,scandium::Analytics const&)>::~__value_func[abi:ne200100](&STACK[0x2D8]);
  MEMORY[0x266741650](v66, 0x20C4093837F09);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&a11);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](&a16);
  std::__function::__value_func<void ()(scandium::AbortReason)>::~__value_func[abi:ne200100](v67 + 40);
  std::__function::__value_func<void ()(scandium::AbortReason,scandium::Analytics const&)>::~__value_func[abi:ne200100](&a21);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a30);
  std::__function::__value_func<void ()(scandium::Result,scandium::Analytics const&)>::~__value_func[abi:ne200100](&a34);
  std::unique_ptr<Scandium::ScandiumMvmt::scandium_mvmt_monitor_t>::reset[abi:ne200100](a10, 0);
  std::unique_ptr<Scandium::ScandiumPPG::scandium_spo2_monitor_t>::reset[abi:ne200100](v65, 0);
  _Unwind_Resume(a1);
}

void scandium::Processor::~Processor(Scandium::ScandiumMvmt::scandium_mvmt_processor_t ***this)
{
  std::unique_ptr<Scandium::ScandiumMvmt::scandium_mvmt_monitor_t>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<Scandium::ScandiumPPG::scandium_spo2_monitor_t>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<Scandium::ScandiumMvmt::scandium_mvmt_monitor_t>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<Scandium::ScandiumPPG::scandium_spo2_monitor_t>::reset[abi:ne200100](this, 0);
}

void scandium::Processor::process(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 208);
  v9[12] = *(a2 + 192);
  v9[13] = v2;
  v10[0] = *(a2 + 224);
  *(v10 + 15) = *(a2 + 239);
  v3 = *(a2 + 144);
  v9[8] = *(a2 + 128);
  v9[9] = v3;
  v4 = *(a2 + 176);
  v9[10] = *(a2 + 160);
  v9[11] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v6;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v8 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v8;
  ++*(a1 + 36);
  *(a1 + 24) += *(a2 + 243);
  if (*(a1 + 8))
  {
    Scandium::ScandiumMvmt::scandium_mvmt_monitor_t::scandium_mvmt_monitor_process(*(a1 + 8), v9);
  }

  else
  {
    Scandium::ScandiumPPG::scandium_spo2_monitor_t::scandium_spo2_monitor_process(*a1, v9);
  }
}

void ****std::unique_ptr<Scandium::ScandiumPPG::scandium_spo2_monitor_t>::reset[abi:ne200100](void *****a1, void ****a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Scandium::ScandiumPPG::scandium_spo2_monitor_t::~scandium_spo2_monitor_t(result);

    JUMPOUT(0x266741650);
  }

  return result;
}

Scandium::ScandiumMvmt::scandium_mvmt_processor_t **std::unique_ptr<Scandium::ScandiumMvmt::scandium_mvmt_monitor_t>::reset[abi:ne200100](Scandium::ScandiumMvmt::scandium_mvmt_processor_t ***a1, Scandium::ScandiumMvmt::scandium_mvmt_processor_t **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Scandium::ScandiumMvmt::scandium_mvmt_monitor_t::~scandium_mvmt_monitor_t(result);

    JUMPOUT(0x266741650);
  }

  return result;
}