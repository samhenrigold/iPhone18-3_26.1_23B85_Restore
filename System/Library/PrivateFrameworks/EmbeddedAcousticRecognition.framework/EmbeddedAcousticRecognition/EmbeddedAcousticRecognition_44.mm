uint64_t *std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::WordHypLattice::Arc *> const&>(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<kaldi::WordHypLattice::Arc *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Arc **,kaldi::WordHypLattice::Arc **>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::__emplace_back_slow_path<std::vector<kaldi::WordHypLattice::Arc *> const&>(char **a1, const void **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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
  std::vector<kaldi::WordHypLattice::Arc *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Arc **,kaldi::WordHypLattice::Arc **>((24 * v2), *a2, a2[1], (a2[1] - *a2) >> 3);
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
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B53698D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<kaldi::WordHypLattice::Arc *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Arc **,kaldi::WordHypLattice::Arc **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5369948(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<kaldi::WordHypLattice::Node *>::__init_with_size[abi:ne200100]<kaldi::WordHypLattice::Node **,kaldi::WordHypLattice::Node **>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53699C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (*(v7 + 132) < *(*result + 132))
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      v20 = a3 >> 1;
      v21 = &result[a3 >> 1];
      v22 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(result, v21, v22, a4);
        v23 = &v19[v20];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v23);
        v24 = &v19[a3];
        v25 = v23;
        while (v25 != v24)
        {
          v26 = *v25;
          v27 = *(*v25 + 132);
          v28 = *(*v19 + 132);
          if (v27 >= v28)
          {
            v26 = *v19;
          }

          v19 += v27 >= v28;
          v25 += v27 < v28;
          *v6 = v26;
          v6 += 8;
          if (v19 == v23)
          {
            while (v25 != v24)
            {
              v30 = *v25++;
              *v6 = v30;
              v6 += 8;
            }

            return result;
          }
        }

        while (v19 != v23)
        {
          v29 = *v19++;
          *v6 = v29;
          v6 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(result, v21, v22, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v19, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v19, a5);
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      if (result + 1 != a2)
      {
        v11 = 0;
        v12 = result;
        do
        {
          v13 = *v12;
          v12 = v10;
          v14 = *v10;
          v15 = *(v14 + 132);
          if (v15 < *(v13 + 132))
          {
            v16 = v11;
            while (1)
            {
              *(result + v16 + 8) = v13;
              if (!v16)
              {
                break;
              }

              v13 = *(result + v16 - 8);
              v16 -= 8;
              if (v15 >= *(v13 + 132))
              {
                v17 = (result + v16 + 8);
                goto LABEL_16;
              }
            }

            v17 = result;
LABEL_16:
            *v17 = v14;
          }

          v10 = v12 + 1;
          v11 += 8;
        }

        while (v12 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_8:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *(v8 + 132);
      v10 = *(*result + 132);
      if (v9 >= v10)
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      if (v9 >= v10)
      {
        v6 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v20 = &result[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = &v6[a3 >> 1];
      while (v21 != a2)
      {
        v22 = *v21;
        v23 = *(*v21 + 132);
        v24 = *(*v6 + 132);
        if (v23 >= v24)
        {
          v22 = *v6;
        }

        v21 += v23 < v24;
        v6 += v23 >= v24;
        *v4++ = v22;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v26 = *v21++;
            *v4++ = v26;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v25 = *v6++;
        *v4++ = v25;
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (*(*v11 + 132) >= *(v16 + 132))
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = v15;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 8);
                if (*(*v11 + 132) >= *(v19 + 132))
                {
                  break;
                }

                *v17 = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            *v17 = *v11;
          }

          ++v11;
          v12 += 8;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v11 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = *&v12[v11];
        if (*(*a2 + 132) < *(v14 + 132))
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v53 = a3;
      __src = a6;
      v52 = a7;
      if (-v13 >= v9)
      {
        if (v13 == -1)
        {
          *&v12[v11] = *a2;
          *a2 = v14;
          return result;
        }

        v25 = v16 / 2;
        v26 = &v11[8 * (v16 / 2)];
        v18 = a2;
        if (a2 != a3)
        {
          v27 = (a3 - a2) >> 3;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[8 * (v27 >> 1)];
            v31 = *v29;
            v30 = v29 + 8;
            v27 += ~(v27 >> 1);
            if (*(v31 + 132) < *(*&v12[v26] + 132))
            {
              v18 = v30;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = (v18 - a2) >> 3;
        v19 = &v12[v26];
      }

      else
      {
        v17 = v9 / 2;
        v18 = &a2[8 * (v9 / 2)];
        v19 = a2;
        if ((a2 - v11) != v12)
        {
          v20 = (a2 - v11 - v12) >> 3;
          v19 = &v12[v11];
          do
          {
            v21 = v20 >> 1;
            v22 = &v19[8 * (v20 >> 1)];
            v24 = *v22;
            v23 = v22 + 8;
            v20 += ~(v20 >> 1);
            if (*(*v18 + 132) < *(v24 + 132))
            {
              v20 = v21;
            }

            else
            {
              v19 = v23;
            }
          }

          while (v20);
        }

        v25 = (v19 - v11 - v12) >> 3;
      }

      a4 = -(v25 + v13);
      v32 = v9 - v17;
      v33 = v25;
      v34 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v19, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v35 + v17 >= v9 - (v35 + v17) - v13)
      {
        v39 = v35;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(v34, v18, v53, a4, v32, __src, v52);
        v18 = v19;
        a7 = v52;
        v32 = v17;
        a6 = __src;
        a4 = v39;
        a3 = v36;
        v11 = &v12[v11];
      }

      else
      {
        v37 = v19;
        v38 = v17;
        a6 = __src;
        a7 = v52;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::WordHypLattice::GetTimeSortedNodes(void)::$_0 &,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(&v12[v11], v37, v34, v35, v38, __src, v52);
        v11 = v36;
        a3 = v53;
      }

      v9 = v32;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v11)
      {
        v43 = -a6;
        v44 = a6;
        v45 = v11;
        do
        {
          v46 = *v45;
          v45 += 8;
          *v44++ = v46;
          v43 -= 8;
        }

        while (v45 != a2);
        while (a2 != a3)
        {
          v47 = *a2;
          v48 = *(*a2 + 132);
          v49 = *(*a6 + 132);
          if (v48 >= v49)
          {
            v47 = *a6;
          }

          a2 += 8 * (v48 < v49);
          a6 += 8 * (v48 >= v49);
          *v11 = v47;
          v11 += 8;
          if (v44 == a6)
          {
            return result;
          }
        }

        return memmove(v11, a6, -(a6 + v43));
      }
    }

    else if (a2 != a3)
    {
      v40 = 0;
      do
      {
        *(a6 + v40) = *&a2[v40];
        v40 += 8;
      }

      while (&a2[v40] != a3);
      v41 = (a6 + v40);
      while (a2 != v11)
      {
        v42 = *(v41 - 1);
        if (*(v42 + 132) >= *(*(a2 - 1) + 132))
        {
          v41 -= 8;
        }

        else
        {
          v42 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v42;
        a3 -= 8;
        if (v41 == a6)
        {
          return result;
        }
      }

      if (v41 != a6)
      {
        v50 = -8;
        do
        {
          v51 = *(v41 - 1);
          v41 -= 8;
          *&a3[v50] = v51;
          v50 -= 8;
        }

        while (v41 != a6);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::WordHypLattice::Node **>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t *std::vector<kaldi::WordHypLattice::Node *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B536A398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,kaldi::WordHypLattice::Node *>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
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

void TTokenizerParamManager::TTokenizerParamManager(TTokenizerParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 0, a2);
  *v3 = &unk_1F2D0E5D8;
  v4 = (v3 + 17);
  TBoolParam::TBoolParam((v3 + 17), "S", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 384, "P", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 632, "T", "T", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 880, "A", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1128, "M", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1376, "T", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1624, "T", "A", 0, 1, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 1872, "S", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 2120, "M", "I", 0, 1, "1", "1");
  TStringParam::TStringParam(this + 2368, "C", "A", 0, "'", "1", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 3744, "C", "A", 0, &dword_1B5AF0374, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5120, "D", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5368, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5616, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 5864, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 6112, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 6360, "D", "B", 0, &dword_1B5AF0374, "1", "1");
  TBoolParam::TBoolParam(this + 7736, "C", "R", 0, 0, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 7984, "C", "S", 256, &dword_1B5AF0374, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 9360, "C", "W", 0, "x", "1", "1");
  TStringParam::TStringParam(this + 10736, "V", "T", 0, &dword_1B5AF0374, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12112, "U", "I", 0, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12360, "R", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12608, "C", "N", 0, 1, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 12856, "C", "T", 0, 0, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 13104, "D", "I", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 13352, "H", "S", 0, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 13600), "N", "I", 0, 0, 1000, 30, "9", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 13952), "M", "I", 0, 0, 1000, 5, "9", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 14304), "N", "W", 0, 0, 4, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 14656), "P", "T", 0, 0, 300, 0, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 15008, "P", "I", 0, 0, "9", "1");
  TBoolParam::TBoolParam(this + 15256, "A", "I", 0, 1, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 15504, "M", "I", 0, 1, "1", "1");
  TIntParam::TIntParam((this + 15752), "P", "T", 0, -1, 100, 10, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 16104), "C", "P", 0, 1, 256, 4, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 16456), "A", "P", 0, 1, 256, 4, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 16808), "P", "S", 0, -1, 100, 20, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 17160), "P", "S", 0, -1, 100, 30, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 17512), "P", "S", 0, -1, 100, 40, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 17864, "O", "O", 0, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 18112), "P", "S", 0, -1, 100, -1, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 18464), "P", "S", 0, -1, 100, 50, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 18816), "P", "S", 0, -1, 100, 60, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 19168, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19416, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19664, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19912, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 20160, "U", "I", 0, 0, "1", "1");
  TBoolParam::TBoolParam(this + 20408, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 20656, "L", "I", 0, 0, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 20904, "L", "I", 0, 0, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 21152), "M", "M", 0, 1, 100, 10, "1", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 21504, "L", "L", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 21752, "L", "L", 0, 0, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 22000, "D", "D", 32, 1, "9", &dword_1B5AF0374);
  TBoolParam::TBoolParam(this + 22248, "D", "D", 288, 1, "1", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 22496, "D", "D", 32, &dword_1B5AF0374, "9", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 23872, "D", "D", 288, &dword_1B5AF0374, "1", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 25248), "D", "D", 32, -1, 10, 5, "9", &dword_1B5AF0374);
  TIntParam::TIntParam((this + 25600), "D", "D", 288, -1, 10, 5, "1", &dword_1B5AF0374);
  TStringParam::TStringParam(this + 3244, "D");
  TStringParam::TStringParam(this + 3416, "D");
  TFloatParam::TFloatParam(this + 28704, "D", "D", 32, 0.0, "9", &dword_1B5AF0374);
  TFloatParam::TFloatParam(this + 29240, "D", "D", 288, 0.0, "1", &dword_1B5AF0374);
  TParamManager::add(this, v4);
  TParamManager::add(this, (this + 384));
  TParamManager::add(this, (this + 632));
  TParamManager::add(this, (this + 880));
  TParamManager::add(this, (this + 1128));
  TParamManager::add(this, (this + 1376));
  TParamManager::add(this, (this + 1624));
  TParamManager::add(this, (this + 1872));
  TParamManager::add(this, (this + 2120));
  TParamManager::add(this, (this + 2368));
  TParamManager::add(this, (this + 3744));
  TParamManager::add(this, (this + 5120));
  TParamManager::add(this, (this + 5368));
  TParamManager::add(this, (this + 5616));
  TParamManager::add(this, (this + 5864));
  TParamManager::add(this, (this + 6112));
  TParamManager::add(this, (this + 6360));
  TParamManager::add(this, (this + 7736));
  TParamManager::add(this, (this + 7984));
  TParamManager::add(this, (this + 9360));
  TParamManager::add(this, (this + 10736));
  TParamManager::add(this, (this + 12112));
  TParamManager::add(this, (this + 12360));
  TParamManager::add(this, (this + 12608));
  TParamManager::add(this, (this + 12856));
  TParamManager::add(this, (this + 13104));
  TParamManager::add(this, (this + 13352));
  TParamManager::add(this, (this + 13600));
  TParamManager::add(this, (this + 13952));
  TParamManager::add(this, (this + 14304));
  TParamManager::add(this, (this + 14656));
  TParamManager::add(this, (this + 15008));
  TParamManager::add(this, (this + 15256));
  TParamManager::add(this, (this + 15504));
  TParamManager::add(this, (this + 15752));
  TParamManager::add(this, (this + 16104));
  TParamManager::add(this, (this + 16456));
  TParamManager::add(this, (this + 16808));
  TParamManager::add(this, (this + 17160));
  TParamManager::add(this, (this + 17512));
  TParamManager::add(this, (this + 17864));
  TParamManager::add(this, (this + 18112));
  TParamManager::add(this, (this + 18464));
  TParamManager::add(this, (this + 18816));
  TParamManager::add(this, (this + 19168));
  TParamManager::add(this, (this + 19416));
  TParamManager::add(this, (this + 19664));
  TParamManager::add(this, (this + 19912));
  TParamManager::add(this, (this + 20160));
  TParamManager::add(this, (this + 20408));
  TParamManager::add(this, (this + 20656));
  TParamManager::add(this, (this + 20904));
  TParamManager::add(this, (this + 21152));
  TParamManager::add(this, (this + 21504));
  TParamManager::add(this, (this + 21752));
  TParamManager::add(this, (this + 22000));
  TParamManager::add(this, (this + 22248));
  TParamManager::add(this, (this + 22496));
  TParamManager::add(this, (this + 23872));
  TParamManager::add(this, (this + 25248));
  TParamManager::add(this, (this + 25600));
  MEMORY[0x1B8C84940](this + 25992, "D");
  MEMORY[0x1B8C84940](this + 26016, "9");
  MEMORY[0x1B8C84940](this + 26040, &dword_1B5AF0374);
  *(this + 3258) |= 0x20uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v11, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  v5 = 0;
  v6 = "a";
  do
  {
    MEMORY[0x1B8C84940](&v11[0][v5], v6);
    v6 += wcslen(v6) + 1;
    ++v5;
  }

  while (v5 != 4);
  TStringParam::setAllowables(this + 25952, v11, 0, 0);
  TStringParam::setOriginal(this + 3244, 0, &dword_1B5AF0374);
  TParamManager::add(this, (this + 25952));
  v12 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  MEMORY[0x1B8C84940](this + 27368, "D");
  MEMORY[0x1B8C84940](this + 27392, "1");
  MEMORY[0x1B8C84940](this + 27416, &dword_1B5AF0374);
  *(this + 3430) |= 0x120uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v11, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  v7 = 0;
  v8 = "a";
  do
  {
    MEMORY[0x1B8C84940](&v11[0][v7], v8);
    v8 += wcslen(v8) + 1;
    ++v7;
  }

  while (v7 != 4);
  TStringParam::setAllowables(this + 27328, v11, 0, 0);
  TStringParam::setOriginal(this + 3416, 0, &dword_1B5AF0374);
  TParamManager::add(this, (this + 27328));
  v12 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  TParamManager::add(this, (this + 28704));
  TParamManager::add(this, (this + 29240));
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(this + 1862) = v9;
  *(this + 1861) = v9;
}

void sub_1B536B7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  TParam::~TParam((v13 + v19));
  TParam::~TParam((v13 + v18));
  TStringParam::~TStringParam((v13 + v17));
  TStringParam::~TStringParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TParam::~TParam((v13 + v20));
  TStringParam::~TStringParam(v13 + 2984);
  TStringParam::~TStringParam(v13 + 2812);
  TBoolParam::~TBoolParam(v13 + 2781);
  TBoolParam::~TBoolParam(v13 + 2750);
  TBoolParam::~TBoolParam(v13 + 2719);
  TBoolParam::~TBoolParam(v13 + 2688);
  TParam::~TParam(v13 + 2644);
  TBoolParam::~TBoolParam(v13 + 2613);
  TBoolParam::~TBoolParam(v13 + 2582);
  TBoolParam::~TBoolParam(v13 + 2551);
  TBoolParam::~TBoolParam(v13 + 2520);
  TBoolParam::~TBoolParam(v13 + 2489);
  TBoolParam::~TBoolParam(v13 + 2458);
  TBoolParam::~TBoolParam(v13 + 2427);
  TBoolParam::~TBoolParam(v13 + 2396);
  TParam::~TParam(v13 + 2352);
  TParam::~TParam(v13 + 2308);
  TParam::~TParam(v13 + 2264);
  TBoolParam::~TBoolParam(v13 + 2233);
  TParam::~TParam(v13 + 2189);
  TParam::~TParam(v13 + 2145);
  TParam::~TParam(v13 + 2101);
  TParam::~TParam(v13 + 2057);
  TParam::~TParam(v13 + 2013);
  TParam::~TParam(v13 + 1969);
  TBoolParam::~TBoolParam(v13 + 1938);
  TBoolParam::~TBoolParam(v13 + 1907);
  TBoolParam::~TBoolParam(v13 + 1876);
  TParam::~TParam(v13 + 1832);
  TParam::~TParam(v13 + 1788);
  TParam::~TParam(v13 + 1744);
  TParam::~TParam(v13 + 1700);
  TBoolParam::~TBoolParam(v13 + 1669);
  TBoolParam::~TBoolParam(v13 + 1638);
  TBoolParam::~TBoolParam(v13 + 1607);
  TBoolParam::~TBoolParam(v13 + 1576);
  TBoolParam::~TBoolParam(v13 + 1545);
  TBoolParam::~TBoolParam(v13 + 1514);
  TStringParam::~TStringParam(v13 + 1342);
  TStringParam::~TStringParam(v13 + 1170);
  TStringParam::~TStringParam(v13 + 998);
  TBoolParam::~TBoolParam(v13 + 967);
  TStringParam::~TStringParam(v13 + 795);
  TBoolParam::~TBoolParam(v13 + 764);
  TBoolParam::~TBoolParam(v13 + 733);
  TBoolParam::~TBoolParam(v13 + 702);
  TBoolParam::~TBoolParam(v13 + 671);
  TBoolParam::~TBoolParam(v13 + 640);
  TStringParam::~TStringParam(v13 + 468);
  TStringParam::~TStringParam(v13 + 296);
  TBoolParam::~TBoolParam(v13 + 265);
  TBoolParam::~TBoolParam(v13 + 234);
  TBoolParam::~TBoolParam(v13 + 203);
  TBoolParam::~TBoolParam(v13 + 172);
  TBoolParam::~TBoolParam(v13 + 141);
  TBoolParam::~TBoolParam(v13 + 110);
  TBoolParam::~TBoolParam(v13 + 79);
  TBoolParam::~TBoolParam(v13 + 48);
  TBoolParam::~TBoolParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

void TParamManager::TParamManager(TParamManager *this, char a2, const TLocaleInfo *a3)
{
  *(this + 2) = 0;
  *this = &unk_1F2D39C58;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 13) = 0;
  *(this + 15) = a3;
  *(this + 8) = a2;
  TParamManager::newConfig(this, "H", 0xFFFFFFFFFFFFFFFFLL);
  TParamManager::newConfig(this, "R", 0);
  *(this + 16) = -1;
}

void sub_1B536BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v9 = v6;
  std::__tree<std::string>::destroy(v5, *v8);
  std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<int>::destroy(v4, *v7);
  v11 = *v9;
  if (*v9)
  {
    *(v3 + 24) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void TStringParam::~TStringParam(void **this)
{
  *this = &unk_1F2D0E620;
  v3 = this + 169;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
}

{
  *this = &unk_1F2D0E620;
  v3 = this + 169;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 166;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 163;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = 144;
  do
  {
    if (SHIBYTE(this[v2 + 18]) < 0)
    {
      operator delete(this[v2 + 16]);
    }

    v2 -= 3;
  }

  while (v2 * 8);
  TParam::~TParam(this);
  MEMORY[0x1B8C85350]();
}

void TBoolParam::~TBoolParam(void **this)
{
  v2 = 0;
  *this = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
  }

  while (v2 != -6);

  TParam::~TParam(this);
}

{
  v2 = 0;
  *this = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v2 + 30]) < 0)
    {
      operator delete(this[v2 + 28]);
    }

    v2 -= 3;
  }

  while (v2 != -6);

  TParam::~TParam(this);
}

void TTokenizerParamManager::notifyChange(TTokenizerParamManager *this, const TParam *a2)
{
  v2 = (this + 3744);
  if ((this + 3744) == a2)
  {
    v3 = TStringParam::get((this + 3744));
    if (wcslen(v3))
    {
      v4 = TStringParam::get(v2);
      loggableUnicode(v4, __p);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      tknPrintf("Warning: CharacterMapping contains an odd number of characters: <%s>\n", v5, v6, v7);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1B536BF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TTokenizerParamManager::upgradeParam(void *this, const TParam *a2)
{
  v2 = this;
  v3 = (this + 2396);
  if (this + 2396 == a2)
  {
    ActiveConfigHandle = TParam::getActiveConfigHandle((this + 2396));
    ValidConfig = TParam::getValidConfig(v3, ActiveConfigHandle);
    v6 = 2101;
    if (*(v2 + ValidConfig + 19320) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[16];
    v2[2115] &= ~(1 << (v7 + 33));
LABEL_20:

    return TParam::notifyChange(&v2[v6], v7);
  }

  if (this + 2427 == a2)
  {
    v8 = TParam::getActiveConfigHandle((this + 2427));
    v6 = 2145;
    if (*(v2 + TParam::getValidConfig((v2 + 2427), v8) + 19568) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[16];
    v2[2159] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2458 == a2)
  {
    v9 = TParam::getActiveConfigHandle((this + 2458));
    v6 = 2189;
    if (*(v2 + TParam::getValidConfig((v2 + 2458), v9) + 19816) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[16];
    v2[2203] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2520 != a2)
  {
    if (this + 2551 != a2)
    {
      if (this + 2489 != a2)
      {
        return this;
      }

      v16 = TParam::getActiveConfigHandle((this + 2489));
      v6 = 2352;
      if (*(v2 + TParam::getValidConfig((v2 + 2489), v16) + 20064) == 1)
      {
        v7 = v2[16];
        v2[2366] &= ~(1 << (v7 + 33));
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v15 = TParam::getActiveConfigHandle((this + 2551));
    v6 = 2308;
    if (*(v2 + TParam::getValidConfig((v2 + 2551), v15) + 20560) == 1)
    {
      v7 = v2[16];
      v2[2322] &= ~(1 << (v7 + 33));
      goto LABEL_20;
    }

LABEL_23:
    v12 = TParam::getActiveConfigHandle(&v2[v6]);
    goto LABEL_24;
  }

  v10 = TParam::getActiveConfigHandle((this + 2520));
  v11 = *(v2 + TParam::getValidConfig((v2 + 2520), v10) + 20312);
  v6 = 2264;
  v12 = TParam::getActiveConfigHandle((v2 + 2264));
  if (v11 != 1)
  {
LABEL_24:
    v13 = &v2[v6];
    v14 = -1;
    goto LABEL_25;
  }

  v13 = (v2 + 2264);
  v14 = 45;
LABEL_25:

  return TIntParam::set(v13, v12, v14);
}

uint64_t TTokenizerParamManager::initializeParamConfigs(TTokenizerParamManager *this)
{
  Config = TParamManager::getConfig(this, "A");
  *(this + 3723) = Config;
  if (Config == -1)
  {
    *(this + 3723) = TParamManager::newConfig(this, "A", 1);
  }

  v3 = TParamManager::getConfig(this, "B");
  *(this + 3724) = v3;
  if (v3 == -1)
  {
    v4 = TParamManager::newConfig(this, "B", 1);
    *(this + 3724) = v4;
    *(this + v4 + 18016) = 1;
    *(this + 2247) |= 1 << (v4 + 9);
    TParam::notifyChange(this + 17864, v4);
  }

  v5 = TParamManager::getConfig(this, "A");
  *(this + 3725) = v5;
  if (v5 == -1)
  {
    v6 = TParamManager::newConfig(this, "A", 1);
    *(this + 3725) = v6;
    TIntParam::setOriginal((this + 14304), v6, 0);
    TIntParam::setOriginal((this + 17512), *(this + 3725), -1);
    TIntParam::setOriginal((this + 18112), *(this + 3725), -1);
    TIntParam::setOriginal((this + 18464), *(this + 3725), -1);
    TIntParam::setOriginal((this + 18816), *(this + 3725), -1);
  }

  result = TParamManager::getConfig(this, "F");
  *(this + 3722) = result;
  if (result == -1)
  {
    v8 = TParamManager::newConfig(this, "F", *(this + 3723));
    *(this + 3722) = v8;
    *(this + v8 + 784) = 1;
    *(this + 93) |= 1 << (v8 + 9);

    return TParam::notifyChange(this + 632, v8);
  }

  return result;
}

uint64_t TParamManager::getConfig(uint64_t a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__dst, v6);
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, a2, 4 * v4);
  }

  *(&__dst + v5) = 0;
  v7 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(a1 + 88, &__dst);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  if (a1 + 96 == v7)
  {
    return -1;
  }

  else
  {
    return *(v7 + 56);
  }
}

void sub_1B536C4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TTokenizerParamManager::~TTokenizerParamManager(void **this)
{
  TTokenizerParamManager::~TTokenizerParamManager(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0E5D8;
  TParam::~TParam(this + 3655);
  TParam::~TParam(this + 3588);
  this[3416] = &unk_1F2D0E620;
  v86 = this + 3585;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3582;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3579;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v2 = this + 3576;
  v3 = -1152;
  do
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  TParam::~TParam(this + 3416);
  this[3244] = &unk_1F2D0E620;
  v86 = this + 3413;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3410;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3407;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v4 = this + 3404;
  v5 = -1152;
  do
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  TParam::~TParam(this + 3244);
  TParam::~TParam(this + 3200);
  TParam::~TParam(this + 3156);
  this[2984] = &unk_1F2D0E620;
  v86 = this + 3153;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3150;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3147;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v6 = this + 3144;
  v7 = -1152;
  do
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
  TParam::~TParam(this + 2984);
  this[2812] = &unk_1F2D0E620;
  v86 = this + 2981;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 2978;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 2975;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v8 = this + 2972;
  v9 = -1152;
  do
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    v8 -= 3;
    v9 += 24;
  }

  while (v9);
  TParam::~TParam(this + 2812);
  this[2781] = &unk_1F2D39CC8;
  v10 = this + 2809;
  v11 = -48;
  do
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    v10 -= 3;
    v11 += 24;
  }

  while (v11);
  TParam::~TParam(this + 2781);
  this[2750] = &unk_1F2D39CC8;
  v12 = this + 2778;
  v13 = -48;
  do
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  TParam::~TParam(this + 2750);
  this[2719] = &unk_1F2D39CC8;
  v14 = this + 2747;
  v15 = -48;
  do
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v14 -= 3;
    v15 += 24;
  }

  while (v15);
  TParam::~TParam(this + 2719);
  this[2688] = &unk_1F2D39CC8;
  v16 = this + 2716;
  v17 = -48;
  do
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 3;
    v17 += 24;
  }

  while (v17);
  TParam::~TParam(this + 2688);
  TParam::~TParam(this + 2644);
  this[2613] = &unk_1F2D39CC8;
  v18 = this + 2641;
  v19 = -48;
  do
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 3;
    v19 += 24;
  }

  while (v19);
  TParam::~TParam(this + 2613);
  this[2582] = &unk_1F2D39CC8;
  v20 = this + 2610;
  v21 = -48;
  do
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    v20 -= 3;
    v21 += 24;
  }

  while (v21);
  TParam::~TParam(this + 2582);
  this[2551] = &unk_1F2D39CC8;
  v22 = this + 2579;
  v23 = -48;
  do
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    v22 -= 3;
    v23 += 24;
  }

  while (v23);
  TParam::~TParam(this + 2551);
  this[2520] = &unk_1F2D39CC8;
  v24 = this + 2548;
  v25 = -48;
  do
  {
    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    v24 -= 3;
    v25 += 24;
  }

  while (v25);
  TParam::~TParam(this + 2520);
  this[2489] = &unk_1F2D39CC8;
  v26 = this + 2517;
  v27 = -48;
  do
  {
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    v26 -= 3;
    v27 += 24;
  }

  while (v27);
  TParam::~TParam(this + 2489);
  this[2458] = &unk_1F2D39CC8;
  v28 = this + 2486;
  v29 = -48;
  do
  {
    if (*(v28 + 23) < 0)
    {
      operator delete(*v28);
    }

    v28 -= 3;
    v29 += 24;
  }

  while (v29);
  TParam::~TParam(this + 2458);
  this[2427] = &unk_1F2D39CC8;
  v30 = this + 2455;
  v31 = -48;
  do
  {
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v30 -= 3;
    v31 += 24;
  }

  while (v31);
  TParam::~TParam(this + 2427);
  this[2396] = &unk_1F2D39CC8;
  v32 = this + 2424;
  v33 = -48;
  do
  {
    if (*(v32 + 23) < 0)
    {
      operator delete(*v32);
    }

    v32 -= 3;
    v33 += 24;
  }

  while (v33);
  TParam::~TParam(this + 2396);
  TParam::~TParam(this + 2352);
  TParam::~TParam(this + 2308);
  TParam::~TParam(this + 2264);
  this[2233] = &unk_1F2D39CC8;
  v34 = this + 2261;
  v35 = -48;
  do
  {
    if (*(v34 + 23) < 0)
    {
      operator delete(*v34);
    }

    v34 -= 3;
    v35 += 24;
  }

  while (v35);
  TParam::~TParam(this + 2233);
  TParam::~TParam(this + 2189);
  TParam::~TParam(this + 2145);
  TParam::~TParam(this + 2101);
  TParam::~TParam(this + 2057);
  TParam::~TParam(this + 2013);
  TParam::~TParam(this + 1969);
  this[1938] = &unk_1F2D39CC8;
  v36 = this + 1966;
  v37 = -48;
  do
  {
    if (*(v36 + 23) < 0)
    {
      operator delete(*v36);
    }

    v36 -= 3;
    v37 += 24;
  }

  while (v37);
  TParam::~TParam(this + 1938);
  this[1907] = &unk_1F2D39CC8;
  v38 = this + 1935;
  v39 = -48;
  do
  {
    if (*(v38 + 23) < 0)
    {
      operator delete(*v38);
    }

    v38 -= 3;
    v39 += 24;
  }

  while (v39);
  TParam::~TParam(this + 1907);
  this[1876] = &unk_1F2D39CC8;
  v40 = this + 1904;
  v41 = -48;
  do
  {
    if (*(v40 + 23) < 0)
    {
      operator delete(*v40);
    }

    v40 -= 3;
    v41 += 24;
  }

  while (v41);
  TParam::~TParam(this + 1876);
  TParam::~TParam(this + 1832);
  TParam::~TParam(this + 1788);
  TParam::~TParam(this + 1744);
  TParam::~TParam(this + 1700);
  this[1669] = &unk_1F2D39CC8;
  v42 = this + 1697;
  v43 = -48;
  do
  {
    if (*(v42 + 23) < 0)
    {
      operator delete(*v42);
    }

    v42 -= 3;
    v43 += 24;
  }

  while (v43);
  TParam::~TParam(this + 1669);
  this[1638] = &unk_1F2D39CC8;
  v44 = this + 1666;
  v45 = -48;
  do
  {
    if (*(v44 + 23) < 0)
    {
      operator delete(*v44);
    }

    v44 -= 3;
    v45 += 24;
  }

  while (v45);
  TParam::~TParam(this + 1638);
  this[1607] = &unk_1F2D39CC8;
  v46 = this + 1635;
  v47 = -48;
  do
  {
    if (*(v46 + 23) < 0)
    {
      operator delete(*v46);
    }

    v46 -= 3;
    v47 += 24;
  }

  while (v47);
  TParam::~TParam(this + 1607);
  this[1576] = &unk_1F2D39CC8;
  v48 = this + 1604;
  v49 = -48;
  do
  {
    if (*(v48 + 23) < 0)
    {
      operator delete(*v48);
    }

    v48 -= 3;
    v49 += 24;
  }

  while (v49);
  TParam::~TParam(this + 1576);
  this[1545] = &unk_1F2D39CC8;
  v50 = this + 1573;
  v51 = -48;
  do
  {
    if (*(v50 + 23) < 0)
    {
      operator delete(*v50);
    }

    v50 -= 3;
    v51 += 24;
  }

  while (v51);
  TParam::~TParam(this + 1545);
  this[1514] = &unk_1F2D39CC8;
  v52 = this + 1542;
  v53 = -48;
  do
  {
    if (*(v52 + 23) < 0)
    {
      operator delete(*v52);
    }

    v52 -= 3;
    v53 += 24;
  }

  while (v53);
  TParam::~TParam(this + 1514);
  this[1342] = &unk_1F2D0E620;
  v86 = this + 1511;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1508;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1505;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v54 = this + 1502;
  v55 = -1152;
  do
  {
    if (*(v54 + 23) < 0)
    {
      operator delete(*v54);
    }

    v54 -= 3;
    v55 += 24;
  }

  while (v55);
  TParam::~TParam(this + 1342);
  this[1170] = &unk_1F2D0E620;
  v86 = this + 1339;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1336;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1333;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v56 = this + 1330;
  v57 = -1152;
  do
  {
    if (*(v56 + 23) < 0)
    {
      operator delete(*v56);
    }

    v56 -= 3;
    v57 += 24;
  }

  while (v57);
  TParam::~TParam(this + 1170);
  this[998] = &unk_1F2D0E620;
  v86 = this + 1167;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1164;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1161;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v58 = this + 1158;
  v59 = -1152;
  do
  {
    if (*(v58 + 23) < 0)
    {
      operator delete(*v58);
    }

    v58 -= 3;
    v59 += 24;
  }

  while (v59);
  TParam::~TParam(this + 998);
  this[967] = &unk_1F2D39CC8;
  v60 = this + 995;
  v61 = -48;
  do
  {
    if (*(v60 + 23) < 0)
    {
      operator delete(*v60);
    }

    v60 -= 3;
    v61 += 24;
  }

  while (v61);
  TParam::~TParam(this + 967);
  this[795] = &unk_1F2D0E620;
  v86 = this + 964;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 961;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 958;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v62 = this + 955;
  v63 = -1152;
  do
  {
    if (*(v62 + 23) < 0)
    {
      operator delete(*v62);
    }

    v62 -= 3;
    v63 += 24;
  }

  while (v63);
  TParam::~TParam(this + 795);
  this[764] = &unk_1F2D39CC8;
  v64 = this + 792;
  v65 = -48;
  do
  {
    if (*(v64 + 23) < 0)
    {
      operator delete(*v64);
    }

    v64 -= 3;
    v65 += 24;
  }

  while (v65);
  TParam::~TParam(this + 764);
  this[733] = &unk_1F2D39CC8;
  v66 = this + 761;
  v67 = -48;
  do
  {
    if (*(v66 + 23) < 0)
    {
      operator delete(*v66);
    }

    v66 -= 3;
    v67 += 24;
  }

  while (v67);
  TParam::~TParam(this + 733);
  this[702] = &unk_1F2D39CC8;
  v68 = this + 730;
  v69 = -48;
  do
  {
    if (*(v68 + 23) < 0)
    {
      operator delete(*v68);
    }

    v68 -= 3;
    v69 += 24;
  }

  while (v69);
  TParam::~TParam(this + 702);
  this[671] = &unk_1F2D39CC8;
  v70 = this + 699;
  v71 = -48;
  do
  {
    if (*(v70 + 23) < 0)
    {
      operator delete(*v70);
    }

    v70 -= 3;
    v71 += 24;
  }

  while (v71);
  TParam::~TParam(this + 671);
  this[640] = &unk_1F2D39CC8;
  v72 = this + 668;
  v73 = -48;
  do
  {
    if (*(v72 + 23) < 0)
    {
      operator delete(*v72);
    }

    v72 -= 3;
    v73 += 24;
  }

  while (v73);
  TParam::~TParam(this + 640);
  this[468] = &unk_1F2D0E620;
  v86 = this + 637;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 634;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 631;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v74 = this + 628;
  v75 = -1152;
  do
  {
    if (*(v74 + 23) < 0)
    {
      operator delete(*v74);
    }

    v74 -= 3;
    v75 += 24;
  }

  while (v75);
  TParam::~TParam(this + 468);
  this[296] = &unk_1F2D0E620;
  v86 = this + 465;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 462;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 459;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v86);
  for (i = 0; i != -144; i -= 3)
  {
    if (SHIBYTE(this[i + 458]) < 0)
    {
      operator delete(this[i + 456]);
    }
  }

  TParam::~TParam(this + 296);
  v77 = 0;
  this[265] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v77 + 295]) < 0)
    {
      operator delete(this[v77 + 293]);
    }

    v77 -= 3;
  }

  while (v77 != -6);
  TParam::~TParam(this + 265);
  v78 = 0;
  this[234] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v78 + 264]) < 0)
    {
      operator delete(this[v78 + 262]);
    }

    v78 -= 3;
  }

  while (v78 != -6);
  TParam::~TParam(this + 234);
  v79 = 0;
  this[203] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v79 + 233]) < 0)
    {
      operator delete(this[v79 + 231]);
    }

    v79 -= 3;
  }

  while (v79 != -6);
  TParam::~TParam(this + 203);
  v80 = 0;
  this[172] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v80 + 202]) < 0)
    {
      operator delete(this[v80 + 200]);
    }

    v80 -= 3;
  }

  while (v80 != -6);
  TParam::~TParam(this + 172);
  v81 = 0;
  this[141] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v81 + 171]) < 0)
    {
      operator delete(this[v81 + 169]);
    }

    v81 -= 3;
  }

  while (v81 != -6);
  TParam::~TParam(this + 141);
  v82 = 0;
  this[110] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v82 + 140]) < 0)
    {
      operator delete(this[v82 + 138]);
    }

    v82 -= 3;
  }

  while (v82 != -6);
  TParam::~TParam(this + 110);
  v83 = 0;
  this[79] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v83 + 109]) < 0)
    {
      operator delete(this[v83 + 107]);
    }

    v83 -= 3;
  }

  while (v83 != -6);
  TParam::~TParam(this + 79);
  v84 = 0;
  this[48] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v84 + 78]) < 0)
    {
      operator delete(this[v84 + 76]);
    }

    v84 -= 3;
  }

  while (v84 != -6);
  TParam::~TParam(this + 48);
  v85 = 0;
  this[17] = &unk_1F2D39CC8;
  do
  {
    if (SHIBYTE(this[v85 + 47]) < 0)
    {
      operator delete(this[v85 + 45]);
    }

    v85 -= 3;
  }

  while (v85 != -6);
  TParam::~TParam(this + 17);
  TParamManager::~TParamManager(this);
}

void std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned long,std::wstring>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<unsigned long,std::wstring>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t TBoolParam::TBoolParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = TParam::TParam(a1, 0, a2, a3, a4, a6, a7);
  *v9 = &unk_1F2D39CC8;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 152) = a5;
  *(v9 + 112) |= 0x200uLL;
  TParam::notifyChange(v9, 0);
  return a1;
}

void sub_1B536C654(_Unwind_Exception *a1)
{
  TBoolParam::TBoolParam(v1);
  TParam::~TParam(v1);
  _Unwind_Resume(a1);
}

uint64_t TFloatParam::TFloatParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7)
{
  v9 = TParam::TParam(a1, 3, a2, a3, a4, a6, a7);
  *v9 = &unk_1F2D39D08;
  *(v9 + 152) = a5;
  *(v9 + 112) |= 0x200uLL;
  TParam::notifyChange(v9, 0);
  return a1;
}

const void **TStringParam::getValue(TParam *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 24 * TParam::getValidConfig(a1, a2);
  v5 = (v4 + 152);
  if (v4[175] < 0)
  {
    v5 = *v5;
  }

  v6 = 0;
  *(a3 + 16) = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a3, 0, v5, v6 - 1);
}

const void **TStringParam::getValueOriginal(TParam *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 24 * TParam::getValidOriginalConfig(a1, a2);
  v5 = (v4 + 152);
  if (v4[175] < 0)
  {
    v5 = *v5;
  }

  v6 = 0;
  *(a3 + 16) = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a3, 0, v5, v6 - 1);
}

uint64_t std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v7 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (!v10 || (v8 >= 0 ? (v11 = (v3 + 32)) : (v11 = *(v3 + 32)), v6 >= 0 ? (v12 = a2) : (v12 = *a2), (v13 = wmemcmp(v11, v12, v10)) == 0))
    {
      if (v9 < v7)
      {
        v13 = -1;
      }

      else
      {
        v13 = v7 < v9;
      }
    }

    if (v13 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v13 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v14 = *(v5 + 55);
  if (v14 >= 0)
  {
    v15 = *(v5 + 55);
  }

  else
  {
    v15 = *(v5 + 40);
  }

  v16 = *(a2 + 23);
  if (v16 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  if (v15 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (v18 && (v16 >= 0 ? (v19 = a2) : (v19 = *a2), v14 >= 0 ? (v20 = (v5 + 32)) : (v20 = *(v5 + 32)), (v21 = wmemcmp(v19, v20, v18)) != 0))
  {
    if (v21 < 0)
    {
      return v2;
    }
  }

  else if (v17 < v15)
  {
    return v2;
  }

  return v5;
}

uint64_t *std::vector<std::wstring>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

id EARHelpers::getValueFromLeaf(EARHelpers *this, const quasar::PTree *a2)
{
  DataType = quasar::PTree::getDataType(this);
  switch(DataType)
  {
    case 3:
      v4 = [MEMORY[0x1E696AD98] numberWithBool:quasar::PTree::getBool(this)];
      break;
    case 2:
      v4 = [MEMORY[0x1E696AD98] numberWithInt:quasar::PTree::getInt<int>(this)];
      break;
    case 1:
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:quasar::PTree::getDouble(this)];
      break;
    default:
      v5 = MEMORY[0x1E696AEC0];
      String = quasar::PTree::getString(this);
      if (*(String + 23) >= 0)
      {
        v7 = String;
      }

      else
      {
        v7 = *String;
      }

      v4 = [v5 stringWithUTF8String:v7];
      break;
  }

  return v4;
}

id EARHelpers::dictFromPTreeHelper(EARHelpers *this, const quasar::PTree *a2)
{
  if (quasar::PTree::isLeaf(this))
  {
    v5 = EARHelpers::getValueFromLeaf(this, v4);
  }

  else
  {
    if (quasar::PTree::isList(this))
    {
      EARHelpers::arrayFromPTree(this, a2);
    }

    else
    {
      EARHelpers::dictFromPTree(this, a2);
    }
    v5 = ;
  }

  return v5;
}

id EARHelpers::arrayFromPTree(EARHelpers *this, const quasar::PTree *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = quasar::PTree::begin(this);
  v6 = quasar::PTree::end(this);
  while (v5 != v6)
  {
    v7 = EARHelpers::dictFromPTreeHelper((v5 + 24), a2);
    [v4 addObject:v7];

    v5 += 88;
  }

  return v4;
}

id EARHelpers::dictFromPTree(EARHelpers *this, const quasar::PTree *a2)
{
  v2 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = quasar::PTree::begin(this);
  for (i = quasar::PTree::end(this); v5 != i; v5 += 88)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    if (v2)
    {
      v9 = EARHelpers::dictFromPTreeHelper((v5 + 24), 1);
      [v4 setValue:v9 forKey:v8];
    }

    else
    {
      v9 = EARHelpers::dictFromPTreeHelper((v5 + 24), 0);
      [v4 setValue:v9 forKeyPath:v8];
    }
  }

  return v4;
}

__CFString *EARHelpers::serialize(uint64_t *a1)
{
  if (*a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v2 addObject:@"["];
    v4 = *a1;
    if (*(*a1 + 20) >= 1)
    {
      v5 = 0;
      do
      {
        if (*(v4 + 16) >= 1)
        {
          v6 = 0;
          do
          {
            LODWORD(v3) = *(*(v4 + 8) + 4 * v5 * *(v4 + 24) + 4 * v6);
            v7 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
            [v2 addObject:v7];

            ++v6;
            v4 = *a1;
          }

          while (v6 < *(*a1 + 16));
        }

        ++v5;
      }

      while (v5 < *(v4 + 20));
    }

    [v2 addObject:@"]"];
    v8 = [v2 componentsJoinedByString:@" "];
  }

  else
  {
    v8 = &stru_1F2D44B60;
  }

  return v8;
}

id EARHelpers::EARSpeechRecognitionTokensFromQuasarTokens(const quasar::Token **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      quasar::Token::Token(&v19, v3);
      quasar::Token::Token(&v8, &v19);
      v5 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:&v8];
      [v2 addObject:v5];

      if (v18 < 0)
      {
        operator delete(__p);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }

      v30 = &v14;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v30);
      if (v13 < 0)
      {
        operator delete(v12);
      }

      v30 = &v11;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      if (v10 < 0)
      {
        operator delete(v9);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      v30 = &v25;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v30);
      if (v24 < 0)
      {
        operator delete(v23);
      }

      v30 = &v22;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 224);
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

void EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = v8;
        if (v8)
        {
          objc_msgSend_quasarToken(v8);
        }

        else
        {
          memset(v29, 0, sizeof(v29));
          v27 = 0u;
          *__p = 0u;
          *v26 = 0u;
          *v24 = 0u;
          memset(v25, 0, sizeof(v25));
          memset(v23, 0, sizeof(v23));
          *v22 = 0u;
          *v20 = 0u;
          memset(v21, 0, sizeof(v21));
        }

        v10 = a2[1];
        if (v10 >= a2[2])
        {
          v18 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(a2, v20);
          v19 = SBYTE7(v29[0]);
          a2[1] = v18;
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v11 = *v20;
          *(v10 + 16) = *&v21[0];
          *v10 = v11;
          v20[1] = 0;
          *&v21[0] = 0;
          v20[0] = 0;
          v12 = *(&v21[1] + 7);
          *(v10 + 24) = *(v21 + 8);
          *(v10 + 39) = v12;
          v13 = *&v23[0];
          *(v10 + 48) = *v22;
          *(v10 + 64) = v13;
          *(v10 + 72) = 0;
          v22[1] = 0;
          *&v23[0] = 0;
          v22[0] = 0;
          *(v10 + 80) = 0;
          *(v10 + 88) = 0;
          *(v10 + 72) = *(v23 + 8);
          *(v10 + 88) = *(&v23[1] + 1);
          memset(v23 + 8, 0, 24);
          v14 = *v24;
          *(v10 + 112) = *&v25[0];
          *(v10 + 120) = 0;
          *(v10 + 96) = v14;
          v24[1] = 0;
          *&v25[0] = 0;
          v24[0] = 0;
          *(v10 + 128) = 0;
          *(v10 + 136) = 0;
          *(v10 + 120) = *(v25 + 8);
          *(v10 + 136) = *(&v25[1] + 1);
          memset(v25 + 8, 0, 24);
          v15 = *v26;
          *(v10 + 160) = v27;
          *(v10 + 144) = v15;
          v26[1] = 0;
          *&v27 = 0;
          v26[0] = 0;
          LODWORD(v13) = DWORD2(v27);
          *(v10 + 172) = WORD6(v27);
          *(v10 + 168) = v13;
          v16 = *__p;
          *(v10 + 192) = *&v29[0];
          *(v10 + 176) = v16;
          __p[1] = 0;
          *&v29[0] = 0;
          __p[0] = 0;
          v17 = *(v29 + 8);
          *(v10 + 216) = DWORD2(v29[1]);
          *(v10 + 200) = v17;
          a2[1] = v10 + 224;
        }

        if (SBYTE7(v27) < 0)
        {
          operator delete(v26[0]);
        }

        v34 = v25 + 1;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v34);
        if (SBYTE7(v25[0]) < 0)
        {
          operator delete(v24[0]);
        }

        v34 = v23 + 1;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
        if (SBYTE7(v23[0]) < 0)
        {
          operator delete(v22[0]);
        }

        if (SBYTE7(v21[0]) < 0)
        {
          operator delete(v20[0]);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }
}

void sub_1B536E684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void EARHelpers::QuasarPreItnNbestFromEARNBest(void *a1@<X0>, const void **a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = v7;
        if (v7)
        {
          objc_msgSend_quasarPreItnTokens(v7);
        }

        else
        {
          v22 = 0uLL;
          v23 = 0;
        }

        v9 = a2[1];
        v10 = a2[2];
        if (v9 >= v10)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
          v13 = v12 + 1;
          if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
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

          v28[4] = a2;
          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a2, v15);
          }

          v16 = 24 * v12;
          *v16 = 0;
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *v16 = v22;
          *(v16 + 16) = v23;
          v22 = 0uLL;
          v23 = 0;
          v11 = (24 * v12 + 24);
          v17 = a2[1] - *a2;
          v18 = (24 * v12 - v17);
          memcpy((v16 - v17), *a2, v17);
          v19 = *a2;
          *a2 = v18;
          a2[1] = v11;
          v20 = a2[2];
          a2[2] = 0;
          v28[2] = v19;
          v28[3] = v20;
          v28[0] = v19;
          v28[1] = v19;
          std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v28);
        }

        else
        {
          *v9 = 0;
          *(v9 + 1) = 0;
          *(v9 + 2) = 0;
          *v9 = v22;
          *(v9 + 2) = v23;
          v22 = 0uLL;
          v23 = 0;
          v11 = v9 + 24;
        }

        a2[1] = v11;
        v28[0] = &v22;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v28);
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }
}

void sub_1B536E950(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, ...)
{
  va_start(va, a5);

  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id EARHelpers::EARCommandTaggingResultFromQuasarVector(uint64_t *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      std::map<std::string,std::vector<quasar::Token>>::map[abi:ne200100](v13, v3);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v14, *(v3 + 24), *(v3 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 32) - *(v3 + 24)) >> 3));
      if (*(v3 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *(v3 + 48), *(v3 + 56));
      }

      else
      {
        v5 = *(v3 + 48);
        v17.__r_.__value_.__r.__words[2] = *(v3 + 64);
        *&v17.__r_.__value_.__l.__data_ = v5;
      }

      std::map<std::string,std::vector<quasar::Token>>::map[abi:ne200100](v10, v13);
      memset(v11, 0, sizeof(v11));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v11, v14, v15, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      }

      else
      {
        v12 = v17;
      }

      v6 = [[_EARCommandTagging alloc] _initWithQuasarCommandTagging:v10];
      [v2 addObject:v6];

      quasar::CommandTagging::~CommandTagging(v10);
      quasar::CommandTagging::~CommandTagging(v13);
      v3 += 72;
    }

    while (v3 != v4);
  }

  v7 = [v2 copy];

  v8 = [[_EARCommandTaggingResult alloc] _initWithCommandTaggings:v7];

  return v8;
}

id EARHelpers::EARCommandTaggingResultArrayFromQuasarResults(uint64_t **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      std::vector<quasar::CommandTagging>::__init_with_size[abi:ne200100]<quasar::CommandTagging*,quasar::CommandTagging*>(&v11, *v3, v3[1], 0x8E38E38E38E38E39 * ((v3[1] - *v3) >> 3));
      v8 = 0;
      v9 = 0;
      v10 = 0;
      std::vector<quasar::CommandTagging>::__init_with_size[abi:ne200100]<quasar::CommandTagging*,quasar::CommandTagging*>(&v8, v11, v12, 0x8E38E38E38E38E39 * ((v12 - v11) >> 3));
      memset(v14, 0, sizeof(v14));
      std::vector<quasar::CommandTagging>::__init_with_size[abi:ne200100]<quasar::CommandTagging*,quasar::CommandTagging*>(v14, v8, v9, 0x8E38E38E38E38E39 * ((v9 - v8) >> 3));
      v5 = EARHelpers::EARCommandTaggingResultFromQuasarVector(v14);
      v15 = v14;
      std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](&v15);
      [v2 addObject:v5];

      v14[0] = &v8;
      std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](v14);
      v14[0] = &v11;
      std::vector<quasar::CommandTagging>::__destroy_vector::operator()[abi:ne200100](v14);
      v3 += 3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

void EARHelpers::EARVoiceCommandInterpretationsFromQuasarCommandData(EARHelpers *this, const quasar::result_handler::CommandData *a2)
{
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(this + 19);
  v45 = *(this + 20);
  for (i = this; v3 != v45; v3 = (v3 + 264))
  {
    quasar::result_handler::CommandInterpretation::CommandInterpretation(&v47, v3);
    v4 = *(this + 31);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v5;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if ((*(&v47.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (v47.__r_.__value_.__l.__size_ <= 12)
        {
          if (v47.__r_.__value_.__l.__size_ != 11)
          {
            if (v47.__r_.__value_.__l.__size_ != 12)
            {
              goto LABEL_74;
            }

            v8 = v47.__r_.__value_.__r.__words[0];
            goto LABEL_15;
          }

          if (*v47.__r_.__value_.__l.__data_ != 0x6641747265736E69 || *(v47.__r_.__value_.__r.__words[0] + 3) != 0x7265746641747265)
          {
            goto LABEL_74;
          }

LABEL_57:
          v21 = v53;
          if ((v53 & 0x80u) != 0)
          {
            v21 = v52;
          }

          if (v21)
          {
            v22 = [EARVoiceCommandArgument alloc];
            if ((v53 & 0x80u) == 0)
            {
              v23 = &v51;
            }

            else
            {
              v23 = v51;
            }

            v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v23, &v51}];
            v17 = [(EARVoiceCommandArgument *)v22 initWithPresence:1 text:v24];

            [v6 addObject:v17];
            v25 = v50;
            if ((v50 & 0x80u) != 0)
            {
              v25 = v49;
            }

            if (v25)
            {
              v26 = [EARVoiceCommandArgument alloc];
              if ((v50 & 0x80u) == 0)
              {
                v27 = &v48;
              }

              else
              {
                v27 = v48;
              }

              v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
              v29 = [(EARVoiceCommandArgument *)v26 initWithPresence:0 text:v28];

              [v6 addObject:v29];
LABEL_90:
            }

            goto LABEL_91;
          }

          goto LABEL_92;
        }

        if (v47.__r_.__value_.__l.__size_ != 13)
        {
          if (v47.__r_.__value_.__l.__size_ != 14 || (*v47.__r_.__value_.__l.__data_ == 0x6769626D61736964 ? (v13 = *(v47.__r_.__value_.__r.__words[0] + 6) == 0x6E6F697461756769) : (v13 = 0), !v13))
          {
LABEL_74:
            v31 = v50;
            if ((v50 & 0x80u) != 0)
            {
              v31 = v49;
            }

            if (v31)
            {
              v32 = [EARVoiceCommandArgument alloc];
              v33 = v53;
              v34 = v52;
              if ((v50 & 0x80u) == 0)
              {
                v35 = &v48;
              }

              else
              {
                v35 = v48;
              }

              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v35, &v51}];
              if ((v33 & 0x80u) == 0)
              {
                v37 = v33;
              }

              else
              {
                v37 = v34;
              }

              v17 = [(EARVoiceCommandArgument *)v32 initWithPresence:v37 == 0 text:v36];

              [v6 addObject:v17];
              v38 = v53;
              if ((v53 & 0x80u) != 0)
              {
                v38 = v52;
              }

              if (v38)
              {
                v39 = [EARVoiceCommandArgument alloc];
                if ((v53 & 0x80u) == 0)
                {
                  v40 = v43;
                }

                else
                {
                  v40 = v51;
                }

                v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v40];
                v29 = [(EARVoiceCommandArgument *)v39 initWithPresence:1 text:v41];

                [v6 addObject:v29];
                goto LABEL_90;
              }

LABEL_91:
            }

LABEL_92:
            quasar::PTree::PTree(v54);
            quasar::indexU8ToU16(i + 4, v4);
          }

LABEL_36:
          v14 = [EARVoiceCommandArgument alloc];
          if ((v50 & 0x80u) == 0)
          {
            v15 = &v48;
          }

          else
          {
            v15 = v48;
          }

          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v15, &v51}];
          v17 = [(EARVoiceCommandArgument *)v14 initWithPresence:0 text:v16];

          [v6 addObject:v17];
          goto LABEL_91;
        }

        if (*v47.__r_.__value_.__l.__data_ != 0x6542747265736E69 || *(v47.__r_.__value_.__r.__words[0] + 5) != 0x6E65657774654274)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (HIBYTE(v47.__r_.__value_.__r.__words[2]) <= 0xCu)
        {
          if (HIBYTE(v47.__r_.__value_.__r.__words[2]) == 11)
          {
            if (v47.__r_.__value_.__r.__words[0] != 0x6641747265736E69 || *(v47.__r_.__value_.__r.__words + 3) != 0x7265746641747265)
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (HIBYTE(v47.__r_.__value_.__r.__words[2]) != 12)
            {
              goto LABEL_74;
            }

            v8 = &v47;
LABEL_15:
            v9 = v8->__r_.__value_.__r.__words[0];
            v10 = v8->__r_.__value_.__r.__words[1];
            if (v9 != 0x6542747265736E69 || v10 != 1701998438)
            {
              goto LABEL_74;
            }
          }

          goto LABEL_57;
        }

        if (HIBYTE(v47.__r_.__value_.__r.__words[2]) != 13)
        {
          if (HIBYTE(v47.__r_.__value_.__r.__words[2]) != 14)
          {
            goto LABEL_74;
          }

          if (v47.__r_.__value_.__r.__words[0] != 0x6769626D61736964 || *(v47.__r_.__value_.__r.__words + 6) != 0x6E6F697461756769)
          {
            goto LABEL_74;
          }

          goto LABEL_36;
        }

        if (v47.__r_.__value_.__r.__words[0] != 0x6542747265736E69 || *(v47.__r_.__value_.__r.__words + 5) != 0x6E65657774654274)
        {
          goto LABEL_74;
        }
      }
    }

    quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v47.__r_.__value_.__l.__data_);
  }

  v42 = v44;
}

std::string *EARHelpers::QuasarTokensToStdString@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v2 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] != size)
  {
    do
    {
      if (*(v2 + 45) == 1)
      {
        std::string::append(a2, " ");
      }

      v5 = *(v2 + 23);
      if (v5 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      result = std::string::append(a2, v6, v7);
      if (*(v2 + 44) == 1)
      {
        result = std::string::append(a2, " ");
      }

      v2 += 224;
    }

    while (v2 != size);
  }

  return result;
}

void sub_1B53700D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void EARHelpers::QuasarNbestFromEARSpeechRecognition(const void **__return_ptr a1@<X8>, EARHelpers *this@<X0>)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = this;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v32 = v3;
  [(EARHelpers *)v3 nBest];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v4 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v4)
  {
    v34 = *v52;
    do
    {
      v5 = 0;
      do
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v51 + 1) + 8 * v5);
        v49 = 0uLL;
        v50 = 0;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v8)
        {
          v9 = *v46;
          do
          {
            v10 = 0;
            do
            {
              if (*v46 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v45 + 1) + 8 * v10);
              if (v11)
              {
                objc_msgSend_quasarToken(v11);
              }

              else
              {
                memset(v44, 0, sizeof(v44));
                v42 = 0u;
                *__p = 0u;
                *v41 = 0u;
                *v39 = 0u;
                memset(v40, 0, sizeof(v40));
                memset(v38, 0, sizeof(v38));
                *v37 = 0u;
                *v35 = 0u;
                memset(v36, 0, sizeof(v36));
              }

              v12 = *(&v49 + 1);
              if (*(&v49 + 1) >= v50)
              {
                *(&v49 + 1) = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(&v49, v35);
                if (SBYTE7(v44[0]) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v13 = *v35;
                *(*(&v49 + 1) + 16) = *&v36[0];
                *v12 = v13;
                v35[1] = 0;
                *&v36[0] = 0;
                v35[0] = 0;
                v14 = *(&v36[1] + 7);
                *(v12 + 24) = *(v36 + 8);
                *(v12 + 39) = v14;
                v15 = *&v38[0];
                *(v12 + 48) = *v37;
                *(v12 + 64) = v15;
                *(v12 + 72) = 0;
                v37[1] = 0;
                *&v38[0] = 0;
                v37[0] = 0;
                *(v12 + 80) = 0;
                *(v12 + 88) = 0;
                *(v12 + 72) = *(v38 + 8);
                *(v12 + 88) = *(&v38[1] + 1);
                memset(v38 + 8, 0, 24);
                v16 = *v39;
                *(v12 + 112) = *&v40[0];
                *(v12 + 120) = 0;
                *(v12 + 96) = v16;
                v39[1] = 0;
                *&v40[0] = 0;
                v39[0] = 0;
                *(v12 + 128) = 0;
                *(v12 + 136) = 0;
                *(v12 + 120) = *(v40 + 8);
                *(v12 + 136) = *(&v40[1] + 1);
                memset(v40 + 8, 0, 24);
                v17 = *v41;
                *(v12 + 160) = v42;
                *(v12 + 144) = v17;
                v41[1] = 0;
                *&v42 = 0;
                v41[0] = 0;
                LODWORD(v15) = DWORD2(v42);
                *(v12 + 172) = WORD6(v42);
                *(v12 + 168) = v15;
                v18 = *__p;
                *(v12 + 192) = *&v44[0];
                *(v12 + 176) = v18;
                __p[1] = 0;
                *&v44[0] = 0;
                __p[0] = 0;
                v19 = *(v44 + 8);
                *(v12 + 216) = DWORD2(v44[1]);
                *(v12 + 200) = v19;
                *(&v49 + 1) = v12 + 224;
              }

              if (SBYTE7(v42) < 0)
              {
                operator delete(v41[0]);
              }

              v55 = v40 + 1;
              std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v55);
              if (SBYTE7(v40[0]) < 0)
              {
                operator delete(v39[0]);
              }

              v55 = v38 + 1;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
              if (SBYTE7(v38[0]) < 0)
              {
                operator delete(v37[0]);
              }

              if (SBYTE7(v36[0]) < 0)
              {
                operator delete(v35[0]);
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [v7 countByEnumeratingWithState:&v45 objects:v56 count:16];
          }

          while (v8);
        }

        v20 = a1[1];
        v21 = a1[2];
        if (v20 >= v21)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a1) >> 3);
          v24 = v23 + 1;
          if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a1) >> 3);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          if (v25 >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v24;
          }

          *&v36[1] = a1;
          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v26);
          }

          v27 = 24 * v23;
          *v27 = 0;
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
          *v27 = v49;
          *(v27 + 16) = v50;
          v49 = 0uLL;
          v50 = 0;
          v22 = (24 * v23 + 24);
          v28 = a1[1] - *a1;
          v29 = (v27 - v28);
          memcpy((v27 - v28), *a1, v28);
          v30 = *a1;
          *a1 = v29;
          a1[1] = v22;
          v31 = a1[2];
          a1[2] = 0;
          *&v36[0] = v30;
          *(&v36[0] + 1) = v31;
          v35[0] = v30;
          v35[1] = v30;
          std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v35);
        }

        else
        {
          *v20 = 0;
          *(v20 + 1) = 0;
          *(v20 + 2) = 0;
          *v20 = v49;
          *(v20 + 2) = v50;
          v49 = 0uLL;
          v50 = 0;
          v22 = v20 + 24;
        }

        a1[1] = v22;
        v35[0] = &v49;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v35);
        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v4);
  }
}

void sub_1B5370570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49)
{
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a49);

  _Unwind_Resume(a1);
}

uint64_t kaldi::StandardErrorLogger(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "%s\n", v1);
}

uint64_t kaldi::StandardErrorVLogger(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(*MEMORY[0x1E69E9848], "%s\n", v1);
}

void kaldi::KaldiGetStackTrace(std::string *a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  memset(v9, 0, sizeof(v9));
  v2 = backtrace(v9, 50);
  v3 = backtrace_symbols(v9, v2);
  v4 = v3;
  v5 = v2;
  if (v2 >= 0x33)
  {
    for (i = 0; i != 25; ++i)
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, v4[i]);
      std::string::append(a1, "\n");
    }

    std::string::append(a1, ".\n.\n.\n");
    v8 = v2 - 25;
    do
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, v4[v8]);
      std::string::append(a1, "\n");
      ++v8;
    }

    while (v8 < v2);
  }

  else if (v2)
  {
    v6 = v3;
    do
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, *v6);
      std::string::append(a1, "\n");
      ++v6;
      --v5;
    }

    while (v5);
  }

  free(v4);
}

void sub_1B5370814(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(std::string *a1, char *__s)
{
  v4 = strchr(__s, 40);
  if (v4 && (v5 = v4, (v6 = strchr(v4, 43)) != 0))
  {
    v7 = v5 + 1;
    v8 = v6 - (v5 + 1);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    status = 0;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v12 = v8;
    if (v6 != v7)
    {
      memmove(&__p, v7, v8);
    }

    *(&__p + v8) = 0;
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = __cxa_demangle(p_p, 0, 0, &status);
    if (v10)
    {
      std::string::append(a1, v10);
      free(v10);
    }

    else
    {
      std::string::append(a1, __s);
    }

    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    std::string::append(a1, __s);
  }
}

void sub_1B53709B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::KaldiWarnMessage::~KaldiWarnMessage(std::locale *this)
{
  v2 = kaldi::KaldiWarnMessage::g_logger;
  std::stringbuf::str();
  (v2)(&v18, this[33].__locale_);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (getenv("QSR_CRASH_ON_WARN"))
  {
    if (!MEMORY[0x1B8C852F0]())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      v6 = std::string::append(&v15, "\n\n[stack trace: ]\n");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      kaldi::KaldiGetStackTrace(&v14);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v14;
      }

      else
      {
        v8 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      v10 = std::string::append(&v16, v8, size);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v17.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v17, "\n");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v18);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    abort();
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

void sub_1B5370C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      std::ostringstream::~ostringstream(v33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

uint64_t *kaldi::KaldiVlogMessage::KaldiVlogMessage(kaldi::KaldiVlogMessage *this, int a2)
{
  result = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  *(result + 66) = a2;
  result[34] = v2;
  return result;
}

void kaldi::KaldiErrorMessage::~KaldiErrorMessage(kaldi::KaldiErrorMessage *this)
{
  v2 = kaldi::KaldiErrorMessage::g_logger;
  std::stringbuf::str();
  v3 = (v2)(&v17, *(this + 33));
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (!MEMORY[0x1B8C852F0](v3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    v5 = std::string::append(&v14, "\n\n[stack trace: ]\n");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    kaldi::KaldiGetStackTrace(&v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v13;
    }

    else
    {
      v7 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v16, "\n");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  abort();
}

{
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(this);
}

void sub_1B5370E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      v38 = MEMORY[0x1E69E54E8];
      v39 = *MEMORY[0x1E69E54E8];
      *v33 = *MEMORY[0x1E69E54E8];
      *(v33 + *(v39 - 24)) = *(v38 + 24);
      *(v33 + 8) = MEMORY[0x1E69E5548] + 16;
      if (*(v33 + 95) < 0)
      {
        operator delete(*(v33 + 72));
      }

      *(v33 + 8) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale((v33 + 16));
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v33 + 112);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

void quasar::NNLmConfig::NNLmConfig(uint64_t a1, quasar::SystemConfig *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0x3F80000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *a1 = &unk_1F2D0E678;
  *(a1 + 120) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  quasar::LmBuildConfig::readSysConfig(a1, a2, a3);
}

void sub_1B5371ADC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5371CECLL);
}

void sub_1B5371AEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  __p = (v42 - 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  JUMPOUT(0x1B5371CBCLL);
}

void sub_1B5371BE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5371CBCLL);
}

void sub_1B5371CB8(_Unwind_Exception *a1)
{
  if (*(v3 - 169) < 0)
  {
    operator delete(*(v3 - 192));
  }

  if (*(v3 - 145) < 0)
  {
    operator delete(*(v3 - 168));
  }

  quasar::NNLmConfig::NNLmConfigParameters::~NNLmConfigParameters(v2);
  quasar::LmBuildConfig::~LmBuildConfig(v1);
  _Unwind_Resume(a1);
}

void quasar::NNLmModel::NNLmModel(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, void *a5)
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 904) = &unk_1F2D0AF10;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0x3F8000003F800000;
  v7 = quasar::LmModel2::LmModel2(a1, 1.0, 1.0, off_1F2D0E718);
  *v7 = &unk_1F2D0E6A8;
  *(v7 + 113) = &unk_1F2D0E6F8;
  quasar::ModelLoader::ModelLoader((v7 + 240));
  *(a1 + 896) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  quasar::LmModel2::setModelSysConfigParams(a1, *a5 + 8);
  *(a1 + *(*a1 - 24) + 8) = 1;
  std::allocate_shared[abi:ne200100]<quasar::NNLmConfig::NNLmConfigParameters,std::allocator<quasar::NNLmConfig::NNLmConfigParameters>,quasar::NNLmConfig::NNLmConfigParameters const&,0>();
}

void sub_1B5371F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__value_func[abi:ne200100](&a23);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v26 = v23[112];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = v23[110];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *v24;
  *v24 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  quasar::ModelLoader::~ModelLoader((v23 + 30));
  quasar::LmModel2::~LmModel2(v23, off_1F2D0E718);
  _Unwind_Resume(a1);
}

void quasar::NNLmModel::NNLmModel(uint64_t a1, const void **a2, uint64_t a3, char a4, int a5, float a6, float a7, float a8)
{
  v24 = *MEMORY[0x1E69E9840];
  *(a1 + 904) = &unk_1F2D0AF10;
  *(a1 + 912) = 0;
  *(a1 + 916) = a6;
  *(a1 + 920) = a7;
  v13 = quasar::LmModel2::LmModel2(a1, a6, a7, off_1F2D0E718);
  *v13 = &unk_1F2D0E6A8;
  *(v13 + 113) = &unk_1F2D0E6F8;
  quasar::ModelLoader::ModelLoader((v13 + 240));
  *(a1 + 232) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + *(*a1 - 24) + 8) = 1;
  std::string::basic_string[abi:ne200100]<0>(&v22, "");
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v14 = a1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v16 = a4;
  v17 = a8;
  v18 = a5;
  std::function<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::function<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,void>(v23, &v14);
}

void sub_1B5372314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char *a29)
{
  a29 = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v31 = v29[112];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = v29 + 108;
  v33 = v29[110];
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *v32;
  *v32 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  quasar::ModelLoader::~ModelLoader((v29 + 30));
  quasar::LmModel2::~LmModel2(v29, off_1F2D0E718);
  _Unwind_Resume(a1);
}

void quasar::NNLmModel::trainOnData(uint64_t a1, uint64_t a2, const kaldi::Timer *a3, uint64_t **a4)
{
  if (*(a2 + 104))
  {
    memset(v13, 0, sizeof(v13));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Other data type is not supported for NNLM trainer.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v13);
  }

  Sentences = quasar::LmData::getSentences(a2, 0);
  v9 = quasar::LmData::getSentences(a2, 1u);
  quasar::GlobalNNLMWrapper::loadData(*(a1 + 864), Sentences, v9, a3, a4);
  quasar::GlobalNNLMWrapper::setup(*(a1 + 864), a3, a4);
  quasar::GlobalNNLMWrapper::loadWeight(*(a1 + 864), a3, a4);
  v10 = *(a1 + 872);
  if (*(v10 + 88) == 1)
  {
    quasar::GlobalNNLMWrapper::evaluate(*(a1 + 864), a3, a4);
    v10 = *(a1 + 872);
  }

  if (*(v10 + 84) >= 1)
  {
    v11 = 0;
    do
    {
      quasar::GlobalNNLMWrapper::train(*(a1 + 864), a3, a4);
      v12 = *(a1 + 872);
      if (*(v12 + 88) == 1)
      {
        quasar::GlobalNNLMWrapper::evaluate(*(a1 + 864), a3, a4);
        v12 = *(a1 + 872);
      }

      ++v11;
    }

    while (v11 < *(v12 + 84));
  }
}

void quasar::NNLmModel::AddTo(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, unsigned int a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(a1 + 888);
  std::string::basic_string[abi:ne200100]<0>(v22, "");
  quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v14, v22, &v24);
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::AddNnlm(a2, v24, a3, a9, &__p, &v17, 0, a5, -1.0, a6, a10, v15);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v15);
  std::__tree<int>::destroy(&v17, v18[0]);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_1B5372650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a13);
  std::__tree<int>::destroy(&a18, a19);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(v22 - 65) < 0)
  {
    operator delete(*(v22 - 88));
  }

  _Unwind_Resume(a1);
}

void quasar::trainOrAdaptNNLMModel(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29[24] = 1;
  kaldi::Timer::Reset(v29, a2);
  v30 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v27[4] = v28;
  quasar::filesystem::Path::Path(v27, (*a1 + 120));
  quasar::filesystem::Path::Path(&v26, (*a1 + 144));
  quasar::filesystem::Path::normalize(v27, &v22);
  quasar::filesystem::Path::parent_path(__p, &v22);
  kaldi::quasar::Vocab::OOvWord(__p, &v25);
  __p[0] = &unk_1F2CFAA28;
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  *&v22 = &unk_1F2CFAA28;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(*(&v22 + 1));
  }

  *a3 = 0;
  a3[1] = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 1065353216;
  if ((*(**a1 + 16))(*a1) == 5)
  {
    kaldi::quasar::Vocab::OOvWord(v27, __p);
    std::allocate_shared[abi:ne200100]<quasar::NNLmModel,std::allocator<quasar::NNLmModel>,std::string,std::string&,quasar::filesystem::Path &,std::shared_ptr<quasar::NNLmConfig const> const&,0>();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unsupported NNLM training Config", 32);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B537296C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, void *a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v18 - 256));
  if (*(v18 - 185) < 0)
  {
    operator delete(*(v18 - 208));
  }

  *(v18 - 184) = &unk_1F2CFAA28;
  if (*(v18 - 153) < 0)
  {
    operator delete(*(v18 - 176));
  }

  *(v18 - 152) = &unk_1F2CFAA28;
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  std::__tree<std::string>::destroy(v18 - 120, *(v18 - 112));
  _Unwind_Resume(a1);
}

void sub_1B5372A9C()
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v1 - 256));
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x1B5372998);
}

void quasar::NNLmModel::writeImpl(uint64_t a1, uint64_t **a2)
{
  v95[20] = *MEMORY[0x1E69E9840];
  v88[24] = 1;
  kaldi::Timer::Reset(v88, a2);
  v89 = 0;
  quasar::GlobalNNLMWrapper::saveWeight(*(a1 + 864), a2, v88, (a1 + 32));
  v4 = *(a1 + 872);
  std::string::basic_string[abi:ne200100]<0>(__p, ":");
  quasar::splitAndTrimNoEmpty(v4 + 1, __p, __str);
  if (SBYTE7(v93) < 0)
  {
    operator delete(__p[0]);
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((__str[1] - __str[0]) >> 3);
  v77 = a2;
  if (v5 == 2)
  {
    std::vector<std::string>::push_back[abi:ne200100](&v84, __str[0]);
    v24 = __str[0];
    if ((__str[0]->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str[0]->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str[0]->__r_.__value_.__l.__size_;
    }

    v26 = &v90;
    std::string::basic_string[abi:ne200100](&v90, size + 1);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v90.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v24->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = v24->__r_.__value_.__r.__words[0];
      }

      memmove(v26, v27, size);
    }

    *(&v26->__r_.__value_.__l.__data_ + size) = 46;
    v28 = *(a1 + 872);
    v31 = *(v28 + 48);
    v29 = v28 + 48;
    v30 = v31;
    v32 = *(v29 + 23);
    if (v32 >= 0)
    {
      v33 = v29;
    }

    else
    {
      v33 = v30;
    }

    if (v32 >= 0)
    {
      v34 = *(v29 + 23);
    }

    else
    {
      v34 = *(v29 + 8);
    }

    v35 = std::string::append(&v90, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    *&v93 = *(&v35->__r_.__value_.__l + 2);
    *__p = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v37 = __str[0];
    if ((__str[0]->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(__str[0]->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = __str[0]->__r_.__value_.__l.__size_;
    }

    v39 = __p;
    std::string::basic_string[abi:ne200100](__p, v38 + 7);
    if (SBYTE7(v93) < 0)
    {
      v39 = __p[0];
    }

    if (v38)
    {
      if ((v37->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = v37;
      }

      else
      {
        v40 = v37->__r_.__value_.__r.__words[0];
      }

      memmove(v39, v40, v38);
    }

    strcpy(v39 + v38, ".config");
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }

    v41 = SHIBYTE(__str[0]->__r_.__value_.__r.__words[2]);
    if ((v41 & 0x8000000000000000) != 0)
    {
      data = __str[0]->__r_.__value_.__l.__data_;
      v41 = __str[0]->__r_.__value_.__l.__size_;
    }

    else
    {
      data = __str[0];
    }

    v43 = &data[-1].__r_.__value_.__r.__words[2] + 7;
    while (v41)
    {
      v44 = v43[v41--];
      if (v44 == 46)
      {
        goto LABEL_77;
      }
    }

    v41 = -1;
LABEL_77:
    std::string::basic_string(&v90, __str[0], 0, v41, v82);
    v45 = std::string::append(&v90, ".shape");
    v46 = *&v45->__r_.__value_.__l.__data_;
    *&v93 = *(&v45->__r_.__value_.__l + 2);
    *__p = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    std::vector<std::string>::push_back[abi:ne200100](&v84, &__str[0][1]);
    v47 = __str[0];
    if ((__str[0][1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(__str[0][1].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = __str[0][1].__r_.__value_.__l.__size_;
    }

    v49 = __p;
    std::string::basic_string[abi:ne200100](__p, v48 + 7);
    if (SBYTE7(v93) < 0)
    {
      v49 = __p[0];
    }

    if (v48)
    {
      if ((v47[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = v47 + 1;
      }

      else
      {
        v50 = v47[1].__r_.__value_.__l.__data_;
      }

      memmove(v49, v50, v48);
    }

    strcpy(v49 + v48, ".config");
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }

    v51 = SHIBYTE(__str[0][1].__r_.__value_.__r.__words[2]);
    if ((v51 & 0x8000000000000000) != 0)
    {
      v52 = __str[0][1].__r_.__value_.__l.__data_;
      v51 = __str[0][1].__r_.__value_.__l.__size_;
    }

    else
    {
      v52 = __str[0] + 1;
    }

    v53 = &v52[-1].__r_.__value_.__r.__words[2] + 7;
    while (v51)
    {
      v54 = v53[v51--];
      if (v54 == 46)
      {
        goto LABEL_101;
      }
    }

    v51 = -1;
LABEL_101:
    std::string::basic_string(&v90, __str[0] + 1, 0, v51, v82);
    v55 = std::string::append(&v90, ".shape");
    v56 = *&v55->__r_.__value_.__l.__data_;
    *&v93 = *(&v55->__r_.__value_.__l + 2);
    *__p = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v90.__r_.__value_.__r.__words[0];
      goto LABEL_105;
    }
  }

  else
  {
    if (v5 != 1)
    {
      v93 = 0u;
      memset(v94, 0, 240);
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Malformed LM neural network file name, fileBasename=", 52);
      v70 = *(a1 + 872);
      v73 = *(v70 + 24);
      v71 = v70 + 24;
      v72 = v73;
      v74 = *(v71 + 23);
      if (v74 >= 0)
      {
        v75 = v71;
      }

      else
      {
        v75 = v72;
      }

      if (v74 >= 0)
      {
        v76 = *(v71 + 23);
      }

      else
      {
        v76 = *(v71 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v75, v76);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    std::vector<std::string>::push_back[abi:ne200100](&v84, __str[0]);
    v6 = __str[0];
    if ((__str[0]->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__str[0]->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __str[0]->__r_.__value_.__l.__size_;
    }

    v8 = &v90;
    std::string::basic_string[abi:ne200100](&v90, v7 + 1);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v90.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if ((v6->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = v6->__r_.__value_.__r.__words[0];
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 46;
    v10 = *(a1 + 872);
    v13 = *(v10 + 48);
    v11 = v10 + 48;
    v12 = v13;
    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    v17 = std::string::append(&v90, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    *&v93 = *(&v17->__r_.__value_.__l + 2);
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v19 = __str[0];
    if ((__str[0]->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(__str[0]->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = __str[0]->__r_.__value_.__l.__size_;
    }

    v21 = __p;
    std::string::basic_string[abi:ne200100](__p, v20 + 7);
    if (SBYTE7(v93) < 0)
    {
      v21 = __p[0];
    }

    if (v20)
    {
      if ((v19->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = v19->__r_.__value_.__r.__words[0];
      }

      memmove(v21, v22, v20);
    }

    strcpy(v21 + v20, ".config");
    std::vector<std::string>::push_back[abi:ne200100](&v84, __p);
    if (SBYTE7(v93) < 0)
    {
      v23 = __p[0];
LABEL_105:
      operator delete(v23);
    }
  }

  v57 = v84;
  v58 = v85;
  if (v84 != v85)
  {
    v59 = *MEMORY[0x1E69E54D0];
    v60 = *(MEMORY[0x1E69E54D0] + 24);
    v61 = *MEMORY[0x1E69E54C8];
    v62 = *(MEMORY[0x1E69E54C8] + 24);
    do
    {
      quasar::filesystem::Path::Path(v82, v57);
      if (*(v77 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v79, *v77, v77[1]);
      }

      else
      {
        v79 = *v77;
      }

      v63 = std::string::append(&v79, "/");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      quasar::filesystem::Path::filename(__p, v82);
      kaldi::quasar::Vocab::OOvWord(__p, &v78);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = &v78;
      }

      else
      {
        v65 = v78.__r_.__value_.__r.__words[0];
      }

      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v66 = v78.__r_.__value_.__l.__size_;
      }

      v67 = std::string::append(&v90, v65, v66);
      v68 = *&v67->__r_.__value_.__l.__data_;
      v81 = v67->__r_.__value_.__r.__words[2];
      *v80 = v68;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      __p[0] = &unk_1F2CFAA28;
      if (SHIBYTE(v93) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      std::ifstream::basic_ifstream(__p, v57, 4);
      std::ofstream::basic_ofstream(&v90, v80, 4);
      std::ostream::operator<<();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((__p + *(__p[0] - 3)), *&v94[*(__p[0] - 3)] | 4);
      }

      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v90 + *(v90.__r_.__value_.__r.__words[0] - 24)), *(&v90 + *(v90.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
      }

      v90.__r_.__value_.__r.__words[0] = v59;
      *(v90.__r_.__value_.__r.__words + *(v59 - 24)) = v60;
      MEMORY[0x1B8C84A00](&v90.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](&v91);
      __p[0] = v61;
      *(__p + *(v61 - 3)) = v62;
      MEMORY[0x1B8C84A00](&v93);
      std::istream::~istream();
      MEMORY[0x1B8C85200](v95);
      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80[0]);
      }

      v82[0] = &unk_1F2CFAA28;
      if (v83 < 0)
      {
        operator delete(v82[1]);
      }

      v57 = (v57 + 24);
    }

    while (v57 != v58);
  }

  __p[0] = &v84;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = __str;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B53734B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B5373A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, void *a38, int a39, __int16 a40, char a41, char a42, int a43, __int16 a44, char a45, char a46)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  a10 = &unk_1F2CFAA28;
  if (a19 < 0)
  {
    operator delete(a11);
  }

  a37 = &unk_1F2CFAA28;
  if (a46 < 0)
  {
    operator delete(a38);
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  a10 = (v47 - 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  quasar::PTree::~PTree(v46);
  _Unwind_Resume(a1);
}

void sub_1B537418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, void *a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, void *a31, void *a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  a31 = &unk_1F2CFAA28;
  if (a40 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a22);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
  }

  a31 = (v53 - 136);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (*(v53 - 89) < 0)
  {
    operator delete(*(v53 - 112));
  }

  _Unwind_Resume(a1);
}

void quasar::NNLmConfig::~NNLmConfig(void **this)
{
  *this = &unk_1F2D0E678;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D0E678;
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::NNLmModel::~NNLmModel(quasar::NNLmModel *this)
{
  *this = &unk_1F2D0E6A8;
  *(this + 113) = &unk_1F2D0E6F8;
  v2 = *(this + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 110);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 108);
  *(this + 108) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  quasar::ModelLoader::~ModelLoader((this + 240));

  quasar::LmModel2::~LmModel2(this, off_1F2D0E718);
}

{
  *this = &unk_1F2D0E6A8;
  *(this + 113) = &unk_1F2D0E6F8;
  v2 = *(this + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 110);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 108);
  *(this + 108) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  quasar::ModelLoader::~ModelLoader((this + 240));
  quasar::LmModel2::~LmModel2(this, off_1F2D0E718);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::NNLmModel::~NNLmModel(quasar::NNLmModel *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D0E6A8;
  v1[113] = &unk_1F2D0E6F8;
  v2 = v1[112];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v1[110];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[108];
  v1[108] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  quasar::ModelLoader::~ModelLoader((v1 + 30));

  quasar::LmModel2::~LmModel2(v1, off_1F2D0E718);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D0E6A8;
  v1[113] = &unk_1F2D0E6F8;
  v2 = v1[112];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = v1[110];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[108];
  v1[108] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  quasar::ModelLoader::~ModelLoader((v1 + 30));
  quasar::LmModel2::~LmModel2(v1, off_1F2D0E718);

  JUMPOUT(0x1B8C85350);
}

void quasar::NNLmConfig::NNLmConfigParameters::~NNLmConfigParameters(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *std::__shared_ptr_emplace<quasar::NNLmConfig::NNLmConfigParameters>::__shared_ptr_emplace[abi:ne200100]<quasar::NNLmConfig::NNLmConfigParameters const&,std::allocator<quasar::NNLmConfig::NNLmConfigParameters>,0>(std::string *a1, const quasar::NNLmConfig::NNLmConfigParameters *a2)
{
  *&a1->__r_.__value_.__r.__words[1] = 0uLL;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0E7E8;
  quasar::NNLmConfig::NNLmConfigParameters::NNLmConfigParameters(a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::NNLmConfig::NNLmConfigParameters>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0E7E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::NNLmConfig::NNLmConfigParameters>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

std::string *quasar::NNLmConfig::NNLmConfigParameters::NNLmConfigParameters(std::string *this, const quasar::NNLmConfig::NNLmConfigParameters *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 72);
  this[3].__r_.__value_.__s.__data_[16] = *(a2 + 88);
  *&this[3].__r_.__value_.__l.__data_ = v7;
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  return this;
}

void sub_1B5374BB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,std::string const&,std::string const&,std::shared_ptr<quasar::NNLmConfig const> const&)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,std::string const&,std::string const&,std::shared_ptr<quasar::NNLmConfig const> const&)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D0E838;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,std::string const&,std::string const&,std::shared_ptr<quasar::NNLmConfig const> const&)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,std::string const&,std::string const&,std::shared_ptr<quasar::NNLmConfig const> const&)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::operator()(uint64_t a1@<X0>, std::string *a2@<X1>, const void **a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 872);
  v5 = *(v4 + 72);
  v6 = *(v4 + 76);
  v7 = *(v4 + 80);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v9 = 0;
  quasar::ModelLoader::readNeuralNetworkLm(v3 + 240, a2, v4 + 48, v5, v7, &__p, a3, v6);
  if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5374D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,std::string const&,std::string const&,std::shared_ptr<quasar::NNLmConfig const> const&)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,std::string const&,std::string const&,std::shared_ptr<quasar::NNLmConfig const> const&)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D0E8B8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D0E8B8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1B8C85350);
}

void std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F2D0E8B8;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  v6 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v6;
}

void std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::destroy_deallocate(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::operator()(uint64_t a1@<X0>, std::string *a2@<X1>, const void **a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v8 = 0;
  quasar::ModelLoader::readNeuralNetworkLm(v3 + 240, a2, a1 + 16, v4, v6, &__p, a3, v5);
  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5375024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0,std::allocator<quasar::NNLmModel::NNLmModel(std::string const&,float,float,std::string const&,BOOL,float,int)::$_0>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<quasar::NNLmModel>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string&,quasar::filesystem::Path &,std::shared_ptr<quasar::NNLmConfig const> const&,std::allocator<quasar::NNLmModel>,0>(void *a1, uint64_t a2, uint64_t a3, kaldi::quasar::Vocab *this, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0E938;
  std::allocator<quasar::NNLmModel>::construct[abi:ne200100]<quasar::NNLmModel,std::string,std::string&,quasar::filesystem::Path &,std::shared_ptr<quasar::NNLmConfig const> const&>(&v5, (a1 + 3), a2, a3, this, a5);
}

void std::__shared_ptr_emplace<quasar::NNLmModel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0E938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B53752AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::NNLmModel  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::NNLmModel  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::NNLmModel  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

char *quasar::ComputeAheadFeatInput::ComputeAheadFeatInput(char *a1, uint64_t *a2, int a3, int a4, int a5)
{
  v9 = *a2;
  v10 = a2[1];
  *a1 = &unk_1F2D0E9E8;
  *(a1 + 1) = v9;
  *(a1 + 2) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *(a1 + 1);
  }

  *(a1 + 6) = (*(*v9 + 8))(v9);
  *(a1 + 7) = (*(**(a1 + 1) + 24))(*(a1 + 1));
  *(a1 + 8) = (*(**(a1 + 1) + 32))(*(a1 + 1));
  a1[36] = (*(**(a1 + 1) + 48))(*(a1 + 1));
  a1[37] = (*(**(a1 + 1) + 56))(*(a1 + 1));
  *(a1 + 10) = a4;
  *(a1 + 11) = a5;
  *(a1 + 6) = 850045863;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 13) = 0;
  *(a1 + 14) = 1018212795;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 25) = 0;
  *(a1 + 52) = a4;
  *(a1 + 53) = 0;
  a1[216] = 0;
  *(a1 + 34) = 0;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 14) = 0u;
  if (a3)
  {
    inactive = dispatch_workloop_create_inactive("ComputeAheadFeatInput");
    dispatch_workloop_set_scheduler_priority();
    dispatch_set_qos_class_fallback();
    dispatch_activate(inactive);
    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v13 = dispatch_queue_create("ComputeAheadFeatInput", initially_inactive);
    dispatch_set_target_queue(v13, inactive);
    dispatch_set_qos_class_floor(v13, QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_activate(v13);
  }

  else
  {
    v13 = dispatch_queue_create("ComputeAheadFeatInput", 0);
  }

  *(a1 + 35) = v13;
  dispatch_async_f(v13, a1, quasar::ComputeAheadFeatInput::CallComputeAheadAndNotify);
  return a1;
}

void sub_1B53755BC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::ComputeAheadFeatInput::NextSegment(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 272);
  if (!v4)
  {
    operator new();
  }

  if (*(v4 + 12))
  {
    v13.__m_ = (a1 + 48);
    v13.__owns_ = 1;
    std::mutex::lock((a1 + 48));
    while (!*(a1 + 264))
    {
      std::condition_variable::wait((a1 + 112), &v13);
    }

    v7 = *(*(a1 + 232) + ((*(a1 + 256) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 256);
    v8 = *(a1 + 272);
    v9 = *v7;
    *(v8 + 8) = *(v7 + 8);
    *v8 = v9;
    *(v8 + 12) = *(v7 + 12);
    *(a1 + 256) = vaddq_s64(*(a1 + 256), xmmword_1B5AE01E0);
    std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__maybe_remove_front_spare[abi:ne200100](a1 + 224, 1);
    if (v13.__owns_)
    {
      std::mutex::unlock(v13.__m_);
    }

    v10 = *(a1 + 272);
    v11 = *v10;
    *(a2 + 8) = *(v10 + 2);
    *a2 = v11;
    v5 = *(*(a1 + 272) + 12);
  }

  else
  {
    v5 = 0;
    v6 = *v4;
    *(a2 + 8) = *(v4 + 2);
    *a2 = v6;
  }

  return v5 & 1;
}

void sub_1B5375780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ComputeAheadFeatInput::~ComputeAheadFeatInput(quasar::ComputeAheadFeatInput *this)
{
  *this = &unk_1F2D0E9E8;
  v2 = (this + 48);
  std::mutex::lock((this + 48));
  *(this + 216) = 1;
  std::condition_variable::notify_one((this + 112));
  std::mutex::unlock(v2);
  dispatch_sync_f(*(this + 35), 0, quasar::ComputeAheadFeatInput::WaitForComputeAheadToFinish);
  dispatch_release(*(this + 35));
  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3)
  {
    MEMORY[0x1B8C85350](v3, 0x1000C408B6DE1C6);
  }

  std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::~deque[abi:ne200100](this + 28);
  std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::~deque[abi:ne200100](this + 20);
  std::condition_variable::~condition_variable((this + 112));
  std::mutex::~mutex(v2);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::ComputeAheadFeatInput::~ComputeAheadFeatInput(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::deque<std::pair<kaldi::VadSegmentInfo,BOOL>>::emplace_back<kaldi::VadSegmentInfo&,BOOL &>(unint64_t *a1, uint64_t *a2, _BYTE *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  v8 = 32 * (v6 - v7) - 1;
  if (v6 == v7)
  {
    v8 = 0;
  }

  v9 = a1[5] + a1[4];
  if (v8 == v9)
  {
    std::deque<std::pair<kaldi::VadSegmentInfo,BOOL>>::__add_back_capacity(a1);
    v7 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v10 = *(v7 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9;
  v11 = *a2;
  *(v10 + 8) = *(a2 + 2);
  *v10 = v11;
  *(v10 + 12) = *a3;
  v12 = a1[4];
  v13 = a1[5] + 1;
  a1[5] = v13;
  v14 = v12 + v13;
  v15 = a1[1];
  v16 = (v15 + 8 * (v14 >> 8));
  v17 = *v16 + 16 * v14;
  if (a1[2] == v15)
  {
    v17 = 0;
  }

  if (v17 == *v16)
  {
    v17 = *(v16 - 1) + 4096;
  }

  return v17 - 16;
}

uint64_t std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void std::deque<std::pair<kaldi::VadSegmentInfo,BOOL>>::__add_back_capacity(unint64_t *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v9);
}

void sub_1B5375C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::ComputeAheadFeatInput::Batch>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0EA70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::readIVectors(std::string *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v11 = 0;
  kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Open(&v11, this);
  if (!v11)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ivector file ", 13);
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " cannot be opened", 17);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  while (1)
  {
    kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(&v11);
    if ((*(*v11 + 8))(v11))
    {
      break;
    }

    kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(&v11);
    v4 = (*(*v11 + 32))(v11);
    std::vector<kaldi::Vector<float>>::push_back[abi:ne200100](a2, v4);
    kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(&v11);
    (*(*v11 + 48))(v11);
  }

  if (v11)
  {
    (*(*v11 + 72))(v11);
  }
}

void sub_1B5375EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 - 40);
  if (v11)
  {
    (*(*v11 + 72))(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Open(uint64_t *a1, std::string *this)
{
  if (*a1 && (kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Close(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "SequentialTableReader<Holder>::Open(), could not close previously open object.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = kaldi::ClassifyRspecifier(this, 0, 0);
  if (v3 == 2)
  {
    operator new();
  }

  if (v3 == 1)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid rspecifier ", 19);
    v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = this->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
  }

  return 0;
}

uint64_t std::vector<kaldi::Vector<float>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::Vector<float>>::__emplace_back_slow_path<kaldi::Vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::Vector<float>>::__construct_one_at_end[abi:ne200100]<kaldi::Vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void quasar::readLandmarkHashVectors(std::string *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v11 = 0;
  kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Open(&v11, this);
  if (!v11)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Landmark hash ark file ", 23);
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " cannot be opened", 17);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  while (1)
  {
    kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(&v11);
    if ((*(*v11 + 8))(v11))
    {
      break;
    }

    kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(&v11);
    v4 = (*(*v11 + 32))(v11);
    std::vector<kaldi::Vector<float>>::push_back[abi:ne200100](a2, v4);
    kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(&v11);
    (*(*v11 + 48))(v11);
  }

  if (v11)
  {
    (*(*v11 + 72))(v11);
  }
}

void sub_1B5376340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 - 40);
  if (v11)
  {
    (*(*v11 + 72))(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::computeDotProducts(uint64_t a1@<X0>, void *a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a3, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      kaldi::VecVec<float>(a1, v6);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a3->__begin_;
        v13 = end - a3->__begin_;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = value - begin;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v17);
        }

        *(4 * v14) = v8;
        v11 = (4 * v14 + 4);
        memcpy(0, begin, v13);
        v18 = a3->__begin_;
        a3->__begin_ = 0;
        a3->__end_ = v11;
        a3->__end_cap_.__value_ = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *end = v8;
        v11 = end + 1;
      }

      a3->__end_ = v11;
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_1B53764DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tNormalize(float **a1@<X0>, float **a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 0.0;
  if (*a2 != v7)
  {
    v9 = *a2;
    do
    {
      v10 = *v9++;
      v8 = v8 + v10;
    }

    while (v9 != v7);
  }

  v11 = v8 / (v7 - v6);
  if (quasar::gLogLevel >= 6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "imposterMean=", 13);
    MEMORY[0x1B8C84BE0](v12, v11);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v39);
    v6 = *a2;
    v7 = a2[1];
  }

  v13 = 0.0;
  if (v6 != v7)
  {
    v14 = v6;
    do
    {
      v15 = *v14++;
      v13 = v13 + (v15 - v11) * (v15 - v11);
    }

    while (v14 != v7);
  }

  v16 = sqrt(v13 / (v7 - v6));
  if (quasar::gLogLevel >= 6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "imposterStd=", 12);
    MEMORY[0x1B8C84BE0](v17, v16);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v39);
  }

  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<int>::reserve(a3, a1[1] - *a1);
  v18 = *a1;
  v19 = a1[1];
  if (*a1 != v19)
  {
    do
    {
      if (v16 == 0.0)
      {
        end = a3->__end_;
        value = a3->__end_cap_.__value_;
        if (end >= value)
        {
          begin = a3->__begin_;
          v28 = end - a3->__begin_;
          v29 = (v28 >> 2) + 1;
          if (v29 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v30 = value - begin;
          if (v30 >> 1 > v29)
          {
            v29 = v30 >> 1;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v31 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v31);
          }

          v35 = (4 * (v28 >> 2));
          *v35 = 2139095039;
          v22 = v35 + 1;
LABEL_35:
          memcpy(0, begin, v28);
          v38 = a3->__begin_;
          a3->__begin_ = 0;
          a3->__end_ = v22;
          a3->__end_cap_.__value_ = 0;
          if (v38)
          {
            operator delete(v38);
          }

          goto LABEL_37;
        }

        *end = 2139095039;
        v22 = end + 1;
      }

      else
      {
        v23 = (*v18 - v11) / v16;
        v25 = a3->__end_;
        v24 = a3->__end_cap_.__value_;
        if (v25 >= v24)
        {
          begin = a3->__begin_;
          v28 = v25 - a3->__begin_;
          v32 = (v28 >> 2) + 1;
          if (v32 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v33 = v24 - begin;
          if (v33 >> 1 > v32)
          {
            v32 = v33 >> 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v34);
          }

          v36 = (4 * (v28 >> 2));
          v37 = v23;
          *v36 = v37;
          v22 = (v36 + 1);
          goto LABEL_35;
        }

        v26 = v23;
        *v25 = v26;
        v22 = v25 + 1;
      }

LABEL_37:
      a3->__end_ = v22;
      ++v18;
    }

    while (v18 != v19);
  }
}

void sub_1B5376834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::FingerprintDetector::registerParams(quasar::FingerprintDetector *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fingerprint-detector");
  quasar::SystemConfig::enforceMinVersion(a2, 80, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::MfccOptions::Register(this + 464, a2);
  kaldi::SlidingWindowCmnOptions::Register(this + 568, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "nnet-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Name of nnet file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 712, v4, 0, 80, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "threshold");
  std::string::basic_string[abi:ne200100]<0>(v4, "Threshold to apply to ivector score");
  quasar::SystemConfig::Register<float>(a2, __p, this + 1224, v4, 1, 80, 0, 84, 0);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ivector-fingerprint-ark-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "ark file with ivectors for fingerprints");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 736, v4, 0, 80, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ivector-imposter-ark-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "ark file with ivectors with imposters");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 760, v4, 0, 80, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "trigger-preceding-max-ms");
  std::string::basic_string[abi:ne200100]<0>(v4, "Maximum amount of audio used before trigger phrase");
  quasar::SystemConfig::Register<int>(a2, __p, this + 784, v4, 0, 83, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "trigger-trailing-min-ms");
  std::string::basic_string[abi:ne200100]<0>(v4, "Minimum amount of audio used after trigger phrase");
  quasar::SystemConfig::Register<int>(a2, __p, this + 788, v4, 0, 83, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "trigger-trailing-max-ms");
  std::string::basic_string[abi:ne200100]<0>(v4, "Maximum amount of audio used after trigger phrase");
  quasar::SystemConfig::Register<int>(a2, __p, this + 792, v4, 0, 83, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "trigger-num-tokens");
  std::string::basic_string[abi:ne200100]<0>(v4, "The number of tokens in the trigger phrase (two for hey siri)");
  quasar::SystemConfig::Register<int>(a2, __p, this + 796, v4, 0, 83, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ivector-threshold");
  std::string::basic_string[abi:ne200100]<0>(v4, "Threshold to apply to ivector score");
  quasar::SystemConfig::Register<float>(a2, __p, this + 1224, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ivector-score-bias");
  std::string::basic_string[abi:ne200100]<0>(v4, "Bias to apply to ivector score when combining with lmark");
  quasar::SystemConfig::Register<float>(a2, __p, this + 1228, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "supported-input-origins-list");
  std::string::basic_string[abi:ne200100]<0>(v4, "The input origins that are supported (should be comma separated)");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 648, v4, 0, 84, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-hash-strategy");
  std::string::basic_string[abi:ne200100]<0>(v4, "Hashing strategy (e.g. 3x3)");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 1232, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-hash-start-idx");
  std::string::basic_string[abi:ne200100]<0>(v4, "Feature start idx for hashing");
  quasar::SystemConfig::Register<int>(a2, __p, this + 1304, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-hash-end-idx");
  std::string::basic_string[abi:ne200100]<0>(v4, "Feature end idx for hashing");
  quasar::SystemConfig::Register<int>(a2, __p, this + 1308, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-hash-fingerprint-ark-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "ark file with landmark hash vectors for fingerprints");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 1256, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-hash-imposter-ark-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "ark file with landmark hash vectors for imposters");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 1280, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-min-len");
  std::string::basic_string[abi:ne200100]<0>(v4, "Min num frames for computing similarity between landmark hash vectors");
  quasar::SystemConfig::Register<int>(a2, __p, this + 1312, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-max-len");
  std::string::basic_string[abi:ne200100]<0>(v4, "Max num frames for computing similarity between landmark hash vectors");
  quasar::SystemConfig::Register<int>(a2, __p, this + 1316, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmark-threshold");
  std::string::basic_string[abi:ne200100]<0>(v4, "Threshold to apply to landmark similarity");
  quasar::SystemConfig::Register<float>(a2, __p, this + 1376, v4, 0, 85, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B53770EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MfccOptions::Register(uint64_t a1, uint64_t a2)
{
  kaldi::FrameExtractionOptions::Register(a1, a2);
  kaldi::MelBanksOptions::Register(a1 + 56, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "num-ceps");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of cepstra in MFCC computation (including C0)");
  (*(*a2 + 8))(a2, v6, a1 + 80, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "use-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "Use energy (not C0) in MFCC computation");
  (**a2)(a2, v6, a1 + 84, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "energy-floor");
  std::string::basic_string[abi:ne200100]<0>(__p, "Floor on energy (absolute, not relative) in MFCC computation");
  (*(*a2 + 24))(a2, v6, a1 + 88, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "raw-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, compute energy before preemphasis and windowing");
  (**a2)(a2, v6, a1 + 92, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "cepstral-lifter");
  std::string::basic_string[abi:ne200100]<0>(__p, "Constant that controls scaling of MFCCs");
  (*(*a2 + 24))(a2, v6, a1 + 96, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "htk-compat");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, put energy or C0 last and use a factor of sqrt(2) on C0.  Warning: not sufficient to get HTK compatible features (need to change other parameters).");
  (**a2)(a2, v6, a1 + 100, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B53774A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::SlidingWindowCmnOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "cmn-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Window in frames for running average CMN computation");
  (*(*a2 + 8))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-cmn-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minimum CMN window used at start of decoding (adds latency only at start). Only applicable if center == false, ignored otherwise.");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "norm-vars");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, normalize variance to one.");
  (**a2)(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "center");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, use a window centered on the current frame (to the extent possible, modulo end effects). If false, window is set based on cmn-window and lookahead.");
  (**a2)(a2, v6, a1 + 13, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lookahead");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames to look ahead for online CMN. Ignored if center==true.");
  (*(*a2 + 8))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5377774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::FingerprintDetector::finishInit(quasar::FingerprintDetector *this)
{
  std::string::basic_string[abi:ne200100]<0>(v25, ",");
  quasar::splitAndTrimNoEmpty(this + 27, v25, &v8);
  if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25[0].__r_.__value_.__l.__data_);
  }

  v3 = *(&v8 + 1);
  for (i = v8; i != v3; i += 3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 84, i, i);
  }

  v25[0].__r_.__value_.__r.__words[0] = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v25);
  v4 = *(this + 735);
  if (v4 < 0)
  {
    v4 = *(this + 90);
  }

  if (v4)
  {
    *(this + 456) = 1;
    v5 = *(this + 130);
    kaldi::Matrix<float>::Resize(this + 73, v5, v5, 0, 0);
    kaldi::ComputeDctMatrix<float>(this + 146);
    kaldi::Matrix<float>::Resize(this + 73, *(this + 136), v5, 2, 0);
    if (*(this + 140) != 0.0)
    {
      kaldi::Vector<float>::Resize(this + 78, *(this + 136), 0);
      kaldi::ComputeLifterCoeffs(this + 156, *(this + 140));
    }

    fst::FstReadOptions::FstReadOptions(v25);
    v26 = 2;
    kaldi::nnet1::Nnet::ReadMapped(this + 100, v25);
  }

  if ((*(this + 1255) & 0x8000000000000000) != 0)
  {
    if (!*(this + 155))
    {
      return;
    }
  }

  else if (!*(this + 1255))
  {
    return;
  }

  *(this + 457) = 1;
  if ((kaldi::hashstring2enum(this + 154, this + 330) & 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Unrecognized hash strategy string ", 34);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7, this + 154);
LABEL_29:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v8);
  }

  if ((*(this + 326) & 0x80000000) != 0 || (*(this + 327) & 0x80000000) != 0 || (*(this + 328) & 0x80000000) != 0 || (*(this + 329) & 0x80000000) != 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Landmark params not properly set");
    goto LABEL_29;
  }

  quasar::readLandmarkHashVectors((this + 1256), &v8);
  std::vector<kaldi::Vector<float>>::__vdeallocate(this + 166);
  *(this + 83) = v8;
  *(this + 168) = v9;
  *&v9 = 0;
  v8 = 0uLL;
  v25[0].__r_.__value_.__r.__words[0] = &v8;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](v25);
  v6 = *(this + 1303);
  if (v6 < 0)
  {
    v6 = *(this + 161);
  }

  if (v6)
  {
    quasar::readLandmarkHashVectors((this + 1280), &v8);
    std::vector<kaldi::Vector<float>>::__vdeallocate(this + 169);
    *(this + 1352) = v8;
    *(this + 171) = v9;
    *&v9 = 0;
    v8 = 0uLL;
    v25[0].__r_.__value_.__r.__words[0] = &v8;
    std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](v25);
  }

  if (quasar::gLogLevel >= 4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "fp-landmark=enabled", 19);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v8);
  }
}

void sub_1B5377CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 120) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v9 - 120));
  JUMPOUT(0x1B5377CDCLL);
}

void quasar::FingerprintDetector::FingerprintDetector(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D0EAC0;
  *(v3 + 456) = 0;
  kaldi::MfccOptions::MfccOptions((v3 + 464));
  *(a1 + 568) = 0x6400000258;
  *(a1 + 576) = 0;
  *(a1 + 580) = 0;
  kaldi::Matrix<float>::Matrix(a1 + 584);
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 648), "VoiceTrigger");
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0x2FFFFFFFFLL;
  kaldi::nnet1::Nnet::Nnet((a1 + 800));
}

void sub_1B5377E00(_Unwind_Exception *a1)
{
  if (*(v1 + 783) < 0)
  {
    operator delete(*(v1 + 760));
  }

  if (*(v1 + 759) < 0)
  {
    operator delete(*(v1 + 736));
  }

  if (*(v1 + 735) < 0)
  {
    operator delete(*v3);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v1 + 672));
  if (*(v1 + 671) < 0)
  {
    operator delete(*v2);
  }

  kaldi::Vector<float>::Destroy(v1 + 624);
  kaldi::Matrix<float>::~Matrix(v1 + 584);
  if (*(v1 + 511) < 0)
  {
    operator delete(*(v1 + 488));
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void quasar::FingerprintDetector::fbank2Mfcc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (kaldi::MatrixBase<float>::NumCols(a2) != *(a1 + 520))
  {
    if (kaldi::MatrixBase<float>::NumCols(a2) != *(a1 + 520) + 1)
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
      v30 = 0u;
      *__dst = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__dst);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Invalid fbank dims. ", 20);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Expected: ", 10);
      v21 = MEMORY[0x1B8C84C00](v20, *(a1 + 520));
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " Got: ", 6);
      v23 = kaldi::MatrixBase<float>::NumCols(a2);
      MEMORY[0x1B8C84C00](v22, v23);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__dst);
    }

    v6 = kaldi::MatrixBase<float>::NumRows(a2);
    v7 = kaldi::MatrixBase<float>::NumCols(a2);
    kaldi::Matrix<float>::Resize(a2, v6, (v7 - 1), 2, 0);
  }

  v8 = kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::Matrix<float>::Resize(a3, v8, *(a1 + 544), 0, 0);
  if (kaldi::MatrixBase<float>::NumRows(a3) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = (*a3 + 4 * *(a3 + 16) * v9);
      v11 = kaldi::MatrixBase<float>::NumCols(a3);
      *&v29 = 0;
      __dst[0] = v10;
      __dst[1] = v11;
      v12 = *a2 + 4 * *(a2 + 16) * v9;
      v13 = kaldi::MatrixBase<float>::NumCols(a2);
      v26 = 0;
      v27 = 0;
      v24 = v12;
      v25 = v13;
      kaldi::VectorBase<float>::AddMatVec(__dst, (a1 + 584), 111, &v24, 1.0, 0.0);
      if (*(a1 + 560) != 0.0)
      {
        kaldi::VectorBase<float>::MulElements(__dst, (a1 + 624));
      }

      if (*(a1 + 564) == 1)
      {
        v14 = __dst[0];
        v15 = *__dst[0];
        v16 = *(a1 + 544);
        v17 = v16 - 1;
        if (v16 >= 2)
        {
          memmove(__dst[0], __dst[0] + 4, 4 * (v16 - 1));
        }

        v18 = v15 * 1.41421356;
        if (*(a1 + 548))
        {
          v18 = v15;
        }

        v14[v17] = v18;
      }

      ++v9;
    }

    while (v9 < kaldi::MatrixBase<float>::NumRows(a3));
  }
}

uint64_t quasar::FingerprintDetector::applySlidingCmvn(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  v7 = kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::Matrix<float>::Resize(a3, v6, v7, 1, 0);

  return kaldi::SlidingWindowCmn((a1 + 568), a2, a3);
}

void *quasar::FingerprintDetector::getNormalizedIVectorSimilarity@<X0>(void *result@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  if (result[147] == result[148])
  {
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    return result;
  }

  v3 = result;
  v30 = 0u;
  v29 = 0u;
  v28 = &unk_1F2D0EE38;
  v31 = 0;
  kaldi::nnet1::Nnet::ResetHistoryStateIfExists((result + 100));
  kaldi::CuMatrix<float>::CuMatrix<float>();
  kaldi::nnet1::Nnet::Feedforward(v3 + 100, v8, &v28, 0xFFFFFFFF, 0);
  kaldi::CuMatrix<float>::~CuMatrix(v8);
  v8[1] = (v29 + 4 * v30 * (HIDWORD(v29) - 1));
  v8[0] = &unk_1F2CFCA48;
  *&v9 = DWORD2(v29);
  *(&v9 + 1) = *(&v30 + 1);
  v26 = 0;
  v27 = 0;
  v25 = 0;
  kaldi::Vector<float>::Init(&v25, SDWORD2(v29));
  kaldi::CuVectorBase<float>::CopyToVec<float>(v8, &v25);
  v4 = kaldi::VectorBase<float>::Norm(&v25, 2.0);
  v5 = *&v4 / sqrt(v26);
  if (v5 != 0.0)
  {
    kaldi::VectorBase<float>::Scale(&v25, 1.0 / v5);
LABEL_7:
    if (quasar::gLogLevel >= 5)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *v8 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Speaker embedding=", 18);
      kaldi::VectorBase<float>::Write(&v25, v6, 0);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v8);
    }

    goto LABEL_9;
  }

  if (quasar::gLogLevel >= 5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Encountered zero iVector", 24);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v8);
    goto LABEL_7;
  }

LABEL_9:
  quasar::computeDotProducts(&v25, v3 + 147, v8);
  quasar::computeDotProducts(&v25, v3 + 150, &__p);
  quasar::tNormalize(v8, &__p, a2);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  kaldi::Vector<float>::Destroy(&v25);
  return kaldi::CuMatrix<float>::~CuMatrix(&v28);
}

void sub_1B5378420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a13);
  kaldi::Vector<float>::Destroy(v14 - 120);
  kaldi::CuMatrix<float>::~CuMatrix(v14 - 96);
  _Unwind_Resume(a1);
}

uint64_t quasar::FingerprintDetector::checkFingerprint(float a1, uint64_t a2, uint64_t *a3, _DWORD *a4, float *a5)
{
  *a5 = -INFINITY;
  v5 = *a3;
  if (a3[1] == *a3)
  {
    v11 = 0;
LABEL_15:
    if (quasar::gLogLevel >= 4)
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
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Did not match any known fingerprints", 36);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v19);
    }

    return v11 & 1;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    if (quasar::gLogLevel >= 4)
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
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Index=", 6);
      v13 = MEMORY[0x1B8C84C00](v12, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " similarity=", 12);
      std::ostream::operator<<();
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v19);
      v5 = *a3;
    }

    v14 = *(v5 + 4 * v10);
    if (v14 > *a5)
    {
      *a4 = v10;
      *a5 = v14;
      v14 = *(v5 + 4 * v10);
    }

    if (v14 > a1)
    {
      if (quasar::gLogLevel >= 4)
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
        v19 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Index=", 6);
        v16 = MEMORY[0x1B8C84C00](v15, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " similarity=", 12);
        v17 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " exceeded threshold=", 20);
        std::ostream::operator<<();
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v19);
        v5 = *a3;
      }

      v11 = 1;
    }

    ++v10;
  }

  while (v10 < (a3[1] - v5) >> 2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  return v11 & 1;
}

unint64_t quasar::FingerprintDetector::getAudioProcessingWindow(_DWORD *a1, uint64_t a2, quasar::DecoderChainOutput **a3)
{
  if (!quasar::DecoderChainOutput::nonEmptyTopChoice(*a3))
  {
    goto LABEL_4;
  }

  v6 = **(*a3 + 46);
  if (*(*(*a3 + 46) + 8) == v6)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *v6;
  v8 = *(**(*a3 + 46) + 8);
  v9 = a1[199];
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 5) < v9)
  {
LABEL_4:
    if (quasar::gLogLevel < 4)
    {
      return -1;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Trigger phrase not detected", 27);
LABEL_6:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v18);
    return -1;
  }

  v11 = *(v7 + 224 * v9 - 188);
  v12 = *(v8 - 192);
  if (v12 < a1[197] + v11)
  {
    if (quasar::gLogLevel < 4)
    {
      return -1;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Not enough audio to make a decision.", 36);
    goto LABEL_6;
  }

  v13 = (*(v7 + 28) - a1[196]) & ~((*(v7 + 28) - a1[196]) >> 31);
  v14 = a1[198];
  v15 = v14 + v11;
  if (v12 < v15)
  {
    v15 = v12;
  }

  if (v14 <= 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v13 / (*(**(*a2 + 16) + 24))(*(*a2 + 16)));
  return v17 | ((v16 / (*(**(*a2 + 16) + 24))(*(*a2 + 16))) << 32);
}

void quasar::FingerprintDetector::computeLandmarkHashSimilarity(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, std::vector<unsigned int> *a5@<X8>)
{
  a5->__begin_ = 0;
  a5->__end_ = 0;
  a5->__end_cap_.__value_ = 0;
  if (a4 == -1)
  {
    v8 = a3[1];
  }

  else
  {
    v8 = *a3 + 24 * a4 + 24;
  }

  if (a4 == -1)
  {
    v9 = *a3;
  }

  else
  {
    v9 = *a3 + 24 * a4;
  }

  std::vector<int>::reserve(a5, 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3));
  for (; v9 != v8; v9 += 24)
  {
    v10 = kaldi::computeHashSimilarity(a2, v9, *(a1 + 1312), *(a1 + 1316));
    end = a5->__end_;
    value = a5->__end_cap_.__value_;
    if (end >= value)
    {
      begin = a5->__begin_;
      v15 = end - a5->__begin_;
      v16 = v15 >> 2;
      v17 = (v15 >> 2) + 1;
      if (v17 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v18 = value - begin;
      if (v18 >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v19 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a5, v19);
      }

      *(4 * v16) = v10;
      v13 = (4 * v16 + 4);
      memcpy(0, begin, v15);
      v20 = a5->__begin_;
      a5->__begin_ = 0;
      a5->__end_ = v13;
      a5->__end_cap_.__value_ = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *end = v10;
      v13 = end + 1;
    }

    a5->__end_ = v13;
  }
}

void sub_1B5378A94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::FingerprintDetector::getLandmarkSimilarity(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::vector<unsigned int> *a4@<X8>)
{
  kaldi::Matrix<float>::Matrix(v47);
  quasar::FingerprintDetector::applySlidingCmvn(a1, a2, v47);
  v8 = kaldi::MatrixBase<float>::NumRows(v47);
  memset(v46, 0, sizeof(v46));
  kaldi::Vector<float>::Resize(v46, (v8 - 1), 0);
  if ((kaldi::computeHash(v47, v46, *(a1 + 1304), *(a1 + 1308), *(a1 + 1320)) & 1) == 0)
  {
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
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Hash strategy ", 14);
    v23 = *(a1 + 1255);
    if (v23 >= 0)
    {
      v24 = a1 + 1232;
    }

    else
    {
      v24 = *(a1 + 1232);
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 1255);
    }

    else
    {
      v25 = *(a1 + 1240);
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " is not implemented", 19);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v29);
  }

  if (quasar::gLogLevel >= 5)
  {
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
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Landmark hash=", 14);
    kaldi::VectorBase<float>::Write(v46, v9, 0);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v29);
  }

  quasar::FingerprintDetector::computeLandmarkHashSimilarity(a1, v46, (a1 + 1328), a3, &v28);
  v10 = quasar::gLogLevel;
  if (quasar::gLogLevel >= 6)
  {
    begin = v28.__begin_;
    end = v28.__end_;
    if (v28.__end_ != v28.__begin_)
    {
      v13 = 0;
      do
      {
        if (v10 >= 6)
        {
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
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "[", 1);
          v15 = MEMORY[0x1B8C84C30](v14, v13);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "] Unnormalized landmark hash score: ", 36);
          std::ostream::operator<<();
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v29);
          v10 = quasar::gLogLevel;
          begin = v28.__begin_;
          end = v28.__end_;
        }

        ++v13;
      }

      while (v13 < end - begin);
    }
  }

  if (*(a1 + 1352) == *(a1 + 1360))
  {
    *a4 = v28;
  }

  else
  {
    quasar::FingerprintDetector::computeLandmarkHashSimilarity(a1, v46, (a1 + 1352), -1, &__p);
    quasar::tNormalize(&v28, &__p, a4);
    v16 = quasar::gLogLevel;
    if (quasar::gLogLevel >= 6)
    {
      v18 = a4->__begin_;
      v17 = a4->__end_;
      if (v17 != a4->__begin_)
      {
        v19 = 0;
        do
        {
          if (v16 >= 6)
          {
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
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v29 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "[", 1);
            v21 = MEMORY[0x1B8C84C30](v20, v19);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "] T-normalized landmark hash score: ", 36);
            std::ostream::operator<<();
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v29);
            v16 = quasar::gLogLevel;
            v18 = a4->__begin_;
            v17 = a4->__end_;
          }

          ++v19;
        }

        while (v19 < v17 - v18);
      }
    }

    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v28.__begin_)
    {
      v28.__end_ = v28.__begin_;
      operator delete(v28.__begin_);
    }
  }

  kaldi::Vector<float>::Destroy(v46);
  kaldi::Matrix<float>::~Matrix(v47);
}

void sub_1B5378E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  kaldi::Vector<float>::Destroy(v17 - 128);
  kaldi::Matrix<float>::~Matrix(v17 - 104);
  _Unwind_Resume(a1);
}

uint64_t quasar::FingerprintDetector::runImpl(uint64_t a1, uint64_t a2, quasar::DecoderChainOutput **a3, quasar::SpeechRequestData **a4)
{
  InputOrigin = quasar::SpeechRequestData::getInputOrigin(*a4);
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 672), InputOrigin))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN5kaldi6MatrixIfEENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (quasar::gLogLevel >= 4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *v14 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FingerprintDetector not run on input origin ", 44);
    v9 = quasar::SpeechRequestData::getInputOrigin(*a4);
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = *v9;
    }

    if (v10 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v11, v12);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v14);
  }

  *(*a3 + 174) = 0;
  return 0;
}

void sub_1B5379860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  operator delete(v51);
  if (__p)
  {
    operator delete(__p);
  }

  kaldi::Matrix<float>::~Matrix(&a39);
  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  _Unwind_Resume(a1);
}

void quasar::FingerprintDetector::~FingerprintDetector(void **this)
{
  quasar::FingerprintDetector::~FingerprintDetector(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0EAC0;
  v2 = this + 169;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 166;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 1303) < 0)
  {
    operator delete(this[160]);
  }

  if (*(this + 1279) < 0)
  {
    operator delete(this[157]);
  }

  if (*(this + 1255) < 0)
  {
    operator delete(this[154]);
  }

  v2 = this + 150;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 147;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  kaldi::nnet1::Nnet::~Nnet((this + 100));
  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  if (*(this + 759) < 0)
  {
    operator delete(this[92]);
  }

  if (*(this + 735) < 0)
  {
    operator delete(this[89]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 84);
  if (*(this + 671) < 0)
  {
    operator delete(this[81]);
  }

  kaldi::Vector<float>::Destroy((this + 78));
  kaldi::Matrix<float>::~Matrix((this + 73));
  if (*(this + 511) < 0)
  {
    operator delete(this[61]);
  }

  quasar::Decoder::~Decoder(this);
}

void kaldi::FrameExtractionOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "sample-frequency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Waveform data sample frequency (must match the waveform file, if specified there)");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frame-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame length in milliseconds");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frame-shift");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame shift in milliseconds");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "preemphasis-coefficient");
  std::string::basic_string[abi:ne200100]<0>(__p, "Coefficient for use in signal preemphasis");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "remove-dc-offset");
  std::string::basic_string[abi:ne200100]<0>(__p, "Subtract mean from waveform on each frame");
  (**a2)(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "dither");
  std::string::basic_string[abi:ne200100]<0>(__p, "Dithering constant (0.0 means no dither)");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "window-type");
  std::string::basic_string[abi:ne200100]<0>(__p, "Type of window (hamming|hanning|povey|rectangular)");
  (*(*a2 + 40))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "round-to-power-of-two");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, round window size to power of two.");
  (**a2)(a2, v6, a1 + 48, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "snip-edges");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, end effects will be handled by outputting only frames that completely fit in the file, and the number of frames depends on the frame-length.  If false, the number of frames depends only on the frame-shift, and we reflect the data at the ends.");
  (**a2)(a2, v6, a1 + 49, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5379F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

kaldi::MfccOptions *kaldi::MfccOptions::MfccOptions(kaldi::MfccOptions *this)
{
  *this = xmmword_1B5AE12B0;
  *(this + 4) = 1064849900;
  *(this + 20) = 1;
  std::string::basic_string[abi:ne200100]<0>(this + 3, "povey");
  *(this + 24) = 257;
  *(this + 52) = 0x17BF800000;
  *(this + 60) = xmmword_1B5AFC250;
  *(this + 38) = 0;
  *(this + 20) = 13;
  *(this + 84) = 1;
  *(this + 22) = 0;
  *(this + 92) = 1;
  *(this + 24) = 1102053376;
  *(this + 100) = 0;
  return this;
}

uint64_t kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Close(void *a1)
{
  kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(a1);
  v2 = (*(**a1 + 56))();
  if (*a1)
  {
    (*(**a1 + 72))(*a1);
  }

  *a1 = 0;
  return v2;
}

void *kaldi::SequentialTableReader<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::CheckImpl(void *result)
{
  if (!*result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Trying to use empty SequentialTableReader (perhaps you ", 55);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "passed the empty string as an argument to a program?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Open(uint64_t a1, std::string *this)
{
  if (*(a1 + 76) && ((*(*a1 + 56))(a1) & 1) == 0)
  {
    if (*(a1 + 75) != 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "TableReader::Open, error closing previous input.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "TableReader::Open, error closing previous input (only warning, since permissive mode).", 86);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    }
  }

  kaldi::ClassifyRspecifier(this, a1 + 48, a1 + 72);
  v4 = 1;
  if ((kaldi::Input::OpenInternal((a1 + 8), a1 + 48, 1, 0) & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "TableReader: failed to open stream ", 35);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v13, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v13 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v13, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    }

    goto LABEL_39;
  }

  *(a1 + 76) = 1;
  (*(*a1 + 48))(a1);
  if (*(a1 + 76) == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "TableReader: error beginning to read table (wrong filename?): ", 62);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v12 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v12, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v9, v10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    }

    kaldi::Input::Close((a1 + 8));
LABEL_39:
    v4 = 0;
    *(a1 + 76) = 0;
  }

  return v4;
}

uint64_t kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Done(uint64_t a1)
{
  v1 = *(a1 + 76) - 2;
  if (v1 >= 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Done() called on TableReader object at the wrong time.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return (3u >> (v1 & 7)) & 1;
}

uint64_t kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::IsOpen(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1 >= 6 || ((0x3Du >> v1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "IsOpen() called on invalid object.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return (0x3Eu >> v1) & 1;
}

uint64_t kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Key(uint64_t a1)
{
  if (*(a1 + 76) != 4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Key() called on TableReader object at the wrong time.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return a1 + 24;
}

uint64_t kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Value(uint64_t a1)
{
  if (*(a1 + 76) != 4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Value() called on TableReader object at the wrong time.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  v1 = (a1 + 16);

  return kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Value(v1);
}

void kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::FreeCurrent(uint64_t a1)
{
  if (*(a1 + 76) == 4)
  {
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 16));
    *(a1 + 76) = 5;
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "TableReader: FreeCurrent called at the wrong time.", 50);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v2);
  }
}

void kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Next(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (v2 != 1 && v2 != 5)
  {
    if (v2 != 4)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v30, "TableReader: Next() called wrongly.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
    }

    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 16));
  }

  kaldi::Input::Stream((a1 + 8));
  v5 = v4;
  std::ios_base::clear((v4 + *(*v4 - 24)), 0);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1 + 24);
  v6 = *(v5 + *(*v5 - 24) + 32);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 5) != 0)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Error reading archive ", 22);
        if (*(a1 + 71) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          v28 = *(a1 + 48);
        }

        kaldi::PrintableRxfilename(&v28, &__p);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v12 = v28.__r_.__value_.__r.__words[0];
LABEL_29:
        operator delete(v12);
LABEL_57:
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v30);
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    v9 = std::istream::peek();
    if (v9 != 9)
    {
      if (v9 == 10)
      {
        goto LABEL_17;
      }

      if (v9 != 32)
      {
        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Invalid archive file format: expected space after key ", 54);
          v14 = *(a1 + 47);
          if (v14 >= 0)
          {
            v15 = a1 + 24;
          }

          else
          {
            v15 = *(a1 + 24);
          }

          if (v14 >= 0)
          {
            v16 = *(a1 + 47);
          }

          else
          {
            v16 = *(a1 + 32);
          }

          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", got character ", 16);
          v27 = std::istream::peek();
          kaldi::CharToString(&v27, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &__p;
          }

          else
          {
            v19 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = __p.__r_.__value_.__l.__size_;
          }

          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", reading ", 10);
          if (*(a1 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v25, *(a1 + 48), *(a1 + 56));
          }

          else
          {
            v25 = *(a1 + 48);
          }

          kaldi::PrintableRxfilename(&v25, &v26);
          if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v26;
          }

          else
          {
            v23 = v26.__r_.__value_.__r.__words[0];
          }

          if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v26.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          v12 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_29;
        }

LABEL_58:
        v8 = 3;
        goto LABEL_59;
      }
    }

    std::istream::get();
LABEL_17:
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Read((a1 + 16), v5);
  }

  v8 = 2;
LABEL_59:
  *(a1 + 76) = v8;
}

BOOL kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Close(uint64_t a1)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Close() called on TableReader twice or otherwise wrongly.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if (*(a1 + 8))
  {
    kaldi::Input::Close((a1 + 8));
  }

  if (*(a1 + 76) == 4)
  {
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 16));
  }

  v2 = *(a1 + 76);
  if (*(a1 + 75) == 1)
  {
    result = 1;
    if (v2 == 3 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Error detected closing TableReader for archive ", 47);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v9, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v9 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v9, &__p);
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

      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " but ignoring ", 14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "it as permissive mode specified.", 32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v11);
      result = 1;
    }
  }

  else
  {
    result = v2 != 3;
  }

  *(a1 + 76) = 0;
  return result;
}

void kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::~SequentialTableReaderArchiveImpl(uint64_t a1)
{
  kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::~SequentialTableReaderArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *kaldi::KaldiObjectHolder<kaldi::Vector<float>>::~KaldiObjectHolder(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    kaldi::Vector<float>::Destroy(*a1);
    MEMORY[0x1B8C85350](v2, 0x1080C40EEF68E16);
  }

  return a1;
}

uint64_t kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Value(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "KaldiObjectHolder::Value() called wrongly.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t *kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    kaldi::Vector<float>::Destroy(*result);
    result = MEMORY[0x1B8C85350](v1, 0x1080C40EEF68E16);
    *v2 = 0;
  }

  return result;
}

void kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Read(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    kaldi::Vector<float>::Destroy(*a1);
    MEMORY[0x1B8C85350](v2, 0x1080C40EEF68E16);
  }

  operator new();
}

void sub_1B537B0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::SequentialTableReaderArchiveImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::~SequentialTableReaderArchiveImpl(uint64_t a1)
{
  *a1 = &unk_1F2D0EB98;
  v2 = *(a1 + 76);
  if (v2 != 3)
  {
LABEL_18:
    if (v2 == 4)
    {
      kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 16));
    }

    goto LABEL_20;
  }

  if (*(a1 + 75) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "TableReader: reading archive failed: ", 37);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v12 = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&v12, &__p);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Error detected closing TableReader for archive ", 47);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v13 = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&v13, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &__p;
    }

    else
    {
      v4 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v5 = __p.__r_.__value_.__l.__size_;
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " but ignoring ", 14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "it as permissive mode specified.", 32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    v2 = *(a1 + 76);
    goto LABEL_18;
  }

LABEL_20:
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  kaldi::KaldiObjectHolder<kaldi::Vector<float>>::~KaldiObjectHolder((a1 + 16));
  kaldi::Input::~Input((a1 + 8));
  return a1;
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Open(uint64_t a1, std::string *this)
{
  if (*(a1 + 120) && ((*(*a1 + 56))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "TableReader::Open, error closing previous input ", 48);
    if (*(a1 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      v11 = *(a1 + 64);
    }

    kaldi::PrintableRxfilename(&v11, &__p);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8, &__p);
    std::string::~string(&__p);
    std::string::~string(&v11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v10 = 0;
  kaldi::ClassifyRspecifier(this, a1 + 64, a1 + 88);
  if (kaldi::Input::OpenInternal((a1 + 8), a1 + 64, 1, &v10))
  {
    if (v10 == 1)
    {
      *(a1 + 120) = 2;
LABEL_10:
      kaldi::Input::Close((a1 + 8));
      return 0;
    }

    *(a1 + 120) = 6;
    (*(*a1 + 48))(a1);
    if (*(a1 + 120) == 2)
    {
      goto LABEL_10;
    }

    return 1;
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Failed to open script file ", 27);
      if (*(a1 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v9, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        v9 = *(a1 + 64);
      }

      kaldi::PrintableRxfilename(&v9, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v13);
    }

    result = 0;
    *(a1 + 120) = 0;
  }

  return result;
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Done(uint64_t a1)
{
  v1 = *(a1 + 120) - 1;
  if (v1 >= 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Done() called on TableReader object at the wrong time.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return (3u >> v1) & 1;
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::IsOpen(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "IsOpen() called on invalid object.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return (0x3Eu >> v1) & 1;
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Key(uint64_t a1)
{
  if ((*(a1 + 120) - 3) >= 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Key() called on TableReader object at the wrong time.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return a1 + 40;
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Value(uint64_t a1)
{
  v2 = *(a1 + 120);
  v3 = v2;
  if (v2 == 3)
  {
    kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::LoadCurrent(a1);
    v3 = *(a1 + 120);
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {
      if (v2 == 3)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "TableReader: failed to load object from ", 40);
        if (*(a1 + 119) < 0)
        {
          std::string::__init_copy_ctor_external(&v10, *(a1 + 96), *(a1 + 104));
        }

        else
        {
          v10 = *(a1 + 96);
        }

        kaldi::PrintableRxfilename(&v10, &v11);
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v11;
        }

        else
        {
          v6 = v11.__r_.__value_.__r.__words[0];
        }

        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v11.__r_.__value_.__l.__size_;
        }

        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, size);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " (to suppress this error, add the permissive ", 45);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "(p,) option to the rspecifier.");
        std::string::~string(&v11);
        std::string::~string(&v10);
      }

      else
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "TableReader: you called Value() after FreeCurrent().");
      }
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "TableReader: Value() called at the wrong time.");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Value((a1 + 24));
}

void kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::FreeCurrent(uint64_t a1)
{
  if (*(a1 + 120) == 4)
  {
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 24));
    *(a1 + 120) = 5;
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "TableReader: FreeCurrent called at the wrong time.", 50);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v2);
  }
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Next(_BYTE *a1)
{
  do
  {
    kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::NextScpLine(a1);
    result = (*(*a1 + 8))(a1);
    if (result)
    {
      break;
    }

    if (a1[91] != 1)
    {
      break;
    }

    result = kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::LoadCurrent(a1);
  }

  while (!result);
  return result;
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::Close(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = (a1 + 8);
  if (v3)
  {
    kaldi::Input::Close(v2);
  }

  if (*(a1 + 16))
  {
    kaldi::Input::Close((a1 + 16));
  }

  if (*(a1 + 120) == 4)
  {
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 24));
  }

  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Close() called on input that was not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  v4 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v4 != 2)
  {
    return 1;
  }

  if (*(a1 + 91) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Close() called on scp file with read error, ignoring the error because permissive mode specified.", 97);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v6);
    }

    return 1;
  }

  return 0;
}

void kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::~SequentialTableReaderScriptImpl(uint64_t a1)
{
  kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::~SequentialTableReaderScriptImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::LoadCurrent(uint64_t a1)
{
  if (*(a1 + 120) != 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "TableReader: LoadCurrent() called at the wrong time.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  if (kaldi::Input::OpenInternal((a1 + 16), a1 + 96, 1, 0))
  {
    kaldi::Input::Stream((a1 + 16));
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Read((a1 + 24), v2);
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TableReader: failed to open file ", 33);
    if (*(a1 + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      v7 = *(a1 + 96);
    }

    kaldi::PrintableRxfilename(&v7, &__p);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
  }

  result = 0;
  *(a1 + 120) = 5;
  return result;
}

void kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::NextScpLine(uint64_t a1)
{
  v2 = *(a1 + 120);
  if ((v2 - 5) >= 2 && v2 != 3)
  {
    if (v2 != 4)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "SequentialTableReader, reading script file: Next called wrongly.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 24));
  }

  memset(__p, 0, 24);
  kaldi::Input::Stream((a1 + 8));
  v5 = v4;
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v6 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v13);
  v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, __p, v7);
  if ((*(v8 + *(*v8 - 24) + 32) & 5) == 0)
  {
    kaldi::SplitStringOnFirstSpace(__p, a1 + 40, a1 + 96);
    if ((*(a1 + 63) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_18;
      }
    }

    else if (!*(a1 + 63))
    {
      goto LABEL_18;
    }

    if ((*(a1 + 119) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 104))
      {
        goto LABEL_16;
      }
    }

    else if (*(a1 + 119))
    {
LABEL_16:
      v11 = 3;
LABEL_19:
      *(a1 + 120) = v11;
      goto LABEL_20;
    }

LABEL_18:
    v11 = 2;
    goto LABEL_19;
  }

  *(a1 + 120) = 1;
  kaldi::Input::Close((a1 + 8));
  v10 = *(a1 + 16);
  v9 = (a1 + 16);
  if (v10)
  {
    kaldi::Input::Close(v9);
  }

LABEL_20:
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }
}

uint64_t kaldi::SequentialTableReaderScriptImpl<kaldi::KaldiObjectHolder<kaldi::Vector<float>>>::~SequentialTableReaderScriptImpl(uint64_t a1)
{
  *a1 = &unk_1F2D0EC20;
  v2 = *(a1 + 120);
  if (v2 == 4)
  {
    kaldi::KaldiObjectHolder<kaldi::Vector<float>>::Clear((a1 + 24));
  }

  else if (v2 == 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "TableReader: reading script file failed: from scp ", 50);
    if (*(a1 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      v7 = *(a1 + 64);
    }

    kaldi::PrintableRxfilename(&v7, &__p);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  kaldi::KaldiObjectHolder<kaldi::Vector<float>>::~KaldiObjectHolder((a1 + 24));
  kaldi::Input::~Input((a1 + 16));
  kaldi::Input::~Input((a1 + 8));
  return a1;
}

void *std::vector<kaldi::Vector<float>>::__construct_one_at_end[abi:ne200100]<kaldi::Vector<float> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  kaldi::Vector<float>::Resize(v4, *(a2 + 8), 1);
  result = kaldi::VectorBase<float>::CopyFromVec(v4, a2);
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t std::vector<kaldi::Vector<float>>::__emplace_back_slow_path<kaldi::Vector<float> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  kaldi::Vector<float>::Resize(v7, *(a2 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v7, a2);
  *&v16 = v16 + 24;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B537C408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<kaldi::Vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *quasar::result_handler::operator<<(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(start=", 7);
  v5 = MEMORY[0x1B8C84C00](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", length=", 9);
  v7 = MEMORY[0x1B8C84C00](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  return a1;
}

void *quasar::result_handler::operator<<(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      std::string::__init_copy_ctor_external(&v71, *a2, v4);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    v71 = *a2;
    goto LABEL_7;
  }

  *(&v71.__r_.__value_.__s + 23) = 4;
  strcpy(&v71, "null");
LABEL_7:
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v71;
  }

  else
  {
    v5 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, size);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
  v9 = *(a2 + 47);
  if (v9 >= 0)
  {
    v10 = a2 + 24;
  }

  else
  {
    v10 = *(a2 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 47);
  }

  else
  {
    v11 = *(a2 + 32);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  v14 = *(a2 + 71);
  if (v14 >= 0)
  {
    v15 = a2 + 48;
  }

  else
  {
    v15 = *(a2 + 48);
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 71);
  }

  else
  {
    v16 = *(a2 + 56);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", progress=", 11);
  v19 = MEMORY[0x1B8C84C00](v18, *(a2 + 168));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", maybeCompleteCommand=", 23);
  v21 = MEMORY[0x1B8C84BD0](v20, *(a2 + 172));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", hasLeadingFillerWord=", 23);
  v23 = MEMORY[0x1B8C84BD0](v22, *(a2 + 173));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", verbTokens=<", 14);
  v68[0] = " ";
  v68[1] = 1;
  quasar::join<std::vector<std::string>>((a2 + 176), v68);
  if ((v70 & 0x80u) == 0)
  {
    v25 = v69;
  }

  else
  {
    v25 = v69[0];
  }

  if ((v70 & 0x80u) == 0)
  {
    v26 = v70;
  }

  else
  {
    v26 = v69[1];
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ">", 1);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", targetTokens=<", 16);
  v65[0] = " ";
  v65[1] = 1;
  quasar::join<std::vector<std::string>>((a2 + 200), v65);
  if ((v67 & 0x80u) == 0)
  {
    v30 = v66;
  }

  else
  {
    v30 = v66[0];
  }

  if ((v67 & 0x80u) == 0)
  {
    v31 = v67;
  }

  else
  {
    v31 = v66[1];
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ">", 1);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", payloadTokens=<", 17);
  v62[0] = " ";
  v62[1] = 1;
  quasar::join<std::vector<std::string>>((a2 + 224), v62);
  if ((v64 & 0x80u) == 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  if ((v64 & 0x80u) == 0)
  {
    v36 = v64;
  }

  else
  {
    v36 = __p[1];
  }

  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ">", 1);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", targetTokensSize=", 19);
  v40 = MEMORY[0x1B8C84C30](v39, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 208) - *(a2 + 200)) >> 3));
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", payloadTokensSize=", 20);
  v42 = MEMORY[0x1B8C84C30](v41, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 232) - *(a2 + 224)) >> 3));
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ", finishedTarget=", 17);
  v44 = MEMORY[0x1B8C84BD0](v43, *(a2 + 248));
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", fillerTokensCount=", 20);
  v46 = MEMORY[0x1B8C84C00](v45, *(a2 + 252));
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ", targetRange=", 14);
  v48 = v47;
  if (*(a2 + 80) == 1)
  {
    quasar::result_handler::operator<<(v47, (a2 + 72));
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "null", 4);
  }

  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", expandedTargetRange=", 22);
  if (*(a2 + 92) == 1)
  {
    quasar::result_handler::operator<<(v49, (a2 + 84));
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "null", 4);
  }

  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", expandedTarget=", 17);
  if (*(a2 + 120) == 1)
  {
    if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v50))
    {
      v51 = *(a2 + 119);
      if (v51 >= 0)
      {
        v52 = (a2 + 96);
      }

      else
      {
        v52 = *(a2 + 96);
      }

      if (v51 >= 0)
      {
        v53 = *(a2 + 119);
      }

      else
      {
        v53 = *(a2 + 104);
      }

      v54 = a1;
    }

    else
    {
      v52 = "REDACTED";
      v54 = a1;
      v53 = 8;
    }
  }

  else
  {
    v52 = "null";
    v54 = a1;
    v53 = 4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v52, v53);
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", expandedPayload=", 18);
  if (*(a2 + 152) == 1)
  {
    if (quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(v55))
    {
      v56 = *(a2 + 151);
      if (v56 >= 0)
      {
        v57 = (a2 + 128);
      }

      else
      {
        v57 = *(a2 + 128);
      }

      if (v56 >= 0)
      {
        v58 = *(a2 + 151);
      }

      else
      {
        v58 = *(a2 + 136);
      }

      v59 = a1;
    }

    else
    {
      v57 = "REDACTED";
      v59 = a1;
      v58 = 8;
    }
  }

  else
  {
    v57 = "null";
    v59 = a1;
    v58 = 4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v57, v58);
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", isSpellingCorrection=", 23);
  MEMORY[0x1B8C84BD0](v60, *(a2 + 160));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ")", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(preceding=<", 12);
  quasar::getTopChoice(a2, 1, v24);
  if ((v25 & 0x80u) == 0)
  {
    v5 = v24;
  }

  else
  {
    v5 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v6 = v25;
  }

  else
  {
    v6 = v24[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ">", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", command=<", 11);
  v10 = *(a2 + 151);
  if (v10 >= 0)
  {
    v11 = a2 + 128;
  }

  else
  {
    v11 = *(a2 + 128);
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 151);
  }

  else
  {
    v12 = *(a2 + 136);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ">", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", interpretations=<", 19);
  v21[0] = ", ";
  v21[1] = 2;
  quasar::join<std::vector<quasar::result_handler::CommandInterpretation>>((a2 + 152), v21);
  if ((v23 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v17 = v23;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ">", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ")", 1);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  return a1;
}