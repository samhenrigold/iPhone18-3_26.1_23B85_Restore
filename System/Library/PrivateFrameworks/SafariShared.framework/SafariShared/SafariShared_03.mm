uint64_t std::__split_buffer<_WBSSearchSuggestionCandidate>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<_WBSSearchSuggestionCandidate>::__destroy_vector::operator()[abi:sn200100](void ***a1)
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
        v6 = v4 - 3;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1BB816CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB8170A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 + 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

void sub_1BB817700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB8185AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB81906C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](&a65);
  _Block_object_dispose((v66 - 208), 8);
  std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100]((v66 - 160));

  _Unwind_Resume(a1);
}

void std::deque<_WBSSearchSuggestionCandidate>::push_back(unint64_t *result, uint64_t *a2)
{
  v4 = result[1];
  v5 = result[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == result[5] + result[4])
  {
    std::deque<_WBSSearchSuggestionCandidate>::__add_back_capacity(result);
    v4 = result[1];
    v5 = result[2];
  }

  if (v5 == v4 || (v7 = result[5] + result[4], (v8 = *(v4 + 8 * (v7 / 0xAA))) == 0))
  {
    __break(1u);
  }

  else
  {
    v9 = v8 + 24 * (v7 % 0xAA);
    v10 = *a2;
    *(v9 + 8) = *(a2 + 8);
    *v9 = v10;
    *(v9 + 16) = a2[2];
    ++result[5];
  }
}

void std::deque<_WBSSearchSuggestionCandidate>::insert(int64x2_t *result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = result[2].u64[0];
  v7 = result->i64[1];
  v8 = result[1].i64[0];
  v9 = (v7 + 8 * (v6 / 0xAA));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 24 * (v6 % 0xAA);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 170 * (a2 - v9) - 0x5555555555555555 * ((a3 - *a2) >> 3) + 0x5555555555555555 * ((v10 - *v9) >> 3);
  }

  v12 = result[2].i64[1];
  v13 = v12 - v11;
  if (v11 < v12 - v11)
  {
    if (v6)
    {
      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      std::deque<_WBSSearchSuggestionCandidate>::__add_front_capacity(result);
      if (v11)
      {
LABEL_10:
        v58 = a4;
        v14 = result[2].u64[0];
        v15 = result->i64[1];
        v16 = (v15 + 8 * (v14 / 0xAA));
        if (result[1].i64[0] == v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = *v16 + 24 * (v14 % 0xAA);
        }

        std::prev[abi:sn200100]<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>,0>(v16, v17);
        if (v17 == a4)
        {
          v58 = v34;
          a4 = v34;
        }

        if (v34)
        {
          v35 = *v17;
          *(v34 + 8) = *(v17 + 8);
          *v34 = v35;
          v36 = *(v17 + 16);
          *(v17 + 16) = 0;
          *(v34 + 16) = v36;
          result[2] = vaddq_s64(result[2], xmmword_1BB94FE50);
          if (v11 != 1)
          {
            v37 = v17 - *v16;
            v38 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 3);
            if (v37 < -23)
            {
              v51 = 168 - v38;
              v40 = &v16[-(v51 / 0xAA)];
              v41 = *v40 + 24 * (170 * (v51 / 0xAA) - v51) + 4056;
            }

            else
            {
              v39 = v38 + 1;
              v40 = &v16[v39 / 0xAA];
              v41 = *v40 + 24 * (v39 % 0xAA);
            }

            v59 = v16;
            v60 = v17;
            std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v59, v11);
            std::deque<_WBSSearchSuggestionCandidate>::__move_and_check(result, v40, v41, v59, v60, v16, v17, &v58);
            v17 = v52;
            a4 = v58;
          }

          v53 = *a4;
          *(v17 + 8) = *(a4 + 8);
          *v17 = v53;
          v49 = *(a4 + 16);
          v50 = (v17 + 16);
LABEL_49:
          objc_storeStrong(v50, v49);
          goto LABEL_50;
        }

        goto LABEL_54;
      }
    }

    v28 = result[2].u64[0];
    v29 = result->i64[1];
    v30 = (v29 + 8 * (v28 / 0xAA));
    v31 = *v30 + 24 * (v28 % 0xAA);
    if (result[1].i64[0] == v29)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    if (v32 == *v30)
    {
      v32 = *(v30 - 1) + 4080;
    }

    v33 = *a4;
    *(v32 - 16) = *(a4 + 8);
    *(v32 - 24) = v33;
    *(v32 - 8) = *(a4 + 16);
    result[2] = vaddq_s64(result[2], xmmword_1BB94FE50);
    goto LABEL_50;
  }

  if (v8 == v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = 170 * ((v8 - v7) >> 3) - 1;
  }

  if (v18 == v12 + v6)
  {
    std::deque<_WBSSearchSuggestionCandidate>::__add_back_capacity(result);
    v12 = result[2].i64[1];
    v13 = v12 - v11;
  }

  if (v12 != v11)
  {
    v58 = a4;
    v24 = result[2].i64[0] + v12;
    v25 = result->i64[1];
    v26 = (v25 + 8 * (v24 / 0xAA));
    if (result[1].i64[0] == v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = *v26 + 24 * (v24 % 0xAA);
    }

    v43 = std::prev[abi:sn200100]<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>,0>(v26, v27);
    v44 = v42;
    if (v42 == a4)
    {
      v58 = v27;
      a4 = v27;
    }

    if (v27)
    {
      v45 = *v42;
      *(v27 + 8) = *(v42 + 8);
      *v27 = v45;
      v46 = *(v42 + 16);
      *(v42 + 16) = 0;
      *(v27 + 16) = v46;
      ++result[2].i64[1];
      if (v13 >= 2)
      {
        v59 = v26;
        v60 = v27;
        std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v59, -v13);
        v26 = std::deque<_WBSSearchSuggestionCandidate>::__move_backward_and_check(result, v59, v60, v43, v44, v26, v27, &v58);
        v27 = v47;
        a4 = v58;
      }

      if (v27 == *v26)
      {
        v27 = *(v26 - 1) + 4080;
      }

      v48 = *a4;
      *(v27 - 16) = *(a4 + 8);
      *(v27 - 24) = v48;
      v49 = *(a4 + 16);
      v50 = (v27 - 8);
      goto LABEL_49;
    }

LABEL_54:
    __break(1u);
    return;
  }

  v19 = result->i64[1];
  if (result[1].i64[0] == v19)
  {
    goto LABEL_54;
  }

  v20 = result[2].i64[0] + v11;
  v21 = *(v19 + 8 * (v20 / 0xAA));
  if (!v21)
  {
    goto LABEL_54;
  }

  v22 = v21 + 24 * (v20 % 0xAA);
  v23 = *a4;
  *(v22 + 8) = *(a4 + 8);
  *v22 = v23;
  *(v22 + 16) = *(a4 + 16);
  ++result[2].i64[1];
LABEL_50:
  v54 = result[2].u64[0];
  v55 = result->i64[1];
  v56 = (v55 + 8 * (v54 / 0xAA));
  if (result[1].i64[0] == v55)
  {
    v57 = 0;
  }

  else
  {
    v57 = *v56 + 24 * (v54 % 0xAA);
  }

  v59 = v56;
  v60 = v57;
  std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v59, v11);
}

void *std::deque<_WBSSearchSuggestionCandidate>::pop_back(void *result)
{
  v1 = result[5];
  if (v1 && (v2 = result, v3 = v1 + result[4] - 1, (v4 = *(result[1] + 8 * (v3 / 0xAA))) != 0))
  {

    --v2[5];

    return std::deque<_WBSSearchSuggestionCandidate>::__maybe_remove_back_spare[abi:sn200100](v2, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t *std::deque<_WBSSearchSuggestionCandidate>::pop_front(int64x2_t *result)
{
  if (result[2].i64[1] && (v1 = result, v2 = result[2].u64[0], (v3 = *(result->i64[1] + 8 * (v2 / 0xAA))) != 0))
  {

    v1[2] = vaddq_s64(v1[2], xmmword_1BB94FE60);

    return std::deque<_WBSSearchSuggestionCandidate>::__maybe_remove_front_spare[abi:sn200100](v1, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::deque<_WBSSearchSuggestionCandidate>::~deque[abi:sn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
LABEL_9:
    *v4 = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }

    if (v10 == 1)
    {
      v11 = 85;
    }

    else
    {
      if (v10 != 2)
      {
LABEL_17:
        while (v2 != v3)
        {
          v12 = *v2++;
          operator delete(v12);
        }

        std::__split_buffer<_WBSSearchSuggestionCandidate *>::~__split_buffer(a1);
        return;
      }

      v11 = 170;
    }

    a1[4] = v11;
    goto LABEL_17;
  }

  v4 = a1 + 5;
  v5 = a1[4];
  v6 = &v2[v5 / 0xAA];
  v7 = *v6 + 24 * (v5 % 0xAA);
  v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
  if (v7 == v8)
  {
    goto LABEL_9;
  }

  while (v7)
  {

    v7 += 24;
    if (v7 - *v6 == 4080)
    {
      v9 = v6[1];
      ++v6;
      v7 = v9;
    }

    if (v7 == v8)
    {
      v2 = a1[1];
      v3 = a1[2];
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t std::__split_buffer<_WBSSearchSuggestionCandidate *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::deque<_WBSSearchSuggestionCandidate>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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
    std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_back<_WBSSearchSuggestionCandidate *&>(a1, &v9);
}

void sub_1BB819DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_back<_WBSSearchSuggestionCandidate *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  if (v4)
  {
    *v4 = *a2;
    a1[2] += 8;
  }

  else
  {
    __break(1u);
  }
}

void std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_front<_WBSSearchSuggestionCandidate *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_back<_WBSSearchSuggestionCandidate *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  if (v4)
  {
    *v4 = *a2;
    a1[2] += 8;
  }

  else
  {
    __break(1u);
  }
}

void std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_front<_WBSSearchSuggestionCandidate *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:sn200100]();
}

void std::deque<_WBSSearchSuggestionCandidate>::__add_front_capacity(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0xAA)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1, v9);
  }

  a1[4] = (v5 + 170);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_front<_WBSSearchSuggestionCandidate *>(a1, v10);
}

void sub_1BB81A490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::prev[abi:sn200100]<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>,0>(void *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  if (v2 < 25)
  {
    return &a1[-((170 - v3) / 0xAA)];
  }

  else
  {
    return &a1[(v3 - 1) / 0xAA];
  }
}

uint64_t *std::deque<_WBSSearchSuggestionCandidate>::__move_and_check(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v20 = a2;
  v21 = a3;
  if (a3 != a5)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a5 - *a4) >> 3) + 170 * (a4 - a2) + 0x5555555555555555 * ((a3 - *a2) >> 3);
    if (v10 >= 1)
    {
      do
      {
        v12 = v21;
        v13 = *v20 + 4080;
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v21) >> 3);
        if (v14 >= v10)
        {
          v15 = v10;
        }

        else
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v21) >> 3);
        }

        if (v14 <= v10)
        {
          v16 = (*v20 + 4080);
        }

        else
        {
          v16 = (v21 + 24 * v10);
        }

        v17 = *a8;
        if (v21 <= *a8 && v17 < v16)
        {
          if (v21 == a7)
          {
            v18 = 0;
          }

          else
          {
            v18 = 0x5555555555555555 * ((v21 - *v20) >> 3) - 170 * (v20 - a6) - 0x5555555555555555 * ((a7 - *a6) >> 3);
          }

          v22 = v20;
          v23 = v17;
          *a8 = std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v22, v18)[1];
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<_WBSSearchSuggestionCandidate *,std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate *,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate **,long,170l>,0>(v12, v16, a6, a7, &v22);
        a6 = v23;
        a7 = v24;
        v10 -= v15;
        std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v20, v15);
      }

      while (v10 > 0);
    }
  }

  return a6;
}

void *std::deque<_WBSSearchSuggestionCandidate>::__move_backward_and_check(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4, unint64_t a5, void *a6, uint64_t a7, unint64_t *a8)
{
  v21 = a4;
  v22 = a5;
  if (a5 != a3)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a5 - *a4) >> 3) + 170 * (a4 - a2) + 0x5555555555555555 * ((a3 - *a2) >> 3);
    if (v10 >= 1)
    {
      do
      {
        v12 = v21;
        v13 = v22;
        if (v22 == *v21)
        {
          --v21;
          v13 = *--v12 + 4080;
        }

        v14 = v13 - 24;
        v22 = v13 - 24;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
        if (v15 >= v10)
        {
          v16 = v10;
        }

        else
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
        }

        if (v15 <= v10)
        {
          v17 = *v12;
        }

        else
        {
          v17 = v13 - 24 * v10;
        }

        v18 = *a8;
        if (*a8 < v13 && v17 <= v18)
        {
          if (v14 == a7)
          {
            v19 = -1;
          }

          else
          {
            v19 = 0x5555555555555555 * ((v14 - *v12) >> 3) + 170 * (a6 - v12) - 0x5555555555555555 * ((a7 - *a6) >> 3) - 1;
          }

          v23 = v12;
          v24 = v18;
          *a8 = std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v23, v19)[1];
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<_WBSSearchSuggestionCandidate *,std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate *,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate **,long,170l>,0>(v17, v13, a6, a7, &v23);
        a6 = v24;
        a7 = v25;
        v10 -= v16;
        std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v21, 1 - v16);
      }

      while (v10 > 0);
    }
  }

  return a6;
}

void *std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<_WBSSearchSuggestionCandidate *,std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate *,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate **,long,170l>,0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t **a5@<X8>)
{
  v6 = a3;
  v7 = a1;
  if (a1 == a2)
  {
    v12 = a1;
    goto LABEL_14;
  }

  v10 = *a3;
  while (1)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a4 + 4080) >> 3);
    if ((0xAAAAAAAAAAAAAAABLL * (a2 - v7)) < v11)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (a2 - v7);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v16 = v6[1];
    ++v6;
    v10 = v16;
    a4 = v16;
  }

  v12 = &v7[3 * v11];
  do
  {
    v13 = *v7;
    *(a4 + 8) = *(v7 + 8);
    *a4 = v13;
    v14 = v7[2];
    v7[2] = 0;
    v15 = *(a4 + 16);
    *(a4 + 16) = v14;

    v7 += 3;
    a4 += 24;
  }

  while (v7 != v12);
  if (v12 != a2)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (a4 == *v6 + 4080)
  {
    v17 = v6[1];
    ++v6;
    a4 = v17;
  }

LABEL_14:
  *a5 = v12;
  a5[1] = v6;
  a5[2] = a4;
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:sn200100]<_WBSSearchSuggestionCandidate *,std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate *,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate **,long,170l>,0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v20 = a5;
    v9 = *a3;
    v10 = a2;
    while (1)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v9) >> 3);
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a1) >> 3)) >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a1) >> 3);
      }

      if (v12)
      {
        v13 = (v10 - 8);
        v14 = -24 * v12;
        do
        {
          v15 = *(v13 - 8);
          *(a4 - 24) = *(v13 - 2);
          a4 -= 24;
          *(a4 + 8) = v15;
          v16 = *v13;
          *v13 = 0;
          v13 -= 3;
          v17 = *(a4 + 16);
          *(a4 + 16) = v16;

          v14 += 24;
        }

        while (v14);
      }

      v10 -= 24 * v12;
      if (v10 == a1)
      {
        break;
      }

      v18 = *--v6;
      v9 = v18;
      a4 = v18 + 4080;
    }

    if (*v6 + 4080 == a4)
    {
      v19 = v6[1];
      ++v6;
      a4 = v19;
    }

    a5 = v20;
  }

  *a5 = v8;
  a5[1] = v6;
  a5[2] = a4;
}

uint64_t std::deque<_WBSSearchSuggestionCandidate>::__maybe_remove_back_spare[abi:sn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

unint64_t *std::deque<_WBSSearchSuggestionCandidate>::deque(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + 8 * ((a2[5] + v3) / 0xAA));
  }

  else
  {
    v5 = (*(v4 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA));
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0xAA));
    v8 = (*v7 + 24 * (v6 % 0xAA));
  }

  std::deque<_WBSSearchSuggestionCandidate>::__append<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate const*,_WBSSearchSuggestionCandidate const&,_WBSSearchSuggestionCandidate const* const*,long,170l>,0>(a1, (v4 + 8 * (v3 / 0xAA)), v5, v7, v8);
  return a1;
}

void *std::deque<_WBSSearchSuggestionCandidate>::__append<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate const*,_WBSSearchSuggestionCandidate const&,_WBSSearchSuggestionCandidate const* const*,long,170l>,0>(unint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 170 * (a4 - a2) - 0x5555555555555555 * ((a5 - *a4) >> 3) + 0x5555555555555555 * ((a3 - *a2) >> 3);
  }

  return std::deque<_WBSSearchSuggestionCandidate>::__append_with_size[abi:sn200100]<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate const*,_WBSSearchSuggestionCandidate const&,_WBSSearchSuggestionCandidate const* const*,long,170l>>(a1, a2, a3, v5);
}

void *std::deque<_WBSSearchSuggestionCandidate>::__append_with_size[abi:sn200100]<std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate const*,_WBSSearchSuggestionCandidate const&,_WBSSearchSuggestionCandidate const* const*,long,170l>>(unint64_t *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 170 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    std::deque<_WBSSearchSuggestionCandidate>::__add_back_capacity(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0xAA));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 24 * (v11 % 0xAA);
    v15 = v14;
  }

  v24 = v13;
  v25 = v15;
  result = std::__deque_iterator<_WBSSearchSuggestionCandidate,_WBSSearchSuggestionCandidate*,_WBSSearchSuggestionCandidate&,_WBSSearchSuggestionCandidate**,long,170l>::operator+=[abi:sn200100](&v24, a4);
  v17 = v25;
  if (v14 != v25)
  {
    v18 = v24;
    while (1)
    {
      v19 = v13 == v18 ? v17 : *v13 + 4080;
      if (v14 != v19)
      {
        break;
      }

      v19 = v14;
LABEL_22:
      a1[5] -= 0x5555555555555555 * ((v19 - v14) >> 3);
      if (v13 != v18)
      {
        v23 = v13[1];
        ++v13;
        v14 = v23;
        if (v23 != v17)
        {
          continue;
        }
      }

      return result;
    }

    v20 = v14;
    while (v20)
    {
      v21 = *a3;
      *(v20 + 8) = *(a3 + 8);
      *v20 = v21;
      result = a3[2];
      *(v20 + 16) = result;
      a3 += 3;
      if ((a3 - *a2) == 4080)
      {
        v22 = a2[1];
        ++a2;
        a3 = v22;
      }

      v20 += 24;
      if (v20 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  return result;
}

void std::deque<_WBSSearchSuggestionCandidate>::__add_back_capacity(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (a1[4] = v6 - 170 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_back<_WBSSearchSuggestionCandidate *&>(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        std::allocator<_WBSSearchSuggestionCandidate *>::allocate_at_least[abi:sn200100](a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= 170 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      std::__split_buffer<_WBSSearchSuggestionCandidate *>::emplace_back<_WBSSearchSuggestionCandidate *&>(a1, v16);
    }
  }
}

void sub_1BB81B124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<_WBSSearchSuggestionCandidate>::__maybe_remove_front_spare[abi:sn200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
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
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void sub_1BB81B3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB81E2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB81E8A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BB81F444(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BB81F780(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BB820830(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB820D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB8216C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB8221A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB822E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB8248D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB828508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void WBSRespondWithRandomDelay(void *a1)
{
  v1 = a1;
  v2 = arc4random();
  v3 = dispatch_time(0, ((vcvts_n_f32_u32(v2, 0x20uLL) + 0.25) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSRespondWithRandomDelay_block_invoke;
  block[3] = &unk_1E7FB7350;
  v6 = v1;
  v4 = v1;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void sub_1BB82AD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB82DE58(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&,NSString * const {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong}>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

void sub_1BB82E6B0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB13480](v4, 0x1080C40D2F62047);

  _Unwind_Resume(a1);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong},long,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * const {__strong}&,long,NSString * {__strong}&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * const {__strong}&,long,NSString * {__strong}&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,long,NSString * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,long,NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:3];
  [v5 bindString:*a3 atParameterIndex:4];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong},NSString * {__strong},NSString * const {__strong}&&>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * const {__strong}&,NSString * {__strong},NSString * const {__strong}&&>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * const {__strong}&,NSString * {__strong},NSString * const {__strong}&&>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSString * {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSString * {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:3];
  [v5 bindString:*a3 atParameterIndex:4];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,NSString * const {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong}>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [v9 bindString:*a4 atParameterIndex:1];
    v12 = [v9 execute];
    [v9 invalidate];
    if ((v12 - 100) >= 2 && v12 != 0)
    {
      [v7 reportErrorWithCode:v12 statement:objc_msgSend(v9 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v14 = v10;
      *a2 = v11;
    }

    v12 = [v11 code];
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,long>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindInt64:*a3 atParameterIndex:2];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * {__strong}>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSData * const {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:1];
  [v5 bindData:*a3 atParameterIndex:2];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong},NSData * const {__strong}&,NSString * const {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * const {__strong}&,NSData * const {__strong}&,NSString * const {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * const {__strong}&,NSData * const {__strong}&,NSString * const {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * const {__strong}&,NSString * const {__strong}&>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSData * const {__strong}&,NSString * const {__strong}&>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:3];
  [v5 bindString:*a3 atParameterIndex:4];
}

void sub_1BB834C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB837618(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB8377DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB8396AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void SafariShared::ReaderAvailabilityController::ReaderAvailabilityController(SafariShared::ReaderAvailabilityController *this)
{
  *this = &unk_1F3A5D750;
  *(this + 4) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  operator new();
}

void sub_1BB839948(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x1BFB13480](v4, 0x10A0C409BFBB458);
  operator delete(v3);
  std::unique_ptr<SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler>::~unique_ptr[abi:sn200100]((v1 + 64));

  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    v3 = *(v2 + 8);
    if (v3)
    {
      *(v2 + 16) = v3;
      operator delete(v3);
    }

    MEMORY[0x1BFB13480](v2, 0x10A0C409BFBB458);
  }

  return a1;
}

void SafariShared::ReaderAvailabilityController::~ReaderAvailabilityController(SafariShared::ReaderAvailabilityController *this)
{
  *this = &unk_1F3A5D750;
  v2 = (this + 64);
  SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(*(this + 8));
  SafariShared::ReaderAvailabilityController::invalidateArticleReloadTimer(this);
  SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(*(this + 10));
  SafariShared::ReaderAvailabilityController::cancelPageMetadataAndTextExtraction(this);
  std::unique_ptr<SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler>::~unique_ptr[abi:sn200100](this + 10);
  std::unique_ptr<SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler>::~unique_ptr[abi:sn200100](v2);

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void sub_1BB839B74(_Unwind_Exception *a1)
{
  std::unique_ptr<SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler>::~unique_ptr[abi:sn200100]((v1 + 80));
  std::unique_ptr<SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler>::~unique_ptr[abi:sn200100](v2);

  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    SafariShared::ReaderAvailabilityController::~ReaderAvailabilityController(v4);
  }

  _Unwind_Resume(a1);
}

void SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(id *this)
{
  if ([this[7] isValid])
  {
    [this[7] invalidate];
    v2 = this[7];
    this[7] = 0;
  }
}

void SafariShared::ReaderAvailabilityController::invalidateArticleReloadTimer(id *this)
{
  if ([this[4] isValid])
  {
    [this[4] invalidate];
    v2 = this[4];
    this[4] = 0;
  }
}

void SafariShared::ReaderAvailabilityController::cancelPageMetadataAndTextExtraction(id *this)
{
  if ([this[6] isValid])
  {
    [this[6] invalidate];
    v2 = this[6];
    this[6] = 0;
  }
}

uint64_t SafariShared::ReaderAvailabilityController::prepareArticleFinder(SafariShared::ReaderAvailabilityController *this)
{
  result = (*(*this + 88))(this);
  if (result)
  {
    if (!*(this + 2))
    {
      result = (*(*this + 104))(this);
      if (!result)
      {
        return result;
      }

      v3 = result;
      [WBSReaderResources articleFinderScriptForContext:result];
      JSScriptEvaluate();
      (*(*this + 80))(&v7, this);
      v4 = v7;
      v7 = 0;
      v5 = *(this + 2);
      *(this + 2) = v4;
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v6 = v7;
        v7 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      SafariShared::JSController::addScriptObjectToGlobalObject(*(this + 2), v3);
      SafariShared::JSController::scriptObjectReady(*(this + 2), v3);
    }

    return 1;
  }

  return result;
}

id SafariShared::ReaderAvailabilityController::extractTextSamplesForTranslation(SafariShared::ArticleFinderJSController **this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    v2 = (*(*this + 13))(this);
    TextSamplesByVisualExamination = SafariShared::ArticleFinderJSController::findTextSamplesByVisualExamination(this[2], v3, v4, v5, v6, v7);
    v10 = SafariShared::JSUtilities::translateJSValueToNS(v2, TextSamplesByVisualExamination, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL SafariShared::ReaderAvailabilityController::doesPageUseSearchEngineOptimizationMetadata(SafariShared::ArticleFinderJSController **this)
{
  v2 = SafariShared::ReaderAvailabilityController::prepareArticleFinder(this);
  if (v2)
  {
    v8 = this[2];

    return SafariShared::ArticleFinderJSController::usesSearchEngineOptimizationMetadata(v8, v3, v4, v5, v6, v7);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXReader(v2, v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SafariShared::ReaderAvailabilityController::doesPageUseSearchEngineOptimizationMetadata();
    }

    return 0;
  }
}

void SafariShared::ReaderAvailabilityController::checkTextSampleAvailabilityIfNeeded(SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler **this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (*(*this + 11))(this);
  if (v2)
  {
    v4 = SafariShared::ReaderAvailabilityController::prepareArticleFinder(this);
    if (v4)
    {
      v6 = objc_alloc_init(WBSReaderAvailabilityCheckResult);
      v7 = (*(*this + 7))(this);
      [(WBSReaderAvailabilityCheckResult *)v6 setTextSamples:v7];

      v8 = [(WBSReaderAvailabilityCheckResult *)v6 textSamples];
      v9 = [v8 count];

      if (v9)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXTranslation(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v16 = [(WBSReaderAvailabilityCheckResult *)v6 textSamples];
          v17 = 134217984;
          v18 = [v16 count];
          _os_log_debug_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEBUG, "Translation found %lu text samples", &v17, 0xCu);
        }

        (*(*this + 8))(this, v6);
      }

      else
      {
        v15 = WBS_LOG_CHANNEL_PREFIXTranslation(v10, v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          SafariShared::ReaderAvailabilityController::checkTextSampleAvailabilityIfNeeded();
        }

        SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDelayedDetection(this[10]);
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXTranslation(v4, v5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SafariShared::ReaderAvailabilityController::doesPageUseSearchEngineOptimizationMetadata();
      }
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXTranslation(v2, v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      SafariShared::ReaderAvailabilityController::checkTextSampleAvailabilityIfNeeded();
    }
  }
}

void SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDelayedDetection(uint64_t this)
{
  v1 = *(this + 48);
  v2 = *(this + 8);
  if (v1 >= (*(this + 16) - v2) >> 3)
  {
    *(this + 48) = 0;
  }

  else
  {
    v3 = *(v2 + 8 * v1);
    *(this + 48) = v1 + 1;
    SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::detectAvailabilityAfterDelay(this, *(this + 44), v3);
  }
}

id SafariShared::ReaderAvailabilityController::extractCanonicalURLForSystemNoteTaking(SafariShared::ArticleFinderJSController **this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    v7 = SafariShared::ArticleFinderJSController::canonicalURLForSystemNoteTaking(this[2], v2, v3, v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SafariShared::ReaderAvailabilityController::extractReaderArticleTitleIfAvailable(SafariShared::ArticleFinderJSController **this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this) && *(this + 25) == 1)
  {
    v7 = SafariShared::ArticleFinderJSController::readerArticleTitle(this[2], v2, v3, v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void SafariShared::ReaderAvailabilityController::checkAvailabilityIfNeeded(SafariShared::ReaderAvailabilityController *this)
{
  v4 = objc_alloc_init(WBSReaderAvailabilityCheckResult);
  (*(*this + 32))(this);
  v2 = *(this + 8);
  v3 = *(v2 + 40);
  if ((*(this + 25) & 1) == 0 && v3 == 3)
  {
    SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDelayedDetection(v2);
  }

  [(WBSReaderAvailabilityCheckResult *)v4 setIsSameDocumentNavigation:v3 == 3];
  (*(*this + 112))(this, v4);
}

void SafariShared::ReaderAvailabilityController::checkReaderAvailabilityIfNeededAndUpdateResult(SafariShared::ReaderAvailabilityController *this, WBSReaderAvailabilityCheckResult *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(this + 25) == 1)
  {
    SafariShared::ReaderAvailabilityController::extractPageMetadataAndTextSoonIfNeeded(this, 0);
  }

  else
  {
    v4 = *(this + 8);
    if ((*(v4 + 10) - 1) > 1 || (*(this + 24) & 1) == 0)
    {
      v5 = *v4;
      *v4 = 1;
      *(this + 25) = (*(*this + 40))(this);
      *v4 = v5;
    }
  }

  if ((*(this + 9) & 1) == 0)
  {
    doesPageUseSearchEngineOptimizationMetadata = SafariShared::ReaderAvailabilityController::doesPageUseSearchEngineOptimizationMetadata(this);
    if (*(this + 9) == 1)
    {
      *(this + 9) = 0;
    }

    *(this + 8) = doesPageUseSearchEngineOptimizationMetadata;
    *(this + 9) = 1;
  }

  [(WBSReaderAvailabilityCheckResult *)v3 setDoesPageUseSearchEngineOptimizationMetadata:*(this + 8)];
  if ((*(this + 72) & 1) == 0)
  {
    v7 = (*(*this + 56))(this);
    v8 = [(WBSReaderAvailabilityCheckResult *)v3 setTextSamples:v7];
    *(this + 72) = 1;
    v10 = WBS_LOG_CHANNEL_PREFIXTranslation(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      SafariShared::ReaderAvailabilityController::checkReaderAvailabilityIfNeededAndUpdateResult(v13, [v7 count], v10);
    }

    if (![v7 count])
    {
      SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDelayedDetection(*(this + 10));
    }
  }

  SafariShared::ReaderAvailabilityController::extractPageMetadataAndTextSoonIfNeeded(this, 1);
  v11 = (*(*this + 72))(this);
  [(WBSReaderAvailabilityCheckResult *)v3 setCanonicalURL:v11];

  v12 = *(this + 25);
  if ((v12 & 1) != 0 || (*(*(this + 8) + 40) - 1) <= 2)
  {
    *(this + 24) = 1;
    SafariShared::ReaderAvailabilityController::clearArticleFinderIfPossible(this);
    v12 = *(this + 25);
  }

  [(WBSReaderAvailabilityCheckResult *)v3 setReaderAvailable:v12 & 1];
}

void SafariShared::ReaderAvailabilityController::extractPageMetadataAndTextSoonIfNeeded(uint64_t a1, uint64_t a2)
{
  SafariShared::ReaderAvailabilityController::cancelPageMetadataAndTextExtraction(a1);
  if ((*(a1 + 41) & 1) != 0 || *(a1 + 24) != 1 || (*(a1 + 40) & 1) == 0 && (*(*a1 + 88))(a1) && (*(*(a1 + 64) + 40) & 0xFFFFFFFE) == 2 || (*(*(a1 + 64) + 40) & 0xFFFFFFFE) != 2)
  {
    if ((*(a1 + 41) & 1) != 0 || (*(a1 + 40) & 1) != 0 || !(*(*a1 + 88))(a1) || (*(*(a1 + 64) + 40) & 0xFFFFFFFE) != 2)
    {
      v9 = *(*a1 + 128);

      v9(a1, 0, 0, a2);
    }

    else
    {
      v10.version = 0;
      memset(&v10.retain, 0, 24);
      v10.info = a1;
      v4 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v6 = CFRunLoopTimerCreate(v4, Current + 5.0, 0.0, 0, 0, SafariShared::ReaderAvailabilityController::extractPageMetadataAndTextTimerFired, &v10);
      v7 = *(a1 + 48);
      *(a1 + 48) = v6;

      v8 = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(v8, *(a1 + 48), *MEMORY[0x1E695E8D0]);
    }
  }

  else
  {
    (*(*a1 + 128))(a1, 0, 0, 0);
    *(a1 + 41) = 1;
  }
}

uint64_t SafariShared::ReaderAvailabilityController::clearArticleFinderIfPossible(uint64_t this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v1 = this;
    if ((*(*(this + 64) + 40) - 1) <= 2 && ((*(this + 41) & 1) != 0 || (*(this + 40) & 1) != 0 || *(this + 24) != 1 || (*(this + 25) & 1) == 0))
    {
      v2 = *(this + 16);
      v1[2] = 0;
      if (v2)
      {
        (*(*v2 + 8))(v2);
      }

      v3 = *(*v1 + 96);

      return v3(v1);
    }
  }

  return this;
}

uint64_t SafariShared::ReaderAvailabilityController::determineAvailability(SafariShared::ArticleFinderJSController **this)
{
  result = SafariShared::ReaderAvailabilityController::prepareArticleFinder(this);
  if (result)
  {
    v8 = this[2];

    return SafariShared::ArticleFinderJSController::readerIsAvailable(v8, v3, v4, v5, v6, v7);
  }

  return result;
}

void SafariShared::ReaderAvailabilityController::clearAvailability(SafariShared::ReaderAvailabilityController *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 12) = 0;
  *(this + 72) = 0;
  *(*(this + 8) + 40) = 0;
  *(this + 27) = 0;
  *(this + 41) = 0;
  SafariShared::ReaderAvailabilityController::cancelPageMetadataAndTextExtraction(this);
  *(this + 56) = 0;
  if (*(this + 9) == 1)
  {
    *(this + 9) = 0;
  }
}

JSValueRef SafariShared::ReaderAvailabilityController::prepareToTransitionToReader(SafariShared::JSUtilities ***this)
{
  result = SafariShared::ReaderAvailabilityController::prepareArticleFinder(this);
  if (result)
  {
    result = SafariShared::ArticleFinderJSController::prepareToTransitionToReader(this[2], v3, v4, v5, v6, v7);
    *(this + 56) = 1;
  }

  return result;
}

uint64_t SafariShared::ReaderAvailabilityController::originalArticleFinder(SafariShared::ReaderAvailabilityController *this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    return *(*(this + 2) + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t SafariShared::ReaderAvailabilityController::doneWithArticleFinder(SafariShared::ReaderAvailabilityController *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(*this + 96);

  return v3(this);
}

void SafariShared::ReaderAvailabilityController::scheduleArticleReloadTimer(SafariShared::ReaderAvailabilityController *this, double a2)
{
  SafariShared::ReaderAvailabilityController::invalidateArticleReloadTimer(this);
  v9.version = 0;
  memset(&v9.retain, 0, 24);
  v9.info = this;
  v4 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFRunLoopTimerCreate(v4, Current + a2, 0.0, 0, 0, SafariShared::ReaderAvailabilityController::articleReloadTimerFired, &v9);
  v7 = *(this + 4);
  *(this + 4) = v6;

  v8 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v8, *(this + 4), *MEMORY[0x1E695E8D0]);
}

SafariShared::JSUtilities **SafariShared::ReaderAvailabilityController::articleReloadTimerFired(SafariShared::ReaderAvailabilityController *this, __CFRunLoopTimer *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  *(a2 + 27) = 0;
  result = *(a2 + 2);
  if (result)
  {
    SafariShared::ArticleFinderJSController::reloadArticleContent(result, a2, a3, a4, a5, a6);
    v8 = *(*a2 + 120);

    return v8(a2);
  }

  return result;
}

void SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::detectAvailabilityAfterDelay(uint64_t a1, int a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if ((*a1 & 1) == 0)
  {
    v7 = Current + a3;
    if ([*(a1 + 56) isValid])
    {
      if (v7 > *(a1 + 64))
      {
        return;
      }

      SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(a1);
    }

    SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDetectionTimer(a1, a3);
    *(a1 + 64) = v7;
    *(a1 + 40) = a2;
  }
}

void SafariShared::ReaderAvailabilityController::setCanRunAvailabilityDetection(SafariShared::ReaderAvailabilityController *this, int a2)
{
  if (*(this + 26) != a2)
  {
    *(this + 26) = a2;
    if ((a2 & 1) == 0)
    {
      SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(*(this + 8));
    }
  }
}

void SafariShared::ReaderAvailabilityController::didFinishDocumentLoad(SafariShared::ReaderAvailabilityController *this)
{
  v2 = *(this + 8);
  *(v2 + 10) = 1;
  if (*(this + 27) == 1)
  {
    SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDetectionTimer(v2, 3.0);
  }
}

void SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDetectionTimer(SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler *this, double a2)
{
  SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(this);
  v9.version = 0;
  memset(&v9.retain, 0, 24);
  v9.info = this;
  v4 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFRunLoopTimerCreate(v4, Current + a2, 0.0, 0, 0, SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::detectionTimerFired, &v9);
  v7 = *(this + 7);
  *(this + 7) = v6;

  v8 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v8, *(this + 7), *MEMORY[0x1E695E8D0]);
}

void SafariShared::ReaderAvailabilityController::didFinishLoad(SafariShared::ReaderAvailabilityController *this)
{
  v2 = *(this + 8);
  *(v2 + 10) = 2;
  if (*(this + 27) == 1)
  {
    SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::scheduleDetectionTimer(v2, 0.0);
  }

  SafariShared::ReaderAvailabilityController::extractPageMetadataAndTextSoonIfNeeded(this, 0);
}

uint64_t SafariShared::ReaderAvailabilityController::detectAvailabilityForUIProcessDrivenCheck(SafariShared::ArticleFinderJSController **this)
{
  result = SafariShared::ReaderAvailabilityController::prepareArticleFinder(this);
  if (result)
  {
    v3 = this[2];

    return SafariShared::ArticleFinderJSController::detectAvailabilityForUIProcessDrivenCheck(v3);
  }

  return result;
}

id SafariShared::ReaderAvailabilityController::previewReaderImageURL(SafariShared::ArticleFinderJSController **this)
{
  if (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    v7 = SafariShared::ArticleFinderJSController::previewReaderImageURL(this[2], v2, v3, v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t SafariShared::ReaderAvailabilityController::canExtractPageMetadataAndText(SafariShared::ReaderAvailabilityController *this)
{
  if (*(this + 41))
  {
    return 0;
  }

  if (*(this + 40))
  {
    return 0;
  }

  result = (*(*this + 88))(this);
  if (result)
  {
    return (*(*(this + 8) + 40) & 0xFFFFFFFE) == 2;
  }

  return result;
}

void SafariShared::ReaderAvailabilityController::extractPageMetadataAndTextNow(SafariShared::ReaderAvailabilityController *this)
{
  SafariShared::ReaderAvailabilityController::cancelPageMetadataAndTextExtraction(this);
  if (*(this + 41) & 1) == 0 && (*(this + 40) & 1) == 0 && (*(*this + 88))(this) && (*(*(this + 8) + 40) & 0xFFFFFFFE) == 2 && (SafariShared::ReaderAvailabilityController::prepareArticleFinder(this))
  {
    *(this + 41) = 1;
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (*(this + 25) == 1)
    {
      v2 = SafariShared::ArticleFinderJSController::readerTextIncludingArticleMetadata(*(this + 2), 1);
      if (v2)
      {
        [v4 appendString:v2];
      }
    }

    (*(*this + 128))(this, v4, 0, 0);
    SafariShared::ReaderAvailabilityController::clearArticleFinderIfPossible(this);
  }

  else
  {
    v3 = *(*this + 128);

    v3(this, 0, 0, 0);
  }
}

uint64_t SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::AvailabilityDetectionScheduler(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a1 = 0;
  std::vector<double>::vector[abi:sn200100]((a1 + 8), a6);
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = a5;
  return a1;
}

{
  *a1 = 0;
  std::vector<double>::vector[abi:sn200100]((a1 + 8), a6);
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = a5;
  return a1;
}

void SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::detectAvailabilityNow(id *this)
{
  SafariShared::ReaderAvailabilityController::AvailabilityDetectionScheduler::invalidateDetectionTimer(this);
  v2 = this[4];
  if (v2[26] == 1)
  {
    v3 = this[9];
    v4 = this[10];
    v5 = &v2[v4 >> 1];
    if (v4)
    {
      v3 = *(*v5 + v3);
    }

    v3(v5);
  }
}

BOOL SafariShared::ReaderAvailabilityController::readerHasBeenActivatedRecently(SafariShared::ReaderAvailabilityController *this, NSDate *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    [(SafariShared::ReaderAvailabilityController *)v2 timeIntervalSinceNow];
    v5 = v4 <= 604800.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(SafariShared::ReaderAvailabilityController *this, WKProcessPool *a2)
{
  v4 = this;
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v3 safari_setDate:v2 forKey:@"ReaderOrTranslationLastActivated"];

  [(SafariShared::ReaderAvailabilityController *)v4 _setObject:v2 forBundleParameter:@"ReaderOrTranslationLastActivated"];
}

void sub_1BB83B264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void std::vector<double>::__vallocate[abi:sn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<double>::allocate_at_least[abi:sn200100](a1, a2);
  }

  std::__throw_bad_array_new_length[abi:sn200100]();
}

void std::allocator<double>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:sn200100]();
}

uint64_t *std::vector<double>::vector[abi:sn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<double>::__vallocate[abi:sn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

uint64_t WBSThemeForNSString(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 length])
  {
    if ([(NSString *)v1 isEqualToString:@"White"])
    {
      v2 = 0;
    }

    else if ([(NSString *)v1 isEqualToString:@"Sepia"])
    {
      v2 = 1;
    }

    else if ([(NSString *)v1 isEqualToString:@"Gray"])
    {
      v2 = 2;
    }

    else if ([(NSString *)v1 isEqualToString:@"Night"])
    {
      v2 = 3;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void sub_1BB83C5C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB83D22C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1BB83D354(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB83D46C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void SafariShared::ReaderJSController::evaluateLocalizedStringsScript(SafariShared::ReaderJSController *this, const OpaqueJSContext *a2)
{
  script[3] = *MEMORY[0x1E69E9840];
  v3 = +[WBSReaderResources localizedStringsScriptURL];
  v10 = 0;
  v4 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v3 usedEncoding:0 error:&v10];
  v5 = v10;
  v7 = v5;
  if (v4)
  {
    SafariShared::JSUtilities::jsString(script, v4);
    JSEvaluateScript(a2, script[0], 0, 0, 0, 0);
    if (script[0])
    {
      JSStringRelease(script[0]);
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXReader(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 safari_privacyPreservingDescription];
      SafariShared::ReaderJSController::evaluateLocalizedStringsScript(v9, script, v8);
    }
  }
}

void sub_1BB83D91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, JSStringRef string)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::ReaderJSController::evaluateSharedUINormalWorldScript(SafariShared::ReaderJSController *this, const OpaqueJSContext *a2)
{
  [WBSReaderResources sharedUINormalWorldScriptForContext:a2];

  return JSScriptEvaluate();
}

JSValueRef SafariShared::ReaderJSController::activateWithAnimation(SafariShared::ReaderJSController *this, BOOL a2)
{
  v2 = *(this + 5);
  *v5 = JSValueMakeBoolean(v2, a2);
  GlobalObject = JSContextGetGlobalObject(v2);
  return SafariShared::JSUtilities::callJSMethodWithArguments(v2, GlobalObject, "activateWithAnimation", v5, 1);
}

JSValueRef SafariShared::ReaderJSController::readerWillEnterBackground(SafariShared::ReaderJSController *this)
{
  v1 = *(this + 5);
  GlobalObject = JSContextGetGlobalObject(v1);

  return SafariShared::JSUtilities::callJSMethodWithArguments(v1, GlobalObject, "readerWillEnterBackground", 0, 0);
}

void SafariShared::ReaderJSController::setConfiguration(SafariShared::ReaderJSController *this, NSDictionary *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 5);
  v7[0] = SafariShared::JSUtilities::translateNSToJSValue(v4, v3, v5);
  GlobalObject = JSContextGetGlobalObject(v4);
  SafariShared::JSUtilities::callJSMethodWithArguments(v4, GlobalObject, "setConfiguration", v7, 1);
}

JSValueRef SafariShared::ReaderJSController::setReaderIsActive(SafariShared::ReaderJSController *this, BOOL a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  v5[0] = JSValueMakeBoolean(v2, a2);
  GlobalObject = JSContextGetGlobalObject(v2);
  return SafariShared::JSUtilities::callJSMethodWithArguments(v2, GlobalObject, "setReaderIsActive", v5, 1);
}

void SafariShared::ReaderJSController::setArticleLocale(SafariShared::ReaderJSController *this, NSString *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 5);
  v7[0] = SafariShared::JSUtilities::translateNSToJSValue(v4, v3, v5);
  GlobalObject = JSContextGetGlobalObject(v4);
  SafariShared::JSUtilities::callJSMethodWithArguments(v4, GlobalObject, "setArticleLocale", v7, 1);
}

void SafariShared::ReaderJSController::setArticleSummary(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, int a9, void *a10)
{
  v35[9] = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a10;
  v25 = *(a1 + 40);
  v35[0] = SafariShared::JSUtilities::translateNSToJSValue(v25, v17, v26);
  v35[1] = SafariShared::JSUtilities::translateNSToJSValue(v25, v18, v27);
  v35[2] = SafariShared::JSUtilities::translateNSToJSValue(v25, v19, v28);
  v35[3] = SafariShared::JSUtilities::translateNSToJSValue(v25, v20, v29);
  v35[4] = SafariShared::JSUtilities::translateNSToJSValue(v25, v21, v30);
  v35[5] = SafariShared::JSUtilities::translateNSToJSValue(v25, v22, v31);
  v35[6] = SafariShared::JSUtilities::translateNSToJSValue(v25, v23, v32);
  v35[7] = JSValueMakeNumber(v25, a9);
  v35[8] = SafariShared::JSUtilities::translateNSToJSValue(v25, v24, v33);
  GlobalObject = JSContextGetGlobalObject(v25);
  SafariShared::JSUtilities::callJSMethodWithArguments(v25, GlobalObject, "setArticleSummary", v35, 9);
}

void SafariShared::ReaderJSController::setOnDeviceSummaryButtonWithTitle(SafariShared::ReaderJSController *this, NSString *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 5);
  v7[0] = SafariShared::JSUtilities::translateNSToJSValue(v4, v3, v5);
  GlobalObject = JSContextGetGlobalObject(v4);
  SafariShared::JSUtilities::callJSMethodWithArguments(v4, GlobalObject, "setOnDeviceSummaryButtonWithTitle", v7, 1);
}

JSValueRef SafariShared::ReaderJSController::updateSummaryTextVisibility(SafariShared::ReaderJSController *this, BOOL a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  v5[0] = JSValueMakeBoolean(v2, a2);
  GlobalObject = JSContextGetGlobalObject(v2);
  return SafariShared::JSUtilities::callJSMethodWithArguments(v2, GlobalObject, "updateSummaryTextVisibility", v5, 1);
}

JSValueRef SafariShared::ReaderJSController::insertSummaryTextPlaceholder(SafariShared::ReaderJSController *this)
{
  v1 = *(this + 5);
  GlobalObject = JSContextGetGlobalObject(v1);

  return SafariShared::JSUtilities::callJSMethodWithArguments(v1, GlobalObject, "insertSummaryTextPlaceholder", 0, 0);
}

JSValueRef SafariShared::ReaderJSController::nextPageArticleFinder(SafariShared::ReaderJSController *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return JSValueMakeUndefined(*(this + 5));
  }
}

uint64_t SafariShared::ReaderJSController::clearNextPageArticleFinder(SafariShared::ReaderJSController *this)
{
  result = *(this + 6);
  *(this + 6) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

const OpaqueJSValue *SafariShared::ReaderJSController::getArticleScrollPositionAsDictionary(SafariShared::ReaderJSController *this)
{
  v1 = *(this + 5);
  GlobalObject = JSContextGetGlobalObject(v1);
  v3 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, GlobalObject, "getArticleScrollPosition", 0, 0);
  if (v3)
  {
    v3 = JSValueToObject(v1, v3, 0);
    if (v3)
    {
      v3 = SafariShared::JSUtilities::translateJSValueToNS(v1, v3, v4);
    }
  }

  return v3;
}

__CFString *SafariShared::ReaderJSController::printingMailingFrameElementId(SafariShared::ReaderJSController *this)
{
  v1 = *(this + 5);
  v2 = SafariShared::JSUtilities::callJSMethodWithArguments(v1, *(this + 3), "printingMailingFrameElementId", 0, 0);

  return SafariShared::JSUtilities::toNSString(v1, v2, 0);
}

JSValueRef SafariShared::jsArticleScrolled(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v8 = SafariShared::JSController::jsController(object);
  if (v8)
  {
    (*(*v8 + 160))(v8);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsClearNextPageArticleFinder(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (!a4)
  {
    v10 = v9;
    if (v9)
    {
      v11 = v9[6];
      v10[6] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsRequestDeactivationFromUserAction(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (!a4 && v9)
  {
    (*(*v9 + 48))(v9);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsDidChangeNextPageLoadingState(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 1)
  {
    v11 = v10;
    if (v10)
    {
      v12 = JSValueToBoolean(this, *a5);
      (*(*v11 + 56))(v11, v12);
    }
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsContentIsReadyForDisplay(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 <= 1 && (v11 = v10) != 0)
  {
    (*(*v10 + 184))(v10, 0);
    v12 = SafariShared::JSUtilities::toNSString(this, *a5, 2);
    (*(*v11 + 152))(v11, v12);
    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsDoneLoadingReaderPage(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v8 = SafariShared::JSController::jsController(object);
  if (v8)
  {
    v9 = v8;
    (*(*v8 + 184))(v8, 1);
    (*(*v9 + 64))(v9);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsGoBack(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (!a4 && v9)
  {
    (*(*v9 + 72))(v9);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsGoForward(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (!a4 && v9)
  {
    (*(*v9 + 80))(v9);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsInitialArticleScrollPosition(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {

    return JSValueMakeUndefined(this);
  }

  else
  {
    v10 = (*(*v9 + 168))(v9);
    if ([(OpaqueJSContext *)v10 count])
    {
      Undefined = SafariShared::JSUtilities::translateNSToJSValue(this, v10, v11);
    }

    else
    {
      Undefined = JSValueMakeUndefined(this);
    }

    v14 = Undefined;

    return v14;
  }
}

JSValueRef SafariShared::jsInitialConfiguration(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {

    return JSValueMakeUndefined(this);
  }

  else
  {
    v10 = (*(*v9 + 88))(v9);
    v12 = SafariShared::JSUtilities::translateNSToJSValue(this, v10, v11);

    return v12;
  }
}

JSValueRef SafariShared::jsMakeFontAvailableIfNecessary(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, const OpaqueJSContext **a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 1 && (v12 = v10) != 0)
  {
    v13 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, v11);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      (*(*v12 + 96))(v12, v13);
    }

    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsIsInStickyMode(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {

    return JSValueMakeUndefined(this);
  }

  else
  {
    v10 = (*(*v9 + 104))(v9);

    return JSValueMakeBoolean(this, v10);
  }
}

JSValueRef SafariShared::jsNextPageArticleFinder(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {
    v12 = this;
  }

  else
  {
    v10 = *(v9 + 6);
    if (v10)
    {
      return *(v10 + 24);
    }

    v12 = *(v9 + 5);
  }

  return JSValueMakeUndefined(v12);
}

JSValueRef SafariShared::jsNextPageLoadComplete(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 3 && (v11 = v10) != 0)
  {
    v12 = JSValueToNumber(this, *a5, 0);
    v13 = MEMORY[0x1E695DFF8];
    v14 = SafariShared::JSUtilities::toNSString(this, a5[1], 0);
    v15 = [v13 safari_urlWithDataAsString:v14];

    v16 = SafariShared::JSUtilities::toNSString(this, a5[2], 0);
    (*(*v11 + 112))(v11, v12, v15, v16);
    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsOriginalArticleFinder(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9 || (result = (*(*v9 + 120))(v9)) == 0)
  {

    return JSValueMakeUndefined(this);
  }

  return result;
}

JSValueRef SafariShared::jsPrepareNextPageFrame(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, JSValueRef *a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 1 && (v11 = v10) != 0)
  {
    v12 = SafariShared::JSUtilities::toNSString(this, *a5, 0);
    (*(*v11 + 128))(v11, v12);
    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsReaderOperationMode(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {

    return JSValueMakeUndefined(this);
  }

  else
  {
    v10 = (*(*v9 + 136))(v9);

    return JSValueMakeNumber(this, v10);
  }
}

JSValueRef SafariShared::jsCachedTopScrollOffset(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {

    return JSValueMakeUndefined(this);
  }

  else
  {
    v10 = (*(*v9 + 192))(v9);

    return JSValueMakeNumber(this, v10);
  }
}

JSValueRef SafariShared::jsMaxDistanceForLoadingNextPage(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (a4 || !v9)
  {

    return JSValueMakeUndefined(this);
  }

  else
  {
    v10 = (*(*v9 + 200))(v9);

    return JSValueMakeNumber(this, v10);
  }
}

JSValueRef SafariShared::jsReplaceSimpleTweetsWithRichTweets(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, const OpaqueJSContext **a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 1 && (v12 = v10) != 0)
  {
    v13 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, v11);
    (*(*v12 + 176))(v12, v13);
    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsRequestOnDeviceSummary(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, unint64_t a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v9 = SafariShared::JSController::jsController(object);
  if (!a4 && v9)
  {
    (*(*v9 + 216))(v9);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsReportReaderEvent(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, const OpaqueJSContext **a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 2 && (v12 = v10) != 0)
  {
    v13 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, v11);
    v15 = SafariShared::JSUtilities::translateJSValueToNS(this, a5[1], v14);
    (*(*v12 + 224))(v12, [v13 integerValue], v15);
    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSValueRef SafariShared::jsLog(SafariShared *this, const OpaqueJSContext *a2, OpaqueJSValue *a3, OpaqueJSValue *a4, const OpaqueJSContext **a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = WBS_LOG_CHANNEL_PREFIXReader(this, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, v10);
    SafariShared::jsLog(v11, v13, v9);
  }

  return JSValueMakeUndefined(this);
}

JSValueRef SafariShared::jsSetArticleBaseURLString(SafariShared *this, const OpaqueJSContext *a2, JSObjectRef object, OpaqueJSValue *a4, const OpaqueJSContext **a5, const OpaqueJSValue *const *a6, const OpaqueJSValue **a7)
{
  v10 = SafariShared::JSController::jsController(object);
  if (a4 == 1 && (v12 = v10) != 0)
  {
    v13 = SafariShared::JSUtilities::translateJSValueToNS(this, *a5, v11);
    v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
    (*(*v12 + 208))(v12, v14);
    Undefined = JSValueMakeUndefined(this);

    return Undefined;
  }

  else
  {

    return JSValueMakeUndefined(this);
  }
}

JSClassRef SafariShared::ReaderJSController::staticJSClass(SafariShared::ReaderJSController *this)
{
  {
    return SafariShared::ReaderJSController::staticJSClass(void)::jsClass;
  }

  result = SafariShared::JSController::createJSClass(this);
  SafariShared::ReaderJSController::staticJSClass(void)::jsClass = result;
  return result;
}

id SafariShared::ReaderJSController::fullArticleHTML(SafariShared::ReaderJSController *this)
{
  v2 = *(this + 5);
  SafariShared::JSUtilities::jsString(&script, "ReaderJS.sanitizedFullArticle().outerHTML");
  v3 = JSEvaluateScript(v2, script, *(this + 3), 0, 0, 0);
  if (script)
  {
    JSStringRelease(script);
  }

  if (v3 && JSValueIsString(v2, v3))
  {
    v4 = SafariShared::JSUtilities::toNSString(v2, v3, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BB83F278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, JSStringRef string)
{
  if (string)
  {
    JSStringRelease(string);
  }

  _Unwind_Resume(exception_object);
}

id burmeseFonts(void)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Noto Sans Myanmar" displayName:@"Noto Sans မြန်မာဘာသာ"];
  v4[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Noto Serif Myanmar" displayName:@"Noto Serif မြန်မာဘာသာ"];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

void sub_1BB83FA3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id cherokeeFonts(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Plantagenet Cherokee" displayName:@"Plantagenet ᏣᎳᎩ"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

id gujaratiFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Kohinoor Gujarati" displayName:@"કોહિનૂર ગુજરાતી"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Mukta Vaani" displayName:@"મુક્ત વાણી"];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Gujarati Sangam MN" displayName:@"ગુજરાતી સંગમ MN"];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Gujarati MT" displayName:@"ગુજરાતી MT"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id punjabiFonts(void)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Mukta Mahee" displayName:@"ਮੁਕਤਾ ਮਾਹੀ"];
  v8[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Lahore Gurmukhi" displayName:@"ਲਾਹੌਰ ਗੁਰਮੁਖੀ"];
  v8[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Tiro Gurmukhi" displayName:@"Tiro ਗੁਰਮੁਖੀ"];
  v8[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Gurmukhi MN" displayName:@"ਗੁਰਮੁਖੀ MN"];
  v8[3] = v3;
  v4 = [WBSReaderFont fontWithFamilyName:@"Gurmukhi Sangam MN" displayName:@"ਗੁਰਮੁਖੀ ਸੰਗਮ MN"];
  v8[4] = v4;
  v5 = [WBSReaderFont fontWithFamilyName:@"Gurmukhi MT" displayName:@"ਗੁਰਮੁਖੀ MT"];
  v8[5] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:6];

  return v6;
}

id hebrewFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Arial Hebrew" displayName:@"Arial עברית"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Raanana" displayName:@"רעננה"];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Times New Roman" displayName:0];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Tahoma" displayName:0];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id hindiFonts(void)
{
  v9[7] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Kohinoor Devanagari" displayName:@"कोहिनूर देवनागरी"];
  v1 = [WBSReaderFont fontWithFamilyName:@"ITF Devanagari" displayName:@"आई॰टी॰एफ़॰ देवनागरी", v0];
  v9[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Tiro Devanagari Hindi" displayName:@"टीरो देवनागरी हिन्दी"];
  v9[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Mukta" displayName:@"मुक्त"];
  v9[3] = v3;
  v4 = [WBSReaderFont fontWithFamilyName:@"Shobhika" displayName:@"शोभिका"];
  v9[4] = v4;
  v5 = [WBSReaderFont fontWithFamilyName:@"Cambay Devanagari" displayName:@"खंभात"];
  v9[5] = v5;
  v6 = [WBSReaderFont fontWithFamilyName:@"Devanagari MT" displayName:@"देवनागरी MT"];
  v9[6] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];

  return v7;
}

id japaneseFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Hiragino Kaku Gothic ProN" displayName:@"ヒラギノ角ゴ"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Hiragino Sans W3" displayName:@"ヒラギノ角ゴシック"];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Hiragino Maru Gothic ProN" displayName:@"ヒラギノ丸ゴ"];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Hiragino Mincho ProN" displayName:@"ヒラギノ明朝"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id kannadaFonts(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Noto Sans Kannada" displayName:@"Noto Sans ಕನ್ನಡ"];
  v1 = [WBSReaderFont fontWithFamilyName:@"Noto Serif Kannada" displayName:@"Noto Serif ಕನ್ನಡ", v0];
  v7[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Tiro Kannada" displayName:@"Tiro ಕನ್ನಡ"];
  v7[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Kannada MN" displayName:@"ಕನ್ನಡ MN"];
  v7[3] = v3;
  v4 = [WBSReaderFont fontWithFamilyName:@"Kannada Sangam MN" displayName:@"ಕನ್ನಡ ಸಂಗಮ್ MN"];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];

  return v5;
}

id khmerFonts(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Khmer Sangam MN" displayName:@"ខ្មែរ Sangam MN"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

id koreanFonts(void)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Apple SD Gothic Neo" displayName:@"산돌고딕 Neo"];
  v1 = [WBSReaderFont fontWithFamilyName:@"Nanum Gothic" displayName:@"나눔고딕", v0];
  v5[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Nanum Myeongjo" displayName:@"나눔명조"];
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

id laoFonts(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Lao Sangam MN" displayName:@"ລາວ Sangam MN"];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

id malayalamFonts(void)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Malayalam Sangam MN" displayName:@"മലയാളം സംഗമ MN"];
  v4[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Malayalam MN" displayName:@"മലയാളം MN"];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

void sub_1BB8408A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id marathiFonts(void)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"ITF Devanagari Marathi" displayName:@"ITF देवनागरी मराठी"];
  v4[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Tiro Devanagari Marathi" displayName:@"टीरो देवनागरी मराठी"];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

void sub_1BB8409A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id oriyaFonts(void)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Noto Sans Oriya" displayName:@"Noto Sans ଓଡ଼ିଆ"];
  v1 = [WBSReaderFont fontWithFamilyName:@"Oriya Sangam MN" displayName:@"ଓଡ଼ିଆ ସଙ୍ଗମ MN", v0];
  v5[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Oriya MN" displayName:@"ଓଡ଼ିଆ MN"];
  v5[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

id sinhalaFonts(void)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Sinhala Sangam MN" displayName:@"සිංහල සංගම MN"];
  v4[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Sinhala MN" displayName:@"සිංහල MN"];
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

void sub_1BB840BDC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id tamilFonts(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Tamil Sangam MN" displayName:@"தமிழ் சங்கம் MN"];
  v1 = [WBSReaderFont fontWithFamilyName:@"Tamil MN" displayName:@"தமிழ் MN", v0];
  v7[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Tiro Tamil" displayName:@"Tiro தமிழ்"];
  v7[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Mukta Malar" displayName:@"முக்த மலர்"];
  v7[3] = v3;
  v4 = [WBSReaderFont fontWithFamilyName:@"InaiMathi" displayName:@"இணைமதி"];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];

  return v5;
}

id teluguFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Kohinoor Telugu" displayName:@"కోహినోరు తెలుగు"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Tiro Telugu" displayName:@"Tiro తెలుగు"];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Telugu MN" displayName:@"తెలుగు MN"];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Telugu Sangam MN" displayName:@"తెలుగు సంగం MN"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id thaiFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Thonburi" displayName:@"ธนบุรี"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Tahoma" displayName:0];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Sukhumvit Set" displayName:@"สุขุมวิท"];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Silom" displayName:@"สีลม"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id simplifiedChineseFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"PingFang SC" displayName:@"苹方"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Songti SC" displayName:@"宋体"];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Kaiti SC" displayName:@"楷体"];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Yuanti SC" displayName:@"圆体"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id traditionalChineseFonts(void)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"PingFang TC" displayName:@"蘋方"];
  v6[0] = v0;
  v1 = [WBSReaderFont fontWithFamilyName:@"Songti TC" displayName:@"宋體"];
  v6[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Kaiti TC" displayName:@"楷體"];
  v6[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Yuanti TC" displayName:@"圓體"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

id unifiedCanadianSyllabicsFonts(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Euphemia UCAS" displayName:0];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

id urduFonts(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [WBSReaderFont fontWithFamilyName:@"Noto Nastaliq Urdu" displayName:@"نوٹو نستعلیق"];
  v1 = [WBSReaderFont fontWithFamilyName:@"Geeza Pro" displayName:@" گیزہ پرو", v0];
  v7[1] = v1;
  v2 = [WBSReaderFont systemFontWithDisplayName:@"سان فرانسسکو"];
  v7[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Times New Roman" displayName:@" ٹائمز نیو رومن"];
  v7[3] = v3;
  v4 = [WBSReaderFont fontWithFamilyName:@"Myriad Arabic" displayName:@"Myriad عربي"];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];

  return v5;
}

id defaultFonts(void)
{
  v12[9] = *MEMORY[0x1E69E9840];
  v0 = +[WBSReaderFont systemFont];
  v1 = [WBSReaderFont fontWithFamilyName:@"Athelas" displayName:0, v0];
  v12[1] = v1;
  v2 = [WBSReaderFont fontWithFamilyName:@"Charter" displayName:0];
  v12[2] = v2;
  v3 = [WBSReaderFont fontWithFamilyName:@"Georgia" displayName:0];
  v12[3] = v3;
  v4 = [WBSReaderFont fontWithFamilyName:@"Iowan Old Style" displayName:@"Iowan"];
  v12[4] = v4;
  v5 = [WBSReaderFont fontWithFamilyName:@"Palatino" displayName:0];
  v12[5] = v5;
  v6 = [WBSReaderFont fontWithFamilyName:@"Seravek" displayName:0];
  v12[6] = v6;
  v7 = [WBSReaderFont fontWithFamilyName:@"Times New Roman" displayName:0];
  v12[7] = v7;
  v8 = +[WBSReaderFont systemSerifFont];
  v12[8] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:9];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_94];

  return v10;
}

void sub_1BB8417B0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

uint64_t ___ZL12defaultFontsv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];
  v7 = [v5 localizedCaseInsensitiveCompare:v6];

  return v7;
}

void sub_1BB841A08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void WBSReloadReadingListWidget(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXWidgets(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Requesting reload of Reading List widget", v11, 2u);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getCHSTimelineControllerClass_softClass;
  v15 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getCHSTimelineControllerClass_block_invoke;
    v11[3] = &unk_1E7FB6EC8;
    v11[4] = &v12;
    __getCHSTimelineControllerClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [v3 alloc];
  v6 = [v5 initWithExtensionBundleIdentifier:*MEMORY[0x1E69C8D38] kind:@"ReadingListWidget"];
  v7 = [v6 reloadTimelineWithReason:@"new data"];
  v9 = v7;
  if (v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXWidgets(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      WBSReloadReadingListWidget_cold_1(v10, v9);
    }
  }
}

void sub_1BB841EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHSTimelineControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ChronoServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7FC9C88;
    v5 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    __getCHSTimelineControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CHSTimelineController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSTimelineControllerClass_block_invoke_cold_1();
  }

  getCHSTimelineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BB842A34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1BB842B04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB844018(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1BB845720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB846A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB847CBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB848ECC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB849E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84AAEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84B468(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84BEE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84CFB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84DFB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84EEF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BB84FF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB850160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1BB850D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB851004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB8519BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB8525A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB85282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB85295C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB852A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB852BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB852D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB852F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB853190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB8533B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB853510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB855C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB856398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1BB8584C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  SafariShared::ScopeExitHandler::~ScopeExitHandler(va);
  _Unwind_Resume(a1);
}

id ___ZL37searchSuggestionsFromQuerySuggestionsP7NSArrayIP18WBSQuerySuggestionEP8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v5 = objc_alloc(MEMORY[0x1E69CA3F0]);
  v6 = [v3 title];
  v7 = [v5 initWithSuggestion:v6 query:*(a1 + 32) score:v4 type:0.0];

  v8 = [v3 identifier];
  [v7 setTopicIdentifier:v8];

  return v7;
}

void SafariShared::ScopeExitHandler::~ScopeExitHandler(void (***this)(void))
{
  v2 = *this;
  if (v2)
  {
    v2[2]();
    v3 = *this;
  }

  else
  {
    v3 = 0;
  }
}

void sub_1BB85ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB85B114(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

const __CFArray *WBSSecIdentityCopySSLClientAuthenticationChain(__SecIdentity *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  SSL = SecPolicyCreateSSL(0, 0);
  if (!SSL)
  {
    return 0;
  }

  v3 = SSL;
  certificateRef = 0;
  v4 = 0;
  if (!SecIdentityCopyCertificate(a1, &certificateRef))
  {
    v5 = certificateRef;
    v13[0] = certificateRef;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    trust = 0;
    v4 = 0;
    if (!SecTrustCreateWithCertificates(v6, v3, &trust))
    {
      v4 = SecTrustCopyCertificateChain(trust);
      result = kSecTrustResultInvalid;
      if (v4 && !SecTrustGetTrustResult(trust, &result) && result == kSecTrustResultUnspecified)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v4);
        Count = CFArrayGetCount(v4);
        CFArrayRemoveValueAtIndex(MutableCopy, Count - 1);
        CFRelease(v4);
        v4 = MutableCopy;
      }

      CFRelease(trust);
    }
  }

  CFRelease(v3);
  return v4;
}

void sub_1BB85CF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(void *a1, void *a2, void *a3)
{
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
      while (a2 != a3)
      {
        if (!a2)
        {
          goto LABEL_15;
        }

        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_13:
  if (a2 != a3)
  {
    if (a2)
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_multi<long long const&>(a1, a2 + 2);
    }

LABEL_15:
    __break(1u);
  }
}

id coreSpotlightBookmarksDonationIdentifier(uint64_t a1)
{
  if (coreSpotlightBookmarksDonationIdentifier_once != -1)
  {
    coreSpotlightBookmarksDonationIdentifier_cold_1();
  }

  v2 = coreSpotlightBookmarksDonationIdentifier_identifier;

  return v2;
}

void sub_1BB85F830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __coreSpotlightBookmarksDonationIdentifier_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v1 = [v0 stringWithFormat:@"%@.BookmarksDonation", v3];
  v2 = coreSpotlightBookmarksDonationIdentifier_identifier;
  coreSpotlightBookmarksDonationIdentifier_identifier = v1;
}

_BYTE *OUTLINED_FUNCTION_4_4(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t indexOfSectionWithIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __indexOfSectionWithIdentifier_block_invoke;
  v7[3] = &unk_1E7FCAC80;
  v8 = v3;
  v4 = v3;
  v5 = [a1 indexOfObjectPassingTest:v7];

  return v5;
}

void sub_1BB865180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __indexOfSectionWithIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

__CFString *titleForNewTabPosition(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7FCAF40[a1];
  }
}

double WBSHistoryTopicScore(unint64_t a1, double a2, double a3)
{
  if (agePenaltyFactor(double,double)::onceToken != -1)
  {
    WBSHistoryTopicScore_cold_1();
  }

  v6 = 1.0;
  if ((agePenaltyFactor(double,double)::shouldSkipAgePenalty & 1) == 0)
  {
    v7 = a3 - a2;
    v6 = powf(1.0, v7);
  }

  return sqrt(a1) * v6;
}

float WBSTopSitesScoreForCaching(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v1;
  if (urlPenaltyFactor(__CFString const*)::onceToken != -1)
  {
    WBSTopSitesScoreForCaching_cold_1();
  }

  v21 = 1.0;
  if ((urlPenaltyFactor(__CFString const*)::shouldSkipURLQuirksPenalty & 1) == 0)
  {
    Length = CFStringGetLength(v20);
    if (systemEightBitStringEncoding(void)::onceToken != -1)
    {
      WBSTopSitesScoreForCaching_cold_2();
    }

    CStringPtr = CFStringGetCStringPtr(v20, systemEightBitStringEncoding(void)::encoding);
    if (CStringPtr)
    {
      if (!Length)
      {
        goto LABEL_82;
      }

      v24 = 0;
      do
      {
        v26 = *CStringPtr++;
        v25 = v26;
        if (Length == 1)
        {
          v27 = 3;
        }

        else
        {
          v27 = 4;
        }

        if (v24 == 2)
        {
          v28 = v27;
        }

        else
        {
          v28 = v24 + 1;
        }

        if (v25 != 47)
        {
          v28 = v24;
        }

        if (v25 == 63)
        {
          v28 = v24 + 1;
        }

        if (v25 == 38)
        {
          v29 = v24 + 1;
        }

        else
        {
          v29 = v24;
        }

        if (v25 == 35)
        {
          v29 = v24 + 1;
        }

        if (v25 <= 46)
        {
          v24 = v29;
        }

        else
        {
          v24 = v28;
        }

        --Length;
      }

      while (Length);
    }

    else
    {
      CharactersPtr = CFStringGetCharactersPtr(v20);
      if (CharactersPtr)
      {
        if (!Length)
        {
          goto LABEL_82;
        }

        v24 = 0;
        do
        {
          v32 = *CharactersPtr++;
          v31 = v32;
          if (Length == 1)
          {
            v33 = 3;
          }

          else
          {
            v33 = 4;
          }

          if (v24 == 2)
          {
            v34 = v33;
          }

          else
          {
            v34 = v24 + 1;
          }

          if (v31 != 47)
          {
            v34 = v24;
          }

          if (v31 == 63)
          {
            v34 = v24 + 1;
          }

          if (v31 == 38)
          {
            v35 = v24 + 1;
          }

          else
          {
            v35 = v24;
          }

          if (v31 == 35)
          {
            v35 = v24 + 1;
          }

          if (v31 <= 46)
          {
            v24 = v35;
          }

          else
          {
            v24 = v34;
          }

          --Length;
        }

        while (Length);
      }

      else
      {
        v105 = v108;
        v106 = 2048;
        v107 = Length;
        v36 = v108;
        if (Length >= 0x801)
        {
          if (Length >> 31)
          {
            __break(0xC471u);
LABEL_171:
            JUMPOUT(0x1BB86B770);
          }

          v36 = WTF::fastMalloc((2 * Length));
          v106 = Length;
          v105 = v36;
        }

        v109.location = 0;
        v109.length = Length;
        CFStringGetCharacters(v20, v109, v36);
        v38 = v105;
        v24 = 0;
        if (Length)
        {
          v39 = v105;
          do
          {
            v41 = *v39;
            v39 = (v39 + 2);
            v40 = v41;
            if (Length == 1)
            {
              v42 = 3;
            }

            else
            {
              v42 = 4;
            }

            if (v24 == 2)
            {
              v43 = v42;
            }

            else
            {
              v43 = v24 + 1;
            }

            if (v40 != 47)
            {
              v43 = v24;
            }

            if (v40 == 63)
            {
              v43 = v24 + 1;
            }

            if (v40 == 38)
            {
              v44 = v24 + 1;
            }

            else
            {
              v44 = v24;
            }

            if (v40 == 35)
            {
              v44 = v24 + 1;
            }

            if (v40 <= 46)
            {
              v24 = v44;
            }

            else
            {
              v24 = v43;
            }

            --Length;
          }

          while (Length);
        }

        if (v108 != v105 && v105)
        {
          v105 = 0;
          v106 = 0;
          WTF::fastFree(v38, v37);
        }
      }
    }

    v45 = v24 - 4;
    if (v24 >= 4)
    {
      v21 = 0.25;
      if (v45 <= 5)
      {
        v21 = flt_1BB953850[v45];
      }
    }
  }

LABEL_82:
  if (v5)
  {
    *v5 = v21;
  }

  [WBSHistoryVisit weightedVisitCountFromScore:v15];
  v47 = v46;
  if (v7 | v11)
  {
    WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v105, v11);
    if (v11)
    {
      for (i = 0; i != v11; *(v105 + i++) = v49)
      {
        [WBSHistoryVisit weightedVisitCountFromScore:*(v13 + 4 * i)];
        if (i >= v107)
        {
          goto LABEL_168;
        }
      }
    }

    WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v102, v7);
    if (v7)
    {
      for (j = 0; j != v7; ++j)
      {
        [WBSHistoryVisit weightedVisitCountFromScore:*(v9 + 4 * j)];
        v52 = v104;
        if (j >= v104)
        {
          __break(0xC471u);
          JUMPOUT(0x1BB86B778);
        }

        v53 = v102;
        *(v102 + j) = v51;
      }
    }

    else
    {
      v53 = v102;
      v52 = v104;
    }

    v101 = v21;
    v57 = v105;
    v58 = v107;
    v59 = v19;
    if (v107)
    {
      v60 = *v105;
      if (agePenaltyFactor(double,double)::onceToken != -1)
      {
        WBSTopSitesScoreForCaching_cold_3();
      }

      v61 = 1.0;
      if ((agePenaltyFactor(double,double)::shouldSkipAgePenalty & 1) == 0)
      {
        v62 = v17 - v59;
        v61 = powf(1.0, v62);
      }

      v63 = (v60 * v61) + 0.0;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = floorf(v59 / 86400.0) * 86400.0 + 43200.0;
    if (v58 >= 2)
    {
      v65 = agePenaltyFactor(double,double)::onceToken == -1;
      v66 = v58 - 1;
      v67 = (v57 + 4);
      do
      {
        v68 = *v67;
        if (!v65)
        {
          WBSTopSitesScoreForCaching_cold_3();
        }

        v64 = v64 + -86400.0;
        v69 = 1.0;
        if ((agePenaltyFactor(double,double)::shouldSkipAgePenalty & 1) == 0)
        {
          v70 = v17 - v64;
          v69 = powf(1.0, v70);
        }

        v63 = v63 + (v68 * v69);
        ++v67;
        v65 = 1;
        --v66;
      }

      while (v66);
    }

    if (v52)
    {
      v71 = v64 + 259200.0;
      v72 = agePenaltyFactor(double,double)::onceToken == -1;
      v73 = 0.0;
      v74 = v53;
      v75 = v52;
      do
      {
        v76 = *v74;
        if (!v72)
        {
          WBSTopSitesScoreForCaching_cold_3();
        }

        v71 = v71 + -604800.0;
        v77 = 1.0;
        if ((agePenaltyFactor(double,double)::shouldSkipAgePenalty & 1) == 0)
        {
          v78 = v17 - v71;
          v77 = powf(1.0, v78);
        }

        v73 = v73 + (v76 * v77);
        ++v74;
        v72 = 1;
        --v75;
      }

      while (v75);
    }

    else
    {
      v73 = 0.0;
    }

    if (inconsistencyPenaltyFactor(std::span<float const,18446744073709551615ul>)::onceToken != -1)
    {
      WBSTopSitesScoreForCaching_cold_6();
    }

    if (inconsistencyPenaltyFactor(std::span<float const,18446744073709551615ul>)::shouldSkipInconsistentVisitsPenalty)
    {
      v79 = 1.0;
    }

    else
    {
      v79 = 0.5;
    }

    if (v58 && (inconsistencyPenaltyFactor(std::span<float const,18446744073709551615ul>)::shouldSkipInconsistentVisitsPenalty & 1) == 0)
    {
      v80 = 0;
      v81 = 0;
      v82 = 0.0;
      do
      {
        v83 = *(v57 + v80);
        if (v83 != 0.0)
        {
          v82 = v82 + v83;
          v81 = v80;
        }

        ++v80;
      }

      while (v58 != v80);
      if (v81)
      {
        if (v82 == 0.0)
        {
          v79 = 0.0;
        }

        else
        {
          if (v81 >= v58)
          {
            goto LABEL_167;
          }

          v85 = v81 + 1;
          v86 = 0.0;
          do
          {
            v87 = *v57;
            v57 = (v57 + 4);
            v84 = 1.0 / v58;
            v86 = v86 + (((v87 / v82) - v84) * ((v87 / v82) - v84));
            --v85;
          }

          while (v85);
          v79 = 0.09531 / logf((v86 / v58) + 1.1);
        }
      }

      else
      {
        v79 = 0.5;
      }
    }

    if (inconsistencyPenaltyFactor(std::span<float const,18446744073709551615ul>)::shouldSkipInconsistentVisitsPenalty)
    {
      v88 = 1.0;
    }

    else
    {
      v88 = 0.5;
    }

    if (!v52 || (inconsistencyPenaltyFactor(std::span<float const,18446744073709551615ul>)::shouldSkipInconsistentVisitsPenalty & 1) != 0)
    {
      goto LABEL_160;
    }

    v89 = 0;
    v90 = 0;
    v91 = 0.0;
    do
    {
      v92 = *(v53 + v89);
      if (v92 != 0.0)
      {
        v91 = v91 + v92;
        v90 = v89;
      }

      ++v89;
    }

    while (v52 != v89);
    if (v90)
    {
      if (v91 != 0.0)
      {
        if (v90 < v52)
        {
          v94 = v90 + 1;
          v95 = 0.0;
          do
          {
            v96 = *v53;
            v53 = (v53 + 4);
            v93 = 1.0 / v52;
            v95 = v95 + (((v96 / v91) - v93) * ((v96 / v91) - v93));
            --v94;
          }

          while (v94);
          v88 = 0.09531 / logf((v95 / v52) + 1.1);
          goto LABEL_160;
        }

LABEL_167:
        __break(1u);
LABEL_168:
        __break(0xC471u);
        goto LABEL_171;
      }

      v88 = 0.0;
    }

    else
    {
      v88 = 0.5;
    }

LABEL_160:
    v56 = logf(v47) * ((v63 * v79) + (v73 * v88));
    if (v3)
    {
      *v3 = v56;
    }

    v98 = v102;
    v21 = v101;
    if (v102)
    {
      v102 = 0;
      v103 = 0;
      WTF::fastFree(v98, v97);
    }

    v99 = v105;
    if (v105)
    {
      v105 = 0;
      v106 = 0;
      WTF::fastFree(v99, v97);
    }

    return v21 * v56;
  }

  if (agePenaltyFactor(double,double)::onceToken != -1)
  {
    WBSTopSitesScoreForCaching_cold_3();
  }

  v54 = 1.0;
  if ((agePenaltyFactor(double,double)::shouldSkipAgePenalty & 1) == 0)
  {
    v55 = v17 - v19;
    v54 = powf(1.0, v55);
  }

  v56 = v47 * v54;
  if (v3)
  {
    *v3 = v56;
  }

  return v21 * v56;
}

void sub_1BB86B784(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, WTF *a12, int a13)
{
  if (v13 != a12)
  {
    if (a12)
    {
      WTF::fastFree(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16agePenaltyFactordd_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  agePenaltyFactor(double,double)::shouldSkipAgePenalty = [v0 safari_BOOLForKey:@"FrequentlyVisitedSitesSkipAgePenalty" defaultValue:0];
}

void ___ZL16urlPenaltyFactorPK10__CFString_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  urlPenaltyFactor(__CFString const*)::shouldSkipURLQuirksPenalty = [v0 safari_BOOLForKey:@"FrequentlyVisitedSitesSkipURLQuirksPenalty" defaultValue:0];
}

uint64_t ___ZL28systemEightBitStringEncodingv_block_invoke()
{
  result = CFStringGetFastestEncoding(@" ");
  systemEightBitStringEncoding(void)::encoding = result;
  return result;
}

void ___ZL26inconsistencyPenaltyFactorNSt3__14spanIKfLm18446744073709551615EEE_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  inconsistencyPenaltyFactor(std::span<float const,18446744073709551615ul>)::shouldSkipInconsistentVisitsPenalty = [v0 safari_BOOLForKey:@"FrequentlyVisitedSitesSkipInconsistentVisitsPenalty" defaultValue:0];
}

uint64_t WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a2;
  if (!a2)
  {
    return v3;
  }

  if (!(a2 >> 30))
  {
    v4 = WTF::fastMalloc((4 * a2));
    *(v3 + 8) = v2;
    *v3 = v4;
    v5 = *(v3 + 12);
    if (v5)
    {
      bzero(v4, 4 * v5);
    }

    return v3;
  }

  __break(0xC471u);
  return result;
}

uint64_t WBSUnifiedFieldInputTypeForString(void *a1)
{
  v1 = a1;
  if (WBSUnifiedFieldInputTypeForString::token != -1)
  {
    WBSUnifiedFieldInputTypeForString_cold_1();
  }

  v2 = pthread_getspecific(WBSUnifiedFieldInputTypeForString::cacheKey);
  v3 = v2;
  if (!v2)
  {
    operator new();
  }

  if (![*v2 isEqualToString:v1])
  {
    v5 = [v1 copy];
    v6 = *v3;
    *v3 = v5;

    v48 = v1;
    v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v48 stringByTrimmingCharactersInSet:v7];
    if (![v8 length])
    {
      v4 = 4;
      v9 = v8;
LABEL_91:

      v3[1] = v4;
      goto LABEL_92;
    }

    v9 = [v8 safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString];

    if (![v9 length])
    {
LABEL_32:
      v4 = 0;
      goto LABEL_91;
    }

    v10 = [v9 rangeOfCharacterFromSet:v7];
    v11 = [v9 rangeOfString:@"/"];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v19 = [v9 substringToIndex:v10];
    v20 = substringBeforeFirstColon(v19);
    if (![v20 length])
    {
      goto LABEL_25;
    }

    v21 = v20;
    {
      isWhitespaceAllowingScheme(NSString *)::whitespaceAllowingSchemes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"data", @"file", @"ftp", @"ftps", @"http", @"https", @"javascript", 0}];
    }

    if (![v21 length])
    {

      goto LABEL_30;
    }

    v22 = [isWhitespaceAllowingScheme(NSString *)::whitespaceAllowingSchemes containsObject:v21];

    if (v22)
    {
LABEL_25:
      v23 = [v20 length];
      if (!v23 || v23 != [(NSString *)v19 length]- 1)
      {
        if ([(NSString *)v19 safari_looksLikeAbsoluteURLString])
        {
          v4 = 1;
          goto LABEL_89;
        }

        v24 = [(NSString *)v19 rangeOfString:@"?"];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_10:
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }

          v12 = v9;
          v13 = v12;
          if ([v12 length])
          {
            v14 = [v12 rangeOfString:@":" options:4];

            v13 = v12;
            if (v14 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_35;
            }

            v15 = [v12 length] - 1;
            v13 = v12;
            if (v14 == v15)
            {
              goto LABEL_35;
            }

            v16 = v14 + 1;
            v17 = MEMORY[0x1E69E9830];
            while (v16 <= v15)
            {
              v18 = [v12 characterAtIndex:v16];
              if (v18 <= 0xFF)
              {
                ++v16;
                if ((*(v17 + 4 * v18 + 60) & 0x400) != 0)
                {
                  continue;
                }
              }

              v13 = v12;
              goto LABEL_35;
            }

            v13 = [v12 substringToIndex:v14];
          }

LABEL_35:
          v9 = v13;
LABEL_36:
          v9 = v9;
          if ([v9 length] && (v25 = objc_msgSend(v9, "length") - 1, objc_msgSend(v9, "characterAtIndex:", v25) == 58))
          {
            ColonIndex = firstColonIndex(v9);

            if (ColonIndex == v25)
            {
              goto LABEL_46;
            }
          }

          else
          {
          }

          if (![v9 safari_looksLikeAbsoluteURLString])
          {
LABEL_46:
            v31 = [v9 rangeOfString:@"."];
            v32 = v31;
            if (v11 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v31 && v31 != 0x7FFFFFFFFFFFFFFFLL && (v49 = 0, (determineUnifiedFieldInputTypeFromApparentHostString(v9, &v49) & 1) != 0))
              {
                v4 = v49;
              }

              else if ([v9 caseInsensitiveCompare:@"localhost"])
              {
                v4 = 3;
              }

              else
              {
                v4 = 2;
              }

              goto LABEL_91;
            }

            v9 = v9;
            {
              v34 = looksLikeMath(NSString *)::notMathCharacters;
            }

            else
            {
              v34 = ___ZL13looksLikeMathP8NSString_block_invoke();
              looksLikeMath(NSString *)::notMathCharacters = v34;
            }

            v35 = [v9 rangeOfCharacterFromSet:v34];

            if (v35 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v4 = 3;
              goto LABEL_91;
            }

            v19 = 0;
            if (v32)
            {
              if (v32 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v19 = [v9 substringToIndex:v11];
                v49 = 0;
                if (determineUnifiedFieldInputTypeFromApparentHostString(v19, &v49))
                {
                  v4 = v49;
LABEL_90:

                  goto LABEL_91;
                }
              }
            }

            v38 = [v9 rangeOfString:@"/" options:4];
            if (v38 != [v9 length] - 1)
            {
              v39 = [v9 rangeOfString:@"#" options:4];
              if (v39 == 0x7FFFFFFFFFFFFFFFLL || v39 <= v38)
              {
                v40 = [v9 rangeOfString:@"?" options:4];
                if ((v40 == 0x7FFFFFFFFFFFFFFFLL || v40 <= v11) && ([v9 hasPrefix:@"localhost/"] & 1) == 0)
                {
                  v41 = isStringForUserTypedDomainExpansionInHistory;
                  if (!isStringForUserTypedDomainExpansionInHistory)
                  {
                    goto LABEL_83;
                  }

                  if (!v19)
                  {
                    v42 = [v9 substringToIndex:v11];
                    v41 = isStringForUserTypedDomainExpansionInHistory;
                    v19 = v42;
                  }

                  if ((v41(v19) & 1) == 0)
                  {
LABEL_83:
                    v4 = 3;
                    goto LABEL_90;
                  }
                }
              }
            }

LABEL_85:
            v4 = 2;
            goto LABEL_90;
          }

          v27 = [MEMORY[0x1E696AF20] componentsWithString:v48];
          v19 = v27;
          if (v27)
          {
            v28 = [(NSString *)v27 scheme];
            v29 = [v28 isEqualToString:@"about"];

            if (v29)
            {
              v30 = [(NSString *)v19 path];
              if ([v30 isEqualToString:@"blank"])
              {
              }

              else
              {
                v43 = [(NSString *)v19 path];
                v44 = [v43 isEqualToString:@"blank/"];

                if ((v44 & 1) == 0)
                {
                  v46 = [(NSString *)v19 path];
                  v47 = [v46 isEqualToString:@"ad-tagging-list"];

                  if (v47)
                  {
                    v4 = 2;
                  }

                  else
                  {
                    v4 = 3;
                  }

                  goto LABEL_90;
                }
              }

              goto LABEL_85;
            }
          }

          v20 = substringBeforeFirstColon(v9);
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            {
              isSchemeThatDoesNotRequireSlashInURL(NSString *)::schemesThatDoNotRequireSlashInURL = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"data", @"facetime", @"gamecenter", @"irc", @"javascript", @"mailto", @"man", @"message", @"radar", @"spotify", @"tel", 0}];
            }

            if ([v20 length])
            {
              v33 = [isSchemeThatDoesNotRequireSlashInURL(NSString *)::schemesThatDoNotRequireSlashInURL containsObject:v20];

              if (v33)
              {
                v4 = 1;
              }

              else
              {
                v4 = 3;
              }
            }

            else
            {

              v4 = 3;
            }
          }

          else
          {
            {
              isSearchPrefixQualifier(NSString *)::searchQualifiersThatAreUsedLikeSchemes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"site", @"link", @"related", @"cache", 0}];
            }

            if ([v20 length])
            {
              v36 = isSearchPrefixQualifier(NSString *)::searchQualifiersThatAreUsedLikeSchemes;
              v37 = [v20 lowercaseString];
              LODWORD(v36) = [v36 containsObject:v37];

              v4 = v36 ^ 1;
            }

            else
            {
              v4 = 1;
            }
          }

LABEL_89:

          goto LABEL_90;
        }

        goto LABEL_32;
      }
    }

LABEL_30:
    v4 = 0;
    goto LABEL_89;
  }

  v4 = v3[1];
LABEL_92:

  return v4;
}

id *WBSUnifiedFieldInputTypeForString::Cache::destroy(id *this, void *a2)
{
  if (this)
  {

    JUMPOUT(0x1BFB13480);
  }

  return this;
}

id substringBeforeFirstColon(NSString *a1)
{
  v1 = a1;
  ColonIndex = firstColonIndex(v1);
  if (ColonIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSString *)v1 substringToIndex:ColonIndex];
  }

  return v3;
}

uint64_t determineUnifiedFieldInputTypeFromApparentHostString(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = [v3 lowercaseString];
    v5 = [v4 safari_possibleTopLevelDomainCorrectionForUserTypedString];
    if ([v5 length])
    {
      v6 = v5;

      v4 = v6;
    }

    v7 = [v4 safari_highLevelDomainFromHost];
    if ([v7 length])
    {

LABEL_6:
      *a2 = 2 * ([v4 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL);
      v8 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v9 = v4;
    {
      hasWellKnownButUnofficialTopLevelDomainSuffix(NSString *)::unofficialTopLevelDomainSuffixes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"private", @"box", @"local", 0}];
    }

    if ([v9 length] && (v10 = objc_msgSend(v9, "rangeOfString:options:", @".", 4), v10 != 0x7FFFFFFFFFFFFFFFLL))
    {
      if (v10 + 1 != [v9 length] || (objc_msgSend(v9, "substringToIndex:", v10), v11 = objc_claimAutoreleasedReturnValue(), v9, v13 = objc_msgSend(v11, "rangeOfString:options:", @".", 4), v13 != 0x7FFFFFFFFFFFFFFFLL) && (v9 = v11, v13 + 1 != objc_msgSend(v11, "length")))
      {
        v14 = hasWellKnownButUnofficialTopLevelDomainSuffix(NSString *)::unofficialTopLevelDomainSuffixes;
        v15 = [v9 substringFromIndex:?];
        v16 = [v15 lowercaseString];
        LOBYTE(v14) = [v14 containsObject:v16];

        if (v14)
        {
          goto LABEL_6;
        }

LABEL_14:
        v8 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_14;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

uint64_t firstColonIndex(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 length])
  {
    v2 = [(NSString *)v1 rangeOfString:@":"];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

id ___ZL13looksLikeMathP8NSString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  v3 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [v0 formUnionWithCharacterSet:v3];

  v4 = [v0 invertedSet];

  return v4;
}

void sub_1BB86DB08(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB86DF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va);

  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va2);

  _Unwind_Resume(a1);
}

uint64_t *WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendRange<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t a1, _DWORD **a2, _DWORD **a3)
{
  v6 = (a1 + 12);
  result = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + a3 - a2);
  if (a3 != a2)
  {
    return WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendRange<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(a1, v6, a2, a3);
  }

  return result;
}

id *WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(id *result, unint64_t a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = (*result + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        result = *v5;
        *v5 = 0;
        if (result)
        {
          result = WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(v4 + 3) = v3;
  }

  return result;
}

void logMatches(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%4d:", v2];
      logCompletionMatchToDebugChannel(v4, v3);

      ++v2;
    }

    while (v2 < *(a1 + 12));
  }
}

void sub_1BB86E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1BB86F20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id *a25)
{
  if (a25)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a25);
  }

  _Unwind_Resume(a1);
}

void logCompletionMatchToDebugChannel(NSString *a1, SafariShared::BookmarkAndHistoryCompletionMatch *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (a2)
  {
    v4 = SafariShared::BookmarkAndHistoryCompletionMatch::data(a2);
    v5 = [v4 containsBookmark];

    v6 = [MEMORY[0x1E69C8880] isSearchEvaluationLoggingEnabled];
    if (v6)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        if (v5)
        {
          v9 = "bookmark";
        }

        else
        {
          v9 = "history";
        }

        v10 = *(a2 + 12);
        v11 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(a2);
        v12 = [v11 safari_urlHashesOfComponents];
        v13 = SafariShared::BookmarkAndHistoryCompletionMatch::title(a2);
        v14 = [v13 safari_md5Hash];
        v15 = SafariShared::BookmarkAndHistoryCompletionMatch::uuidString(a2);
        matched = SafariShared::debugStringForMatchLocation(*(a2 + 1));
        v17 = SafariShared::BookmarkAndHistoryCompletionMatch::lastVisitedDate(a2);
        v32 = 138414082;
        v33 = v3;
        v34 = 2082;
        v35 = v9;
        v36 = 2048;
        v37 = v10;
        v38 = 2114;
        v39 = v12;
        v40 = 2114;
        v41 = v14;
        v42 = 2114;
        v43 = v15;
        v44 = 2082;
        v45 = matched;
        v46 = 2112;
        v47 = v17;
        _os_log_debug_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEBUG, "%@: (%{public}8s) %.6f <%{public}@> %{public}@ [%{public}@] (%{public}s) %@", &v32, 0x52u);
      }
    }

    else
    {
      v18 = [MEMORY[0x1E69C8880] isShowURLsInURLAutocompleteDebugChannelEnabled];
      if (v18)
      {
        v8 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          if (v5)
          {
            v20 = "bookmark";
          }

          else
          {
            v20 = "history";
          }

          v21 = *(a2 + 12);
          v22 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(a2);
          v23 = SafariShared::BookmarkAndHistoryCompletionMatch::title(a2);
          v24 = SafariShared::debugStringForMatchLocation(*(a2 + 1));
          v25 = SafariShared::BookmarkAndHistoryCompletionMatch::lastVisitedDate(a2);
          v32 = 138413827;
          v33 = v3;
          v34 = 2082;
          v35 = v20;
          v36 = 2048;
          v37 = v21;
          v38 = 2114;
          v39 = v22;
          v40 = 2117;
          v41 = v23;
          v42 = 2082;
          v43 = v24;
          v44 = 2112;
          v45 = v25;
          _os_log_debug_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEBUG, "%@: (%{public}8s) %.6f <%{public}@> %{sensitive}@ (%{public}s) %@", &v32, 0x48u);
        }
      }

      else
      {
        v8 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          if (v5)
          {
            v26 = "bookmark";
          }

          else
          {
            v26 = "history";
          }

          v27 = *(a2 + 12);
          v28 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(a2);
          v29 = SafariShared::BookmarkAndHistoryCompletionMatch::title(a2);
          v30 = SafariShared::debugStringForMatchLocation(*(a2 + 1));
          v31 = SafariShared::BookmarkAndHistoryCompletionMatch::lastVisitedDate(a2);
          v32 = 138413827;
          v33 = v3;
          v34 = 2082;
          v35 = v26;
          v36 = 2048;
          v37 = v27;
          v38 = 2117;
          v39 = v28;
          v40 = 2117;
          v41 = v29;
          v42 = 2082;
          v43 = v30;
          v44 = 2112;
          v45 = v31;
          _os_log_debug_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_DEBUG, "%@: (%{public}8s) %.6f <%{sensitive}@> %{sensitive}@ (%{public}s) %@", &v32, 0x48u);
        }
      }
    }
  }
}

void sub_1BB86FC7C(_Unwind_Exception *a1)
{
  *v5 = 0;
  if (v7)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v7);
  }

  _Unwind_Resume(a1);
}

SafariShared::BookmarkAndHistoryCompletionMatch *SafariShared::BookmarkAndHistoryCompletionMatch::create@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, SafariShared::BookmarkAndHistoryCompletionMatch **a6@<X8>, double a7@<D0>)
{
  v14 = WTF::fastMalloc(0x50);
  result = SafariShared::BookmarkAndHistoryCompletionMatch::BookmarkAndHistoryCompletionMatch(v14, a1, a2, a3, a4, a5, a7);
  *a6 = v14;
  return result;
}

void sub_1BB8709A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v19);
  WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v18);

  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1);

  _Unwind_Resume(a1);
}

void sub_1BB870E94(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 - 136, a2);

  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 - 120, v15);
  _Unwind_Resume(a1);
}

id *recordItemIfFullTextMatch(id *result, void *a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v23 = result;
  if (result)
  {
    v8 = result;
    v21 = 0;
    v22 = 0;
    result = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(result, a2, &v22, &v21);
    if (result)
    {
      v9 = result;
      v10 = *(a4 + 3);
      if (v10 == *(a4 + 2))
      {
        WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto25WBSURLCompletionMatchData}&>(a4, &v23);
        v11 = v23;
      }

      else
      {
        v12 = *a4;
        v11 = v8;
        *(v12 + 8 * v10) = v11;
        ++*(a4 + 3);
      }

      SafariShared::BookmarkAndHistoryCompletionMatch::create(v11, *(a3 + 3), v9, v21, v22, &v20, a5);
      v13 = *(a3 + 3);
      if (v13 == *(a3 + 2))
      {
        if (v13 + (v13 >> 1) <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = v13 + (v13 >> 1);
        }

        if (v14 <= 0x10)
        {
          v15 = 16;
        }

        else
        {
          v15 = v14;
        }

        WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a3, v15);
        v13 = *(a3 + 3);
        v16 = *a3;
        v17 = v20;
        v20 = 0;
        *(v16 + 8 * v13) = v17;
      }

      else
      {
        v18 = *a3;
        v19 = v20;
        v20 = 0;
        *(v18 + 8 * v13) = v19;
      }

      *(a3 + 3) = v13 + 1;
      result = v20;
      v20 = 0;
      if (result)
      {
        return WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
      }
    }
  }

  return result;
}

void sub_1BB871050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *a9)
{
  if (a9)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a9);
  }

  _Unwind_Resume(exception_object);
}

void addMatchData(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v3 originalURLString];
  if ([v4 length])
  {
    v5 = [v8 objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 matchDataByMergingWithMatchData:v3];
      [v8 setObject:v7 forKeyedSubscript:v4];
    }

    else
    {
      [v8 setObject:v3 forKeyedSubscript:v4];
    }
  }
}

void sub_1BB87113C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1BB871604(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 - 136, a2);

  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 - 120, v15);
  _Unwind_Resume(a1);
}

uint64_t recordItemIfPrefixMatch(uint64_t result, void *a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v23 = result;
  if (result)
  {
    v8 = result;
    v21 = 0;
    v22 = 0;
    result = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(result, a2, &v22, &v21);
    if (result >= 4)
    {
      v9 = result;
      v10 = *(a4 + 3);
      if (v10 == *(a4 + 2))
      {
        WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto25WBSURLCompletionMatchData}&>(a4, &v23);
        v11 = v23;
      }

      else
      {
        v12 = *a4;
        v11 = v8;
        *(v12 + 8 * v10) = v11;
        ++*(a4 + 3);
      }

      SafariShared::BookmarkAndHistoryCompletionMatch::create(v11, *(a3 + 3), v9, v21, v22, &v20, a5);
      v13 = *(a3 + 3);
      if (v13 == *(a3 + 2))
      {
        if (v13 + (v13 >> 1) <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = v13 + (v13 >> 1);
        }

        if (v14 <= 0x10)
        {
          v15 = 16;
        }

        else
        {
          v15 = v14;
        }

        WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a3, v15);
        v13 = *(a3 + 3);
        v16 = *a3;
        v17 = v20;
        v20 = 0;
        *(v16 + 8 * v13) = v17;
      }

      else
      {
        v18 = *a3;
        v19 = v20;
        v20 = 0;
        *(v18 + 8 * v13) = v19;
      }

      *(a3 + 3) = v13 + 1;
      result = v20;
      v20 = 0;
      if (result)
      {
        return WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
      }
    }
  }

  return result;
}

void sub_1BB8717C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *a9)
{
  if (a9)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a9);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,false>(id **a1, id *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 1);
  v9 = (a2 - 2);
  v10 = (a2 - 3);
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 3;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v49 = (*a3)(v11 + 1, v11);
        v50 = (*a3)(v8, v11 + 1);
        if (v49)
        {
          v51 = *v11;
          if (v50)
          {
            goto LABEL_78;
          }

          *v11 = v11[1];
          v11[1] = v51;
          if (!(*a3)(v8, v11 + 1))
          {
            return result;
          }

          v51 = v11[1];
          v11[1] = *v8;
LABEL_79:
          *v8 = v51;
          return result;
        }

        if (!v50)
        {
          return result;
        }

        v57 = v11[1];
        v11[1] = *v8;
        *v8 = v57;
        goto LABEL_104;
      case 4uLL:
        v54 = (*a3)(v11 + 1, v11);
        v55 = (*a3)(v11 + 2, v11 + 1);
        if (v54)
        {
          v56 = *v11;
          if (v55)
          {
            *v11 = v11[2];
            v11[2] = v56;
          }

          else
          {
            *v11 = v11[1];
            v11[1] = v56;
            if ((*a3)(v11 + 2, v11 + 1))
            {
              *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
            }
          }
        }

        else if (v55)
        {
          *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
          if ((*a3)(v11 + 1, v11))
          {
            *v11 = vextq_s8(*v11, *v11, 8uLL);
          }
        }

        if (!(*a3)(v8, v11 + 2))
        {
          return result;
        }

        v58 = v11[2];
        v11[2] = *v8;
        *v8 = v58;
        if (!(*a3)(v11 + 2, v11 + 1))
        {
          return result;
        }

        *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
LABEL_104:
        if ((*a3)(v11 + 1, v11))
        {
          result = vextq_s8(*v11, *v11, 8uLL);
          *v11 = result;
        }

        return result;
      case 5uLL:

        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
        return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(&v11[v14 >> 1], v11);
      v18 = (*a3)(a2 - 1, v15);
      if (v17)
      {
        v19 = *a1;
        if (v18)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        if ((*a3)(a2 - 1, v15))
        {
          v19 = *v15;
          *v15 = *v8;
LABEL_27:
          *v8 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v15;
        *v15 = *v8;
        *v8 = v23;
        if ((*a3)(v15, a1))
        {
          v24 = *a1;
          *a1 = *v15;
          *v15 = v24;
        }
      }

      v27 = v15 - 1;
      v28 = (*a3)(v15 - 1, a1 + 1);
      v29 = (*a3)(a2 - 2, v15 - 1);
      if (v28)
      {
        v30 = a1[1];
        if (v29)
        {
          a1[1] = *v9;
          goto LABEL_39;
        }

        a1[1] = *v27;
        *v27 = v30;
        if ((*a3)(a2 - 2, v15 - 1))
        {
          v30 = *v27;
          *v27 = *v9;
LABEL_39:
          *v9 = v30;
        }
      }

      else if (v29)
      {
        v31 = *v27;
        *v27 = *v9;
        *v9 = v31;
        if ((*a3)(v15 - 1, a1 + 1))
        {
          v32 = a1[1];
          a1[1] = *v27;
          *v27 = v32;
        }
      }

      v33 = (*a3)(v15 + 1, a1 + 2);
      v34 = (*a3)(a2 - 3, v15 + 1);
      if (v33)
      {
        v35 = a1[2];
        if (v34)
        {
          a1[2] = *v10;
          goto LABEL_48;
        }

        a1[2] = v15[1];
        v15[1] = v35;
        if ((*a3)(a2 - 3, v15 + 1))
        {
          v35 = v15[1];
          v15[1] = *v10;
LABEL_48:
          *v10 = v35;
        }
      }

      else if (v34)
      {
        v36 = v15[1];
        v15[1] = *v10;
        *v10 = v36;
        if ((*a3)(v15 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v15[1];
          v15[1] = v37;
        }
      }

      v38 = (*a3)(v15, v15 - 1);
      v39 = (*a3)(v15 + 1, v15);
      if (v38)
      {
        v40 = *v27;
        if (v39)
        {
          v41 = *v15;
          *v27 = v15[1];
          v15[1] = v40;
LABEL_58:
          v45 = *a1;
          *a1 = v41;
          *v15 = v45;
          goto LABEL_59;
        }

        *v27 = *v15;
        *v15 = v40;
        v44 = (*a3)(v15 + 1, v15);
        v41 = *v15;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v15[1];
        *v15 = v43;
        v15[1] = v41;
      }

      else
      {
        v41 = *v15;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v15 = v15[1];
        v15[1] = v41;
        v42 = (*a3)(v15, v15 - 1);
        v41 = *v15;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v27;
        *v27 = v41;
        *v15 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v20 = v16(v11, &v11[v14 >> 1]);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      v22 = *v15;
      if (v21)
      {
        *v15 = *v8;
LABEL_36:
        *v8 = v22;
        goto LABEL_59;
      }

      *v15 = *a1;
      *a1 = v22;
      if ((*a3)(a2 - 1, a1))
      {
        v22 = *a1;
        *a1 = *v8;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v25 = *a1;
      *a1 = *v8;
      *v8 = v25;
      if ((*a3)(a1, v15))
      {
        v26 = *v15;
        *v15 = *a1;
        *a1 = v26;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> *,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v46 = std::__partition_with_equals_on_right[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> *,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&)>(a1, a2, a3);
    if ((v47 & 1) == 0)
    {
      goto LABEL_64;
    }

    v48 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(a1, v46, a3);
    v11 = v46 + 1;
    if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v46 + 1, a2, a3))
    {
      a4 = -v13;
      a2 = v46;
      if (v48)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v48)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,false>(a1, v46, a3, -v13, a5 & 1);
      v11 = v46 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v11))
  {
    v51 = *v11;
LABEL_78:
    *v11 = *v8;
    goto LABEL_79;
  }

  return result;
}

uint64_t std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

id *std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(id *result, id *a2, uint64_t (**a3)(uint64_t *, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 1);
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v5;
        result = (*a3)(v5, v9);
        if (result)
        {
          v10 = 0;
          v11 = *v8;
          *v8 = 0;
          v16 = v11;
          for (i = v7; ; i -= 8)
          {
            v13 = (v4 + i);
            v14 = *(v4 + i);
            *v13 = 0;
            v13[1] = v14;
            if (v10)
            {
              WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v10);
            }

            if (!i)
            {
              v15 = v4;
              goto LABEL_15;
            }

            if (((*a3)(&v16, v4 + i - 8) & 1) == 0)
            {
              break;
            }

            v10 = *v13;
          }

          v15 = (v4 + i);
LABEL_15:
          result = std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(&v16, v15);
        }

        v5 = (v8 + 1);
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

void sub_1BB8723E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

id *std::__insertion_sort_unguarded[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(id *result, id *a2, uint64_t (**a3)(uint64_t *, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 1);
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = -8;
      v9 = 8;
      for (i = result; ; ++i)
      {
        v11 = v7;
        v7 = v9;
        result = (*a3)(v5, v4 + v11);
        if (result)
        {
          break;
        }

LABEL_5:
        v9 = v7 + 8;
        v5 = (v4 + v7 + 8);
        v8 -= 8;
        if (v5 == a2)
        {
          return result;
        }
      }

      result = 0;
      v12 = *v5;
      *v5 = 0;
      v17 = v12;
      v13 = i;
      for (j = v8; ; j += 8)
      {
        v15 = *v13;
        *v13 = 0;
        v13[1] = v15;
        if (result)
        {
          result = WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
        }

        if (!j)
        {
          break;
        }

        if (((*a3)(&v17, (v13 - 1)) & 1) == 0)
        {
          result = std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(&v17, v13);
          goto LABEL_5;
        }

        v16 = *v13--;
        result = v16;
      }

      __break(1u);
    }
  }

  return result;
}

void sub_1BB872508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> *,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&)>(id **a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = *a1;
  *a1 = 0;
  v13 = v6;
  if ((*a3)(&v13, a2 - 1))
  {
    v7 = a1;
    while (1)
    {
      if (++v7 == a2)
      {
        goto LABEL_20;
      }

      if ((*a3)(&v13, v7))
      {
        goto LABEL_9;
      }
    }
  }

  v8 = (a1 + 1);
  do
  {
    v7 = v8;
    if (v8 >= a2)
    {
      break;
    }

    v9 = (*a3)(&v13, v8);
    v8 = v7 + 1;
  }

  while (!v9);
LABEL_9:
  v10 = a2;
  if (v7 < a2)
  {
    v10 = a2;
    while (v10 != a1)
    {
      if (((*a3)(&v13, --v10) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_20;
  }

LABEL_13:
  if (v7 < v10)
  {
    v11 = *v7;
    *v7 = *v10;
    *v10 = v11;
    while (++v7 != a2)
    {
      if ((*a3)(&v13, v7))
      {
        while (v10 != a1)
        {
          if (((*a3)(&v13, --v10) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        break;
      }
    }

LABEL_20:
    __break(1u);
  }

  std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> *,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&)>(a1, &v13, v7);
  return v7;
}

void sub_1BB872678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partition_with_equals_on_right[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> *,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t *))
{
  v6 = 0;
  v7 = *a1;
  *a1 = 0;
  v20 = v7;
  do
  {
    result = &a1[v6 + 1];
    if (result == a2)
    {
      goto LABEL_30;
    }

    result = (*a3)(result, &v20);
    ++v6;
  }

  while ((result & 1) != 0);
  v9 = &a1[v6];
  if (v6 != 1)
  {
    v10 = a2;
    while (v10 != a1)
    {
      result = (*a3)(--v10, &v20);
      if (result)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_30;
  }

  v10 = a2;
  do
  {
    if (v9 >= v10)
    {
      break;
    }

    result = (*a3)(--v10, &v20);
  }

  while ((result & 1) == 0);
LABEL_12:
  if (v9 < v10)
  {
    v11 = v9;
    v12 = v10;
LABEL_14:
    v13 = *v11;
    *v11 = *v12;
    *v12 = v13;
    while (++v11 != a2)
    {
      result = (*a3)(v11, &v20);
      if ((result & 1) == 0)
      {
        while (v12 != a1)
        {
          result = (*a3)(--v12, &v20);
          if (result)
          {
            if (v11 < v12)
            {
              goto LABEL_14;
            }

            v14 = v11 - 1;
            goto LABEL_22;
          }
        }

        break;
      }
    }

LABEL_30:
    __break(1u);
    return result;
  }

  v14 = v9 - 1;
LABEL_22:
  if (v14 != a1)
  {
    v15 = *v14;
    *v14 = 0;
    v16 = *a1;
    *a1 = v15;
    if (v16)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v16);
    }
  }

  v17 = v20;
  v20 = 0;
  v18 = *v14;
  *v14 = v17;
  if (v18)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v18);
  }

  v19 = v20;
  v20 = 0;
  if (v19)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v19);
  }

  return v14;
}

void sub_1BB872848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v34 = a1[2];
        a1[2] = *v17;
        *v17 = v34;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v25 = 0;
      v26 = *v22;
      *v22 = 0;
      v36 = v26;
      for (i = v23; ; i -= 8)
      {
        v28 = a1 + i;
        v29 = *(a1 + i + 16);
        *(v28 + 2) = 0;
        *(v28 + 3) = v29;
        if (v25)
        {
          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v25);
        }

        if (i == -16)
        {
          v30 = a1;
          goto LABEL_43;
        }

        if (((*a3)(&v36, (a1 + i + 8)) & 1) == 0)
        {
          break;
        }

        v25 = *(v28 + 2);
      }

      v30 = (a1 + i + 16);
LABEL_43:
      v31 = v36;
      v36 = 0;
      v32 = *v30;
      *v30 = v31;
      if (v32)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v32);
      }

      v33 = v36;
      v36 = 0;
      if (v33)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v33);
      }

      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

void sub_1BB872C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
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
        std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(a1, a4, v8, v11--);
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
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(a1, v6--, a4, v8);
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t result, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, v12 + 1))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(v12, v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        *v5 = 0;
        v19 = v14;
        do
        {
          v15 = v12;
          v16 = *v12;
          *v12 = 0;
          v17 = *v5;
          *v5 = v16;
          if (v17)
          {
            WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v17);
          }

          if (v7 < v11)
          {
            break;
          }

          v18 = (2 * v11) | 1;
          v12 = (v6 + 8 * v18);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v18;
          }

          else if ((*a2)((v6 + 8 * v18), v12 + 1))
          {
            ++v12;
          }

          else
          {
            v11 = v18;
          }

          v5 = v15;
        }

        while (!(*a2)(v12, &v19));
        return std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(&v19, v15);
      }
    }
  }

  return result;
}

void sub_1BB872EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

id **std::__pop_heap[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(id **result, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 <= 0)
  {
    __break(1u);
  }

  else if (a4 != 1)
  {
    v6 = result;
    v7 = *result;
    *result = 0;
    v8 = std::__floyd_sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(result, a3, a4);
    v9 = v8;
    v10 = (a2 - 8);
    if (v8 == v10)
    {
      result = *v8;
      *v9 = v7;
      if (result)
      {

        return WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
      }
    }

    else
    {
      v11 = *v10;
      *v10 = 0;
      v12 = *v8;
      *v9 = v11;
      if (v12)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v12);
      }

      v13 = *v10;
      *v10 = v7;
      if (v13)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v13);
      }

      return std::__sift_up[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v6, (v9 + 1), a3, (v9 + 1) - v6);
    }
  }

  return result;
}

void sub_1BB872FF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

id *std::__sift_up[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(id *result, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = &result[v4 >> 1];
    v9 = (a2 - 8);
    result = (*a3)(v8, a2 - 8);
    if (result)
    {
      v10 = *v9;
      *v9 = 0;
      v14 = v10;
      do
      {
        v11 = v8;
        v12 = *v8;
        *v8 = 0;
        v13 = *v9;
        *v9 = v12;
        if (v13)
        {
          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v13);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = &v6[v7];
        v9 = v11;
      }

      while (((*a3)(v8, &v14) & 1) != 0);
      return std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(&v14, v11);
    }
  }

  return result;
}

void sub_1BB8730D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void firstTopHitCandidate(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v76 = a1;
  v77 = *(a1 + 12);
  v72 = v6;
  v73 = v5;
  v71 = [v6 strengthenAutocompleteTriggerExtensionMatching];
  v7 = [v5 normalizedString];
  v8 = [v7 length];
  if (v8 >= [v72 characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit])
  {
    v10 = [v5 normalizedString];
    v9 = ![WBSURLCompletionDatabase doesStringLookLikeURLHost:v10];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v11 = [v5 stringWithoutWhitespace];
  v69 = [v11 length];
  v12 = [v5 normalizedString];
  v68 = [v12 length];

  if (!v77)
  {
LABEL_70:

    return;
  }

  v13 = 0;
  v70 = v9 ^ 1;
  while (v13 < *(v76 + 12))
  {
    v14 = *(*v76 + 8 * v13);
    v15 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v14);
    v16 = *(v14 + 64);
    v17 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v14);
    v18 = [v17 lastVisitWasFailure];
    v19 = [v17 visitWasClientError] | v18;
    if ((v19 & 1) != 0 && v16 >= 5.0)
    {
      v20 = MEMORY[0x1E696AF20];
      v21 = SafariShared::BookmarkAndHistoryCompletionMatch::originalURLString(v14);
      v22 = [v20 componentsWithString:v21];

      if (v22)
      {
        v23 = [v22 host];
        v24 = [WBSURLCompletionDatabase doesStringLookLikeURLHost:v23];

        if (!v24)
        {

LABEL_40:
          logCompletionMatchToDebugChannel(&cfstr_SkippedForErro.isa, v14);
          goto LABEL_63;
        }
      }

      if ((10.0 - v16) <= 0.0)
      {
        v25 = 10.0 - v16;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = SafariShared::BookmarkAndHistoryCompletionMatch::lastVisitedDate(v14);
      [v26 timeIntervalSinceNow];
      v28 = v27 >= ((v25 / 5.0) * -21600.0);

      if (v28)
      {
        goto LABEL_40;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_40;
      }
    }

    v29 = *(v14 + 8);
    if (v29 - 9 > 1)
    {
      if (v29 > 8 || ((1 << v29) & 0x1C8) == 0)
      {
        goto LABEL_62;
      }

      v43 = SafariShared::BookmarkAndHistoryCompletionMatch::title(v14);
      v44 = WBSUnifiedFieldInputTypeForString(v43) == 1;

      if (v44)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v30 = v73[1];
      v31 = [v72 isForVoiceSearch];
      v75 = v30;
      v74 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(v14);
      if ((v31 & 1) == 0 && [v74 rangeOfString:v75] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      v32 = [MEMORY[0x1E696AF20] componentsWithString:v74];
      v33 = v32;
      if (!v32)
      {
        goto LABEL_49;
      }

      if (!v31)
      {
        v45 = [v32 rangeOfHost];
        v47 = v46;
        if (v46)
        {
          v48 = v45;
          v50 = [v74 rangeOfString:v75 options:1];
          if (v50 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v85.length = v49;
            v84.location = v48;
            v84.length = v47;
            v85.location = v50;
            v51 = NSIntersectionRange(v84, v85);
            if (v51.length)
            {
              v52 = v51.location - v50;
              v53 = [v75 length] - v52;
              length = v51.length;
              if (v51.length >= v53)
              {
                length = [v75 length] - v52;
              }

              v55 = [v75 stringByReplacingCharactersInRange:v52 withString:{length, &stru_1F3A5E418}];
              if (![v55 length])
              {

LABEL_67:
LABEL_68:

LABEL_69:
                goto LABEL_70;
              }

              v56 = [v74 stringByReplacingCharactersInRange:v51.location withString:{v51.length, &stru_1F3A5E418}];
              v57 = [v56 rangeOfString:v55] == 0x7FFFFFFFFFFFFFFFLL;

              if (!v57)
              {
                goto LABEL_69;
              }

              goto LABEL_62;
            }
          }
        }

LABEL_49:

LABEL_61:
        goto LABEL_62;
      }

      v34 = [v32 host];
      v35 = [v34 safari_hostComponentsEnumerator];

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (v37)
      {
        v38 = *v79;
LABEL_24:
        v39 = 0;
        while (1)
        {
          if (*v79 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v78 + 1) + 8 * v39);
          if ([v36 isSpeculative] & 1) != 0 || (objc_msgSend(v36, "containsEmptyComponents"))
          {
            break;
          }

          if ([v36 kind] != 3)
          {
            if ([v36 kind] == 4)
            {
              v58 = v40;
            }

            else
            {
              v58 = 0;
            }

            v41 = v58;
            goto LABEL_55;
          }

          if (v37 == ++v39)
          {
            v37 = [v36 countByEnumeratingWithState:&v78 objects:v82 count:16];
            v41 = 0;
            if (v37)
            {
              goto LABEL_24;
            }

            goto LABEL_55;
          }
        }
      }

      v41 = 0;
LABEL_55:

      v59 = [v75 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3A5E418];
      v60 = [v41 safari_isCaseInsensitiveEqualToString:v59];

      if (v60)
      {
        goto LABEL_69;
      }
    }

    v61 = v70;
    if (v29 - 6 > 2)
    {
      v61 = 1;
    }

    if ((v61 & 1) == 0)
    {
      v62 = MEMORY[0x1E695DFF8];
      v63 = SafariShared::BookmarkAndHistoryCompletionMatch::originalURLString(v14);
      v75 = [v62 URLWithString:v63];

      if (v69 != v68)
      {
        v64 = [v75 host];
        v65 = [v73 stringWithoutWhitespace];
        v66 = [v65 lowercaseString];
        v67 = [v64 containsString:v66];

        if (v67)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_61;
    }

LABEL_62:
    if ([v15 matchesAutocompleteTrigger:v73[1] isStrengthened:v71])
    {
      logCompletionMatchToDebugChannel(&cfstr_Tophitfrommatc.isa, v14);
      goto LABEL_69;
    }

LABEL_63:

    if (++v13 == v77)
    {
      goto LABEL_70;
    }
  }

  __break(0xC471u);
}

uint64_t WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,objc_object  {objcproto25WBSURLCompletionMatchData}&>(uint64_t *a1, id *a2)
{
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v9 = *(a1 + 3);
  v10 = *a1;
  *(v10 + 8 * v9) = *a2;
  ++*(a1 + 3);
  return 1;
}

uint64_t WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v3, v2);
  }

  return a1;
}

unsigned int *WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2, unint64_t a3)
{
  if (result[2] > a2)
  {
    v4 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v5 = *v4;
    if (a2)
    {
      if (v4[2])
      {
        v4[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v4 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v6 = v4[3];
      result = WTF::fastMalloc((8 * a2));
      v4[2] = a2;
      *v4 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v6);
      }
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

void WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) > a2)
  {
    if (*(a1 + 12) > a2)
    {
      WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    v4 = *a1;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return;
      }

      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc((8 * a2));
      *(a1 + 8) = a2;
      *a1 = v6;
      if (v6 != v4 && v5)
      {
        v7 = v6;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7++ = v10;
          v11 = *v9++;

          v8 -= 8;
        }

        while (v8);
      }
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, a2);
    }
  }
}

void WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (v2 != a2)
    {
      v5 = (*a1 + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        v7 = *v5++;

        v6 -= 8;
      }

      while (v6);
    }

    *(a1 + 12) = v3;
  }
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  result = *a2;
  *a2 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  result = *v0;
  *v0 = 0;
  return result;
}

void sub_1BB874308(_Unwind_Exception *exception_object, uint64_t a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void SafariShared::HistoryURLCompletionItem::create(SafariShared::HistoryURLCompletionItem **__return_ptr a1@<X8>, SafariShared::HistoryURLCompletionItem *this@<X0>, NSString *a3@<X1>, NSString *a4@<X2>)
{
  v4 = a4;
  v9 = this;
  v7 = a3;
  v8 = WTF::fastMalloc(0xA8);
  SafariShared::HistoryURLCompletionItem::HistoryURLCompletionItem(v8, v9, v7, v4);
  *a1 = v8;
}

void sub_1BB8743A0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  WTF::fastFree(v11, a2);

  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem,WTF::RawPtrTraits<SafariShared::HistoryURLCompletionItem>,WTF::DefaultRefDerefTraits<SafariShared::HistoryURLCompletionItem>>>>::reset[abi:sn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem,WTF::RawPtrTraits<SafariShared::HistoryURLCompletionItem>,WTF::DefaultRefDerefTraits<SafariShared::HistoryURLCompletionItem>>>::__destroy_vector::operator()[abi:sn200100](&v3, a2);
    return MEMORY[0x1BFB13480](v2, 0x20C40960023A9);
  }

  return result;
}

SafariShared::HistoryURLCompletionItem *SafariShared::HistoryURLCompletionItem::HistoryURLCompletionItem(SafariShared::HistoryURLCompletionItem *this, NSString *a2, NSString *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  *this = 1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = [(NSString *)v7 copy];
  *(this + 9) = [(NSString *)v8 copy];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(this + 10) = v9;
  *(this + 22) = 1;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 100;
  *(this + 80) = 0;
  *(this + 162) = a4;
  *(this + 163) = 0;

  return this;
}

void sub_1BB874534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v11 + 4;
  std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem,WTF::RawPtrTraits<SafariShared::HistoryURLCompletionItem>,WTF::DefaultRefDerefTraits<SafariShared::HistoryURLCompletionItem>>>::__destroy_vector::operator()[abi:sn200100](&a10, v14);

  _Unwind_Resume(a1);
}

uint64_t typedStringMatchesTitleOrURLWithAutocompleteTrigger(NSString *a1, NSString *a2, NSString *a3, NSString *a4, const __CFCharacterSet *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  theString = a1;
  v39 = a2;
  v40 = a3;
  v46 = a4;
  v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v9 = [(__CFString *)v46 componentsSeparatedByCharactersInSet:v8];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v51[0] = v39;
  v51[1] = v40;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v13 = v46;
  v14 = [v12 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v14)
  {
    v37 = 0;
    goto LABEL_25;
  }

  obj = v12;
  v42 = *v48;
  while (2)
  {
    v43 = v14;
    for (i = 0; i != v43; ++i)
    {
      if (*v48 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v47 + 1) + 8 * i);
      v17 = [(__CFString *)v13 length];
      v18 = v17;
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v17);
      if (CFCharacterSetIsCharacterMember(a5, CharacterAtIndex) || (v20 = CFStringGetCharacterAtIndex(v46, [(__CFString *)v46 length]- 1), CFCharacterSetIsCharacterMember(a5, v20)))
      {
        Length = CFStringGetLength(v16);
        v22 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
        LOBYTE(Length) = isPrefixOrFullWordMatchInHaystack(v16, Length, v22, 1);

        if ((Length & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v23 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
        v24 = [v23 length];

        v18 = v17 - v24;
      }

      v25 = [(__CFString *)theString substringFromIndex:v18, v39];
      v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v27 = [v25 componentsSeparatedByCharactersInSet:v26];
      v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
      v29 = [v27 filteredArrayUsingPredicate:v28];

      v30 = CFStringGetLength(v16);
      v31 = v29;
      if (![v31 count])
      {

LABEL_22:
        v37 = 1;
        goto LABEL_23;
      }

      v32 = 0;
      while ([v31 count] - 1 > v32)
      {
        v33 = [v31 objectAtIndexedSubscript:v32];
        v34 = isPrefixOrFullWordMatchInHaystack(v16, v30, v33, 1);

        ++v32;
        if ((v34 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      v35 = [v31 objectAtIndexedSubscript:{objc_msgSend(v31, "count") - 1}];
      v36 = isPrefixOrFullWordMatchInHaystack(v16, v30, v35, 0);

      if (v36)
      {
        goto LABEL_22;
      }

LABEL_17:

LABEL_18:
      v13 = v46;
    }

    v14 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v37 = 0;
LABEL_23:
  v12 = obj;
LABEL_25:

  return v37;
}

uint64_t isPrefixOrFullWordMatchInHaystack(const __CFString *a1, const __CFString *a2, NSString *a3, int a4)
{
  v7 = a3;
  LODWORD(v8) = 0;
  v9 = 0;
  while (1)
  {
    v10 = [[WBSURLCompletionUserTypedString alloc] initWithString:v7];
    v8 = SafariShared::caseInsensitiveFindInUserTypedString(a1, a2, v10, v9 + v8);

    if (v8 != -1 && SafariShared::offsetAppearsToBeAtStartOrEndOfWord(v8, a1, 0) && (!a4 || SafariShared::offsetAppearsToBeAtStartOrEndOfWord((v8 + [(NSString *)v7 length]), a1, 1)))
    {
      break;
    }

    v9 = [(NSString *)v7 length];
    if (v8 == -1 || v8 > a2 - v9)
    {
      v12 = 0;
      goto LABEL_12;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

void sub_1BB875FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB8761F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SSURLCompletionMatchLocationForWBSURLCompletionMatchLocation(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_1BB953880[a1 - 1];
  }
}

void sub_1BB877984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<int,NSString * {__strong}&>(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v7 query:v8];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,int,NSString * {__strong}&>(v9, a3, a4);
  v10 = [v9 fetch];

  return v10;
}

id SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong},NSString * {__strong},int,int const&,NSData * {__strong}>(void *a1, void *a2, void *a3, void *a4, unsigned int *a5, unsigned int *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v13 query:v14];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},int,int const&,NSData * {__strong}>(v15, a3, a4, a5, a6, a7);
  v16 = [v15 fetch];

  return v16;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,int,NSString * {__strong}&>(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:1];
  [v5 bindString:*a3 atParameterIndex:2];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},int,int const&,NSData * {__strong}>(void *a1, void *a2, void *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},int,int const&,NSData * {__strong}>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},int,int const&,NSData * {__strong}>(void *a1, void *a2, unsigned int *a3, unsigned int *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,int,int const&,NSData * {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,int,int const&,NSData * {__strong}>(void *a1, unsigned int *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,int const&,NSData * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,int const&,NSData * {__strong}>(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt:*a2 atParameterIndex:4];
  [v5 bindData:*a3 atParameterIndex:5];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSData * {__strong}&,int>(void *a1, void *a2, void *a3, void *a4, unsigned int *a5)
{
  v9 = a1;
  v10 = a3;
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v9 query:v10 error:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,int>(v11, a4, a5);
    v14 = [v11 execute];
    [v11 invalidate];
    if ((v14 - 100) >= 2 && v14 != 0)
    {
      [v9 reportErrorWithCode:v14 statement:objc_msgSend(v11 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v16 = v12;
      *a2 = v13;
    }

    v14 = [v13 code];
  }

  return v14;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSData * {__strong}&,int>(void *a1, void *a2, unsigned int *a3)
{
  v5 = a1;
  [v5 bindData:*a2 atParameterIndex:1];
  [v5 bindInt:*a3 atParameterIndex:2];
}

void sub_1BB87C718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB87C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id originHash(NSString *a1, NSString *a2)
{
  v3 = a2;
  v4 = [(NSString *)a1 dataUsingEncoding:4];
  v5 = [v4 safari_SHA1Hash];

  v6 = [(NSString *)v3 dataUsingEncoding:4];
  v7 = [v5 safari_dataByAppendingData:v6];
  v8 = [v7 safari_SHA1Hash];

  v9 = [MEMORY[0x1E696AEC0] safari_stringByBase64EncodingData:v8];

  return v9;
}

void sub_1BB87D1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1BB87DF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1BB87E42C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));

  _Unwind_Resume(a1);
}

void sub_1BB87F308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1BB880098(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BB88055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB880BCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1BB880C18()
{
  v0 = sub_1BB8965B8();
  v1 = MEMORY[0x1BFB125B0](v0);

  return v1;
}

uint64_t sub_1BB880C54(uint64_t a1)
{
  sub_1BB8965B8();
  sub_1BB8965D8();
}

uint64_t sub_1BB880CA8(uint64_t a1)
{
  sub_1BB8965B8();
  sub_1BB896728();
  sub_1BB8965D8();
  v1 = sub_1BB896738();

  return v1;
}

uint64_t sub_1BB880D24(uint64_t a1, id *a2)
{
  result = sub_1BB896598();
  *a2 = 0;
  return result;
}

uint64_t sub_1BB880D9C(uint64_t a1, id *a2)
{
  v3 = sub_1BB8965A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BB880E1C@<X0>(uint64_t *a2@<X8>)
{
  sub_1BB8965B8();
  v3 = sub_1BB896588();

  *a2 = v3;
  return result;
}

uint64_t sub_1BB880E74(void *a1, uint64_t *a2)
{
  v2 = sub_1BB8965B8();
  v4 = v3;
  if (v2 == sub_1BB8965B8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BB896708();
  }

  return v7 & 1;
}

uint64_t sub_1BB880EFC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BB896588();

  *a2 = v3;
  return result;
}

uint64_t sub_1BB880F44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB8965B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BB880F70(uint64_t a1)
{
  v2 = sub_1BB881070(&qword_1EBC78968, &unk_1BB953ACC);
  v3 = sub_1BB881070(&qword_1EBC78970, &unk_1BB953A6C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BB881070(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WBSOnboardingIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB8810F0()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t static WBSFormDataController.creditCardControlValuesForFilling(form:with:)(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  v14 = 0;
  [swift_getObjCClassFromMetadata() getFormFieldValues:v16 andFieldToFocus:&v15 andCreditCardDataTypesThatWillBeFilled:&v14 forCreditCardForm:a1 fromCreditCardData:a2];
  v3 = v14;
  v2 = v15;
  v4 = v16[0];
  if (!v16[0])
  {
    v10 = v14;
    v11 = v2;
    goto LABEL_10;
  }

  v16[0] = 0;
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v5;
  sub_1BB896558();

  v9 = v16[0];
  if (!v16[0])
  {
LABEL_10:
    v12 = MEMORY[0x1E69E7CC0];
    v9 = sub_1BB881358(MEMORY[0x1E69E7CC0]);
    sub_1BB881468(v12);

    return v9;
  }

  if (!v6 || (v16[0] = 0, sub_1BB896558(), !v16[0]))
  {

    goto LABEL_10;
  }

  type metadata accessor for WBSSingleCreditCardDataType(0);
  sub_1BB881564();
  sub_1BB896578();

  if (v7)
  {
    sub_1BB8965B8();
  }

  else
  {
  }

  return v9;
}

unint64_t sub_1BB881358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC78990, &qword_1BB953BE0);
    v3 = sub_1BB8966D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BB8816F0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BB8834EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BB881760(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB881468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC78988, &qword_1BB953BD8);
    v3 = sub_1BB8966D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BB8834EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB881564()
{
  result = qword_1EBC78978;
  if (!qword_1EBC78978)
  {
    type metadata accessor for WBSSingleCreditCardDataType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC78978);
  }

  return result;
}

unint64_t sub_1BB8815BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC78980, &unk_1BB953C70);
    v3 = sub_1BB8966D8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BB883564(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
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

uint64_t sub_1BB8816F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC78998, &qword_1BB953BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BB881760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BB881770()
{
  v0 = sub_1BB896538();
  __swift_allocate_value_buffer(v0, qword_1EBC79AC0);
  __swift_project_value_buffer(v0, qword_1EBC79AC0);
  return sub_1BB896528();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t WBSOnboardingState.init(_:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1BB8818E8(a1);
  }

  return 0;
}

uint64_t sub_1BB8818E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC789A0, &qword_1BB953BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WBSOnboardingState.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x7964616572;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465727265666564;
      case 3:
        return 0x6574656C706D6F63;
      case 4:
        return 0x73736563656E6E75;
    }
  }

  type metadata accessor for WBSOnboardingState(0);
  return sub_1BB8965C8();
}

uint64_t WBSOnboardingStateManager.__allocating_init(defaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BB8815BC(MEMORY[0x1E69E7CC0]);
  *(v2 + 24) = a1;
  sub_1BB881AF0();
  return v2;
}

uint64_t WBSOnboardingStateManager.init(defaults:)(void *a1)
{
  *(v1 + 16) = sub_1BB8815BC(MEMORY[0x1E69E7CC0]);
  *(v1 + 24) = a1;
  v3 = a1;
  sub_1BB881AF0();

  return v1;
}

void sub_1BB881AF0()
{
  v1 = *(v0 + 24);
  v2 = sub_1BB896588();
  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    if (qword_1EBC78928 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  sub_1BB896568();

  v5 = sub_1BB881F24(v4);
  swift_bridgeObjectRelease_n();
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    while (1)
    {
      if (!v10)
      {
        while (1)
        {
          v12 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v12 >= v11)
          {

            return;
          }

          v10 = *(v7 + 8 * v12);
          ++v6;
          if (v10)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        swift_once();
LABEL_25:
        v29 = sub_1BB896538();
        __swift_project_value_buffer(v29, qword_1EBC79AC0);
        osloga = sub_1BB896518();
        v30 = sub_1BB896638();
        if (os_log_type_enabled(osloga, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          v32 = "Did not load from UserDefaults.";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

LABEL_13:
      v13 = v5;
      v14 = *(*(v5 + 56) + 8 * (__clz(__rbit64(v10)) | (v6 << 6)));

      v15 = sub_1BB896588();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      isa = oslog[2].isa;
      oslog[2].isa = 0x8000000000000000;
      v18 = sub_1BB883564(v15);
      v20 = *(isa + 2);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_36;
      }

      v24 = v19;
      if (*(isa + 3) < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v28 = v18;
      sub_1BB883E64();
      v18 = v28;
      if (v24)
      {
LABEL_6:
        *(*(isa + 7) + 8 * v18) = v14;

        goto LABEL_7;
      }

LABEL_19:
      *(isa + (v18 >> 6) + 8) |= 1 << v18;
      *(*(isa + 6) + 8 * v18) = v15;
      *(*(isa + 7) + 8 * v18) = v14;
      v26 = *(isa + 2);
      v22 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v22)
      {
        goto LABEL_37;
      }

      *(isa + 2) = v27;
LABEL_7:
      v10 &= v10 - 1;
      oslog[2].isa = isa;
      swift_endAccess();
      v5 = v13;
    }

    sub_1BB8837B4(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_1BB883564(v15);
    if ((v24 & 1) != (v25 & 1))
    {
      type metadata accessor for WBSOnboardingIdentifier(0);
      sub_1BB896718();
      __break(1u);
      return;
    }

LABEL_18:
    if (v24)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  if (qword_1EBC78928 != -1)
  {
    swift_once();
  }

  v33 = sub_1BB896538();
  __swift_project_value_buffer(v33, qword_1EBC79AC0);
  osloga = sub_1BB896518();
  v30 = sub_1BB896658();
  if (os_log_type_enabled(osloga, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Dictionary in UserDefaults has incompatible type.";
LABEL_31:
    _os_log_impl(&dword_1BB6F3000, osloga, v30, v32, v31, 2u);
    MEMORY[0x1BFB14410](v31, -1, -1);
  }

LABEL_32:
}

unint64_t sub_1BB881F24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC789B0, &qword_1BB953C60);
    v2 = sub_1BB8966D8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1BB884570(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_1BB881760(v22, v21);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1BB8834EC(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1BB882178()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 16) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v35 = v0;
  v36 = *(v0 + 16);

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      v32 = *(v35 + 24);
      v33 = sub_1BB896548();

      v34 = sub_1BB896588();
      [v32 setObject:v33 forKey:v34];

      return;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(v36 + 48) + v13);
    v37 = *(*(v36 + 56) + v13);
    v15 = sub_1BB8965B8();
    v17 = v16;
    v18 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1BB8834EC(v15, v17);
    v22 = v10[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v10[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_1BB883FC0();
        v20 = v31;
      }
    }

    else
    {
      sub_1BB883A70(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1BB8834EC(v15, v17);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v11 = v20;

      *(v10[7] + 8 * v11) = v37;

      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v10[6] + 16 * v20);
      *v28 = v15;
      v28[1] = v17;
      *(v10[7] + 8 * v20) = v37;

      v29 = v10[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v10[2] = v30;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1BB896718();
  __break(1u);
}

uint64_t WBSOnboardingStateManager.filterAndUpdateCacheForOnboardingProviders(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v72 = MEMORY[0x1E69E7CC0];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_73:
    v5 = sub_1BB8966A8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v5 != 0;
  if (!v5)
  {
    v61 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
LABEL_67:
      sub_1BB882178();
    }

    return v61;
  }

  v63 = 0;
  v7 = 0;
  v70 = v3 & 0xC000000000000001;
  v64 = MEMORY[0x1E69E7CC0];
  v66 = v2;
  v67 = v3;
  v68 = v4;
  v69 = v5;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v70)
        {
          v8 = MEMORY[0x1BFB12640](v7, v3);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v7 >= *(v4 + 16))
          {
            goto LABEL_72;
          }

          v8 = *(v3 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }
        }

        v10 = [v8 identifier];
        if (!v10)
        {
          goto LABEL_75;
        }

        v11 = v10;
        swift_beginAccess();
        v12 = *(v2 + 16);
        if (!*(v12 + 16) || (v13 = sub_1BB883564(v11), (v14 & 1) == 0))
        {
          v65 = v9;
          swift_endAccess();
          v15 = 0;
          goto LABEL_26;
        }

        v15 = *(*(v12 + 56) + 8 * v13);
        swift_endAccess();
        if ((v15 - 3) >= 2)
        {
          break;
        }

        if (qword_1EBC78928 != -1)
        {
          swift_once();
        }

        v16 = sub_1BB896538();
        __swift_project_value_buffer(v16, qword_1EBC79AC0);
        v17 = v11;
        v18 = sub_1BB896518();
        v19 = sub_1BB896648();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v71[0] = v21;
          *v20 = 136446466;
          v22 = sub_1BB8965B8();
          v24 = sub_1BB882F44(v22, v23, v71);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2082;
          if (v15 == 4)
          {
            v25 = 0x73736563656E6E75;
          }

          else
          {
            v25 = 0x6574656C706D6F63;
          }

          if (v15 == 4)
          {
            v26 = 0xEB00000000797261;
          }

          else
          {
            v26 = 0xE900000000000064;
          }

          v27 = sub_1BB882F44(v25, v26, v71);
          v3 = v67;

          *(v20 + 14) = v27;
          _os_log_impl(&dword_1BB6F3000, v18, v19, "Skipped %{public}s since it was %{public}s.", v20, 0x16u);
          swift_arrayDestroy();
          v28 = v21;
          v4 = v68;
          MEMORY[0x1BFB14410](v28, -1, -1);
          v29 = v20;
          v2 = v66;
          MEMORY[0x1BFB14410](v29, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        ++v7;
        if (v9 == v69)
        {
LABEL_65:
          v60 = v63;
LABEL_66:
          v61 = v64;
          if ((v60 & 1) == 0)
          {
            return v61;
          }

          goto LABEL_67;
        }
      }

      v65 = v9;
LABEL_26:
      v30 = [v8 state];
      if (qword_1EBC78928 != -1)
      {
        swift_once();
      }

      v31 = sub_1BB896538();
      __swift_project_value_buffer(v31, qword_1EBC79AC0);
      v32 = v11;
      v33 = sub_1BB896518();
      v34 = sub_1BB896648();

      if (!os_log_type_enabled(v33, v34))
      {

        goto LABEL_43;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v71[0] = v36;
      *v35 = 136446466;
      v37 = sub_1BB8965B8();
      v39 = sub_1BB882F44(v37, v38, v71);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      if (v30 <= 1)
      {
        if (v30)
        {
          if (v30 != 1)
          {
LABEL_41:
            type metadata accessor for WBSOnboardingState(0);
            v40 = sub_1BB8965C8();
            v41 = v42;
            goto LABEL_42;
          }

          v41 = 0xE500000000000000;
          v40 = 0x7964616572;
        }

        else
        {
          v41 = 0xE700000000000000;
          v40 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        switch(v30)
        {
          case 2:
            v41 = 0xE800000000000000;
            v40 = 0x6465727265666564;
            break;
          case 3:
            v40 = 0x6574656C706D6F63;
            v41 = 0xE900000000000064;
            break;
          case 4:
            v40 = 0x73736563656E6E75;
            v41 = 0xEB00000000797261;
            break;
          default:
            goto LABEL_41;
        }
      }

LABEL_42:
      v43 = sub_1BB882F44(v40, v41, v71);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1BB6F3000, v33, v34, "%{public}s : %{public}s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB14410](v36, -1, -1);
      MEMORY[0x1BFB14410](v35, -1, -1);

      v2 = v66;
      v3 = v67;
      v4 = v68;
LABEL_43:
      if (v30 == 1)
      {
        v44 = swift_unknownObjectRetain();
        MEMORY[0x1BFB125C0](v44);
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB896618();
          v3 = v67;
        }

        sub_1BB896628();
        v64 = v72;
      }

      if (v30 != v15)
      {
        break;
      }

      swift_unknownObjectRelease();

      v7 = v65;
      if (v65 == v69)
      {
        goto LABEL_65;
      }
    }

    swift_beginAccess();
    v45 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v48 = sub_1BB883564(v45);
    v50 = v47[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    if (v52)
    {
      break;
    }

    v54 = v49;
    if (v47[3] < v53)
    {
      sub_1BB8837B4(v53, isUniquelyReferenced_nonNull_native);
      v48 = sub_1BB883564(v45);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_77;
      }

LABEL_55:
      v56 = v47;
      if ((v54 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_55;
    }

    v57 = v48;
    sub_1BB883E64();
    v48 = v57;
    v56 = v47;
    if ((v54 & 1) == 0)
    {
LABEL_61:
      v56[(v48 >> 6) + 8] |= 1 << v48;
      *(v56[6] + 8 * v48) = v45;
      *(v56[7] + 8 * v48) = v30;
      v58 = v56[2];
      v52 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v52)
      {
        goto LABEL_76;
      }

      v56[2] = v59;
      goto LABEL_63;
    }

LABEL_56:
    *(v56[7] + 8 * v48) = v30;

LABEL_63:
    v4 = v68;
    v7 = v65;
    *(v2 + 16) = v56;
    swift_endAccess();
    swift_unknownObjectRelease();

    v63 = 1;
    if (v65 == v69)
    {
      v60 = 1;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  type metadata accessor for WBSOnboardingIdentifier(0);
  result = sub_1BB896718();
  __break(1u);
  return result;
}

void WBSOnboardingStateManager.set(_:to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16) || (v7 = sub_1BB883564(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  if (v9 != a2)
  {
LABEL_6:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    sub_1BB883D10(a2, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v11;
    swift_endAccess();
    sub_1BB882178();
  }
}

Swift::Void __swiftcall WBSOnboardingStateManager.markAsUnnecessaryIfNeeded(_:)(__C::WBSOnboardingIdentifier a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16) || (v5 = sub_1BB883564(a1._rawValue), (v6 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  swift_endAccess();
  if ((v7 - 3) >= 2)
  {
LABEL_6:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_1BB883D10(4, a1._rawValue, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v9;
    swift_endAccess();
    sub_1BB882178();
  }
}

Swift::Void __swiftcall WBSOnboardingStateManager.pauseStartPageOnboardingIfNeeded()()
{
  v0 = sub_1BB896508();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB8964F8();
  started = _s12SafariShared25WBSOnboardingStateManagerC27isStartPageOnboardingPaused2onSb10Foundation4DateV_tF_0(v3);
  v5 = *(v1 + 8);
  v5(v3, v0);
  if ((started & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    sub_1BB8964D8();
    v7 = sub_1BB8964C8();
    v5(v3, v0);
    [v6 setObject:v7 forKey:@"WBSStartPageOnboardingResumeDate"];
  }
}

uint64_t WBSOnboardingStateManager.deinit()
{

  return v0;
}

uint64_t WBSOnboardingStateManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BB882F44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BB883010(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BB884570(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1BB883010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BB88311C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BB896698();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1BB88311C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BB883168(a1, a2);
  sub_1BB883298(&unk_1F3A5E1A8);
  return v3;
}

void *sub_1BB883168(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BB883384(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BB896698();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BB8965E8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BB883384(v10, 0);
        result = sub_1BB896678();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BB883298(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BB8833F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BB883384(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC789B8, &qword_1BB953C68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BB8833F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC789B8, &qword_1BB953C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1BB8834EC(uint64_t a1, uint64_t a2)
{
  sub_1BB896728();
  sub_1BB8965D8();
  v4 = sub_1BB896738();

  return sub_1BB8835F8(a1, a2, v4);
}

unint64_t sub_1BB883564(uint64_t a1)
{
  sub_1BB8965B8();
  sub_1BB896728();
  sub_1BB8965D8();
  v2 = sub_1BB896738();

  return sub_1BB8836B0(a1, v2);
}

unint64_t sub_1BB8835F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BB896708())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BB8836B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BB8965B8();
      v8 = v7;
      if (v6 == sub_1BB8965B8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BB896708();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1BB8837B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC78980, &unk_1BB953C70);
  v34 = v4;
  result = sub_1BB8966C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1BB8965B8();
      sub_1BB896728();
      sub_1BB8965D8();
      v23 = sub_1BB896738();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BB883A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC789B0, &qword_1BB953C60);
  v34 = v4;
  result = sub_1BB8966C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BB896728();
      sub_1BB8965D8();
      result = sub_1BB896738();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1BB883D10(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1BB883564(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1BB8837B4(v13, a3 & 1);
      result = sub_1BB883564(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for WBSOnboardingIdentifier(0);
        result = sub_1BB896718();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1BB883E64();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 8 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

id sub_1BB883E64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC78980, &unk_1BB953C70);
  v2 = *v0;
  v3 = sub_1BB8966B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BB883FC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC789B0, &qword_1BB953C60);
  v2 = *v0;
  v3 = sub_1BB8966B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _s12SafariShared25WBSOnboardingStateManagerC27isStartPageOnboardingPaused2onSb10Foundation4DateV_tF_0(uint64_t a1)
{
  v1 = sub_1BB896508();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = [v9 safari:@"WBSStartPageOnboardingResumeDate" dateForKey:?];

  if (!v10)
  {
    return 0;
  }

  sub_1BB8964E8();

  sub_1BB8964B8();
  if (v11 <= 0.0)
  {
    v23 = [v8 standardUserDefaults];
    [v23 removeObjectForKey_];

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  if (qword_1EBC78928 != -1)
  {
    swift_once();
  }

  v12 = sub_1BB896538();
  __swift_project_value_buffer(v12, qword_1EBC79AC0);
  (*(v2 + 16))(v5, v7, v1);
  v13 = sub_1BB896518();
  v14 = sub_1BB896648();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315138;
    sub_1BB8844CC();
    v16 = sub_1BB8966F8();
    v18 = v17;
    v19 = *(v2 + 8);
    v19(v5, v1);
    v20 = sub_1BB882F44(v16, v18, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1BB6F3000, v13, v14, "Start Page Onboarding is paused until %s", v15, 0xCu);
    v21 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1BFB14410](v21, -1, -1);
    MEMORY[0x1BFB14410](v15, -1, -1);

    v19(v7, v1);
  }

  else
  {

    v24 = *(v2 + 8);
    v24(v5, v1);
    v24(v7, v1);
  }

  return 1;
}

unint64_t sub_1BB8844CC()
{
  result = qword_1EBC789A8;
  if (!qword_1EBC789A8)
  {
    sub_1BB896508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC789A8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1BB884570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BB8845D0()
{
  sub_1BB8847DC();
  result = sub_1BB896668();
  qword_1EBC789C0 = result;
  return result;
}

id static WBSDefaultSearchParameters.prefixNavigationalIntentThreshold.getter()
{
  if (qword_1EBC78930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC789C0;

  return v1;
}

id WBSDefaultSearchParameters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WBSDefaultSearchParameters.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WBSDefaultSearchParameters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BB8847DC()
{
  result = qword_1EBC789C8;
  if (!qword_1EBC789C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC789C8);
  }

  return result;
}

void WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<OpaqueJSWeakObjectMap *>()
{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

void WTF::HashTable<OpaqueJSContext *,WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<OpaqueJSContext *,OpaqueJSWeakObjectMap *>>,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<OpaqueJSContext *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<OpaqueJSContext *,OpaqueJSWeakObjectMap *,WTF::DefaultHash<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSContext *>,WTF::HashTraits<OpaqueJSWeakObjectMap *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<OpaqueJSContext *>>,(WTF::ShouldValidateKey)1,OpaqueJSContext *>()
{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

void SafariShared::computeURLMatchLocation(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 141558275;
  v3 = 1752392040;
  v4 = 2117;
  v5 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Encountered a malformed URL without a valid scheme: %{sensitive, mask.hash}@. How did that get in here?", &v2, 0x16u);
}

void WBSReportAutoplaySignalIfNecessary_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Discarding auto-play signal for quick navigation on domain: %{private}@", &v2, 0xCu);
}

void ___ZL27sendAutoplaySignalForDomain17WBSAutoplaySignalP8NSStringb_block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138478083;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = *(a2 + 48);
  OUTLINED_FUNCTION_2(&dword_1BB6F3000, a2, a3, "Checking if the high-level domain '%{private}@' is on the feedback allowlist before recording auto-play signal %lu", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __getSADeviceInfoClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSADeviceInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSBiomeDonationManager.m" lineNumber:53 description:{@"Unable to find class %s", "SADeviceInfo"}];

  __break(1u);
}

void __getSADeviceInfoClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SearchAssetsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSBiomeDonationManager.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
}

void __getSAAssetManagerFactoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSAAssetManagerFactoryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSBrowsingAssistantContentProvider.m" lineNumber:33 description:{@"Unable to find class %s", "SAAssetManagerFactory"}];

  __break(1u);
}

void __getSAAssetManagerFactoryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SearchAssetsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSBrowsingAssistantContentProvider.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void ___ZL29allProfileDatabaseIdentifiersv_block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to look up existing profile content blocker stores: %{public}@", buf, 0xCu);
}

void __getOSLogStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOSLogStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSCyclerService.m" lineNumber:26 description:{@"Unable to find class %s", "OSLogStore"}];

  __break(1u);
}

void __getOSLogStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *OSLogLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSCyclerService.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __WBSSystemSymbolNameForCurrentDevice_block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to determine device symbol for %{public}@: %{public}@", &v7, 0x16u);
}

void fillDateUsingClassification(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Control has mutliple parts, but no formatting. Skipping.", buf, 2u);
}

void SafariShared::FrameMetadata::FrameMetadata()
{
  qword_1EBC78F08 = "FormMetadata.js";
  unk_1EBC78F10 = "FormMetadataJS";
  qword_1EBC78F18 = formMetadataSource;
  unk_1EBC78F20 = 108507;
  qword_1EBC78F28 = 0;
  unk_1EBC78F30 = "FormMetadataClassification.js";
  qword_1EBC78F38 = "FormMetadataClassificationJS";
  unk_1EBC78F40 = formMetadataClassificationSource;
  qword_1EBC78F48 = 15447;
  unk_1EBC78F50 = 0;
  qword_1EBC78F58 = "AutomaticPassword.js";
  unk_1EBC78F60 = "AutomaticPasswordsJS";
  qword_1EBC78F68 = automaticPasswordsSource;
  unk_1EBC78F70 = 1340;
  qword_1EBC78F78 = 0;
  unk_1EBC78F80 = "NodePath.js";
  qword_1EBC78F88 = "WAS";
  unk_1EBC78F90 = nodePathSource;
  qword_1EBC78F98 = 14503;
  unk_1EBC78FA0 = 0;
  _MergedGlobals = 1;
}

void WTF::HashMap<OpaqueFormAutoFillFrame *,std::unique_ptr<SafariShared::FrameMetadata>,WTF::DefaultHash<OpaqueFormAutoFillFrame *>,WTF::HashTraits<OpaqueFormAutoFillFrame *>,WTF::HashTraits<std::unique_ptr<SafariShared::FrameMetadata>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>()
{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

void SafariShared::ReadStreamedObjects(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to allocate buffer: %{errno}i", buf, 8u);
}

void SafariShared::URLCompletionEntryBuilder::validateVisitedCountsIfNeeded(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Found data corruption in daily visit counts", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Found data corruption in weekly visit counts", v1, 2u);
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__emplace_multi<NSString * const {__strong}&,NSString * {__strong}&>()
{
  OUTLINED_FUNCTION_3_4();
  if (v1)
  {
  }

  operator delete(v0);
}

uint64_t WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(uint64_t a1)
{
  atomic_store(1u, a1);

  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v7 = (a1 + 32);
  std::vector<WTF::RefPtr<SafariShared::HistoryURLCompletionItem,WTF::RawPtrTraits<SafariShared::HistoryURLCompletionItem>,WTF::DefaultRefDerefTraits<SafariShared::HistoryURLCompletionItem>>>::__destroy_vector::operator()[abi:sn200100](&v7, v4);
  return WTF::fastFree(a1, v5);
}

void SafariShared::ReaderAvailabilityController::checkTextSampleAvailabilityIfNeeded()
{
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_DEBUG, "Could not inject article finder on page", v1, 2u);
}

{
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_DEBUG, "Translation could not find any text samples. Retrying", v1, 2u);
}

void SafariShared::ReaderAvailabilityController::checkReaderAvailabilityIfNeededAndUpdateResult(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Reader found %lu text samples for translation", buf, 0xCu);
}

void SafariShared::ReaderJSController::evaluateLocalizedStringsScript(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Cannot read WBSLocalizedStrings.js with error: %{public}@", buf, 0xCu);
}

void SafariShared::jsLog(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void WBSReloadReadingListWidget_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to reload Reading List widget: %{public}@", &v5, 0xCu);
}

void __getCHSTimelineControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHSTimelineControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WBSReadingListWidgetUtilities.m" lineNumber:15 description:{@"Unable to find class %s", "CHSTimelineController"}];

  __break(1u);
}

void __getCHSTimelineControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WBSReadingListWidgetUtilities.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t *std::__floyd_sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(id **a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 2;
      if ((*a2)((v8 + 1), (v8 + 2)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    v14 = *a1;
    *a1 = v13;
    if (v14)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v14);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *a1;
  v6 = *v3;
  if (*v3)
  {
    ++*v6;
  }

  *(v5 + 8 * v4) = v6;
  *(a1 + 12) = v4 + 1;
  return 1;
}

uint64_t WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SafariShared::BookmarkAndHistoryCompletionMatch*&>(uint64_t *a1, _DWORD **a2)
{
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v9 = *(a1 + 3);
  v10 = *a1;
  v11 = *a2;
  if (*a2)
  {
    ++*v11;
  }

  *(v10 + 8 * v9) = v11;
  *(a1 + 3) = v9 + 1;
  return 1;
}

uint64_t *WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendRange<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t *result, unsigned int *a2, _DWORD **a3, _DWORD **a4)
{
  v4 = *result;
  v5 = *a2;
  do
  {
    v6 = *a3;
    if (*a3)
    {
      ++*v6;
    }

    *(v4 + 8 * v5) = v6;
    ++a3;
    ++v5;
  }

  while (a3 != a4);
  *a2 = v5;
  return result;
}

id *std::__insertion_sort[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t *a1, uint64_t *a2)
{
  result = OUTLINED_FUNCTION_1_11(a1, a2);
  if (result)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
    result = OUTLINED_FUNCTION_5_1();
    if (result)
    {
      return WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
    }
  }

  return result;
}

id *std::__partition_with_equals_on_left[abi:sn200100]<std::_ClassicAlgPolicy,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> *,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&)>(id **a1, uint64_t *a2, uint64_t a3)
{
  v4 = (a3 - 8);
  if ((a3 - 8) != a1)
  {
    v5 = *v4;
    *v4 = 0;
    v6 = *a1;
    *a1 = v5;
    if (v6)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v6);
    }
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v8);
  }

  result = OUTLINED_FUNCTION_5_1();
  if (result)
  {
    return WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
  }

  return result;
}

id *std::__sift_down[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_1_11(a1, a2);
  if (v2)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v2);
  }

  result = OUTLINED_FUNCTION_5_1();
  if (result)
  {
    return WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
  }

  return result;
}

id *WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v3 = 8 * a2;
  do
  {
    result = OUTLINED_FUNCTION_5_1();
    if (result)
    {
      result = WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(result);
    }

    v2 += 8;
    v3 -= 8;
  }

  while (v3);
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}