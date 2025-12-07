uint64_t TCompounder::takesFugenS(uint64_t a1, __int32 *a2, _DWORD *a3)
{
  if (*a3 != 83 || a3[8] == 50 || a3[7] == 71)
  {
    return 0;
  }

  v8 = wcslen(a2);
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v29 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v10 = v29;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = v9 + 4 * v10 - 4;
  if (v10)
  {
    v12 = v11 > v9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v9 + 4;
    do
    {
      v14 = *(v13 - 1);
      *(v13 - 1) = *v11;
      *v11 = v14;
      v11 -= 4;
      v15 = v13 >= v11;
      v13 += 4;
    }

    while (!v15);
  }

  if (v8 < 4 || wcschr(dword_262891130, a2[v8 - 1]) || !wcscmp(a2, dword_262891140) || !wcscmp(a2, dword_26289115C))
  {
    goto LABEL_22;
  }

  v16 = (v29 & 0x80u) == 0 ? __p : __p[0];
  if (!wcsncasecmp(v16, dword_26289117C, 2uLL))
  {
    goto LABEL_22;
  }

  v17 = (v29 & 0x80u) == 0 ? __p : __p[0];
  if (!wcsncasecmp(v17, dword_262891188, 3uLL))
  {
    goto LABEL_22;
  }

  v18 = v29;
  if (v29 < 0)
  {
    v19 = __p[0];
    if (!wcsncmp(__p[0], dword_262891198, 3uLL))
    {
      goto LABEL_22;
    }

    v20 = v19;
  }

  else
  {
    if (!wcsncmp(__p, dword_262891198, 3uLL))
    {
      return 0;
    }

    v19 = __p;
    v20 = __p;
  }

  if (!wcsncmp(v20, dword_2628911A8, 3uLL) || !wcsncmp(v19, dword_2628911B8, 3uLL))
  {
    goto LABEL_22;
  }

  v21 = *(a1 + 320);
  if (v21)
  {
    if (v18 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    v23 = *(a1 + 328);
    do
    {
      v24 = *(v23 + 23);
      if ((v24 & 0x8000000000000000) != 0)
      {
        v25 = *v23;
        v24 = *(v23 + 8);
      }

      else
      {
        v25 = v23;
      }

      if (!wcsncmp(v22, v25, v24))
      {
        goto LABEL_61;
      }

      v23 += 24;
    }

    while (--v21);
  }

  if (v8 == 4)
  {
    goto LABEL_22;
  }

  if (wcsncasecmp(a2, dword_2628911C8, 2uLL))
  {
    goto LABEL_22;
  }

  v26 = a3[7];
  if (v26 != 66 && (v26 != 76 || a3[4] != 70))
  {
    goto LABEL_22;
  }

  v27 = __p;
  if ((v29 & 0x80u) != 0)
  {
    v27 = __p[0];
  }

  if (*v27 == 101 || wcschr(dword_2628911D4, a2[2]))
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

LABEL_61:
  v4 = 1;
LABEL_23:
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2628141A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TCompounderParamManager::~TCompounderParamManager(void **this)
{
  TCompounderParamManager::~TCompounderParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_2875251D0;
  TParam::~TParam(this + 186);
  v2 = 0;
  this[155] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v2 + 185]) < 0)
    {
      operator delete(this[v2 + 183]);
    }

    v2 -= 3;
  }

  while (v2 != -6);
  TParam::~TParam(this + 155);
  v3 = 0;
  this[124] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v3 + 154]) < 0)
    {
      operator delete(this[v3 + 152]);
    }

    v3 -= 3;
  }

  while (v3 != -6);
  TParam::~TParam(this + 124);
  v4 = 0;
  this[93] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v4 + 123]) < 0)
    {
      operator delete(this[v4 + 121]);
    }

    v4 -= 3;
  }

  while (v4 != -6);
  TParam::~TParam(this + 93);
  v5 = 0;
  this[62] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v5 + 92]) < 0)
    {
      operator delete(this[v5 + 90]);
    }

    v5 -= 3;
  }

  while (v5 != -6);
  TParam::~TParam(this + 62);
  *this = &unk_287525670;
  TParam::~TParam(this + 18);

  TParamManager::~TParamManager(this);
}

uint64_t TMbrEntry::TMbrEntry(uint64_t a1, char **a2, double a3)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = a3;
  *(a1 + 8) = 0xC12E848000000000;
  if ((a1 + 32) != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 32), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  *(a1 + 16) = vdupq_n_s64(0xC12E848000000000);
  return a1;
}

void sub_262814278(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCRFModel::TCRFModel(uint64_t a1, int a2, int a3, double a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 40) = a3;
  *(a1 + 44) = a2;
  MEMORY[0x26672AF30]();
  *(a1 + 32) = 0;
  return a1;
}

void sub_2628142D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_262814680(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::destroy(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::vector<int>::__assign_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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

uint64_t std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::find<std::vector<int>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::vector<int> const>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::vector<int> const>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::vector<int> const>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = v4 - *a2;
  if ((v6 - *a3) >> 2 >= v7 >> 2)
  {
    v8 = v7 >> 2;
  }

  else
  {
    v8 = (v6 - *a3) >> 2;
  }

  if (v8)
  {
    v9 = 4 * v8;
    v10 = &v3[v8];
    while (*v3 == *v5)
    {
      ++v3;
      ++v5;
      v9 -= 4;
      if (!v9)
      {
        v3 = v10;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  return *v3 < *v5;
}

void *std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__find_equal<std::vector<int>>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::vector<int> const,double>,std::__map_value_compare<std::vector<int> const,std::__value_type<std::vector<int> const,double>,std::less<std::vector<int> const>,true>,std::allocator<std::__value_type<std::vector<int> const,double>>>::__find_equal<std::vector<int>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::vector<int> const>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::vector<int> const>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_262814B00(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<int> const,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<int> const,double>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::pair<TWord const*,unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned int>>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::vector<std::pair<TWord const*,unsigned long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
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

uint64_t *std::vector<TCompoundPath>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<TCompoundPath>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_262814E34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TCompoundPath>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TCompoundPath>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TCompoundPath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_262814F58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::pair<TWord const*,unsigned long>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, _OWORD *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::pair<TWord const*,unsigned long>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_262815080(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<TWord const*,unsigned long>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::find<std::wstring>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

void *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__find_equal<std::wstring>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__find_equal<std::wstring>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_262815338(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::__find_equal<std::wstring>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>();
  }

  return result;
}

void sub_262815488(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void EnvMgr::EnvMgr(EnvMgr *this, int a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  v3 = this + 56;
  *(this + 72) = 0u;
  v4 = this + 72;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 31) = 0;
  *(this + 30) = 0;
  *(this + 116) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 18) = StringIdCollSearchCmpFromStringId;
  *(this + 19) = this;
  *(this + 20) = 0;
  *(this + 88) = 1;
  *(this + 90) = 131070;
  *this = 0;
  DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 0);
  v5 = *(this + 16);
  if (v5 == *(this + 17))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v3, 1, 1);
    v5 = *(this + 16);
  }

  v6 = (*(this + 7) + 16 * v5);
  *v6 = 0;
  v6[1] = 0;
  ++*(this + 16);
  v7 = *(this + 21);
  if (!v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v4, 1, 0);
    v7 = *(this + 21);
  }

  v8 = *(this + 20);
  if (v8 == v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v4, 1, 1);
    v8 = *(this + 20);
  }

  v9 = (*(this + 9) + 16 * v8);
  *v9 = 0;
  v9[1] = 0;
  ++*(this + 20);
  *(this + 64) = 1;
  *(this + 65) = a2;
  *(this + 264) = 1;
}

void sub_2628157F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v19);
  DgnArray<DgnArray<PositionClu>>::releaseAll(v16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v14);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v13);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  _Unwind_Resume(a1);
}

void EnvMgr::~EnvMgr(EnvMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(this + 88);
  DgnArray<DgnArray<PositionClu>>::releaseAll(this + 72);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 56);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t EnvMgr::findStringIdIndex(EnvMgr *this, EnvMgr *a2)
{
  v9[0] = a2;
  v9[1] = this;
  v9[2] = 0;
  v10 = -2;
  v11 = 0;
  if (*(this + 88) == 1 && *(this + 45) == -2)
  {
    v2 = this + 96;
  }

  else
  {
    v2 = *(*(this + 14) + 524272);
  }

  v3 = *(v2 + 2);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while (1)
  {
    v6 = ((v4 + v5) / 2);
    v7 = StringIdCollSearchCmp((*v2 + 2 * v6), v9);
    if (!v7)
    {
      break;
    }

    if (v7 < 0)
    {
      v5 = v6 + 1;
    }

    else
    {
      v4 = v6 - 1;
    }

    if (v5 > v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t EnvMgr::findStringId(EnvMgr *this, EnvMgr *a2)
{
  StringIdIndex = EnvMgr::findStringIdIndex(this, a2);
  if (StringIdIndex == -1)
  {
    return 0xFFFFLL;
  }

  if (*(this + 88) == 1 && *(this + 45) == -2)
  {
    v4 = (this + 96);
  }

  else
  {
    v4 = *(*(this + 14) + 524272);
  }

  return *(*v4 + 2 * StringIdIndex);
}

uint64_t EnvMgr::addString(EnvMgr *this, const char *a2)
{
  v4 = *(this + 56);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = *(*(this + 27) + 2 * v5);
    *(this + 56) = v5;
    *(*(this + 25) + 4 * v6) = 1;
    *(*(this + 23) + 2 * v6) = *(this + 44);
  }

  else
  {
    v6 = *(this + 116);
    *(this + 116) = v6 + 1;
    v7 = *(this + 52);
    if (v7 == *(this + 53))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 200, 1, 1);
      v7 = *(this + 52);
    }

    *(*(this + 25) + 4 * v7) = 1;
    ++*(this + 52);
    v8 = *(this + 44);
    v9 = *(this + 48);
    if (v9 == *(this + 49))
    {
      DgnPrimArray<short>::reallocElts(this + 184, 1, 1);
      v9 = *(this + 48);
    }

    *(*(this + 23) + 2 * v9) = v8;
    *(this + 48) = v9 + 1;
  }

  LOBYTE(v10) = *a2;
  if (*a2)
  {
    v11 = *(this + 44);
    v12 = 1;
    do
    {
      if (v11 == *(this + 45))
      {
        DgnPrimArray<char>::reallocElts(this + 168, 1, 1);
        v11 = *(this + 44);
      }

      *(*(this + 21) + v11) = v10;
      v11 = *(this + 44) + 1;
      *(this + 44) = v11;
      v10 = a2[v12++];
    }

    while (v10);
  }

  else
  {
    v11 = *(this + 44);
  }

  if (v11 == *(this + 45))
  {
    DgnPrimArray<char>::reallocElts(this + 168, 1, 1);
    v11 = *(this + 44);
  }

  *(*(this + 21) + v11) = 0;
  v13 = *(this + 44) + 1;
  *(this + 44) = v13;
  if (v13 > 0xFFFE)
  {
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    if (*(this + 48))
    {
      v14 = 0;
      do
      {
        if (*(*(this + 25) + 4 * v14))
        {
          v15 = v28;
          v16 = v26;
          v17 = v28;
          if (v26 == HIDWORD(v26))
          {
            DgnPrimArray<short>::reallocElts(&v25, 1, 1);
            v16 = v26;
            v17 = v28;
          }

          *(v25 + 2 * v16) = v15;
          LODWORD(v26) = v16 + 1;
          v18 = (*(this + 21) + *(*(this + 23) + 2 * v14));
          LOBYTE(v19) = *v18;
          if (*v18)
          {
            v20 = 1;
            do
            {
              if (v17 == HIDWORD(v28))
              {
                DgnPrimArray<char>::reallocElts(&v27, 1, 1);
                v17 = v28;
              }

              *(v27 + v17) = v19;
              v17 = v28 + 1;
              LODWORD(v28) = v28 + 1;
              v19 = v18[v20++];
            }

            while (v19);
          }

          if (v17 == HIDWORD(v28))
          {
            DgnPrimArray<char>::reallocElts(&v27, 1, 1);
            v17 = v28;
          }

          *(v27 + v17) = 0;
          v21 = v28;
          v22 = &v28;
        }

        else
        {
          v21 = v26;
          if (v26 == HIDWORD(v26))
          {
            DgnPrimArray<short>::reallocElts(&v25, 1, 1);
            v21 = v26;
          }

          *(v25 + 2 * v21) = -1;
          v22 = &v26;
        }

        *v22 = v21 + 1;
        ++v14;
      }

      while (v14 < *(this + 48));
      v23 = v28;
    }

    else
    {
      v23 = 0;
    }

    DgnPrimArray<unsigned char>::copyArraySlice(this + 21, &v27, 0, v23);
    DgnPrimArray<unsigned short>::copyArraySlice(this + 23, &v25, 0, v26);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
    if (*(this + 44) >= 0xFFFFu)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 165, "fileutil/envmgr", 1, "%u %u", *(this + 44), 0xFFFF);
    }
  }

  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::add(this + 88, v6);
  return v6;
}

void sub_262815D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

unint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::add(unint64_t result, __int16 a2)
{
  v3 = result;
  v4 = (result + 8);
  if (*result == 1)
  {
    v5 = *(result + 2);
    v25 = a2;
    v26 = *(result + 64);
    v27 = v5;
    v28 = 0;
    result = DgnPrimArray<unsigned short>::searchLastOrBefore((result + 8), 0, *(result + 16), &v25, *(result + 56));
    v6 = (result + 1);
    v7 = *(v3 + 16);
    if (v7 == *(v3 + 20))
    {
      result = DgnPrimArray<short>::reallocElts(v4, 1, 1);
      v7 = *(v3 + 16);
    }

    v8 = *v4;
    if (v7 > v6)
    {
      v9 = v7;
      v10 = (v8 + 2 * v7);
      v11 = v10;
      do
      {
        --v9;
        v12 = *--v11;
        *v10 = v12;
        v10 = v11;
      }

      while (v9 > v6);
    }

    v13 = (v8 + 2 * v6);
  }

  else
  {
    v7 = *(result + 16);
    if (v7 == *(result + 20))
    {
      result = DgnPrimArray<short>::reallocElts(result + 8, 1, 1);
      v7 = *(v3 + 16);
    }

    v13 = (*v4 + 2 * v7);
  }

  *v13 = a2;
  *(v3 + 16) = v7 + 1;
  v14 = *(v3 + 32);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      result = *(*(v3 + 24) + 8 * i);
      if (result)
      {
        v25 = a2;
        v26 = *(v3 + 64);
        v27 = i;
        v28 = 0;
        result = DgnPrimArray<unsigned short>::searchLastOrBefore(result, 0, *(result + 8), &v25, *(v3 + 56));
        v16 = result;
        v17 = *(*(v3 + 24) + 8 * i);
        v18 = *(v17 + 2);
        if (v18 == *(v17 + 3))
        {
          result = DgnPrimArray<short>::reallocElts(*(*(v3 + 24) + 8 * i), 1, 1);
          v18 = *(v17 + 2);
        }

        v19 = (v16 + 1);
        v20 = *v17;
        if (v18 > v19)
        {
          v21 = v18;
          v22 = (v20 + 2 * v18);
          v23 = v22;
          do
          {
            --v21;
            v24 = *--v23;
            *v22 = v24;
            v22 = v23;
          }

          while (v21 > v19);
        }

        *(v20 + 2 * v19) = a2;
        *(v17 + 2) = v18 + 1;
        v14 = *(v3 + 32);
      }
    }
  }

  return result;
}

unint64_t EnvMgr::releaseString(unint64_t this, int a2)
{
  v2 = *(this + 200);
  v3 = *(v2 + 4 * a2) - 1;
  *(v2 + 4 * a2) = v3;
  if (!v3)
  {
    v5 = this;
    this = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::remove(this + 88, a2);
    v6 = *(v5 + 224);
    if (v6 == *(v5 + 228))
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 216, 1, 1);
      v6 = *(v5 + 224);
    }

    *(*(v5 + 216) + 2 * v6) = a2;
    *(v5 + 224) = v6 + 1;
    *(*(v5 + 184) + 2 * a2) = -1;
  }

  return this;
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::remove(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*result == 1)
  {
    if (v2)
    {
      v3 = 0;
      v4 = (*(result + 8) + 2);
      v5 = (v2 - 1);
      while (*(v4 - 1) != a2)
      {
        ++v3;
        ++v4;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v6 = v2 - 1;
      if (v6 > v3)
      {
        v9 = v5 - v3;
        do
        {
          *(v4 - 1) = *v4;
          ++v4;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
LABEL_6:
      v6 = v2 - 1;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_18;
    }

    v7 = *(result + 16);
    v8 = *(result + 8);
    while (*v8 != a2)
    {
      ++v8;
      if (!--v7)
      {
        goto LABEL_18;
      }
    }

    v6 = v2 - 1;
    *v8 = *(*(result + 8) + 2 * v6);
  }

  *(result + 16) = v6;
LABEL_18:
  v10 = *(result + 32);
  if (v10)
  {
    v11 = 0;
    v12 = *(result + 24);
    do
    {
      v13 = *(v12 + 8 * v11);
      if (v13)
      {
        v14 = v13[2];
        if (v14)
        {
          v15 = 0;
          v16 = (*v13 + 2);
          v17 = (v14 - 1);
          while (*(*v13 + 2 * v15) != a2)
          {
            ++v15;
            ++v16;
            --v17;
            if (v14 == v15)
            {
              goto LABEL_25;
            }
          }

          v18 = v14 - 1;
          if (v18 > v15)
          {
            do
            {
              *(v16 - 1) = *v16;
              ++v16;
              --v17;
            }

            while (v17);
          }
        }

        else
        {
LABEL_25:
          v18 = v14 - 1;
        }

        v13[2] = v18;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  return result;
}

uint64_t EnvMgr::loadEnvMgrFromStream(EnvMgr *this, DFile *a2, DgnStream *a3, unsigned int *a4, int a5)
{
  LoadSaveTracker::LoadSaveTracker(&v19);
  v10 = *(this + 65);
  if (a5)
  {
    v18 = 0;
    readMrecHeader(a3, a2, 0x16u, "MRENV!? ", &v18 + 1, &v18);
    if (*(a2 + 6))
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = &unk_262891388;
    }

    MrecHeaderCheckVersions(v11, "MRENV!? ", HIDWORD(v18), v18, 0x11u, 0xEu);
    v13 = MrecHeaderCheckLatestVersionIfShared(a2, "MRENV!? ", SHIDWORD(v18), v18, 17, 14);
    v20 = 0;
    (*(*a3 + 72))(a3, &v20, 4, 1, v13);
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  v20 = 0;
  readObject(a3, this, &v20);
  readObject<unsigned int>(a3, this + 8, &v20);
  readObject<DgnPrimArray<unsigned int>>(a3, this + 24, &v20);
  readObject<DgnPrimArray<unsigned short>>(a3, this + 56, &v20);
  readObject<DgnArray<DgnPrimFixArray<unsigned char>>>(a3, this + 72, &v20);
  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::readObject(this + 88, a3, &v20);
  readObject<char>(a3, this + 168, &v20);
  readObject<unsigned short>(a3, this + 184, &v20);
  readObject<unsigned int>(a3, this + 200, &v20);
  readObject<unsigned short>(a3, this + 216, &v20);
  readObject(a3, this + 116, &v20);
  readObject<unsigned int>(a3, this + 240, &v20);
  readObject(a3, this + 64, &v20);
  readObject(a3, this + 65, &v20);
  *(this + 18) = StringIdCollSearchCmpFromStringId;
  *(this + 19) = this;
  *(this + 20) = 0;
  v14 = *(this + 65);
  if (v14 != v10)
  {
    NameForSemanticType = DFile::getNameForSemanticType(v14);
    v16 = DFile::getNameForSemanticType(v10);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 273, "fileutil/envmgr", 5, "%d %.500s %d %.500s", v14, NameForSemanticType, v10, v16);
  }

  readObjectChecksumAndVerify(a3, v20);
  *a4 ^= v20;
  LoadSaveTracker::~LoadSaveTracker(&v19);
  return v12;
}

void readObject<DgnArray<DgnPrimFixArray<unsigned char>>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      DgnArray<DgnVector>::releaseAll(*a2 + v10);
      --v9;
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<DgnPrimFixArray<unsigned char>>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

void EnvMgr::loadEnvMgrFromText(EnvMgr *this, FileSpec **a2)
{
  LoadSaveTracker::LoadSaveTracker(&v25);
  DgnTextFileParser::DgnTextFileParser(v22);
  DgnTextFileParser::openDgnTextFileParser(v22, a2, 21, 1);
  DgnTextFileParser::verifyMatchingFileType(v22, "ENS");
  v21[0] = 0;
  v21[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v22, sENS_Versions, v21);
  DgnTextFileParser::verifyFileVersionInRange(v22, v21);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v22);
  v19 = 0;
  v20 = 0;
  DgnTextFile::getLineFieldNames(v22, &v19);
  v17 = 0;
  v18 = 0;
  DgnTextFile::getLineFieldFormats(v22, &v17);
  if (v20 != 2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 312, "fileutil/envmgr", 7, "%d", v20);
  }

  v4 = v19;
  if (*(v19 + 8))
  {
    v5 = *v19;
  }

  else
  {
    v5 = &unk_262891388;
  }

  if (strcmp(v5, "VariableName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 314, "fileutil/envmgr", 8, "%.500s %.500s", "VariableName", v5);
    v4 = v19;
  }

  if (*v17)
  {
    if (*(v4 + 8))
    {
      v6 = *v4;
    }

    else
    {
      v6 = &unk_262891388;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 316, "fileutil/envmgr", 15, "%.500s %.500s", v6, "String");
    v4 = v19;
  }

  if (*(v4 + 24))
  {
    v7 = *(v4 + 16);
  }

  else
  {
    v7 = &unk_262891388;
  }

  if (strcmp(v7, "VariableValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 318, "fileutil/envmgr", 8, "%.500s %.500s", "VariableValue", v7);
  }

  if (*v17)
  {
    if (*(v19 + 8))
    {
      v8 = *v19;
    }

    else
    {
      v8 = &unk_262891388;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 320, "fileutil/envmgr", 15, "%.500s %.500s", v8, "String");
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  DgnArray<DgnString>::releaseAll(&v19);
  DgnString::DgnString(&v19);
  DgnString::DgnString(&v17);
  v16[0] = 0;
  v16[1] = 0;
  DgnString::DgnString(v15);
  v13 = 0;
  v14 = 0;
  while (DgnTextFileParser::parseNextLine(v22))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v22, 0);
    DgnString::operator=(&v19, LineFieldString);
    v10 = DgnTextFileParser::getLineFieldString(v22, 1u);
    DgnString::operator=(&v17, v10);
    if (v20 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 333, "fileutil/envmgr", 12, "%s", &unk_262891388);
    }

    if (v18 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 334, "fileutil/envmgr", 13, "%s", &errStr_fileutil_envmgr_E_EMPTY_VARIABLE_VALUE);
    }

    if (!*this)
    {
      *this = EnvMgr::newEnv(this);
    }

    if (v23)
    {
      v11 = v22[4];
    }

    else
    {
      v11 = &unk_262891388;
    }

    DgnTextFile::convertFromEnvValueFormat(&v17, &v13, v11, v24);
    if (v20)
    {
      v12 = v19;
    }

    else
    {
      v12 = &unk_262891388;
    }

    EnvMgr::setData(this, *this, v12, v13, v14, 1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v13);
  DgnString::~DgnString(v15);
  DgnArray<DgnString>::releaseAll(v16);
  DgnString::~DgnString(&v17);
  DgnString::~DgnString(&v19);
  DgnIArray<Utterance *>::~DgnIArray(v21);
  DgnTextFileParser::~DgnTextFileParser(v22);
  LoadSaveTracker::~LoadSaveTracker(&v25);
}

void sub_2628168F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va4, a13);
  va_start(va3, a13);
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  va_copy(va4, va3);
  v24 = va_arg(va4, void);
  v26 = va_arg(va4, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnIArray<Utterance *>::~DgnIArray(va3);
  DgnTextFileParser::~DgnTextFileParser(va4);
  LoadSaveTracker::~LoadSaveTracker((v13 - 65));
  _Unwind_Resume(a1);
}

uint64_t EnvMgr::newEnv(EnvMgr *this)
{
  *(this + 264) = 0;
  v2 = *(this + 62);
  if (v2)
  {
    v3 = v2 - 1;
    result = *(*(this + 30) + 4 * v3);
    *(this + 62) = v3;
  }

  else
  {
    if (*(this + 64) >= 0x3FFFFFu)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 643, "fileutil/envmgr", 3, "%s", &errStr_fileutil_envmgr_E_TOO_MANY);
    }

    v5 = *(this + 16);
    if (v5 == *(this + 17))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 1);
      v5 = *(this + 16);
    }

    v6 = (*(this + 7) + 16 * v5);
    *v6 = 0;
    v6[1] = 0;
    ++*(this + 16);
    v7 = *(this + 20);
    if (v7 == *(this + 21))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, 1, 1);
      v7 = *(this + 20);
    }

    v8 = (*(this + 9) + 16 * v7);
    *v8 = 0;
    v8[1] = 0;
    ++*(this + 20);
    result = *(this + 64);
    *(this + 64) = result + 1;
  }

  return result;
}

void *EnvMgr::setData(EnvMgr *this, unsigned int a2, EnvMgr *a3, const unsigned __int8 *a4, unsigned int a5, int a6)
{
  EnvMgr::verifyEnvId(this, a2);
  if (a6 && EnvMgr::getData(this, a2, a3))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 817, "fileutil/envmgr", 14, "%.500s", a3);
  }

  *(this + 264) = 0;
  result = EnvMgr::findStringId(this, a3);
  if (result == 0xFFFF || (v13 = result, !*(*(this + 25) + 4 * result)))
  {
    if (!a5)
    {
      return result;
    }

    result = EnvMgr::addString(this, a3);
    v13 = result;
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = a2;
  v16 = *(this + 7) + 16 * a2;
  v17 = *(v16 + 8);
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = 0;
  v19 = *v16;
  v20 = (v17 - 1);
  v21 = -2;
  v22 = 24;
  while (*(v19 + 2 * v18) != v13)
  {
    ++v18;
    v22 += 16;
    v21 -= 2;
    if (v17 == v18)
    {
      goto LABEL_15;
    }
  }

  if (v18 == 0xFFFFFFFFLL)
  {
LABEL_15:
    if (!a5)
    {
      return result;
    }

    v23 = *(v16 + 8);
    if (v17 == *(v16 + 12))
    {
      DgnPrimArray<short>::reallocElts(v16, 1, 1);
      v23 = *(v16 + 8);
    }

    *(*v16 + 2 * v23) = v13;
    *(v16 + 8) = v23 + 1;
    v24 = *(this + 9) + 16 * v15;
    v25 = *(v24 + 8);
    if (v25 == *(v24 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(*(this + 9) + 16 * v15, 1, 1);
      v25 = *(v24 + 8);
    }

    v26 = *v24 + 16 * v25;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v24 + 8) = v25 + 1;
    if (v14)
    {
      ++*(*(this + 25) + 4 * v13);
    }

    goto LABEL_25;
  }

  if (a5)
  {
    LODWORD(v17) = v18;
LABEL_25:
    v27 = 16 * v15;
    v28 = *(*(this + 9) + v27);
    v29 = v28 + 16 * v17;
    if (*v29)
    {
      MemChunkFree(*v29, 0);
      *v29 = 0;
      v28 = *(*(this + 9) + v27);
    }

    *(v29 + 8) = 0;
    v30 = v28 + 16 * v17;
    if (!*(v30 + 8))
    {
      *v30 = MemChunkAlloc(a5, 0);
      *(v30 + 8) = a5;
      v28 = *(*(this + 9) + v27);
    }

    v31 = *(v28 + 16 * v17);

    return memcpy(v31, a4, a5);
  }

  if (v20 > v18)
  {
    v32 = v20 - v18;
    v33 = (v19 - v21);
    do
    {
      *(v33 - 1) = *v33;
      ++v33;
      --v32;
    }

    while (v32);
  }

  *(v16 + 8) = v20;
  v34 = *(this + 9);
  v35 = v34 + 16 * v15;
  LODWORD(v36) = *(v35 + 8);
  if (v18 + 1 < v36)
  {
    do
    {
      v37 = *v35 + 16 * v18;
      if (*v37)
      {
        MemChunkFree(*v37, 0);
        *v37 = 0;
        v34 = *(this + 9);
      }

      *(v37 + 8) = 0;
      DgnPrimFixArray<unsigned char>::copyArraySlice((*(v34 + 16 * v15) + 16 * v18), (*(v34 + 16 * v15) + v22 - 8), 0, *(*(v34 + 16 * v15) + v22));
      v34 = *(this + 9);
      v35 = v34 + 16 * v15;
      v36 = *(v35 + 8);
      v38 = v18 + 2;
      ++v18;
      v22 += 16;
    }

    while (v38 < v36);
  }

  v39 = (v36 - 1);
  v40 = *(v35 + 12);
  if (v39 > v40)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v35, v39 - v40, 0);
    LODWORD(v36) = *(v35 + 8);
  }

  if (v36 <= v39)
  {
    if (v36 < v39)
    {
      v43 = v39 - v36;
      v44 = (*v35 + 16 * v36 + 8);
      do
      {
        *(v44 - 1) = 0;
        *v44 = 0;
        v44 += 4;
        --v43;
      }

      while (v43);
    }
  }

  else if (v36 > v39)
  {
    v41 = v36;
    v42 = 16 * v36 - 16;
    do
    {
      --v41;
      DgnPrimFixArray<double>::~DgnPrimFixArray(*v35 + v42);
      v42 -= 16;
    }

    while (v41 > v39);
  }

  *(v35 + 8) = v39;

  return EnvMgr::releaseString(this, v13);
}

void EnvMgr::loadEnvMgr(EnvMgr *this, DFile *a2, DFileChecksums *a3)
{
  LoadSaveTracker::LoadSaveTracker(&v9);
  if (DFile::subFileExists(a2, 0x16u))
  {
    v6 = DFile::openSubFile(a2, 0x16u, 3, 0);
    v8 = 0;
    EnvMgr::loadEnvMgrFromStream(this, a2, v6, &v8, 1);
    DgnDelete<DgnStream>(v6);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 22, v8);
    *(this + 264) = 0;
  }

  else if (DFile::subFileExists(a2, 0x15u))
  {
    EnvMgr::loadEnvMgrFromText(this, a2);
    *(this + 264) = 1;
  }

  EnvMgr::compact(this);
  LoadSaveTracker::~LoadSaveTracker(&v9);
}

uint64_t EnvMgr::compact(EnvMgr *this)
{
  v39[0] = 0;
  v39[1] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v2 = *(this + 4);
  v3 = v2 + 1;
  v4 = 4 * v2 - 4;
  while (v4 != -4)
  {
    v5 = *(*(this + 1) + v4);
    --v3;
    v4 -= 4;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  *(this + 4) = v3;
  DgnPrimArray<unsigned int>::compact(this + 8);
  if (*(this + 8))
  {
    v6 = 0;
    do
    {
      v7 = *(this + 3) + 16 * v6;
      v8 = *(v7 + 8);
      v9 = v8 + 1;
      v10 = 4 * v8 - 4;
      while (v10 != -4)
      {
        v11 = *(*v7 + v10);
        --v9;
        v10 -= 4;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      v9 = 0;
LABEL_13:
      *(v7 + 8) = v9;
      DgnPrimArray<unsigned int>::compact(v7);
      ++v6;
    }

    while (v6 < *(this + 8));
  }

  DgnArray<DgnPrimArray<unsigned int>>::compactRemoveMatchingSuffix(this + 24, v39);
  if (*(this + 12))
  {
    v12 = 0;
    do
    {
      v13 = *(this + 5) + 16 * v12;
      if (*(v13 + 8))
      {
        v14 = 0;
        do
        {
          v15 = *v13 + 16 * v14;
          v16 = *(v15 + 8);
          v17 = v16 + 1;
          v18 = 4 * v16 - 4;
          while (v18 != -4)
          {
            v19 = *(*v15 + v18);
            --v17;
            v18 -= 4;
            if (v19)
            {
              goto LABEL_23;
            }
          }

          v17 = 0;
LABEL_23:
          *(v15 + 8) = v17;
          DgnPrimArray<unsigned int>::compact(v15);
          ++v14;
          v13 = *(this + 5) + 16 * v12;
        }

        while (v14 < *(v13 + 8));
      }

      DgnArray<DgnPrimArray<unsigned int>>::compactRemoveMatchingSuffix(v13, v39);
      ++v12;
    }

    while (v12 < *(this + 12));
  }

  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::compactRemoveMatchingSuffix(this + 40, v38);
  if (!*this && !*(this + 4) && !*(this + 8) && !*(this + 12))
  {
    v20 = *(this + 16);
    if (v20 >= 1)
    {
      v21 = 16 * v20 - 16;
      do
      {
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 7) + v21);
        v21 -= 16;
      }

      while (v21 != -16);
    }

    *(this + 16) = 0;
    v22 = *(this + 17);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 0);
      v23 = *(this + 16);
      v22 = *(this + 17);
    }

    if (v23 == v22)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, 1, 1);
      v23 = *(this + 16);
    }

    v24 = (*(this + 7) + 16 * v23);
    *v24 = 0;
    v24[1] = 0;
    ++*(this + 16);
    v25 = *(this + 20);
    if (v25 >= 1)
    {
      v26 = v25 + 1;
      v27 = 16 * v25 - 16;
      do
      {
        DgnArray<DgnVector>::releaseAll(*(this + 9) + v27);
        --v26;
        v27 -= 16;
      }

      while (v26 > 1);
    }

    *(this + 20) = 0;
    v28 = *(this + 21);
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, 1, 0);
      v29 = *(this + 20);
      v28 = *(this + 21);
    }

    if (v29 == v28)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 72, 1, 1);
      v29 = *(this + 20);
    }

    v30 = (*(this + 9) + 16 * v29);
    *v30 = 0;
    v30[1] = 0;
    ++*(this + 20);
    *(this + 26) = 0;
    v31 = *(this + 30);
    if (v31)
    {
      v32 = *(this + 14);
      do
      {
        if (*v32)
        {
          *(*v32 + 8) = 0;
        }

        v32 += 8;
        --v31;
      }

      while (v31);
    }

    *(this + 44) = 0;
    *(this + 48) = 0;
    *(this + 52) = 0;
    *(this + 56) = 0;
    *(this + 116) = 0;
    *(this + 62) = 0;
    *(this + 64) = 1;
  }

  if (*(this + 16))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      DgnPrimArray<unsigned short>::compact(*(this + 7) + v33);
      ++v34;
      v33 += 16;
    }

    while (v34 < *(this + 16));
  }

  DgnArray<DgnPrimArray<unsigned short>>::compact(this + 56);
  if (*(this + 20))
  {
    v35 = 0;
    v36 = 0;
    do
    {
      DgnArray<DgnPrimArray<unsigned short>>::compact(*(this + 9) + v35);
      ++v36;
      v35 += 16;
    }

    while (v36 < *(this + 20));
  }

  DgnArray<DgnPrimArray<unsigned short>>::compact(this + 72);
  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::compact(this + 88);
  DgnPrimArray<unsigned char>::compact(this + 21);
  DgnPrimArray<unsigned short>::compact(this + 184);
  DgnPrimArray<unsigned int>::compact(this + 200);
  DgnPrimArray<unsigned short>::compact(this + 216);
  DgnPrimArray<unsigned int>::compact(this + 240);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v39);
}

void sub_262817338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void EnvMgr::saveEnvMgrToStream(EnvMgr *this, DgnStream *a2, unsigned int *a3, int a4, int a5)
{
  LoadSaveTracker::LoadSaveTracker(&v13);
  if (a5)
  {
    writeMrecHeader(a2, "MRENV!? ", 17, 14, a4 ^ 1);
    v10 = (*(*a2 + 40))(a2);
    v14 = 0;
    (*(*a2 + 80))(a2, &v14, 4);
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
  writeObject(a2, this, &v12);
  writeObject<unsigned int>(a2, this + 8, &v12);
  writeObject<DgnPrimArray<unsigned int>>(a2, this + 24, &v12);
  writeObject<DgnPrimArray<unsigned short>>(a2, this + 56, &v12);
  writeObject<DgnArray<DgnPrimArray<unsigned char>>>(a2, this + 72, &v12);
  DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::writeObject(this + 88, a2, &v12);
  writeObject<char>(a2, this + 168, &v12);
  writeObject<unsigned short>(a2, this + 184, &v12);
  writeObject<unsigned int>(a2, this + 200, &v12);
  writeObject<unsigned short>(a2, this + 216, &v12);
  writeObject(a2, this + 116, &v12);
  writeObject<unsigned int>(a2, this + 240, &v12);
  writeObject(a2, this + 64, &v12);
  writeObject(a2, this + 65, &v12);
  writeObjectChecksum(a2, &v12);
  *a3 ^= v12;
  if (a5 && (a4 & 1) == 0)
  {
    v11 = (*(*a2 + 48))(a2);
    (*(*a2 + 24))(a2, v10);
    v15 = v11;
    (*(*a2 + 80))(a2, &v15, 4);
    (*(*a2 + 24))(a2, v11);
  }

  LoadSaveTracker::~LoadSaveTracker(&v13);
}

void EnvMgr::saveEnvMgrToText(EnvMgr *this, DFile *a2, int a3)
{
  LoadSaveTracker::LoadSaveTracker(&v27);
  DgnTextFileWriter::DgnTextFileWriter(v26);
  DgnTextFileWriter::openDgnTextFileWriter(v26, a2, 21, a3);
  v24 = 0;
  v25 = 0;
  DgnTextFile::legalDgnTextFileVersions(v26, sENS_Versions, &v24);
  DgnTextFileWriter::setFileType(v26, "ENS", (v24 + 8 * (v25 - 1)));
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  DgnString::DgnString(&v18, "VariableName");
  v6 = v21;
  if (v21 == HIDWORD(v21))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v20, 1, 1);
    v6 = v21;
  }

  DgnString::DgnString((v20 + 16 * v6), &v18);
  LODWORD(v21) = v21 + 1;
  DgnString::~DgnString(&v18);
  v7 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
    v7 = v23;
  }

  *(v22 + 4 * v7) = 0;
  LODWORD(v23) = v7 + 1;
  DgnString::DgnString(&v18, "VariableValue");
  v8 = v21;
  if (v21 == HIDWORD(v21))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v20, 1, 1);
    v8 = v21;
  }

  DgnString::DgnString((v20 + 16 * v8), &v18);
  LODWORD(v21) = v21 + 1;
  DgnString::~DgnString(&v18);
  v9 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
    v9 = v23;
  }

  *(v22 + 4 * v9) = 0;
  LODWORD(v23) = v9 + 1;
  DgnTextFileWriter::setLineFieldFormat(v26, &v22, &v20);
  v10 = *this;
  v11 = *(this + 7);
  v12 = *(this + 9);
  DgnString::DgnString(&v18);
  v13 = v11 + 16 * v10;
  if (*(v13 + 8))
  {
    v14 = 0;
    v15 = 0;
    v16 = (v12 + 16 * v10);
    do
    {
      DgnTextFileWriter::setLineFieldValue(v26, 0, (*(this + 21) + *(*(this + 23) + 2 * *(*v13 + 2 * v15))));
      DgnTextFile::convertToEnvValueFormat(*v16 + v14, &v18);
      if (v19)
      {
        v17 = v18;
      }

      else
      {
        v17 = &unk_262891388;
      }

      DgnTextFileWriter::setLineFieldValue(v26, 1u, v17);
      DgnTextFileWriter::writeNextLine(v26);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(v13 + 8));
  }

  DgnString::~DgnString(&v18);
  DgnArray<DgnString>::releaseAll(&v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
  DgnIArray<Utterance *>::~DgnIArray(&v24);
  DgnTextFileWriter::~DgnTextFileWriter(v26);
  LoadSaveTracker::~LoadSaveTracker(&v27);
}

void sub_2628178C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  LoadSaveTracker::~LoadSaveTracker((v5 - 65));
  _Unwind_Resume(a1);
}

void EnvMgr::saveEnvMgr(EnvMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  LoadSaveTracker::LoadSaveTracker(&v14);
  if (*this)
  {
    if (a4)
    {
      EnvMgr::saveEnvMgrToText(this, a2, a5);
    }

    else
    {
      if (a5)
      {
        v10 = 5;
      }

      else
      {
        v10 = 1;
      }

      v11 = DFile::openSubFile(a2, 0x16u, v10, 0);
      v13 = 0;
      EnvMgr::saveEnvMgrToStream(this, v11, &v13, 1, 1);
      DgnDelete<DgnStream>(v11);
      CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
      DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 22, v13);
    }
  }

  LoadSaveTracker::~LoadSaveTracker(&v14);
}

void EnvMgr::printSize(EnvMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 556);
  if (v98)
  {
    v13 = v97;
  }

  else
  {
    v13 = &unk_262891388;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262891388, a3, &unk_262891388, v13);
  DgnString::~DgnString(&v97);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262891388);
  v15 = (a3 + 1);
  v96 = a3;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v18 = v97;
  }

  else
  {
    v18 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v15, &unk_262891388, v16, v16, v18, 4, 4, 0);
  DgnString::~DgnString(&v97);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v19 = 12;
  }

  else
  {
    v19 = 16;
  }

  v20 = *(this + 4);
  v21 = *(this + 5);
  if (v21 >= v20)
  {
    v22 = 0;
    if (v20 > 0)
    {
      v19 += 4 * (v20 - 1) + 4;
    }

    v23 = v19 + 4 * (v21 - v20);
  }

  else
  {
    v22 = 4 * v20;
    v23 = v19;
  }

  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v25 = v97;
  }

  else
  {
    v25 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &unk_262891388, v16, v16, v25, v23, v19, v22);
  DgnString::~DgnString(&v97);
  *a4 += v23;
  *a5 += v19;
  *a6 += v22;
  v26 = sizeObject<DgnPrimArray<unsigned int>>(this + 24, 0);
  v27 = sizeObject<DgnPrimArray<unsigned int>>(this + 24, 1);
  v97 = 0;
  v98 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v97);
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v29 = v97;
  }

  else
  {
    v29 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &unk_262891388, v16, v16, v29, v26, v27, 0);
  DgnString::~DgnString(&v97);
  *a4 += v26;
  *a5 += v27;
  v30 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 40, 0);
  v31 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 40, 1);
  v32 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 40, 3);
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v34 = v97;
  }

  else
  {
    v34 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &unk_262891388, v16, v16, v34, v30, v31, v32);
  DgnString::~DgnString(&v97);
  *a4 += v30;
  *a5 += v31;
  *a6 += v32;
  v35 = sizeObject<DgnPrimArray<unsigned short>>(this + 56, 0);
  v36 = sizeObject<DgnPrimArray<unsigned short>>(this + 56, 1);
  v97 = 0;
  v98 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v97);
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v38 = v97;
  }

  else
  {
    v38 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v15, &unk_262891388, v16, v16, v38, v35, v36, 0);
  DgnString::~DgnString(&v97);
  *a4 += v35;
  *a5 += v36;
  fixed = sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(this + 72, 0);
  v40 = sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(this + 72, 1);
  v41 = sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(this + 72, 3);
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v43 = v97;
  }

  else
  {
    v43 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_262891388, v16, v16, v43, fixed, v40, v41);
  DgnString::~DgnString(&v97);
  *a4 += fixed;
  *a5 += v40;
  *a6 += v41;
  v44 = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(this + 88, 0);
  v45 = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(this + 88, 1);
  v46 = DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(this + 88, 3);
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v48 = v97;
  }

  else
  {
    v48 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v15, &unk_262891388, v16, v16, v48, v44, v45, v46);
  DgnString::~DgnString(&v97);
  *a4 += v44;
  *a5 += v45;
  *a6 += v46;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 12;
  }

  else
  {
    v49 = 16;
  }

  v50 = *(this + 44);
  v51 = *(this + 45);
  v52 = v51 >= v50;
  v53 = v51 - v50;
  if (v52)
  {
    if (v50 > 0)
    {
      v54 = (v50 - 1) + v49 + 1;
    }

    else
    {
      v54 = v49;
    }

    v49 = v54 + v53;
    v50 = 0;
  }

  else
  {
    v54 = v49;
  }

  v55 = v50;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v57 = v97;
  }

  else
  {
    v57 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_262891388, v16, v16, v57, v49, v54, v55);
  DgnString::~DgnString(&v97);
  *a4 += v49;
  *a5 += v54;
  *a6 += v55;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 48);
  v60 = *(this + 49);
  if (v60 >= v59)
  {
    v61 = 0;
    if (v59 > 0)
    {
      v58 += 2 * (v59 - 1) + 2;
    }

    v62 = v58 + 2 * (v60 - v59);
  }

  else
  {
    v61 = 2 * v59;
    v62 = v58;
  }

  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v64 = v97;
  }

  else
  {
    v64 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v15, &unk_262891388, v16, v16, v64, v62, v58, v61);
  DgnString::~DgnString(&v97);
  *a4 += v62;
  *a5 += v58;
  *a6 += v61;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v65 = 12;
  }

  else
  {
    v65 = 16;
  }

  v66 = *(this + 52);
  v67 = *(this + 53);
  if (v67 >= v66)
  {
    v68 = 0;
    if (v66 > 0)
    {
      v65 += 4 * (v66 - 1) + 4;
    }

    v69 = v65 + 4 * (v67 - v66);
  }

  else
  {
    v68 = 4 * v66;
    v69 = v65;
  }

  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v71 = v97;
  }

  else
  {
    v71 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v15, &unk_262891388, v16, v16, v71, v69, v65, v68);
  DgnString::~DgnString(&v97);
  *a4 += v69;
  *a5 += v65;
  *a6 += v68;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  else
  {
    v72 = 16;
  }

  v73 = *(this + 56);
  v74 = *(this + 57);
  if (v74 >= v73)
  {
    v75 = 0;
    if (v73 > 0)
    {
      v72 += 2 * (v73 - 1) + 2;
    }

    v76 = v72 + 2 * (v74 - v73);
  }

  else
  {
    v75 = 2 * v73;
    v76 = v72;
  }

  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v78 = v97;
  }

  else
  {
    v78 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v15, &unk_262891388, v16, v16, v78, v76, v72, v75);
  DgnString::~DgnString(&v97);
  *a4 += v76;
  *a5 += v72;
  *a6 += v75;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v80 = v97;
  }

  else
  {
    v80 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v15, &unk_262891388, v16, v16, v80, 2, 2, 0);
  DgnString::~DgnString(&v97);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v81 = 12;
  }

  else
  {
    v81 = 16;
  }

  v82 = *(this + 62);
  v83 = *(this + 63);
  if (v83 >= v82)
  {
    v84 = 0;
    if (v82 > 0)
    {
      v81 += 4 * (v82 - 1) + 4;
    }

    v85 = v81 + 4 * (v83 - v82);
  }

  else
  {
    v84 = 4 * v82;
    v85 = v81;
  }

  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v87 = v97;
  }

  else
  {
    v87 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v15, &unk_262891388, v16, v16, v87, v85, v81, v84);
  DgnString::~DgnString(&v97);
  *a4 += v85;
  *a5 += v81;
  *a6 += v84;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v89 = v97;
  }

  else
  {
    v89 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v15, &unk_262891388, v16, v16, v89, 4, 4, 0);
  DgnString::~DgnString(&v97);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v91 = v97;
  }

  else
  {
    v91 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v15, &unk_262891388, v16, v16, v91, 4, 4, 0);
  DgnString::~DgnString(&v97);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 558);
  if (v98)
  {
    v93 = v97;
  }

  else
  {
    v93 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v15, &unk_262891388, v16, v16, v93, 1, 1, 0);
  DgnString::~DgnString(&v97);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v97, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 559);
  if (v98)
  {
    v95 = v97;
  }

  else
  {
    v95 = &unk_262891388;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v96, &unk_262891388, (35 - v96), (35 - v96), v95, *a4, *a5, *a6);
  DgnString::~DgnString(&v97);
}

void sub_2628184D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<DgnPrimFixArray<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  v5 = 0;
  if (v2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((v2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimFixArray<unsigned char>>(*a1 + v8, v2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!v2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnVector>::releaseAll(v10);
  return v5;
}

unint64_t DgnArray<DgnPrimArray<unsigned int>>::compactRemoveMatchingSuffix(unint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 8);
    do
    {
      v6 = v5 - 1;
      v7 = *a1 + 16 * (v5 - 1);
      if (v7 != a2)
      {
        if (*(v7 + 8) != *(a2 + 8))
        {
          goto LABEL_11;
        }

        v8 = *(a2 + 8);
        while (v8 >= 1)
        {
          v9 = *v7 + 4 * v8;
          v10 = *(*a2 - 4 + 4 * v8--);
          if (*(v9 - 4) != v10)
          {
            goto LABEL_11;
          }
        }
      }

      --v5;
    }

    while (v6);
    v5 = 0;
LABEL_11:
    if (v3 <= v5)
    {
      if (v3 < v5)
      {
        v12 = v5 - v3;
        v13 = 16 * v3;
        do
        {
          v14 = (*a1 + v13);
          *v14 = 0;
          v14[1] = 0;
          v13 += 16;
          --v12;
        }

        while (v12);
      }
    }

    else if (v3 > v5)
    {
      v11 = 16 * v3 - 16;
      do
      {
        --v4;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v11);
        v11 -= 16;
      }

      while (v4 > v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;

  return DgnArray<DgnPrimArray<unsigned short>>::compact(a1);
}

unint64_t DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::compactRemoveMatchingSuffix(unint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = v4 + 1;
  v6 = 16 * v4 - 16;
  while (v6 != -16)
  {
    v7 = DgnArray<DgnPrimArray<unsigned int>>::operator==((*a1 + v6), a2);
    --v5;
    v6 -= 16;
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v8 = *(a1 + 8);
  if (v8 <= v5)
  {
    if (v8 < v5)
    {
      v11 = v5 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a1 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v5)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*a1 + v10);
      --v9;
      v10 -= 16;
    }

    while (v9 > v5);
  }

  *(a1 + 8) = v5;

  return DgnArray<DgnPrimArray<unsigned short>>::compact(a1);
}

unint64_t DgnArray<DgnPrimArray<unsigned short>>::compact(unint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, 16 * v3, 16 * v3, 16 * v4, 0);
      *(v5 + 12) = result >> 4;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 12) = 0;
    }
  }

  return result;
}

unint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::compact(uint64_t a1)
{
  DgnPrimArray<unsigned short>::compact(a1 + 8);
  v2 = *(a1 + 32);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        DgnPrimArray<unsigned short>::compact(v4);
        v2 = *(a1 + 32);
      }
    }
  }

  return DgnPrimArray<unsigned short>::compact(a1 + 40);
}

double EnvMgr::verifyEnvId(EnvMgr *this, unsigned int a2)
{
  if (*(this + 64) <= a2)
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 630, "fileutil/envmgr", 11, "%u", a2);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v6 = *(this + 30);
    for (i = 0xFFFFFFFFLL; ; --i)
    {
      v8 = *v6++;
      if (v8 == a2)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }

    if (i)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envmgr.cpp", 631, "fileutil/envmgr", 11, "%u", a2);
    }
  }

  return result;
}

void *EnvMgr::killEnv(EnvMgr *this, unsigned int a2)
{
  EnvMgr::verifyEnvId(this, a2);
  *(this + 264) = 0;
  v4 = *(this + 7) + 16 * a2;
  if (*(v4 + 8))
  {
    v5 = 0;
    do
    {
      EnvMgr::releaseString(this, *(*v4 + 2 * v5++));
      v4 = *(this + 7) + 16 * a2;
    }

    while (v5 < *(v4 + 8));
  }

  if (*v4)
  {
    MemChunkFree(*v4, 0);
    *v4 = 0;
  }

  *(v4 + 8) = 0;
  result = DgnArray<DgnVector>::releaseAll(*(this + 9) + 16 * a2);
  v7 = *(this + 62);
  if (v7 == *(this + 63))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(this + 240, 1, 1);
    v7 = *(this + 62);
  }

  *(*(this + 30) + 4 * v7) = a2;
  ++*(this + 62);
  return result;
}

uint64_t EnvMgr::getTopEnvIdMaybeNew(EnvMgr *this, int a2)
{
  v2 = *this;
  if (a2 && !v2)
  {
    v2 = EnvMgr::newEnv(this);
    EnvMgr::verifyEnvId(this, v2);
    *(this + 264) = 0;
    *this = v2;
  }

  return v2;
}

void EnvMgr::setTopEnvId(EnvMgr *this, unsigned int a2)
{
  EnvMgr::verifyEnvId(this, a2);
  *(this + 264) = 0;
  *this = a2;
}

uint64_t EnvMgr::getItemEnvId(EnvMgr *this, unsigned int a2)
{
  if (*(this + 4) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 1) + 4 * a2);
  }
}

uint64_t EnvMgr::getItemEnvIdMaybeNew(EnvMgr *this, unsigned int a2, int a3)
{
  if (a3 && (*(this + 4) <= a2 || !*(*(this + 1) + 4 * a2)))
  {
    v5 = EnvMgr::newEnv(this);
    EnvMgr::verifyEnvId(this, v5);
    *(this + 264) = 0;
    SetEnvIdInArray(this + 1, a2, v5);
  }

  if (*(this + 4) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 1) + 4 * a2);
  }
}

void EnvMgr::setItemEnvId(EnvMgr *this, unsigned int a2, unsigned int a3)
{
  EnvMgr::verifyEnvId(this, a3);
  *(this + 264) = 0;

  SetEnvIdInArray(this + 1, a2, a3);
}

void SetEnvIdInArray(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 2);
  if (a2 >= v6)
  {
    v8 = a2 + 1;
    v9 = *(a1 + 3);
    v10 = v8;
    v11 = a2 + 1 - v9;
    if (v8 > v9)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1, v11, 1);
      v10 = v8 - v6 + *(a1 + 2);
    }

    *(a1 + 2) = v10;
    v7 = *a1;
    if (v8 > v6)
    {
      bzero((v7 + 4 * v6), 4 * (a2 - v6) + 4);
    }
  }

  else
  {
    v7 = *a1;
  }

  *(v7 + 4 * a2) = a3;
}

uint64_t *EnvMgr::getItemsWithEnv(uint64_t *result, uint64_t a2)
{
  *(a2 + 8) = 0;
  v2 = *(result + 4);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      if (*(*(v4 + 8) + 4 * i))
      {
        if (v5 == *(a2 + 12))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
          v5 = *(a2 + 8);
        }

        *(*a2 + 4 * v5) = i;
        v5 = *(a2 + 8) + 1;
        *(a2 + 8) = v5;
        v2 = *(v4 + 16);
      }
    }
  }

  return result;
}

uint64_t EnvMgr::getItemPairEnvId(EnvMgr *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  v3 = *(this + 3) + 16 * a2;
  if (*(v3 + 8) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*v3 + 4 * a3);
  }
}

uint64_t EnvMgr::getItemPairEnvIdMaybeNew(EnvMgr *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a4)
  {
    if (*(this + 8) <= a2 || (v7 = *(this + 3) + 16 * a2, *(v7 + 8) <= a3) || !*(*v7 + 4 * a3))
    {
      v8 = EnvMgr::newEnv(this);
      EnvMgr::setItemPairEnvId(this, a2, a3, v8);
    }
  }

  if (*(this + 8) <= a2)
  {
    return 0;
  }

  v9 = *(this + 3) + 16 * a2;
  if (*(v9 + 8) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*v9 + 4 * a3);
  }
}

void EnvMgr::setItemPairEnvId(EnvMgr *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  EnvMgr::verifyEnvId(this, a4);
  *(this + 264) = 0;
  v8 = *(this + 8);
  if (v8 <= a2)
  {
    v9 = a2 + 1;
    v10 = *(this + 9);
    if (v9 > v10)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 24, v9 - v10, 0);
      v8 = *(this + 8);
    }

    if (v8 <= v9)
    {
      if (v8 < v9)
      {
        v13 = 16 * v8;
        v14 = v9 - v8;
        do
        {
          v15 = (*(this + 3) + v13);
          *v15 = 0;
          v15[1] = 0;
          v13 += 16;
          --v14;
        }

        while (v14);
      }
    }

    else if (v8 > v9)
    {
      v11 = v8;
      v12 = 16 * v8 - 16;
      do
      {
        --v11;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 3) + v12);
        v12 -= 16;
      }

      while (v11 > v9);
    }

    *(this + 8) = v9;
  }

  v16 = (*(this + 3) + 16 * a2);

  SetEnvIdInArray(v16, a3, a4);
}

uint64_t *EnvMgr::getItemPairsWithEnv(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = 0;
  *(a3 + 8) = 0;
  v3 = *(result + 8);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = result[3];
    do
    {
      v9 = v8 + 16 * v7;
      if (*(v9 + 8))
      {
        v10 = 0;
        do
        {
          if (*(*v9 + 4 * v10))
          {
            v11 = *(a2 + 8);
            if (v11 == *(a2 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
              v11 = *(a2 + 8);
            }

            *(*a2 + 4 * v11) = v7;
            ++*(a2 + 8);
            v12 = *(a3 + 8);
            if (v12 == *(a3 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v12 = *(a3 + 8);
            }

            *(*a3 + 4 * v12) = v10;
            ++*(a3 + 8);
            v8 = *(v6 + 24);
          }

          ++v10;
          v9 = v8 + 16 * v7;
        }

        while (v10 < *(v9 + 8));
        v3 = *(v6 + 32);
      }

      ++v7;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t EnvMgr::getData(EnvMgr *this, unsigned int a2, EnvMgr *a3)
{
  EnvMgr::verifyEnvId(this, a2);
  StringId = EnvMgr::findStringId(this, a3);
  if (StringId == 0xFFFF)
  {
    return 0;
  }

  if (!*(*(this + 25) + 4 * StringId))
  {
    return 0;
  }

  v7 = *(this + 7) + 16 * a2;
  v8 = *(v7 + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = *v7;
  while (1)
  {
    v11 = *v10++;
    if (v11 == StringId)
    {
      break;
    }

    v9 -= 16;
    if (!(16 * v8 + v9))
    {
      return 0;
    }
  }

  if (v9 != 0xFFFFFFF000000010)
  {
    return *(*(this + 9) + 16 * a2) - v9;
  }

  else
  {
    return 0;
  }
}

uint64_t DgnPrimArray<unsigned short>::searchLastOrBefore(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2;
  LODWORD(v6) = a2;
  if (a3 > a2)
  {
    v10 = a3 - 1;
    v11 = a2;
    do
    {
      if (v11 == v10 - 1)
      {
        v6 = v10;
      }

      else
      {
        v6 = ((v11 + v10) / 2);
      }

      v12 = a5(*a1 + 2 * v6, a4);
      if (v12)
      {
        if (v12 < 0)
        {
          v6 = (v6 + 1);
        }

        else
        {
          v10 = v6 - 1;
          v6 = v11;
        }
      }

      else if (v10 == v11)
      {
        return v6;
      }

      v11 = v6;
    }

    while (v6 <= v10);
  }

  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v6 - 1);
  }
}

void readObject<DgnPrimFixArray<unsigned char>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  readObject(a1, &v15, a3);
  v6 = v15;
  v7 = *(a2 + 12);
  if (v15 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v15 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = (*a2 + 16 * v8 + 8);
      do
      {
        *(v12 - 1) = 0;
        *v12 = 0;
        v12 += 4;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      readObject<unsigned char>(a1, *a2 + v13, a3);
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a2 + 8));
  }
}

void DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::readObject(uint64_t a1, DgnStream *a2, unsigned int *a3)
{
  readObject<unsigned short>(a2, a1 + 8, a3);
  readObject<unsigned short>(a2, a1 + 40, a3);
  v14 = 0;
  readObject(a2, &v14, a3);
  readObject(a2, &v14, a3);
  *a1 = v14 != 0;
  readObject(a2, &v14 + 1, a3);
  *(a1 + 2) = WORD2(v14);
  readObject(a2, &v14, a3);
  *(a1 + 4) = v14 != 0;
  readObject(a2, &v14, a3);
  *(a1 + 5) = v14 != 0;
  v13 = 0;
  readObject(a2, &v13, a3);
  LODWORD(v6) = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    do
    {
      DgnDelete<DgnPrimArray<unsigned int>>(*(*(a1 + 24) + 8 * v7));
      *(*(a1 + 24) + 8 * v7++) = 0;
      v6 = *(a1 + 32);
    }

    while (v7 < v6);
  }

  v8 = v13;
  v9 = *(a1 + 36);
  if (v13 > v9)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 24, v13 - v9, 0);
    LODWORD(v6) = *(a1 + 32);
  }

  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v6 = v6;
      do
      {
        *(*(a1 + 24) + 8 * v6++) = 0;
      }

      while (v8 != v6);
    }
  }

  else
  {
    DgnIOwnArray<DgnPrimArray<unsigned int> *>::destructAt((a1 + 24), v8, v6 - v8);
  }

  *(a1 + 32) = v8;
  if (v8)
  {
    v10 = 0;
    do
    {
      v12 = 0;
      readObject(a2, &v12, a3);
      *(*(a1 + 24) + 8 * v10) = 0;
      if (v12)
      {
        v11 = MemChunkAlloc(0x10uLL, 0);
        *v11 = 0;
        v11[1] = 0;
        *(*(a1 + 24) + 8 * v10) = v11;
        readObject<unsigned short>(a2, *(*(a1 + 24) + 8 * v10), a3);
      }

      ++v10;
    }

    while (v10 < *(a1 + 32));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::writeObject(unsigned __int8 *a1, DgnStream *a2, unsigned int *a3)
{
  writeObject<unsigned short>(a2, (a1 + 8), a3);
  writeObject<unsigned short>(a2, (a1 + 40), a3);
  v13 = 0;
  writeObject(a2, &v13, a3);
  v12 = *a1;
  writeObject(a2, &v12, a3);
  v11 = *(a1 + 1);
  writeObject(a2, &v11, a3);
  v10 = a1[4];
  writeObject(a2, &v10, a3);
  v9 = a1[5];
  writeObject(a2, &v9, a3);
  v8 = *(a1 + 8);
  result = writeObject(a2, &v8, a3);
  if (*(a1 + 8))
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 3) + 8 * v7) != 0;
      result = writeObject(a2, &v8, a3);
      if (v8)
      {
        result = writeObject<unsigned short>(a2, *(*(a1 + 3) + 8 * v7), a3);
      }

      ++v7;
    }

    while (v7 < *(a1 + 8));
  }

  return result;
}

uint64_t sizeObject<DgnPrimFixArray<unsigned char>>(uint64_t a1, int a2)
{
  v2 = 0;
  v11 = 0;
  v12 = 0;
  v3 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 8;
  }

  if (a2 != 3)
  {
    v2 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = *(a1 + 8);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        v6 = (*a1 + 16 * v4 - 8);
        do
        {
          v7 = *v6;
          v6 -= 4;
          v8 = (v3 | 1) + (v7 - 1);
          if (v7 <= 0)
          {
            v9 = v3;
          }

          else
          {
            v9 = v8;
          }

          v2 += v9;
          --v5;
        }

        while (v5 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - v4);
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v2;
}

uint64_t DgnCollArray<unsigned short,StringIdCollCmpWithTemp>::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sizeObject<unsigned short>(a1 + 8, a2);
  v5 = sizeObject<DgnPrimArray<unsigned short> *>(a1 + 24, v2);
  v6 = sizeObject<unsigned short>(a1 + 40, v2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (v2 == 3)
  {
    v7 = 0;
  }

  return ((v2 != 3) | (2 * (v2 != 3))) + 2 * (v2 != 3) + v4 + v5 + v6 + v7 + 2 * v7;
}

uint64_t sizeObject<DgnPrimArray<unsigned short> *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += sizeObject<unsigned short>(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t DgnArray<DgnPrimArray<unsigned int>>::operator==(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a2;
  result = 1;
  do
  {
    v6 = v2 - 1;
    if (v3 != v4)
    {
      v7 = v3 + 16 * v6;
      v8 = v4 + 16 * v6;
      v9 = *(v7 + 8);
      if (v9 != *(v8 + 8))
      {
        return 0;
      }

      v10 = *v8 - 4;
      while (v9 >= 1)
      {
        v11 = *v7 + 4 * v9;
        v12 = *(v10 + 4 * v9--);
        if (*(v11 - 4) != v12)
        {
          return 0;
        }
      }
    }
  }

  while (v2-- > 1);
  return result;
}

void PronCollMgr::checkSimple(PronCollMgr *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = 0;
    for (i = 0; i < v1; v3 = ++i)
    {
      v5 = *(this + 1);
      v6 = *(v5 + 2 * i);
      if (v6 != i && v6 != 0xFFFF)
      {
        v8 = *(v5 + 2 * v6);
        if (v8 != v6)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 112, "word/pcollmgr", 7, "%u %u %u", v3, v6, v8);
          v1 = *(this + 4);
        }
      }
    }
  }
}

void PronCollMgr::loadPronCollMgrFromText(unsigned int **this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v48);
  DgnTextFileParser::openDgnTextFileParser(v48, a2, 58, 1);
  DgnTextFileParser::verifyMatchingFileType(v48, "PronCollation");
  v46 = 0;
  v47 = 0;
  DgnTextFile::legalDgnTextFileVersions(v48, sPCT_Versions, &v46);
  DgnTextFileParser::verifyFileVersionInRange(v48, &v46);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v48);
  v44 = 0;
  v45 = 0;
  DgnTextFile::getLineFieldNames(v48, &v44);
  v42 = 0;
  v43 = 0;
  DgnTextFile::getLineFieldFormats(v48, &v42);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v48, 2);
  v4 = v44;
  if (*(v44 + 2))
  {
    v5 = *v44;
  }

  else
  {
    v5 = &unk_2628913D4;
  }

  if (strcmp(v5, "HumanReadable"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 146, "word/pcollmgr", 1, "%.500s %.500s", "HumanReadable", v5);
    v4 = v44;
  }

  if (*v42)
  {
    if (*(v4 + 2))
    {
      v6 = *v4;
    }

    else
    {
      v6 = &unk_2628913D4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 149, "word/pcollmgr", 2, "%.500s %.500s", v6, "String");
    v4 = v44;
  }

  if (*(v4 + 6))
  {
    v7 = v4[2];
  }

  else
  {
    v7 = &unk_2628913D4;
  }

  if (strcmp(v7, "CollatedHumanReadable"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 154, "word/pcollmgr", 1, "%.500s %.500s", "CollatedHumanReadable", v7);
  }

  if (*(v42 + 1))
  {
    if (*(v44 + 6))
    {
      v8 = *(v44 + 2);
    }

    else
    {
      v8 = &unk_2628913D4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 158, "word/pcollmgr", 2, "%.500s %.500s", v8, "String");
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  DgnArray<DgnString>::releaseAll(&v44);
  DgnIArray<Utterance *>::~DgnIArray(&v46);
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  PhnMgr::getPublicPhnIndexArray(*this, &v46);
  v9 = v47;
  LODWORD(v10) = v47;
  if (HIDWORD(v45) < v47)
  {
    v42 = 0;
    HIDWORD(v45) = realloc_array(v44, &v42, v47, v45, v45, 1);
    v44 = v42;
    LODWORD(v10) = v47;
  }

  LODWORD(v45) = v9;
  v11 = 0;
  if (v10)
  {
    v12 = v44;
    v13 = v46;
    v10 = v10;
    do
    {
      *v12++ = 0;
      v15 = *v13++;
      v14 = v15;
      if (v15 <= v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  v16 = v11 + 1;
  v17 = *(this + 5);
  if (v17 <= v11)
  {
    DgnPrimArray<short>::reallocElts((this + 1), v16 - v17, 0);
  }

  v18 = 0;
  *(this + 4) = v16;
  if ((v16 & 0xFFFE) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  v20 = vdupq_n_s64(v19 - 1);
  v21 = xmmword_26286CCD0;
  v22 = xmmword_26286CCE0;
  v23 = xmmword_26286BF80;
  v24 = xmmword_26286B680;
  v25 = this[1] + 2;
  v26 = vdupq_n_s64(8uLL);
  do
  {
    v27 = vmovn_s64(vcgeq_u64(v20, v24));
    if (vuzp1_s8(vuzp1_s16(v27, *v20.i8), *v20.i8).u8[0])
    {
      *(v25 - 4) = v18;
    }

    if (vuzp1_s8(vuzp1_s16(v27, *&v20), *&v20).i8[1])
    {
      *(v25 - 3) = v18 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v23))), *&v20).i8[2])
    {
      *(v25 - 2) = v18 | 2;
      *(v25 - 1) = v18 | 3;
    }

    v28 = vmovn_s64(vcgeq_u64(v20, v22));
    if (vuzp1_s8(*&v20, vuzp1_s16(v28, *&v20)).i32[1])
    {
      *v25 = v18 | 4;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(v28, *&v20)).i8[5])
    {
      *(v25 + 1) = v18 | 5;
    }

    if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21)))).i8[6])
    {
      *(v25 + 2) = v18 | 6;
      *(v25 + 3) = v18 | 7;
    }

    v18 += 8;
    v22 = vaddq_s64(v22, v26);
    v23 = vaddq_s64(v23, v26);
    v24 = vaddq_s64(v24, v26);
    v21 = vaddq_s64(v21, v26);
    v25 += 4;
  }

  while (((v19 + 7) & 0x1FFF8) != v18);
  DgnString::DgnString(&v42);
  DgnString::DgnString(&v40);
  while ((DgnTextFileParser::parseNextLine(v48) & 1) != 0)
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v48, 0);
    DgnString::operator=(&v42, LineFieldString);
    if (v43)
    {
      v30 = v42;
    }

    else
    {
      v30 = &unk_2628913D4;
    }

    PhnIndex = PhnMgr::getPhnIndex(*this, v30);
    v32 = PhnIndex;
    if (v47)
    {
      v33 = 0;
      while (v46[v33] != PhnIndex)
      {
        if (v47 == ++v33)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_57:
      v33 = 0xFFFFFFFFLL;
    }

    *(v44 + v33) = 1;
    v34 = DgnTextFileParser::getLineFieldString(v48, 1u);
    DgnString::operator=(&v40, v34);
    if (v41 >= 2)
    {
      v35 = PhnMgr::getPhnIndex(*this, v40);
    }

    else
    {
      v35 = -1;
    }

    *(this[1] + v32) = v35;
  }

  v36 = v45;
  if (v45)
  {
    v37 = 0;
    do
    {
      if ((*(v44 + v37) & 1) == 0)
      {
        v38 = *(*this + 1) + 16 * v46[v37];
        if (*(v38 + 8))
        {
          v39 = *v38;
        }

        else
        {
          v39 = &unk_2628913D4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 202, "word/pcollmgr", 6, "%.500s", v39);
        v36 = v45;
      }

      ++v37;
    }

    while (v37 < v36);
  }

  DgnString::~DgnString(&v40);
  DgnString::~DgnString(&v42);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
  DgnTextFileParser::~DgnTextFileParser(v48);
}

void sub_26281A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnTextFileParser::~DgnTextFileParser(va3);
  _Unwind_Resume(a1);
}

void PronCollMgr::loadPronCollMgr(unsigned int **this, FileSpec **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x3Au))
  {
    if ((a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 215, "word/pcollmgr", 3, "%s", &unk_2628913D4);
    }

    PronCollMgr::loadPronCollMgrFromText(this, a2);

    PronCollMgr::checkSimple(this);
  }

  else if (DFile::subFileExists(a2, 0x38u))
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 222, "word/pcollmgr", 5, "%s", &errStr_word_pcollmgr_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v29[0] = 0;
    v32 = 0;
    v8 = OpenAndReadMrecHeader(a2, 0x38u, 1, "MRPCOL!?", v29, &v32);
    if (*(a2 + 6))
    {
      v9 = a2[2];
    }

    else
    {
      v9 = &unk_2628913D4;
    }

    MrecHeaderCheckVersions(v9, "MRPCOL!?", v29[0], v32, 0x13u, 3u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRPCOL!?", v29[0], v32, 19, 3);
    v31 = 0;
    readObject<unsigned short>(v8, (this + 1), &v31);
    readObjectChecksumAndVerify(v8, v31);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 56, v31);
    DgnDelete<DgnStream>(v8);
  }

  else
  {
    *v29 = 0;
    v30 = 0;
    PhnMgr::getPublicPhnIndexArray(*this, v29);
    v10 = v30;
    if (v30)
    {
      LOWORD(v11) = 0;
      v12 = *v29;
      do
      {
        v14 = *v12++;
        v13 = v14;
        if (v14 <= v11)
        {
          v11 = v11;
        }

        else
        {
          v11 = v13;
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v16 = v11 + 1;
    v17 = *(this + 5);
    if (v17 <= v11)
    {
      DgnPrimArray<short>::reallocElts((this + 1), v16 - v17, 0);
    }

    v18 = 0;
    *(this + 4) = v16;
    if ((v16 & 0xFFFE) != 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = 1;
    }

    v20 = vdupq_n_s64(v19 - 1);
    v21 = xmmword_26286CCD0;
    v22 = xmmword_26286CCE0;
    v23 = xmmword_26286BF80;
    v24 = xmmword_26286B680;
    v25 = this[1] + 2;
    v26 = vdupq_n_s64(8uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v20, v24));
      if (vuzp1_s8(vuzp1_s16(v27, *v20.i8), *v20.i8).u8[0])
      {
        *(v25 - 4) = v18;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v20), *&v20).i8[1])
      {
        *(v25 - 3) = v18 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v23))), *&v20).i8[2])
      {
        *(v25 - 2) = v18 | 2;
        *(v25 - 1) = v18 | 3;
      }

      v28 = vmovn_s64(vcgeq_u64(v20, v22));
      if (vuzp1_s8(*&v20, vuzp1_s16(v28, *&v20)).i32[1])
      {
        *v25 = v18 | 4;
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(v28, *&v20)).i8[5])
      {
        *(v25 + 1) = v18 | 5;
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21)))).i8[6])
      {
        *(v25 + 2) = v18 | 6;
        *(v25 + 3) = v18 | 7;
      }

      v18 += 8;
      v22 = vaddq_s64(v22, v26);
      v23 = vaddq_s64(v23, v26);
      v24 = vaddq_s64(v24, v26);
      v21 = vaddq_s64(v21, v26);
      v25 += 4;
    }

    while (((v19 + 7) & 0x1FFF8) != v18);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v29);
  }
}

void sub_26281A494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void PronCollMgr::savePronCollMgrToText(PronCollMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v25);
  DgnTextFileWriter::openDgnTextFileWriter(v25, a2, 58, a3);
  v23 = 0;
  v24 = 0;
  DgnTextFile::legalDgnTextFileVersions(v25, sPCT_Versions, &v23);
  DgnTextFileWriter::setFileType(v25, "PronCollation", (v23 + 8 * (v24 - 1)));
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  DgnString::DgnString(v18, "HumanReadable");
  v6 = v20;
  if (v20 == HIDWORD(v20))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v19, 1, 1);
    v6 = v20;
  }

  DgnString::DgnString((v19 + 16 * v6), v18);
  LODWORD(v20) = v20 + 1;
  DgnString::~DgnString(v18);
  v7 = v22;
  if (v22 == HIDWORD(v22))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
    v7 = v22;
  }

  *(v21 + 4 * v7) = 0;
  LODWORD(v22) = v7 + 1;
  DgnString::DgnString(v18, "CollatedHumanReadable");
  v8 = v20;
  if (v20 == HIDWORD(v20))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v19, 1, 1);
    v8 = v20;
  }

  DgnString::DgnString((v19 + 16 * v8), v18);
  LODWORD(v20) = v20 + 1;
  DgnString::~DgnString(v18);
  v9 = v22;
  if (v22 == HIDWORD(v22))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
    v9 = v22;
  }

  *(v21 + 4 * v9) = 0;
  LODWORD(v22) = v9 + 1;
  DgnTextFileWriter::setLineFieldFormat(v25, &v21, &v19);
  v10 = *(this + 4);
  if (v10)
  {
    for (i = 0; i < v10; ++i)
    {
      if (i)
      {
        v12 = *this;
        if (*(*this + 60) != i && *(v12 + 56) != i && *(v12 + 58) != i)
        {
          v13 = *(v12 + 8) + 16 * i;
          if (*(v13 + 8))
          {
            v14 = *v13;
          }

          else
          {
            v14 = &unk_2628913D4;
          }

          DgnTextFileWriter::setLineFieldValue(v25, 0, v14);
          v15 = *(*(this + 1) + 2 * i);
          if (v15 == 0xFFFF || (v16 = *(*this + 8) + 16 * v15, !*(v16 + 8)))
          {
            v17 = &unk_2628913D4;
          }

          else
          {
            v17 = *v16;
          }

          DgnTextFileWriter::setLineFieldValue(v25, 1u, v17);
          DgnTextFileWriter::writeNextLine(v25);
          v10 = *(this + 4);
        }
      }
    }
  }

  DgnArray<DgnString>::releaseAll(&v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  DgnIArray<Utterance *>::~DgnIArray(&v23);
  DgnTextFileWriter::~DgnTextFileWriter(v25);
}

void sub_26281A74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PronCollMgr::savePronCollMgr(PronCollMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    PronCollMgr::savePronCollMgrToText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x38u, a5, "MRPCOL!?", 19, 3);
    v10 = 0;
    writeObject<unsigned short>(v8, this + 8, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 56, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void PronCollMgr::printSize(PronCollMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v27, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 338);
  if (v28)
  {
    v13 = v27;
  }

  else
  {
    v13 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_2628913D4, a3, &unk_2628913D4, v13);
  DgnString::~DgnString(&v27);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_2628913D4);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  getShipObjectSizeDescription(&v27, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 339);
  if (v28)
  {
    v17 = v27;
  }

  else
  {
    v17 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &unk_2628913D4, (34 - a3), (34 - a3), v17, v15, v15, 0);
  DgnString::~DgnString(&v27);
  *a4 += v15;
  *a5 += v15;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v18 = 12;
  }

  else
  {
    v18 = 16;
  }

  v19 = *(this + 4);
  v20 = *(this + 5);
  if (v20 >= v19)
  {
    v21 = 0;
    if (v19 > 0)
    {
      v18 += 2 * (v19 - 1) + 2;
    }

    v22 = v18 + 2 * (v20 - v19);
  }

  else
  {
    v21 = 2 * v19;
    v22 = v18;
  }

  getShipObjectSizeDescription(&v27, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 341);
  if (v28)
  {
    v24 = v27;
  }

  else
  {
    v24 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_2628913D4, (34 - a3), (34 - a3), v24, v22, v18, v21);
  DgnString::~DgnString(&v27);
  *a4 += v22;
  *a5 += v18;
  *a6 += v21;
  getShipObjectSizeDescription(&v27, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/pcollmgr.cpp", 343);
  if (v28)
  {
    v26 = v27;
  }

  else
  {
    v26 = &unk_2628913D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, a3, &unk_2628913D4, (35 - a3), (35 - a3), v26, *a4, *a5, *a6);
  DgnString::~DgnString(&v27);
}

void sub_26281AAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL PronCollMgr::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(a1 + 8) + 2 * v2;
    v5 = *(*(a2 + 8) - 2 + 2 * v2--);
  }

  while (*(v4 - 2) == v5);
  return v3;
}

void MrecInitModule_paramspec_mrecutil(void)
{
  if (!gParDebugShowParamSetRefCounting)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowParamSetRefCounting", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowParamSetRefCounting = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowParamSetRefCounting);
  }
}

void ParamSpec::getDescription(ParamSpec *this, DgnString *a2)
{
  *(a2 + 2) = 0;
  if (**(this + 3))
  {
    DgnString::DgnString(v5);
    FileSpec::getRelativeSourceFileName(*(this + 3), v5, v4);
    DgnString::operator+=(a2, "[");
    DgnString::operator+=(a2, v5);
    DgnString::operator+=(a2, "] ");
    DgnString::operator+=(a2, *(this + 2));
    DgnString::~DgnString(v5);
  }
}

void ParamSpecMgr::ParamSpecMgr(ParamSpecMgr *this)
{
  *(this + 1) = 0u;
  v2 = this + 16;
  *this = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this, 256, 0);
  v3 = *(this + 7);
  if (v3 <= 0xFF)
  {
    DgnPrimArray<unsigned int>::reallocElts(v2, 256 - v3, 0);
  }
}

void sub_26281AD20(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnIOwnArray<ParamSpec *>::releaseAll(v1);
  _Unwind_Resume(a1);
}

void ParamSpecMgr::startupParamSpecMgrs(ParamSpecMgr *this)
{
  v1 = 1u;
  do
  {
    v2 = MemChunkAlloc(0x20uLL, 0);
    ParamSpecMgr::ParamSpecMgr(v2);
    ParamSpecMgr::smpParamSpecMgrArray[v1++] = v3;
  }

  while (v1 != 13);
}

void ParamSpecMgr::printSize(ParamSpecMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 229);
  if (v29)
  {
    v13 = v28;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v28);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v15 = sizeObject<ParamSpec *>(this, 0);
    v16 = sizeObject<ParamSpec *>(this, 1);
    getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 238);
    if (v29)
    {
      v18 = v28;
    }

    else
    {
      v18 = &byte_262899963;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, v15, v16, 0);
    DgnString::~DgnString(&v28);
    *a4 += v15;
    *a5 += v16;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v19 = 12;
    }

    else
    {
      v19 = 16;
    }

    v20 = *(this + 6);
    v21 = *(this + 7);
    if (v21 >= v20)
    {
      v22 = 0;
      if (v20 > 0)
      {
        v19 += 4 * (v20 - 1) + 4;
      }

      v23 = v19 + 4 * (v21 - v20);
    }

    else
    {
      v22 = 4 * v20;
      v23 = v19;
    }

    getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 240);
    if (v29)
    {
      v25 = v28;
    }

    else
    {
      v25 = &byte_262899963;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v23, v19, v22);
    DgnString::~DgnString(&v28);
    *a4 += v23;
    *a5 += v19;
    *a6 += v22;
  }

  getShipObjectSizeDescription(&v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 242);
  if (v29)
  {
    v27 = v28;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, a3, &byte_262899963, (35 - a3), (35 - a3), v27, *a4, *a5, *a6);
  DgnString::~DgnString(&v28);
}

void sub_26281B028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<ParamSpec *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += (*(*v10 + 16))(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t ParamSpecMgr::getParamIdByParamName(ParamSpecMgr *this, const char *__s2)
{
  v4 = 0;
  v5 = *(this + 2);
  while (v5 != v4)
  {
    if (!strcmp(*(*(*this + 8 * v4++) + 8), __s2))
    {
      return v4;
    }
  }

  LOWORD(v4) = -1;
  return v4;
}

uint64_t *ParamSpecMgr::addParam(uint64_t *this, ParamSpec *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 == *(this + 3))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this, 1, 1);
    v4 = *(v3 + 2);
  }

  *(*v3 + 8 * v4) = a2;
  *(v3 + 2) = v4 + 1;
  return this;
}

unint64_t ParamSpecMgr::sortParams(ParamSpecMgr *this)
{
  *(this + 6) = 0;
  if (*(this + 2))
  {
    LODWORD(v2) = 0;
    v3 = 0;
    do
    {
      if (v2 == *(this + 7))
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 16, 1, 1);
        LODWORD(v2) = *(this + 6);
      }

      v4 = *(this + 2);
      *(v4 + 4 * v2) = v3;
      v2 = (*(this + 6) + 1);
      *(this + 6) = v2;
      ++v3;
    }

    while (v3 < *(this + 2));
  }

  else
  {
    v2 = 0;
    v4 = *(this + 2);
  }

  return mrec_qsort_r<ParamSpecMgr>(v4, v2, 4, this);
}

unint64_t mrec_qsort_r<ParamSpecMgr>(unint64_t result, unint64_t a2, const char *a3, void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v108 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v111 = ((result | a3) & 7) == 0;
  v112 = v8;
  if (a2 < 7)
  {
LABEL_120:
    if ((v5 * a3) > a3)
    {
      v82 = v6 + v5 * a3;
      v83 = &a3[v6];
      v84 = v6;
      do
      {
        if (v83 > v6)
        {
          v85 = v84;
          v86 = v83;
          do
          {
            v87 = v86;
            v86 += v7;
            result = DgnString::compareNoCase(*(*(*a4 + 8 * *v86) + 8), *(*(*a4 + 8 * *v87) + 8), a3);
            if (result < 1)
            {
              break;
            }

            if (v112)
            {
              if (v111)
              {
                v88 = 0;
                v89 = v86;
                do
                {
                  v90 = *&v87[8 * v88];
                  *&v87[8 * v88] = *v89;
                  *v89 = v90;
                  v89 += 8;
                  ++v88;
                }

                while (a3 >> 3 != v88);
              }

              else
              {
                v92 = 0;
                v93 = a3;
                do
                {
                  v94 = v87[v92];
                  v87[v92] = *(v85 + v92);
                  *(v85 + v92++) = v94;
                  --v93;
                }

                while (v93);
              }
            }

            else
            {
              v91 = *v87;
              *v87 = *v86;
              *v86 = v91;
            }

            v85 += v7;
          }

          while (v86 > v6);
        }

        v83 = &a3[v83];
        v84 += a3;
      }

      while (v83 < v82);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v109 = v5;
    if (v5 == 7)
    {
      goto LABEL_47;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 < 0x29)
    {
      v16 = v6;
      goto LABEL_38;
    }

    v107 = (v6 + (v5 - 1) * a3);
    v13 = v5 >> 3;
    v14 = v9;
    v15 = v13 * a3;
    v16 = (v6 + v13 * a3);
    v17 = (v6 + 2 * v13 * a3);
    v18 = DgnString::compareNoCase(*(*(*v14 + 8 * *v6) + 8), *(*(*v14 + 8 * *v16) + 8), a3);
    v20 = DgnString::compareNoCase(*(*(*v14 + 8 * *v16) + 8), *(*(*v14 + 8 * *v17) + 8), v19);
    if (v18 < 0)
    {
      if ((v20 & 0x80000000) == 0)
      {
        if (DgnString::compareNoCase(*(*(*a4 + 8 * *v6) + 8), *(*(*a4 + 8 * *v17) + 8), v21) >= 0)
        {
          v16 = v6;
        }

        else
        {
          v16 = (v6 + 2 * v15);
        }
      }
    }

    else if (v20 <= 0)
    {
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v6) + 8), *(*(*a4 + 8 * *v17) + 8), v21) >= 0)
      {
        v16 = (v6 + 2 * v15);
      }

      else
      {
        v16 = v6;
      }
    }

    v22 = (v11 - v15);
    v23 = (v11 + v15);
    v24 = DgnString::compareNoCase(*(*(*a4 + 8 * *(v11 - v15)) + 8), *(*(*a4 + 8 * *v11) + 8), v21);
    v26 = DgnString::compareNoCase(*(*(*a4 + 8 * *v11) + 8), *(*(*a4 + 8 * *(v11 + v15)) + 8), v25);
    if (v24 < 0)
    {
      if ((v26 & 0x80000000) == 0)
      {
        if (DgnString::compareNoCase(*(*(*a4 + 8 * *v22) + 8), *(*(*a4 + 8 * *v23) + 8), v27) >= 0)
        {
          v11 = (v11 - v15);
        }

        else
        {
          v11 = (v11 + v15);
        }
      }
    }

    else if (v26 <= 0)
    {
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v22) + 8), *(*(*a4 + 8 * *v23) + 8), v27) >= 0)
      {
        v11 = (v11 + v15);
      }

      else
      {
        v11 = (v11 - v15);
      }
    }

    v28 = -v15;
    v29 = (v107 - 2 * v15);
    v12 = (v107 + v28);
    v30 = DgnString::compareNoCase(*(*(*a4 + 8 * *v29) + 8), *(*(*a4 + 8 * *(v107 + v28)) + 8), v27);
    v32 = DgnString::compareNoCase(*(*(*a4 + 8 * *v12) + 8), *(*(*a4 + 8 * *v107) + 8), v31);
    if (v30 < 0)
    {
      if (v32 < 0)
      {
LABEL_36:
        v9 = a4;
        goto LABEL_37;
      }

      v33 = a4;
      v12 = v107;
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v29) + 8), *(*(*a4 + 8 * *v107) + 8), a3) >= 0)
      {
        v12 = v29;
      }
    }

    else
    {
      if (v32 > 0)
      {
        goto LABEL_36;
      }

      v33 = a4;
      v12 = v107;
      if (DgnString::compareNoCase(*(*(*a4 + 8 * *v29) + 8), *(*(*a4 + 8 * *v107) + 8), a3) < 0)
      {
        v12 = v29;
      }
    }

    v9 = v33;
LABEL_37:
    v5 = v109;
LABEL_38:
    v34 = DgnString::compareNoCase(*(*(*v9 + 8 * *v16) + 8), *(*(*v9 + 8 * *v11) + 8), a3);
    result = DgnString::compareNoCase(*(*(*v9 + 8 * *v11) + 8), *(*(*v9 + 8 * *v12) + 8), v35);
    if (v34 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DgnString::compareNoCase(*(*(*v9 + 8 * *v16) + 8), *(*(*v9 + 8 * *v12) + 8), a3);
        if ((result & 0x80000000) == 0)
        {
          v11 = v16;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = DgnString::compareNoCase(*(*(*v9 + 8 * *v16) + 8), *(*(*v9 + 8 * *v12) + 8), a3);
      if ((result & 0x80000000) == 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v16;
      }
    }

LABEL_47:
    if (v112)
    {
      if (v111)
      {
        v36 = v6;
        v37 = a3 >> 3;
        do
        {
          v38 = *v36;
          *v36++ = *v11;
          *v11++ = v38;
          --v37;
        }

        while (v37);
      }

      else
      {
        v40 = a3;
        v41 = v6;
        do
        {
          v42 = *v41;
          *v41++ = *v11;
          *v11 = v42;
          v11 = (v11 + 1);
          --v40;
        }

        while (v40);
      }
    }

    else
    {
      v39 = *v6;
      *v6 = *v11;
      *v11 = v39;
    }

    v43 = 0;
    v44 = &a3[v6];
    v45 = v6 + (v5 - 1) * a3;
    v46 = v45;
    v47 = &a3[v6];
LABEL_56:
    while (v47 <= v46)
    {
      result = DgnString::compareNoCase(*(*(*v9 + 8 * *v47) + 8), *(*(*v9 + 8 * *v6) + 8), a3);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v112)
        {
          if (v111)
          {
            v48 = 0;
            do
            {
              v49 = *&v44[8 * v48];
              *&v44[8 * v48] = *&v47[8 * v48];
              *&v47[8 * v48++] = v49;
            }

            while (v10 != v48);
          }

          else
          {
            v58 = 0;
            do
            {
              v59 = v58[v44];
              v58[v44] = v58[v47];
              (v58++)[v47] = v59;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v57 = *v44;
          *v44 = *v47;
          *v47 = v57;
        }

        v44 = &a3[v44];
        v43 = 1;
      }

      v47 = &a3[v47];
    }

    while (v47 <= v46)
    {
      result = DgnString::compareNoCase(*(*(*v9 + 8 * *v46) + 8), *(*(*v9 + 8 * *v6) + 8), a3);
      if ((result & 0x80000000) != 0)
      {
        if (v112)
        {
          if (v111)
          {
            v55 = 0;
            do
            {
              v56 = *&v47[8 * v55];
              *&v47[8 * v55] = *(v46 + 8 * v55);
              *(v46 + 8 * v55++) = v56;
            }

            while (v10 != v55);
          }

          else
          {
            v61 = 0;
            do
            {
              v62 = v61[v47];
              v61[v47] = v61[v46];
              (v61++)[v46] = v62;
            }

            while (a3 != v61);
          }
        }

        else
        {
          v60 = *v47;
          *v47 = *v46;
          *v46 = v60;
        }

        v47 = &a3[v47];
        v46 += v7;
        v43 = 1;
        goto LABEL_56;
      }

      if (!result)
      {
        if (v112)
        {
          if (v111)
          {
            v50 = 0;
            do
            {
              v51 = *(v46 + 8 * v50);
              *(v46 + 8 * v50) = *(v45 + 8 * v50);
              *(v45 + 8 * v50++) = v51;
            }

            while (v10 != v50);
          }

          else
          {
            v53 = 0;
            do
            {
              v54 = v53[v46];
              v53[v46] = v53[v45];
              (v53++)[v45] = v54;
            }

            while (a3 != v53);
          }
        }

        else
        {
          v52 = *v46;
          *v46 = *v45;
          *v45 = v52;
        }

        v45 += v7;
        v43 = 1;
      }

      v46 += v7;
    }

    v63 = v6 + v109 * a3;
    if (!v43)
    {
      break;
    }

    v64 = v47 - v44;
    if (&v44[-v6] >= v47 - v44)
    {
      v65 = v47 - v44;
    }

    else
    {
      v65 = &v44[-v6];
    }

    if (v65)
    {
      if (v111)
      {
        v66 = &v47[-v65];
        v67 = v65 >> 3;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68++ = *v66;
          *v66 = v69;
          v66 += 8;
          --v67;
        }

        while (v67);
      }

      else
      {
        v70 = -v65;
        v71 = v6;
        do
        {
          v72 = *v71;
          *v71++ = v47[v70];
          v47[v70] = v72;
          v73 = __CFADD__(v70++, 1);
        }

        while (!v73);
      }
    }

    v74 = v45 - v46;
    if ((v45 - v46) >= (v63 - &a3[v45]))
    {
      v75 = v63 - &a3[v45];
    }

    else
    {
      v75 = v45 - v46;
    }

    if (v75)
    {
      if (v111)
      {
        v76 = (v63 - v75);
        v77 = v75 >> 3;
        do
        {
          v78 = *v47;
          *v47 = *v76;
          v47 += 8;
          *v76++ = v78;
          --v77;
        }

        while (v77);
      }

      else
      {
        v79 = -v75;
        do
        {
          v80 = *v47;
          *v47++ = *(v63 + v79);
          *(v63 + v79) = v80;
          v73 = __CFADD__(v79++, 1);
        }

        while (!v73);
      }
    }

    if (v64 > a3)
    {
      result = mrec_qsort_r<ParamSpecMgr>(v6, v64 / a3, a3, a4);
    }

    if (v74 <= a3)
    {
      return result;
    }

    v6 = v63 - v74;
    v5 = v74 / a3;
    v81 = v108;
    if ((((v63 - v74) | a3) & 7) != 0)
    {
      v81 = 2;
    }

    v111 = (((v63 - v74) | a3) & 7) == 0;
    v112 = v81;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_120;
    }
  }

  v95 = &a3[v6];
  if ((v109 * a3) > a3)
  {
    v96 = v6;
    do
    {
      if (v95 > v6)
      {
        v97 = v96;
        v98 = v95;
        do
        {
          v99 = v98;
          v98 += v7;
          result = DgnString::compareNoCase(*(*(*a4 + 8 * *v98) + 8), *(*(*a4 + 8 * *v99) + 8), a3);
          if (result < 1)
          {
            break;
          }

          if (v112)
          {
            if (v111)
            {
              v100 = 0;
              v101 = v98;
              do
              {
                v102 = *&v99[8 * v100];
                *&v99[8 * v100] = *v101;
                *v101 = v102;
                v101 += 8;
                ++v100;
              }

              while (v10 != v100);
            }

            else
            {
              v104 = 0;
              v105 = a3;
              do
              {
                v106 = v99[v104];
                v99[v104] = *(v97 + v104);
                *(v97 + v104++) = v106;
                --v105;
              }

              while (v105);
            }
          }

          else
          {
            v103 = *v99;
            *v99 = *v98;
            *v98 = v103;
          }

          v97 += v7;
        }

        while (v98 > v6);
      }

      v95 = &a3[v95];
      v96 += a3;
    }

    while (v95 < v63);
  }

  return result;
}

uint64_t ParamSpecMgr::getParamByParamId(ParamSpecMgr *this, int a2)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= *(this + 2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 289, "mrecutil/paramspec", 3, "%d", a2);
  }

  return *(*this + 8 * v3);
}

uint64_t *ParamSpecMgr::getAllParamIdsSortedByName(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  *(a2 + 8) = 0;
  v8 = *(result + 6);
  v9 = *(a2 + 12);
  if (v8 > v9)
  {
    result = DgnPrimArray<short>::reallocElts(a2, v8 - v9, 0);
    v8 = *(v7 + 24);
  }

  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = *(*(v7 + 16) + 4 * v10);
      result = (*(**(*v7 + 8 * v11) + 32))(*(*v7 + 8 * v11), a3, a4);
      if (result)
      {
        v12 = *(a2 + 8);
        if (v12 == *(a2 + 12))
        {
          result = DgnPrimArray<short>::reallocElts(a2, 1, 1);
          v12 = *(a2 + 8);
        }

        *(*a2 + 2 * v12) = v11 + 1;
        *(a2 + 8) = v12 + 1;
      }

      ++v10;
    }

    while (v10 < *(v7 + 24));
  }

  return result;
}

uint64_t ParamSpecMgr::ParamGetDefault_BOOL(ParamSpecMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2);
  if (ParamByParamId)
  {
    v8 = ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 359, "mrecutil/paramspec", 4, "%d", a2);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 359, "mrecutil/paramspec", 4, "%d", a2);
    v9 = 0;
  }

  return BoolParamSpec::getDefault(v9, a3, a4);
}

uint64_t BoolParamSpec::getDefault(BoolParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 5);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 5);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[3 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return BYTE1(v3[3 * v5 + 2]);
}

uint64_t ParamSpecMgr::ParamGetDefault_int(ParamSpecMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2);
  if (ParamByParamId)
  {
    v8 = ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 368, "mrecutil/paramspec", 4, "%d", a2);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 367, "mrecutil/paramspec", 3, "%d", a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 368, "mrecutil/paramspec", 4, "%d", a2);
    v9 = 0;
  }

  return IntParamSpec::getDefault(v9, a3, a4);
}

uint64_t IntParamSpec::getDefault(IntParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return v3[6 * v5 + 3];
}

uint64_t ParamSpecMgr::ParamGetDefault_string(ParamSpecMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2);
  if (ParamByParamId)
  {
    v8 = ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 377, "mrecutil/paramspec", 4, "%d", a2);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 377, "mrecutil/paramspec", 4, "%d", a2);
    v9 = 0;
  }

  return StringParamSpec::getDefault(v9, a3, a4);
}

uint64_t StringParamSpec::getDefault(StringParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 6);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 6);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return *&v3[6 * v5 + 4];
}

uint64_t ParamSpecMgr::ParamGetDefault_enum(ParamSpecMgr *this, uint64_t a2)
{
  v2 = a2;
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2);
  if (!ParamByParamId)
  {
    ParamSpecMgr::ParamGetDefault_enum(v2);
  }

  v4 = ParamByParamId;
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 388, "mrecutil/paramspec", 4, "%d", v2);
  }

  if (!**(v5 + 24))
  {
    return 0;
  }

  v6 = v5 + 16;
  v7 = 1;
  v8 = v6;
  while (*v8 != 1)
  {
    v8 = v6 + 32 * v7++;
    if (!**(v8 + 8))
    {
      return 0;
    }
  }

  return *(v8 + 16);
}

char *ParamSpecMgr::ParamGetDefault_enumAsString(ParamSpecMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2);
  if (ParamByParamId)
  {
    v8 = ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 401, "mrecutil/paramspec", 4, "%d", a2);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 401, "mrecutil/paramspec", 4, "%d", a2);
    v9 = 0;
  }

  return EnumParamSpec::getDefaultAsString(v9, a3, a4);
}

char *EnumParamSpec::getDefaultAsString(EnumParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[84 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  v7 = &v3[84 * v5];
  result = *(v7 + 3);
  if (!*result)
  {
    return &byte_262899963;
  }

  if ((v7[4] & 1) == 0)
  {
    v9 = 1;
    v10 = &v3[84 * v5];
    result = &byte_262899963;
    while (1)
    {
      v11 = &v10[8 * v9];
      if (!**(v11 + 3))
      {
        break;
      }

      ++v9;
      if (*(v11 + 16) == 1)
      {
        return *(v11 + 3);
      }
    }
  }

  return result;
}

double ParamSpecMgr::ParamGetDefault_double(ParamSpecMgr *this, int a2, unsigned int a3, unsigned int a4)
{
  ParamByParamId = ParamSpecMgr::getParamByParamId(this, a2);
  if (ParamByParamId)
  {
    v8 = ParamByParamId;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 412, "mrecutil/paramspec", 4, "%d", a2);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 412, "mrecutil/paramspec", 4, "%d", a2);
    v9 = 0;
  }

  return DoubleParamSpec::getDefault(v9, a3, a4);
}

double DoubleParamSpec::getDefault(DoubleParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[10 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return *&v3[10 * v5 + 4];
}

void *IntParamSpec::IntParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287528C80;
  result[1] = a2;
  result[4] = a5;
  return result;
}

uint64_t IntParamSpec::sizeObject(uint64_t a1, int a2)
{
  if (*(a1 + 32))
  {
    v2 = (a2 & 0xFFFFFFFE) == 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = 20;
  if (v2)
  {
    v3 = 0;
  }

  v4 = 24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  if (a2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

double IntParamSpec::validateValue(IntParamSpec *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 4);
  if (a4 | a3 && (v5 = *v4, *v4 >= a3))
  {
    v6 = 0;
    v7 = *(this + 4);
    do
    {
      if (v5 == a3 && v7[1] <= a4)
      {
        break;
      }

      v7 = &v4[6 * ++v6];
      v5 = *v7;
    }

    while (*v7 >= a3);
  }

  else
  {
    v6 = 0;
  }

  v8 = &v4[6 * v6];
  if (v8[3] != a2 && (v8[4] > a2 || v8[5] < a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 480, "mrecutil/paramspec", 1, "%.500s", *(this + 1));
  }

  return result;
}

void *EnumParamSpec::EnumParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287528798;
  result[1] = a2;
  result[4] = a5;
  return result;
}

uint64_t EnumParamSpec::sizeObject(uint64_t a1, int a2)
{
  v3 = gShadowDiagnosticShowIdealizedObjectSizes;
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (a2 != 2)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v5 += sizeObject(v6, a2);
    }
  }

  v7 = 16;
  if (v3)
  {
    v7 = 8;
  }

  if (a2 == 3)
  {
    v7 = 0;
  }

  return v5 + v7;
}

DgnString *EnumParamSpec::getDescription(EnumParamSpec *this, DgnString *a2)
{
  ParamSpec::getDescription(this, a2);
  result = DgnString::operator+=(a2, " ==> LegalVals: ");
  v5 = *(this + 4);
  v6 = *(v5 + 24);
  if (*v6)
  {
    v7 = (v5 + 40);
    do
    {
      DgnString::operator+=(a2, v6);
      result = DgnString::operator+=(a2, " ");
      if (*v7)
      {
        if (**v7)
        {
          DgnString::operator+=(a2, "[");
          DgnString::operator+=(a2, *v7);
          result = DgnString::operator+=(a2, "] ");
        }
      }

      v6 = v7[2];
      v7 += 4;
    }

    while (*v6);
  }

  return result;
}

double EnumParamSpec::validateValue(EnumParamSpec *this, int a2)
{
  v2 = *(this + 4);
  v3 = **(v2 + 24);
  if (**(v2 + 24))
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v6 = 0;
    v7 = (v2 + 32);
    v8 = v7;
    while (1)
    {
      if (*(v8 - 16) == 1)
      {
        v6 = *v8;
      }

      if (v4)
      {
        v9 = *v8;
        if (v3 >= *v8)
        {
          v3 = *v8;
        }

        if (v5 >= v9)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = *v7;
        v3 = *v7;
      }

      v5 = v9;
LABEL_12:
      v10 = **(v8 + 3);
      v8 += 8;
      --v4;
      if (!v10)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_15:
  if (v6 != a2 && (v3 > a2 || v5 < a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 646, "mrecutil/paramspec", 1, "%.500s", *(this + 1));
  }

  return result;
}

uint64_t EnumParamSpec::convertEnumStringToInt(EnumParamSpec *this, const char *__s1)
{
  v4 = *(this + 4);
  v5 = *(v4 + 24);
  if (*v5)
  {
    v6 = (v4 + 32);
    while (strcmp(__s1, v5))
    {
      v5 = v6[3];
      v6 += 4;
      if (!*v5)
      {
        goto LABEL_5;
      }
    }

    return *v6;
  }

  else
  {
LABEL_5:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 661, "mrecutil/paramspec", 2, "%.500s %.500s", *(this + 1), __s1);
    return 0;
  }
}

uint64_t EnumParamSpec::checkStringEnumValue(EnumParamSpec *this, char *a2, unsigned int a3, unsigned int a4)
{
  v6 = *(this + 4);
  if (a4 | a3 && (v7 = *v6, *v6 >= a3))
  {
    v8 = 0;
    v9 = *(this + 4);
    do
    {
      if (v7 == a3 && v9[1] <= a4)
      {
        break;
      }

      v9 = &v6[84 * ++v8];
      v7 = *v9;
    }

    while (*v9 >= a3);
  }

  else
  {
    v8 = 0;
  }

  v10 = *&v6[84 * v8 + 6];
  v11 = *v10;
  if (*v10)
  {
    v12 = 336 * v8 + 56;
    do
    {
      v13 = ustrcmp(v10, a2);
      v11 = v13 == 0;
      if (!v13)
      {
        break;
      }

      v10 = *(*(this + 4) + v12);
      v12 += 32;
    }

    while (*v10);
  }

  return v11;
}

void *BoolParamSpec::BoolParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287528858;
  result[1] = a2;
  result[5] = a5;
  return result;
}

uint64_t BoolParamSpec::sizeObject(uint64_t a1, int a2)
{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2 + 1;
  }
}

void *DoubleParamSpec::DoubleParamSpec(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[2] = a4;
  result[3] = a3;
  *result = &unk_287527BB8;
  result[1] = a2;
  result[4] = a5;
  return result;
}

uint64_t DoubleParamSpec::sizeObject(uint64_t a1, int a2)
{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void DoubleParamSpec::getDescription(DoubleParamSpec *this, DgnString *a2)
{
  ParamSpec::getDescription(this, a2);
  DgnString::operator+=(a2, " ==> Range ");
  DgnString::formatFloat(0xE, *(*(this + 4) + 24), v4);
  DgnString::operator+=(a2, v4);
  DgnString::~DgnString(v4);
  DgnString::operator+=(a2, " to ");
  DgnString::formatFloat(0xE, *(*(this + 4) + 32), v4);
  DgnString::operator+=(a2, v4);
  DgnString::~DgnString(v4);
}

double DoubleParamSpec::validateValue(DoubleParamSpec *this, double result, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 4);
  if (a4 | a3 && (v5 = *v4, *v4 >= a3))
  {
    v6 = 0;
    v7 = *(this + 4);
    do
    {
      if (v5 == a3 && v7[1] <= a4)
      {
        break;
      }

      v7 = &v4[10 * ++v6];
      v5 = *v7;
    }

    while (*v7 >= a3);
  }

  else
  {
    v6 = 0;
  }

  v8 = &v4[10 * v6];
  if (v8[2] != result && (v8[3] > result || v8[4] < result))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/paramspec.cpp", 808, "mrecutil/paramspec", 1, "%.500s", *(this + 1));
  }

  return result;
}

void *StringParamSpec::StringParamSpec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2] = a4;
  a1[3] = a3;
  *a1 = &unk_287527820;
  a1[1] = a2;
  DgnString::DgnString((a1 + 4));
  a1[6] = a5;
  return a1;
}

void StringParamSpec::~StringParamSpec(StringParamSpec *this)
{
  *this = &unk_287527820;
  DgnString::~DgnString(this + 32);
}

{
  *this = &unk_287527820;
  DgnString::~DgnString(this + 32);

  JUMPOUT(0x26672B1B0);
}

uint64_t StringParamSpec::sizeObject(uint64_t a1, int a2)
{
  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 8;
  }

  if (a2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3 + sizeObject(a1 + 32, a2);
}

uint64_t IntParamSpec::isPresent(IntParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[6 * v5 + 2]);
}

uint64_t EnumParamSpec::isPresent(EnumParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[84 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[84 * v5 + 2]);
}

uint64_t BoolParamSpec::isPresent(BoolParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 5);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 5);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[3 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[3 * v5 + 2]);
}

uint64_t DoubleParamSpec::isPresent(DoubleParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 4);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 4);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[10 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[10 * v5 + 2]);
}

uint64_t StringParamSpec::isPresent(StringParamSpec *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 6);
  if (a3 | a2 && (v4 = *v3, *v3 >= a2))
  {
    v5 = 0;
    v6 = *(this + 6);
    do
    {
      if (v4 == a2 && v6[1] <= a3)
      {
        break;
      }

      v6 = &v3[6 * ++v5];
      v4 = *v6;
    }

    while (*v6 >= a2);
  }

  else
  {
    v5 = 0;
  }

  return LOBYTE(v3[6 * v5 + 2]);
}

void *DgnIOwnArray<ParamSpec *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<ParamSpec>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void (***DgnDelete<ParamSpec>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitModule_recentb_lm(void)
{
  if (!gParDebugShowRecentBufferOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowRecentBufferOnLoad", byte_262891468, byte_262891468, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowRecentBufferOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowRecentBufferOnLoad);
  }

  if (!gParDebugRecentBufferScoring)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugRecentBufferScoring", byte_262891468, byte_262891468, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugRecentBufferScoring = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRecentBufferScoring);
  }

  if (!gParDebugRecentBufferAddDelete)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugRecentBufferAddDelete", byte_262891468, byte_262891468, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugRecentBufferAddDelete = v5;
    v6 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v6, &gParDebugRecentBufferAddDelete);
  }
}

void RecentBuffer::RecentBuffer(RecentBuffer *this, int a2, const WordList *a3, LanguageModel *a4, LanguageModel *a5)
{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::Hash(this + 80, 0, 16);
  DgnString::DgnString((this + 192));
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::Hash(this + 304, 0, 16);
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 110) = 0;
  *(this + 54) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  DgnString::DgnString((this + 496));
  *(this + 32) = 0u;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 1) = a3;
  *this = a2;
  v10 = (*(*a5 + 528))(a5);
  *(this + 4) = v10;
  WordLanguageModel::registerRecentBuffer(v10, this);
  *(this + 70) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 254) = 0;
  LODWORD(v11) = *this;
  CombineTable::initCombineTable(this + 432, v11);
  v13 = (40 * *this) | 1;
  v14 = *(this + 115);
  if (v14 <= 40 * *this)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 448, v13 - v14, 0);
  }

  v15 = 0;
  *(this + 114) = v13;
  do
  {
    LODWORD(v12) = *this;
    *(*(this + 56) + 8 * v15) = DgnExp(-v15 / v12);
    ++v15;
  }

  while (v15 < *(this + 114));
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0x3FF0000000000000;
  *(this + 72) = 0;
  *(this + 37) = 20000;
  v16 = vdup_n_s16(0x4E20u);
  *(this + 60) = v16;
  *(this + 488) = 0;
  *(this + 66) = v16;
}

void sub_26281D7BC(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 512);
  BitArray::~BitArray((v1 + 496));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 464);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 448);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 + 432);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 416);
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::~Hash(v2 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  BitArray::~BitArray((v1 + 192));
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(v1 + 80);
  _Unwind_Resume(a1);
}

uint64_t *WordLanguageModel::registerRecentBuffer(uint64_t *this, RecentBuffer *a2)
{
  v3 = this;
  v4 = *(this + 54);
  if (v4 == *(this + 55))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts((this + 26), 1, 1);
    v4 = *(v3 + 216);
  }

  *(*(v3 + 208) + 8 * v4) = a2;
  *(v3 + 216) = v4 + 1;
  return this;
}

void RecentBuffer::~RecentBuffer(RecentBuffer *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 216);
  if (v3)
  {
    v4 = *(v2 + 216);
    v5 = *(v2 + 208);
    while (*v5 != this)
    {
      ++v5;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    v6 = v3 - 1;
    *v5 = *(*(v2 + 208) + 8 * v6);
    *(v2 + 216) = v6;
  }

LABEL_7:
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 512);
  BitArray::~BitArray((this + 496));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 464);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 448);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 432);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 416);
  Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::~Hash(this + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  BitArray::~BitArray((this + 192));
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(this + 80);
}

void RecentBuffer::printSize(RecentBuffer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 428);
  if (v177)
  {
    v12 = v176;
  }

  else
  {
    v12 = byte_262891468;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, byte_262891468, a3, byte_262891468, v12);
  DgnString::~DgnString(&v176);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, byte_262891468);
  v14 = (34 - a3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 430);
  if (v177)
  {
    v16 = v176;
  }

  else
  {
    v16 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v16, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 432);
  if (v177)
  {
    v19 = v176;
  }

  else
  {
    v19 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v19, v17, v17, 0);
  DgnString::~DgnString(&v176);
  *a4 += v17;
  *a5 += v17;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 433);
  if (v177)
  {
    v22 = v176;
  }

  else
  {
    v22 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v176);
  *a4 += v20;
  *a5 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 434);
  if (v177)
  {
    v25 = v176;
  }

  else
  {
    v25 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v25, v23, v23, 0);
  DgnString::~DgnString(&v176);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 435);
  if (v177)
  {
    v28 = v176;
  }

  else
  {
    v28 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v176);
  *a4 += v26;
  *a5 += v26;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 438);
  if (v177)
  {
    v30 = v176;
  }

  else
  {
    v30 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v30, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 440);
  if (v177)
  {
    v32 = v176;
  }

  else
  {
    v32 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v32, 8, 8, 0);
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 442);
  if (v177)
  {
    v34 = v176;
  }

  else
  {
    v34 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v34, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 444);
  if (v177)
  {
    v36 = v176;
  }

  else
  {
    v36 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v36, 8, 8, 0);
  v174 = this;
  DgnString::~DgnString(&v176);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 446);
  if (v177)
  {
    v38 = v176;
  }

  else
  {
    v38 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v38, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 448);
  if (v177)
  {
    v40 = v176;
  }

  else
  {
    v40 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), byte_262891468, (34 - a3), (34 - a3), v40, 2, 2, 0);
  v173 = (a3 + 1);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  v41 = sizeObject(this + 104, 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 8;
  }

  else
  {
    v42 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 2;
  }

  else
  {
    v43 = 3;
  }

  v44 = *(this + 42) << v43;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 8;
  }

  else
  {
    v45 = 16;
  }

  v46 = v41 + v45 + v42 + v44 + 13;
  v47 = sizeObject((v174 + 26), 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 8;
  }

  else
  {
    v48 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 2;
  }

  else
  {
    v49 = 3;
  }

  v50 = v174[42] << v49;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 8;
  }

  else
  {
    v51 = 16;
  }

  v52 = v47 + v51 + v48 + v50 + 13;
  v53 = sizeObject((v174 + 26), 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 451);
  if (v177)
  {
    v55 = v176;
  }

  else
  {
    v55 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v173, byte_262891468, v14, v14, v55, v46, v52, v53);
  DgnString::~DgnString(&v176);
  *a4 += v46;
  *a5 += v52;
  *a6 += v53;
  v56 = BitArray::sizeObject((v174 + 48), 0);
  v57 = BitArray::sizeObject((v174 + 48), 1);
  v58 = BitArray::sizeObject((v174 + 48), 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 453);
  if (v177)
  {
    v60 = v176;
  }

  else
  {
    v60 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v173, byte_262891468, v14, v14, v60, v56, v57, v58);
  DgnString::~DgnString(&v176);
  *a4 += v56;
  *a5 += v57;
  *a6 += v58;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 12;
  }

  else
  {
    v61 = 16;
  }

  v62 = v174[54];
  v63 = v174[55];
  if (v63 >= v62)
  {
    v64 = 0;
    if (v62 > 0)
    {
      v61 += 4 * (v62 - 1) + 4;
    }

    v65 = v61 + 4 * (v63 - v62);
  }

  else
  {
    v64 = 4 * v62;
    v65 = v61;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 455);
  if (v177)
  {
    v67 = v176;
  }

  else
  {
    v67 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v173, byte_262891468, v14, v14, v67, v65, v61, v64);
  DgnString::~DgnString(&v176);
  *a4 += v65;
  *a5 += v61;
  *a6 += v64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v68 = 12;
  }

  else
  {
    v68 = 16;
  }

  v69 = v174[58];
  v70 = v174[59];
  if (v70 >= v69)
  {
    v71 = 0;
    if (v69 > 0)
    {
      v68 += 4 * (v69 - 1) + 4;
    }

    v72 = v68 + 4 * (v70 - v69);
  }

  else
  {
    v71 = 4 * v69;
    v72 = v68;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 457);
  if (v177)
  {
    v74 = v176;
  }

  else
  {
    v74 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v173, byte_262891468, v14, v14, v74, v72, v68, v71);
  DgnString::~DgnString(&v176);
  *a4 += v72;
  *a5 += v68;
  *a6 += v71;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 459);
  if (v177)
  {
    v76 = v176;
  }

  else
  {
    v76 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v173, byte_262891468, v14, v14, v76, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 461);
  if (v177)
  {
    v78 = v176;
  }

  else
  {
    v78 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v173, byte_262891468, v14, v14, v78, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 464);
  if (v177)
  {
    v80 = v176;
  }

  else
  {
    v80 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v173, byte_262891468, v14, v14, v80, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 466);
  if (v177)
  {
    v82 = v176;
  }

  else
  {
    v82 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v173, byte_262891468, v14, v14, v82, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 468);
  if (v177)
  {
    v84 = v176;
  }

  else
  {
    v84 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v173, byte_262891468, v14, v14, v84, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 470);
  if (v177)
  {
    v86 = v176;
  }

  else
  {
    v86 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v173, byte_262891468, v14, v14, v86, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v87 = 12;
  }

  else
  {
    v87 = 16;
  }

  v88 = v174[68];
  v89 = v174[69];
  if (v89 >= v88)
  {
    v90 = 0;
    if (v88 > 0)
    {
      v87 += 2 * (v88 - 1) + 2;
    }

    v91 = v87 + 2 * (v89 - v88);
  }

  else
  {
    v90 = 2 * v88;
    v91 = v87;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 472);
  if (v177)
  {
    v93 = v176;
  }

  else
  {
    v93 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v173, byte_262891468, v14, v14, v93, v91, v87, v90);
  DgnString::~DgnString(&v176);
  *a4 += v91;
  *a5 += v87;
  *a6 += v90;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 474);
  if (v177)
  {
    v95 = v176;
  }

  else
  {
    v95 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v173, byte_262891468, v14, v14, v95, 4, 4, 0);
  DgnString::~DgnString(&v176);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v96 = 12;
  }

  else
  {
    v96 = 16;
  }

  v97 = v174[74];
  v98 = v174[75];
  if (v98 >= v97)
  {
    v99 = 0;
    if (v97 > 0)
    {
      v96 += 2 * (v97 - 1) + 2;
    }

    v100 = v96 + 2 * (v98 - v97);
  }

  else
  {
    v99 = 2 * v97;
    v100 = v96;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 476);
  if (v177)
  {
    v102 = v176;
  }

  else
  {
    v102 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v173, byte_262891468, v14, v14, v102, v100, v96, v99);
  DgnString::~DgnString(&v176);
  *a4 += v100;
  *a5 += v96;
  *a6 += v99;
  v103 = sizeObject((v174 + 82), 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v104 = 8;
  }

  else
  {
    v104 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v105 = 2;
  }

  else
  {
    v105 = 3;
  }

  v106 = v174[98] << v105;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v107 = 8;
  }

  else
  {
    v107 = 16;
  }

  v108 = v103 + v107 + v104 + v106 + 13;
  v109 = sizeObject((v174 + 82), 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v110 = 8;
  }

  else
  {
    v110 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v111 = 2;
  }

  else
  {
    v111 = 3;
  }

  v112 = v174[98] << v111;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 8;
  }

  else
  {
    v113 = 16;
  }

  v114 = v109 + v113 + v110 + v112 + 13;
  v115 = sizeObject((v174 + 82), 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 478);
  if (v177)
  {
    v117 = v176;
  }

  else
  {
    v117 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v173, byte_262891468, v14, v14, v117, v108, v114, v115);
  DgnString::~DgnString(&v176);
  *a4 += v108;
  *a5 += v114;
  *a6 += v115;
  v118 = sizeObject<DgnPrimArray<unsigned short>>((v174 + 104), 0);
  v119 = sizeObject<DgnPrimArray<unsigned short>>((v174 + 104), 1);
  v176 = 0;
  v177 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v176);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 481);
  if (v177)
  {
    v121 = v176;
  }

  else
  {
    v121 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v173, byte_262891468, v14, v14, v121, v118, v119, 0);
  DgnString::~DgnString(&v176);
  *a4 += v118;
  *a5 += v119;
  v122 = CombineTable::sizeObject((v174 + 108), 0);
  v123 = CombineTable::sizeObject((v174 + 108), 1);
  v124 = CombineTable::sizeObject((v174 + 108), 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 483);
  if (v177)
  {
    v126 = v176;
  }

  else
  {
    v126 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v173, byte_262891468, v14, v14, v126, v122, v123, v124);
  DgnString::~DgnString(&v176);
  *a4 += v122;
  *a5 += v123;
  *a6 += v124;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v127 = 12;
  }

  else
  {
    v127 = 16;
  }

  v128 = v174[114];
  v129 = v174[115];
  if (v129 >= v128)
  {
    v130 = 0;
    if (v128 > 0)
    {
      v127 += 8 * (v128 - 1) + 8;
    }

    v131 = v127 + 8 * (v129 - v128);
  }

  else
  {
    v130 = 8 * v128;
    v131 = v127;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 485);
  if (v177)
  {
    v133 = v176;
  }

  else
  {
    v133 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v173, byte_262891468, v14, v14, v133, v131, v127, v130);
  DgnString::~DgnString(&v176);
  *a4 += v131;
  *a5 += v127;
  *a6 += v130;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 12;
  }

  else
  {
    v134 = 16;
  }

  v135 = v174[118];
  v136 = v174[119];
  if (v136 >= v135)
  {
    v137 = 0;
    if (v135 > 0)
    {
      v134 += 2 * (v135 - 1) + 2;
    }

    v138 = v134 + 2 * (v136 - v135);
  }

  else
  {
    v137 = 2 * v135;
    v138 = v134;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 487);
  if (v177)
  {
    v140 = v176;
  }

  else
  {
    v140 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v173, byte_262891468, v14, v14, v140, v138, v134, v137);
  DgnString::~DgnString(&v176);
  *a4 += v138;
  *a5 += v134;
  *a6 += v137;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 489);
  if (v177)
  {
    v142 = v176;
  }

  else
  {
    v142 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v173, byte_262891468, v14, v14, v142, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 491);
  if (v177)
  {
    v144 = v176;
  }

  else
  {
    v144 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v173, byte_262891468, v14, v14, v144, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 493);
  if (v177)
  {
    v146 = v176;
  }

  else
  {
    v146 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v173, byte_262891468, v14, v14, v146, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 495);
  if (v177)
  {
    v148 = v176;
  }

  else
  {
    v148 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v173, byte_262891468, v14, v14, v148, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 498);
  if (v177)
  {
    v150 = v176;
  }

  else
  {
    v150 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v173, byte_262891468, v14, v14, v150, 1, 1, 0);
  DgnString::~DgnString(&v176);
  ++*a4;
  ++*a5;
  v151 = BitArray::sizeObject((v174 + 124), 0);
  v152 = BitArray::sizeObject((v174 + 124), 1);
  v153 = BitArray::sizeObject((v174 + 124), 3);
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 500);
  if (v177)
  {
    v155 = v176;
  }

  else
  {
    v155 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v154, v173, byte_262891468, v14, v14, v155, v151, v152, v153);
  DgnString::~DgnString(&v176);
  *a4 += v151;
  *a5 += v152;
  *a6 += v153;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v156 = 12;
  }

  else
  {
    v156 = 16;
  }

  v157 = v174[130];
  v158 = v174[131];
  if (v158 >= v157)
  {
    v159 = 0;
    if (v157 > 0)
    {
      v156 += 4 * (v157 - 1) + 4;
    }

    v160 = v156 + 4 * (v158 - v157);
  }

  else
  {
    v159 = 4 * v157;
    v160 = v156;
  }

  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 502);
  if (v177)
  {
    v162 = v176;
  }

  else
  {
    v162 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v161, v173, byte_262891468, v14, v14, v162, v160, v156, v159);
  DgnString::~DgnString(&v176);
  *a4 += v160;
  *a5 += v156;
  *a6 += v159;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 505);
  if (v177)
  {
    v164 = v176;
  }

  else
  {
    v164 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v173, byte_262891468, v14, v14, v164, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 507);
  if (v177)
  {
    v166 = v176;
  }

  else
  {
    v166 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v173, byte_262891468, v14, v14, v166, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 509);
  if (v177)
  {
    v168 = v176;
  }

  else
  {
    v168 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v173, byte_262891468, v14, v14, v168, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 511);
  if (v177)
  {
    v170 = v176;
  }

  else
  {
    v170 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v173, byte_262891468, v14, v14, v170, 2, 2, 0);
  DgnString::~DgnString(&v176);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v176, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 513);
  if (v177)
  {
    v172 = v176;
  }

  else
  {
    v172 = byte_262891468;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, a3, byte_262891468, (35 - a3), (35 - a3), v172, *a4, *a5, *a6);
  DgnString::~DgnString(&v176);
}

void sub_26281EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecentBuffer::computeAppearancesToScores(RecentBuffer *this, unsigned int a2)
{
  if (a2)
  {
    v4 = *(this + 52) + 16 * a2;
    v5 = a2 + 1;
    if (*(v4 + 8) != v5)
    {
      v6 = *(v4 + 12);
      if (v5 <= v6)
      {
        *(v4 + 8) = v5;
        if (a2 == -1)
        {
          return;
        }
      }

      else
      {
        DgnPrimArray<short>::reallocElts(v4, v5 - v6, 0);
        *(v4 + 8) = v5;
      }

      v7 = 0;
      v8 = 1.0 / a2;
      v9 = 16 * a2;
      do
      {
        v10 = *this;
        v11 = -20.0;
        if (v8 * v7 > 0.0)
        {
          v11 = DgnLog(v8 * v7);
          if (v11 < -20.0)
          {
            v11 = -20.0;
          }
        }

        *(*(*(this + 52) + v9) + 2 * v7++) = (-v10 * v11 + 0.5);
      }

      while (v5 != v7);
    }
  }
}

uint64_t RecentBuffer::addWordCountUni(uint64_t this, unsigned int a2, int a3)
{
  if (a2 == 16777213)
  {
    if (*(this + 488) == 1)
    {
      v5 = *(this + 256);
      if (a3)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = v5 - 1;
      }

      *(this + 256) = v6;
    }

    else
    {
      v12 = *(this + 260);
      if (a3)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 - 1;
      }

      *(this + 260) = v13;
    }
  }

  else if (a2 == 0xFFFFFF)
  {
    v3 = *(this + 248);
    if (a3)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = v3 - 1;
    }

    *(this + 248) = v4;
  }

  else if (*(this + 504) > a2 && ((*(*(this + 496) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v7 = *(this + 252);
    if (a3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    *(this + 252) = v8;
  }

  else
  {
    v9 = *(this + 264);
    v10 = *(v9 + 2 * a2);
    if (a3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 - 1;
    }

    *(v9 + 2 * a2) = v11;
  }

  return this;
}

void RecentBuffer::addWordCountBi(RecentBuffer *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a2 != 0xFFFFFF && (a3 & 0xFFFFFFFE) != 0xFFFFFE)
  {
    v16 = __PAIR64__(a3, a2);
    v7 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(this + 304, &v16);
    if (v7)
    {
      v8 = *(v7 + 5);
      if (a4)
      {
        *(v7 + 5) = v8 + 1;
        v9 = 1;
LABEL_15:
        v13 = *(this + 36);
        v14 = *(v13 + 2 * a3) + v9;
        *(v13 + 2 * a3) = v14;
        RecentBuffer::computeAppearancesToScores(this, v14);
        return;
      }

      v12 = v8 - 1;
      *(v7 + 5) = v12;
      if (!v12)
      {
        Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::remove(this + 304, &v16);
      }
    }

    else
    {
      v9 = 1;
      v15 = 1;
      Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::add(this + 304, &v16, &v15);
      if (a4)
      {
        goto LABEL_15;
      }
    }

    v9 = -1;
    goto LABEL_15;
  }

  v10 = *(this + 70);
  if (a4)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10 - 1;
  }

  *(this + 70) = v11;
}

uint64_t **Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::remove(uint64_t a1, _DWORD *a2)
{
  result = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(a1, a2);
  if (*result)
  {

    return Hash<WordIdPair,WordIdPair,WordIdPair,unsigned int>::removeBucket(a1, result);
  }

  return result;
}

void RecentBuffer::addToRecentInternal(RecentBuffer *this, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = *(this + 10);
    if (v5)
    {
      v6 = v3 >= v5 ? v3 - v5 : 0;
      if (v6 < v3)
      {
        v9 = *(this + 60);
        do
        {
          v10 = *(this + 61);
          if (v10 + 1 == v5)
          {
            v11 = 0;
          }

          else
          {
            v11 = v10 + 1;
          }

          *(this + 61) = v11;
          if (v9 == v5)
          {
            RecentBuffer::addWordCountUni(this, *(*(this + 26) + 4 * v11), 0);
            v11 = *(this + 61);
            if (*(this + 56) == 1)
            {
              RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * v11), *(*(this + 28) + 4 * v11), 0);
              v11 = *(this + 61);
            }
          }

          v12 = *(this + 26);
          *(v12 + 4 * v11) = *(*a2 + 4 * v6);
          RecentBuffer::addWordCountUni(this, *(v12 + 4 * *(this + 61)), 1);
          if (*(this + 56) == 1)
          {
            v13 = a3;
            if (v6)
            {
              v13 = *(*a2 + 4 * v6 - 4);
            }

            v14 = *(this + 28);
            *(v14 + 4 * *(this + 61)) = v13;
            RecentBuffer::addWordCountBi(this, *(*(this + 26) + 4 * *(this + 61)), *(v14 + 4 * *(this + 61)), 1);
          }

          v5 = *(this + 10);
          v15 = *(this + 60);
          if (v5 >= v15 + 1)
          {
            v9 = v15 + 1;
          }

          else
          {
            v9 = *(this + 10);
          }

          *(this + 60) = v9;
          ++v6;
        }

        while (v6 < *(a2 + 8));
      }
    }
  }
}

uint64_t RecentBuffer::getRecentScore(RecentBuffer *this, uint64_t a2, int a3, const LMContextData *a4)
{
  v30 = a2;
  if (a2 == 0xFFFFFF)
  {
    return a3;
  }

  v6 = a2;
  if (a2 == 16777213)
  {
    v8 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, &v30);
    if (!v8)
    {
      if (((*(**(this + 4) + 696))(*(this + 4)) & 1) == 0)
      {
        return a3;
      }

      goto LABEL_9;
    }

LABEL_8:
    v30 = *(v8 + 4);
    goto LABEL_9;
  }

  if (!(*(**(this + 2) + 112))(*(this + 2), a2))
  {
    return a3;
  }

  v30 = *(*(*(this + 1) + 256) + 4 * v6);
  v8 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, &v30);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(this + 60);
  if (!v9)
  {
    return a3;
  }

  v10 = *(a4 + 2);
  if (v30 == 16777213 && (*(this + 488) & 1) != 0 || *(this + 126) > v30 && ((*(*(this + 62) + ((v30 >> 3) & 0x1FFFFFFC)) >> v30) & 1) != 0 || ((v11 = *(this + 63) + *(this + 62) + *(this + 64), v30 != 16777213) ? (v12 = (*(this + 33) + 2 * v30)) : (v12 = (this + 260)), v9 == v11))
  {
    v13 = a3;
LABEL_19:
    if (*(this + 56) == 1 && v10 < 0xFFFFF4 && v9 != *(this + 70))
    {
      v14 = *(*(this + 36) + 2 * v10);
      v29[0] = v30;
      v29[1] = v10;
      v15 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(this + 304, v29);
      if (v15)
      {
        v15 = *(v15 + 5);
      }

      if (v14)
      {
        v16 = *(*(*(this + 52) + 16 * v14) + 2 * v15);
        if (v16 != 20000)
        {
          v17 = v13 + *(this + 264);
          v18 = *(this + 265) + v16;
          v20 = v18 - v17;
          v19 = v18 - v17 < 0;
          if (v18 >= v17)
          {
            v18 = v13 + *(this + 264);
          }

          if (v19)
          {
            v21 = -v20;
          }

          else
          {
            v21 = v20;
          }

          if (v21 < *(this + 110))
          {
            v18 -= *(*(this + 54) + 4 * v21);
          }

          v13 = v18 & ~(v18 >> 31);
        }
      }
    }

    goto LABEL_43;
  }

  v13 = *(*(*(this + 52) + 16 * (v9 - v11)) + 2 * *v12);
  if (*(this + 72) != 1)
  {
    goto LABEL_19;
  }

  if (v10 < 0xFFFFF4)
  {
    v13 += *(*(this + 58) + 2 * v10);
    goto LABEL_19;
  }

  if (v10 == 16777214)
  {
    v22 = *(this + 241);
  }

  else if (v10 == 0xFFFFFF)
  {
    v22 = *(this + 240);
  }

  else
  {
    v22 = *(this + 242);
  }

  LOWORD(v13) = v22 + v13;
LABEL_43:
  if (v13 != a3)
  {
    v23 = *(this + 266) + a3;
    v24 = v13 + *(this + 267);
    v26 = v24 - v23;
    v25 = v24 - v23 < 0;
    if (v24 >= v23)
    {
      v24 = *(this + 266) + a3;
    }

    if (v25)
    {
      v27 = -v26;
    }

    else
    {
      v27 = v26;
    }

    if (v27 < *(this + 110))
    {
      v24 -= *(*(this + 54) + 4 * v27);
    }

    a3 = v24 & ~(v24 >> 31);
  }

  return a3;
}

uint64_t **RecentBuffer::setContext(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8))
  {
    v5 = result;
    *(a4 + 8) = **a2;
    result = (*(*result[2] + 112))(result[2]);
    if (!result)
    {
      goto LABEL_9;
    }

    v6 = *(a4 + 8);
    if (v6 <= 0xFFFFF3)
    {
      *(a4 + 8) = *(v5[1][32] + 4 * v6);
    }

    result = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket((v5 + 10), (a4 + 8));
    if (*result)
    {
      v7 = *(*result + 4);
LABEL_10:
      *(a4 + 8) = v7;
      return result;
    }

    if (*(a4 + 8) == 16777214 && *(v5[4] + 28) == -1)
    {
LABEL_9:
      v7 = 0xFFFFFF;
      goto LABEL_10;
    }
  }

  return result;
}

double RecentBuffer::initRecentBuffer(RecentBuffer *this)
{
  v2 = *(*(this + 1) + 388);
  v3 = *(this + 10);
  v4 = *(this + 55);
  if (v3 > v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 208, v3 - v4, 0);
  }

  *(this + 54) = v3;
  if (v2)
  {
    v5 = *(this + 69);
    if (v2 > v5)
    {
      DgnPrimArray<short>::reallocElts(this + 264, v2 - v5, 0);
    }

    *(this + 68) = v2;
  }

  if (*(this + 56) == 1)
  {
    v6 = *(this + 10);
    v7 = *(this + 59);
    if (v6 > v7)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 224, v6 - v7, 0);
    }

    *(this + 58) = v6;
    if (v2)
    {
      v8 = *(this + 75);
      if (v2 > v8)
      {
        DgnPrimArray<short>::reallocElts(this + 288, v2 - v8, 0);
      }

      *(this + 74) = v2;
    }
  }

  v9 = (*(this + 10) + 1);
  v10 = *(this + 107);
  if (v9 > v10)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 416, v9 - v10, 0);
  }

  v11 = *(this + 106);
  if (v11 <= v9)
  {
    if (v11 < v9)
    {
      v14 = v9 - v11;
      v15 = 16 * v11;
      do
      {
        v16 = (*(this + 52) + v15);
        *v16 = 0;
        v16[1] = 0;
        v15 += 16;
        --v14;
      }

      while (v14);
    }
  }

  else if (v11 > v9)
  {
    v12 = v11;
    v13 = 16 * v11 - 16;
    do
    {
      --v12;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 52) + v13);
      v13 -= 16;
    }

    while (v12 > v9);
  }

  *(this + 106) = v9;
  RecentBuffer::clearRecent(this);

  return RecentBuffer::setWeights(this);
}

void RecentBuffer::clearRecent(RecentBuffer *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    bzero(*(this + 33), 2 * v2);
  }

  *(this + 60) = 0;
  *(this + 31) = 0;
  *(this + 254) = 0;
  if (*(this + 10))
  {
    v3 = 0;
    v4 = *(this + 26);
    do
    {
      *(v4 + 4 * v3++) = 0xFFFFFF;
    }

    while (v3 < *(this + 10));
  }

  *(this + 61) = 0;
  if (*(this + 56))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(this + 304);
    v5 = *(this + 74);
    if (v5)
    {
      bzero(*(this + 36), 2 * v5);
    }

    *(this + 70) = 0;
    if (*(this + 10))
    {
      v6 = 0;
      v7 = *(this + 28);
      do
      {
        *(v7 + 4 * v6++) = 0xFFFFFF;
      }

      while (v6 < *(this + 10));
    }
  }
}

double RecentBuffer::setWeights(RecentBuffer *this)
{
  v2 = *(this + 8);
  v3 = 1.0 - v2;
  v4 = *this;
  v5 = -20.0;
  v6 = -20.0;
  if (v2 > 0.0)
  {
    v7 = DgnLog(v2);
    v6 = -20.0;
    if (v7 >= -20.0)
    {
      v6 = v7;
    }
  }

  *(this + 264) = (-v4 * v6 + 0.5);
  v8 = *this;
  if (v3 > 0.0)
  {
    v9 = DgnLog(v3);
    if (v9 < -20.0)
    {
      v5 = -20.0;
    }

    else
    {
      v5 = v9;
    }
  }

  *(this + 265) = (-v8 * v5 + 0.5);
  v10 = *(this + 10);
  if (v10)
  {
    v11 = (*(this + 60) - *(this + 62)) / v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v11 * *(this + 6);
  v13 = *this;
  v14 = -20.0;
  v15 = -20.0;
  if (1.0 - v12 > 0.0)
  {
    v15 = DgnLog(1.0 - v12);
    if (v15 < -20.0)
    {
      v15 = -20.0;
    }
  }

  *(this + 266) = (-v13 * v15 + 0.5);
  v16 = *this;
  if (v12 > 0.0)
  {
    v17 = DgnLog(v12);
    if (v17 < -20.0)
    {
      v14 = -20.0;
    }

    else
    {
      v14 = v17;
    }
  }

  result = -v16 * v14 + 0.5;
  *(this + 267) = result;
  return result;
}

uint64_t RecentBuffer::initHeadClonesAndCommonWords(uint64_t **this)
{
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  WordLanguageModel::constructLmIdToWordIdMapping(this[4], v14, v13);
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll((this + 10));
  BitArray::setSizeNoGrow((this + 24), 0);
  v12 = 0;
  v2 = this[1];
  if (*(v2 + 97))
  {
    v3 = 0;
    do
    {
      if (*(v2[13] + v3))
      {
        if (*(v2[32] + 4 * v3) == v3 && ((*(v2[78] + 4 * (v3 >> 5)) >> v3) & 1) != 0)
        {
          v4 = (*(*this[2] + 112))(this[2]);
          v3 = v12;
          if (v4)
          {
            LmId = WordLanguageModel::getLmId(this[4], v12);
            v3 = *(v14[0] + 4 * LmId);
            v11 = v3;
            if (v3 != v12)
            {
              Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add((this + 10), &v12, &v11);
              v6 = *(this + 50);
              v7 = v11;
              v8 = v11 >= v6;
              v9 = v11 - v6;
              if (v8)
              {
                BitArray::addSize((this + 24), v9 + 1);
                v7 = v11;
              }

              *(this[24] + (v7 >> 5)) |= 1 << v7;
              v3 = v12;
            }
          }
        }
      }

      v12 = ++v3;
      v2 = this[1];
    }

    while (v3 < *(v2 + 97));
  }

  if (this[9])
  {
    RecentBuffer::setCommonWords(this, v14);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
}

void sub_26281FD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t RecentBuffer::setCommonWords(uint64_t a1, uint64_t a2)
{
  *(a1 + 520) = 0;
  BitArray::setSizeNoGrow((a1 + 496), 0);
  *(a1 + 488) = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  LMStats::resetStats(v19);
  v16 = xmmword_262888C00;
  v17 = 1;
  v18 = 1;
  v4 = (*(**(a1 + 32) + 464))(*(a1 + 32));
  (*(**(a1 + 32) + 472))(*(a1 + 32), v26, 0, v19, &v16, v4);
  v5 = *(*(a1 + 32) + 104);
  if (v5 >= 2)
  {
    for (i = 1; i != v5; ++i)
    {
      WordIdWithMapping = WordLanguageModel::getWordIdWithMapping(*(a1 + 32), i, 0, a2, 0);
      v8 = WordIdWithMapping;
      v9 = *(a1 + 8);
      if (*(v9 + 388) > WordIdWithMapping && *(*(v9 + 104) + WordIdWithMapping) && *(*(v9 + 256) + 4 * WordIdWithMapping) == WordIdWithMapping || WordIdWithMapping == 16777213)
      {
        v15 = 0;
        if ((*(**(a1 + 32) + 504))(*(a1 + 32), WordIdWithMapping, 0xFFFFLL, v19, v4, 0, 0, 0, &v15) < *(a1 + 74))
        {
          v10 = *(a1 + 520);
          if (v10 == *(a1 + 524))
          {
            DgnPrimArray<unsigned int>::reallocElts(a1 + 512, 1, 1);
            v10 = *(a1 + 520);
          }

          *(*(a1 + 512) + 4 * v10) = v8;
          ++*(a1 + 520);
          if (v8 == 16777213)
          {
            *(a1 + 488) = 1;
          }

          else
          {
            v11 = *(a1 + 504);
            if (v11 <= v8)
            {
              BitArray::addSize((a1 + 496), v8 - v11 + 1);
            }

            *(*(a1 + 496) + 4 * (v8 >> 5)) |= 1 << v8;
          }
        }
      }
    }
  }

  DgnDelete<LMContextData>(v4);
  DgnPrimArray<unsigned int>::compact(a1 + 512);
  v12 = *(a1 + 504) + 1;
  while (1)
  {
    v13 = v12 - 2;
    if ((v12 - 2) < 0)
    {
      break;
    }

    --v12;
    if ((*(*(a1 + 496) + 4 * (v13 >> 5)) >> v13))
    {
      goto LABEL_21;
    }
  }

  v12 = 0;
LABEL_21:
  BitArray::setSize((a1 + 496), v12);
  BitArray::compact((a1 + 496));
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
}

uint64_t RecentBuffer::computeRemainderScore(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6.n128_f64[0] = LMStats::resetStats(v14);
  (*(**(a1 + 4) + 472))(v6);
  if (a1[130])
  {
    v7 = 0;
    v8 = 1.0;
    do
    {
      v9 = *(*(a1 + 64) + 4 * v7);
      v13 = 0;
      v8 = v8 - *(*(a1 + 56) + 8 * (*(**(a1 + 4) + 504))(*(a1 + 4), v9, 0xFFFFLL, v14, a4, 0, 0, 0, &v13));
      ++v7;
    }

    while (v7 < a1[130]);
  }

  else
  {
    v8 = 1.0;
  }

  (*(**(a1 + 4) + 480))(*(a1 + 4), a4);
  v10 = *a1;
  v11 = -20.0;
  if (v8 > 0.0)
  {
    v11 = DgnLog(v8);
    if (v11 < -20.0)
    {
      v11 = -20.0;
    }
  }

  return (-v10 * v11 + 0.5);
}

uint64_t RecentBuffer::computeRemainderScores(RecentBuffer *this)
{
  v2 = *(*(this + 1) + 388);
  v3 = *(this + 119);
  if (v2 > v3)
  {
    DgnPrimArray<short>::reallocElts(this + 464, v2 - v3, 0);
  }

  *(this + 118) = v2;
  v20[0] = 0;
  v4 = realloc_array(0, v20, 4uLL, 0, 0, 1);
  v23 = v20[0];
  v24 = 1;
  v25 = v4 >> 2;
  *v20 = xmmword_262891450;
  v21 = 3;
  v22 = 1;
  v5 = (*(**(this + 3) + 464))();
  v6 = (*(**(this + 4) + 464))(*(this + 4));
  LODWORD(v19[0]) = 0;
  if (v2)
  {
    for (i = 0; i < v2; LODWORD(v19[0]) = ++i)
    {
      v8 = *(this + 1);
      if (*(v8 + 388) > i && *(*(v8 + 104) + i) && *(*(v8 + 256) + 4 * i) == i)
      {
        if ((*(**(this + 2) + 112))(*(this + 2)))
        {
          if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 80, v19))
          {
            i = v19[0];
            *(*(this + 58) + 2 * LODWORD(v19[0])) = 20000;
          }

          else
          {
            (*(**(this + 3) + 408))(*(this + 3), 0, v5);
            *v23 = v19[0];
            v9 = RecentBuffer::computeRemainderScore(this, &v23, v20, v6);
            *(*(this + 58) + 2 * LODWORD(v19[0])) = v9;
            (*(**(this + 3) + 424))(*(this + 3), 0, v5);
            (*(**(this + 3) + 432))(*(this + 3), 0);
            i = v19[0];
          }

          continue;
        }

        i = v19[0];
      }

      *(*(this + 58) + 2 * i) = 20000;
    }
  }

  (*(**(this + 3) + 408))(*(this + 3), 0, v5);
  v19[0] = 0;
  v19[1] = 0;
  *(this + 242) = RecentBuffer::computeRemainderScore(this, v19, v20, v6);
  v13 = 0;
  v10 = realloc_array(0, &v13, 4uLL, 0, 0, 1);
  v16 = v13;
  v17 = 1;
  v18 = v10 >> 2;
  *v13 = 0xFFFFFF;
  *(this + 240) = RecentBuffer::computeRemainderScore(this, &v16, v20, v6);
  v26 = 0;
  v11 = realloc_array(0, &v26, 4uLL, 0, 0, 1);
  v13 = v26;
  v14 = 1;
  v15 = v11 >> 2;
  *v26 = 16777214;
  *(this + 241) = RecentBuffer::computeRemainderScore(this, &v13, v20, v6);
  *(this + 243) = 20000;
  (*(**(this + 3) + 424))(*(this + 3), 1, v5);
  (*(**(this + 3) + 432))(*(this + 3), 0);
  DgnDelete<LMContextData>(v6);
  DgnDelete<LMContextData>(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_262820688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void RecentBuffer::loadRecentBufferText(RecentBuffer *this, FileSpec **a2)
{
  if (!DFile::subFileExists(a2, 0x4Bu))
  {
    return;
  }

  DgnTextFileParser::DgnTextFileParser(v123);
  DgnTextFileParser::openDgnTextFileParser(v123, a2, 75, 1);
  DgnTextFileParser::verifyMatchingFileType(v123, "RecentBufferText");
  v122[0] = 0;
  v122[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v123, sRBT_Versions, v122);
  DgnTextFileParser::verifyFileVersionInRange(v123, v122);
  FileVersion = DgnTextFile::getFileVersion(v123);
  v107 = this;
  if (FileVersion != 0x200000013)
  {
    v119[0] = 0;
    DgnTextFile::getHeaderFieldUnsigned(v123, "Depth", v119, 1, 1u, 2u);
    v5 = *(this + 56) ? 2 : 1;
    if (v119[0] != v5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1384, "lm/recentb", 16, "%s", byte_262891468);
    }
  }

  v121 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v123, "RecentBufferLength", &v121, 1, 0, 0x7FFFFFFFu);
  if (v121 != *(this + 10))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1392, "lm/recentb", 10, "%s", &errStr_lm_recentb_E_RBT_BAD_RECENTBUFFERLENGTH);
  }

  DgnTextFileParser::verifyNoUnknownHeaderFields(v123);
  *v119 = 0;
  v120 = 0;
  DgnTextFile::getLineFieldNames(v123, v119);
  v118[0] = 0;
  v118[1] = 0;
  DgnTextFile::getLineFieldFormats(v123, v118);
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  if (FileVersion != 0x200000013)
  {
    NumLineFields = DgnTextFile::getNumLineFields(v123);
    if (*(this + 56) == 1)
    {
      if (DgnTextFile::getNumLineFields(v123) == 3)
      {
        goto LABEL_24;
      }
    }

    else if (NumLineFields == 2)
    {
LABEL_24:
      v11 = *v119;
      if (*(*v119 + 8))
      {
        v12 = **v119;
      }

      else
      {
        v12 = byte_262891468;
      }

      if (strcmp(v12, "EntryIndex"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1554, "lm/recentb", 7, "%.500s %.500s", "EntryIndex", v12);
        v11 = *v119;
      }

      if (*v118[0] != 3)
      {
        if (*(v11 + 2))
        {
          v13 = *v11;
        }

        else
        {
          v13 = byte_262891468;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1558, "lm/recentb", 8, "%.500s %.500s", v13, "Unsigned");
        v11 = *v119;
      }

      if (*(v11 + 6))
      {
        v16 = v11[2];
      }

      else
      {
        v16 = byte_262891468;
      }

      this = v107;
      if (strcmp(v16, "EntryValue1"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1563, "lm/recentb", 7, "%.500s %.500s", "EntryValue1", v16);
      }

      if (*(v118[0] + 4) != 1)
      {
        if (*(*v119 + 24))
        {
          v17 = *(*v119 + 16);
        }

        else
        {
          v17 = byte_262891468;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1567, "lm/recentb", 8, "%.500s %.500s", v17, "Integer");
      }

      if (*(v107 + 56) == 1)
      {
        if (*(*v119 + 40))
        {
          v20 = *(*v119 + 32);
        }

        else
        {
          v20 = byte_262891468;
        }

        if (strcmp(v20, "EntryValue2"))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1574, "lm/recentb", 7, "%.500s %.500s", "EntryValue2", v20);
        }

        if (*(v118[0] + 8) != 1)
        {
          if (*(*v119 + 40))
          {
            v21 = *(*v119 + 32);
          }

          else
          {
            v21 = byte_262891468;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1578, "lm/recentb", 8, "%.500s %.500s", v21, "Integer");
        }
      }

      v80 = 0;
      while (DgnTextFileParser::parseNextLine(v123))
      {
        LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v123, 0);
        LineFieldInteger = DgnTextFileParser::getLineFieldInteger(v123, 1u);
        if (v80 != LineFieldUnsigned)
        {
          CurrentLine = DgnTextFile::getCurrentLine(v123);
          if (*(CurrentLine + 8))
          {
            v84 = *CurrentLine;
          }

          else
          {
            v84 = byte_262891468;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1591, "lm/recentb", 9, "%.500s", v84);
        }

        if (LineFieldUnsigned >= *(v107 + 10))
        {
          v85 = DgnTextFile::getCurrentLine(v123);
          if (*(v85 + 8))
          {
            v86 = *v85;
          }

          else
          {
            v86 = byte_262891468;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1594, "lm/recentb", 9, "%.500s", v86);
        }

        if (*(v107 + 56))
        {
          v87 = DgnTextFileParser::getLineFieldInteger(v123, 2u);
          if (LineFieldInteger >= 0xFFFFF4)
          {
            if (LineFieldInteger == -2)
            {
              LineFieldInteger = 16777214;
            }

            else
            {
              if (LineFieldInteger != -1)
              {
                v88 = DgnTextFile::getCurrentLine(v123);
                if (*(v88 + 8))
                {
                  v89 = *v88;
                }

                else
                {
                  v89 = byte_262891468;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v89);
              }

              LineFieldInteger = 0xFFFFFF;
            }
          }

          if (v87 >= 0xFFFFF4)
          {
            if (v87 == -3)
            {
              v87 = 16777213;
            }

            else
            {
              if (v87 != -1)
              {
                v97 = DgnTextFile::getCurrentLine(v123);
                if (*(v97 + 8))
                {
                  v98 = *v97;
                }

                else
                {
                  v98 = byte_262891468;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v98);
              }

              v87 = 0xFFFFFF;
            }
          }

          if (LineFieldInteger < 0xFFFFF4)
          {
            v99 = *(v107 + 1);
            if (*(v99 + 388) <= LineFieldInteger || !*(*(v99 + 104) + LineFieldInteger))
            {
              v100 = DgnTextFile::getCurrentLine(v123);
              if (*(v100 + 8))
              {
                v101 = *v100;
              }

              else
              {
                v101 = byte_262891468;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1619, "lm/recentb", 9, "%.500s", v101);
            }
          }

          if (v87 < 0xFFFFF4)
          {
            v102 = *(v107 + 1);
            if (*(v102 + 388) <= v87 || !*(*(v102 + 104) + v87))
            {
              v103 = DgnTextFile::getCurrentLine(v123);
              if (*(v103 + 8))
              {
                v104 = *v103;
              }

              else
              {
                v104 = byte_262891468;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1623, "lm/recentb", 9, "%.500s", v104);
            }
          }

          v105 = v115;
          if (v115 == HIDWORD(v115))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v114, 1, 1);
            v105 = v115;
          }

          *(v114 + 4 * v105) = LineFieldInteger;
          LODWORD(v115) = v115 + 1;
          v96 = v117;
          if (v117 == HIDWORD(v117))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v116, 1, 1);
            v96 = v117;
          }

          LineFieldInteger = v87;
        }

        else
        {
          if (LineFieldInteger >= 0xFFFFF4)
          {
            if (LineFieldInteger == -3)
            {
              LineFieldInteger = 16777213;
            }

            else
            {
              if (LineFieldInteger != -1)
              {
                v93 = DgnTextFile::getCurrentLine(v123);
                if (*(v93 + 8))
                {
                  v94 = *v93;
                }

                else
                {
                  v94 = byte_262891468;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v94);
              }

              LineFieldInteger = 0xFFFFFF;
            }
          }

          else
          {
            v90 = *(v107 + 1);
            if (*(v90 + 388) <= LineFieldInteger || !*(*(v90 + 104) + LineFieldInteger))
            {
              v91 = DgnTextFile::getCurrentLine(v123);
              if (*(v91 + 8))
              {
                v92 = *v91;
              }

              else
              {
                v92 = byte_262891468;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1603, "lm/recentb", 9, "%.500s", v92);
            }
          }

          v95 = v115;
          if (v115 == HIDWORD(v115))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v114, 1, 1);
            v95 = v115;
          }

          *(v114 + 4 * v95) = 0xFFFFFF;
          LODWORD(v115) = v115 + 1;
          v96 = v117;
          if (v117 == HIDWORD(v117))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v116, 1, 1);
            v96 = v117;
          }
        }

        *(v116 + 4 * v96) = LineFieldInteger;
        LODWORD(v117) = v117 + 1;
        ++v80;
      }

      goto LABEL_211;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1545, "lm/recentb", 17, "%s", errStr_lm_recentb_E_RBT_BAD_NUMFIELDS);
    goto LABEL_24;
  }

  DgnTextFileParser::verifyMatchingNumFieldSpecs(v123, 4);
  v6 = *v119;
  v7 = byte_262891468;
  if (*(*v119 + 8))
  {
    v8 = **v119;
  }

  else
  {
    v8 = byte_262891468;
  }

  if (strcmp(v8, "TableName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1414, "lm/recentb", 7, "%.500s %.500s", "TableName", v8);
    v6 = *v119;
  }

  if (*v118[0])
  {
    if (*(v6 + 2))
    {
      v9 = *v6;
    }

    else
    {
      v9 = byte_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1418, "lm/recentb", 8, "%.500s %.500s", v9, "String");
    v6 = *v119;
  }

  if (*(v6 + 6))
  {
    v14 = v6[2];
  }

  else
  {
    v14 = byte_262891468;
  }

  if (strcmp(v14, "EntryIndex"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1422, "lm/recentb", 7, "%.500s %.500s", "EntryIndex", v14);
    v6 = *v119;
  }

  if (*(v118[0] + 4) != 3)
  {
    if (*(v6 + 6))
    {
      v15 = v6[2];
    }

    else
    {
      v15 = byte_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1426, "lm/recentb", 8, "%.500s %.500s", v15, "Unsigned");
    v6 = *v119;
  }

  if (*(v6 + 10))
  {
    v18 = v6[4];
  }

  else
  {
    v18 = byte_262891468;
  }

  if (strcmp(v18, "EntryValue1"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1430, "lm/recentb", 7, "%.500s %.500s", "EntryValue1", v18);
    v6 = *v119;
  }

  if (*(v118[0] + 8) != 1)
  {
    if (*(v6 + 10))
    {
      v19 = v6[4];
    }

    else
    {
      v19 = byte_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1434, "lm/recentb", 8, "%.500s %.500s", v19, "Integer");
    v6 = *v119;
  }

  if (*(v6 + 14))
  {
    v22 = v6[6];
  }

  else
  {
    v22 = byte_262891468;
  }

  if (strcmp(v22, "EntryValue2"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1438, "lm/recentb", 7, "%.500s %.500s", "EntryValue2", v22);
  }

  if (*(v118[0] + 12) != 1)
  {
    if (*(*v119 + 56))
    {
      v23 = *(*v119 + 48);
    }

    else
    {
      v23 = byte_262891468;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1442, "lm/recentb", 8, "%.500s %.500s", v23, "Integer");
  }

  v112 = 0;
  v113 = 0;
  DgnString::DgnString(&v110);
  v24 = 0;
  v25 = 1;
  while (DgnTextFileParser::parseNextLine(v123))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v123, 0);
    DgnString::DgnString(&v108, LineFieldString);
    v27 = DgnTextFileParser::getLineFieldUnsigned(v123, 1u);
    v28 = DgnTextFileParser::getLineFieldInteger(v123, 2u);
    v29 = DgnTextFileParser::getLineFieldInteger(v123, 3u);
    if (v25)
    {
      DgnString::operator=(&v110, &v108);
    }

    v106 = v24;
    v30 = v109;
    v31 = v108;
    v32 = v7;
    if (v109)
    {
      v7 = v108;
    }

    if (!strcmp(v7, "UnigramRecentBuffer"))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32;
      if (strcmp(v7, "BigramRecentBuffer"))
      {
        v34 = DgnTextFile::getCurrentLine(v123);
        if (*(v34 + 8))
        {
          v35 = *v34;
        }

        else
        {
          v35 = v32;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1468, "lm/recentb", 9, "%.500s", v35);
        v30 = v109;
        v31 = v108;
      }
    }

    v36 = v33;
    if (v30)
    {
      v37 = v31;
    }

    else
    {
      v37 = v33;
    }

    v38 = v111;
    v39 = v110;
    if (v111)
    {
      v40 = v110;
    }

    else
    {
      v40 = v36;
    }

    if (!strcmp(v37, v40))
    {
      v7 = v32;
    }

    else
    {
      v41 = strcmp(v37, "BigramRecentBuffer");
      v7 = v32;
      if (v41)
      {
        v42 = DgnTextFile::getCurrentLine(v123);
        if (*(v42 + 8))
        {
          v43 = *v42;
        }

        else
        {
          v43 = v32;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1472, "lm/recentb", 9, "%.500s", v43);
        v30 = v109;
        v31 = v108;
        v38 = v111;
        v39 = v110;
      }
    }

    if (v30)
    {
      v44 = v31;
    }

    else
    {
      v44 = v7;
    }

    if (v38)
    {
      v45 = v39;
    }

    else
    {
      v45 = v7;
    }

    this = v107;
    v46 = v106;
    if (strcmp(v44, v45))
    {
      DgnString::operator=(&v110, &v108);
      v46 = 0;
    }

    if (v27 != v46)
    {
      v47 = DgnTextFile::getCurrentLine(v123);
      if (*(v47 + 8))
      {
        v48 = *v47;
      }

      else
      {
        v48 = v7;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1482, "lm/recentb", 9, "%.500s", v48);
    }

    if (v27 >= *(v107 + 10))
    {
      v49 = DgnTextFile::getCurrentLine(v123);
      if (*(v49 + 8))
      {
        v50 = *v49;
      }

      else
      {
        v50 = v7;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1485, "lm/recentb", 9, "%.500s", v50);
    }

    if (v109)
    {
      v51 = v108;
    }

    else
    {
      v51 = v7;
    }

    if (strcmp(v51, "UnigramRecentBuffer"))
    {
      if ((*(v107 + 56) & 1) == 0)
      {
        v52 = DgnTextFile::getCurrentLine(v123);
        if (*(v52 + 8))
        {
          v53 = *v52;
        }

        else
        {
          v53 = v7;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1509, "lm/recentb", 9, "%.500s", v53);
      }

      if (v28 >= 0xFFFFF4)
      {
        if (v28 == -2)
        {
          v28 = 16777214;
        }

        else
        {
          if (v28 != -1)
          {
            v54 = DgnTextFile::getCurrentLine(v123);
            if (*(v54 + 8))
            {
              v55 = *v54;
            }

            else
            {
              v55 = v7;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v55);
          }

          v28 = 0xFFFFFF;
        }
      }

      if (v29 >= 0xFFFFF4)
      {
        if (v29 == -3)
        {
          v29 = 16777213;
        }

        else
        {
          if (v29 != -1)
          {
            v63 = DgnTextFile::getCurrentLine(v123);
            if (*(v63 + 8))
            {
              v64 = *v63;
            }

            else
            {
              v64 = v7;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v64);
          }

          v29 = 0xFFFFFF;
        }
      }

      if (v28 < 0xFFFFF4)
      {
        v65 = *(v107 + 1);
        if (*(v65 + 388) <= v28 || !*(*(v65 + 104) + v28))
        {
          v66 = DgnTextFile::getCurrentLine(v123);
          if (*(v66 + 8))
          {
            v67 = *v66;
          }

          else
          {
            v67 = v7;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1518, "lm/recentb", 9, "%.500s", v67);
        }
      }

      if (v29 < 0xFFFFF4)
      {
        v68 = *(v107 + 1);
        if (*(v68 + 388) <= v29 || !*(*(v68 + 104) + v29))
        {
          v69 = DgnTextFile::getCurrentLine(v123);
          if (*(v69 + 8))
          {
            v70 = *v69;
          }

          else
          {
            v70 = v7;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1522, "lm/recentb", 9, "%.500s", v70);
        }
      }

      v71 = v115;
      if (v115 == HIDWORD(v115))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v114, 1, 1);
        v71 = v115;
      }

      *(v114 + 4 * v71) = v28;
      LODWORD(v115) = v115 + 1;
      v72 = v117;
      if (v117 == HIDWORD(v117))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v116, 1, 1);
        v72 = v117;
      }

      v28 = v29;
LABEL_194:
      *(v116 + 4 * v72) = v28;
      LODWORD(v117) = v117 + 1;
      goto LABEL_195;
    }

    if (v29 != -1)
    {
      v56 = DgnTextFile::getCurrentLine(v123);
      if (*(v56 + 8))
      {
        v57 = *v56;
      }

      else
      {
        v57 = v7;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1491, "lm/recentb", 9, "%.500s", v57);
    }

    if (v28 >= 0xFFFFF4)
    {
      if (v28 == -3)
      {
        v28 = 16777213;
      }

      else
      {
        if (v28 != -1)
        {
          v61 = DgnTextFile::getCurrentLine(v123);
          if (*(v61 + 8))
          {
            v62 = *v61;
          }

          else
          {
            v62 = v7;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 321, "lm/recentb", 9, "%.500s", v62);
        }

        v28 = 0xFFFFFF;
      }
    }

    else
    {
      v58 = *(v107 + 1);
      if (*(v58 + 388) <= v28 || !*(*(v58 + 104) + v28))
      {
        v59 = DgnTextFile::getCurrentLine(v123);
        if (*(v59 + 8))
        {
          v60 = *v59;
        }

        else
        {
          v60 = v7;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1497, "lm/recentb", 9, "%.500s", v60);
      }
    }

    v73 = v113;
    if (v113 == HIDWORD(v113))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v112, 1, 1);
      v73 = v113;
    }

    v112[v73] = v28;
    LODWORD(v113) = v113 + 1;
    if ((*(v107 + 56) & 1) == 0)
    {
      v74 = v115;
      if (v115 == HIDWORD(v115))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v114, 1, 1);
        v74 = v115;
      }

      *(v114 + 4 * v74) = 0xFFFFFF;
      LODWORD(v115) = v115 + 1;
      v72 = v117;
      if (v117 == HIDWORD(v117))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v116, 1, 1);
        v72 = v117;
      }

      goto LABEL_194;
    }

LABEL_195:
    v24 = v46 + 1;
    DgnString::~DgnString(&v108);
    v25 = 0;
  }

  v75 = v113;
  if (v113 && *(this + 56) == 1)
  {
    if (v113 == v117)
    {
      while (v75 >= 1)
      {
        v76 = v112[v75 - 1];
        v77 = *(v116 - 4 + 4 * v75--);
        if (v76 != v77)
        {
          goto LABEL_209;
        }
      }
    }

    else
    {
LABEL_209:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/recentb.cpp", 1534, "lm/recentb", 13, "%s", &errStr_lm_recentb_E_UNI_BI_MISMATCH);
    }
  }

  DgnString::~DgnString(&v110);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v112);
LABEL_211:
  RecentBuffer::initRecentBuffer(this);
  RecentBuffer::initHeadClonesAndCommonWords(this);
  if (*(this + 72) == 1)
  {
    RecentBuffer::computeRemainderScores(this);
  }

  v110 = 0;
  v78 = realloc_array(0, &v110, 4uLL, 0, 0, 1);
  v112 = v110;
  LODWORD(v113) = 1;
  HIDWORD(v113) = v78 >> 2;
  if (v117)
  {
    v79 = 0;
    do
    {
      *v112 = *(v116 + 4 * v79);
      RecentBuffer::addToRecentInternal(v107, &v112, *(v114 + 4 * v79++));
    }

    while (v79 < v117);
  }

  RecentBuffer::computeAppearancesToScores(v107, *(v107 + 60) - *(v107 + 64) - (*(v107 + 62) + *(v107 + 63)));
  RecentBuffer::setWeights(v107);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v114);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v116);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v118);
  DgnArray<DgnString>::releaseAll(v119);
  DgnIArray<Utterance *>::~DgnIArray(v122);
  DgnTextFileParser::~DgnTextFileParser(v123);
}