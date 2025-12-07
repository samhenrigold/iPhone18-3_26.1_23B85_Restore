int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *,char32_t *>(unsigned int *a1, unsigned int *a2, int *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *>(a1, a4, v8, v11--);
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
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *>(a1, a4, v8, a1);
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
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,char32_t *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

BOOL boost::algorithm::detail::is_any_ofF<char32_t>::operator()<char32_t>(void *a1, unsigned int a2)
{
  v2 = a1[8];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + 4 * v2);
  }

  else
  {
    v3 = (a1 + 4 * v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = v2 >> 1;
    v5 = a1 + (v2 >> 1);
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (v7 < a2)
    {
      a1 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

uint64_t boost::algorithm::detail::trim_end<std::__wrap_iter<char32_t const*>,boost::algorithm::detail::is_any_ofF<char32_t>>(uint64_t a1, uint64_t a2, void *__src)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = __src[8];
  v9 = v5;
  v8[0] = 0;
  if (v5 > 0x10)
  {
    operator new[]();
  }

  memcpy(v8, __src, 4 * v5);
  while (a2 != a1)
  {
    v6 = *(a2 - 4);
    a2 -= 4;
    if (!boost::algorithm::detail::is_any_ofF<char32_t>::operator()<char32_t>(v8, v6))
    {
      a1 = a2 + 4;
      break;
    }
  }

  if (v9 >= 0x11 && v8[0])
  {
    MEMORY[0x1B8C85310](v8[0], 0x1000C8052888210);
  }

  return a1;
}

void sub_1B53B2944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  if (a17 >= 0x11)
  {
    quasar::copyAndTrimLeft(&a9);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *boost::algorithm::detail::first_finderF<std::__wrap_iter<char32_t const*>,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char32_t *>>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3)
  {
    v3 = *(a1 + 8);
    if (*a1 != v3)
    {
      while (1)
      {
        if (a2 == a3)
        {
          v4 = *a1;
        }

        else
        {
          v4 = *a1;
          v5 = a2;
          do
          {
            if (*v5 != *v4)
            {
              break;
            }

            ++v5;
            ++v4;
            if (v5 == a3)
            {
              break;
            }
          }

          while (v4 != v3);
        }

        if (v4 == v3)
        {
          break;
        }

        if (++a2 == a3)
        {
          return a3;
        }
      }

      return a2;
    }
  }

  return a3;
}

uint64_t boost::algorithm::detail::find_format_all_impl2<std::basic_string<char32_t>,boost::algorithm::detail::first_finderF<std::__wrap_iter<char32_t const*>,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<std::__wrap_iter<char32_t const*>>>,boost::iterator_range<std::__wrap_iter<char32_t *>>,boost::iterator_range<std::__wrap_iter<char32_t const*>>>(std::basic_string<char32_t> *a1, uint64_t a2, char *a3, char *a4, std::basic_string<char32_t> *a5, std::basic_string<char32_t> *a6, char *a7, char *a8)
{
  v8 = a6;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  LODWORD(v10) = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v11 = a1->__r_.__value_.__r.__words[0];
  if ((v10 & 0x80000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 == a6)
  {
    v13 = v12;
  }

  else
  {
    v16 = a5;
    v13 = v12;
    v20 = v12;
    do
    {
      v12 = v8;
      v13 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char32_t>,std::basic_string<char32_t>,std::__wrap_iter<char32_t *>>(&v44, &v41, a1, v13, v20, v16);
      v21 = (v41.i64[1] + 8 * ((v43 + *(&v43 + 1)) >> 10));
      if (v42 == v41.i64[1])
      {
        v22 = 0;
      }

      else
      {
        v22 = *v21 + 4 * ((v43 + WORD4(v43)) & 0x3FF);
      }

      std::deque<char32_t>::__insert_bidirectional[abi:ne200100]<std::__wrap_iter<char32_t const*>>(&v41, v21, v22, a7, a8, (a8 - a7) >> 2);
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v16 = boost::algorithm::detail::first_finderF<std::__wrap_iter<char32_t const*>,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char32_t *>>(a2, v12, v24 + size);
      v8 = v25;
      v20 = v12;
      a7 = a3;
      a8 = a4;
    }

    while (v16 != v25);
    LOBYTE(v10) = *(&a1->__r_.__value_.__s + 23);
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  v10 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v11;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v27 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char32_t>,std::basic_string<char32_t>,std::__wrap_iter<char32_t *>>(&v44, &v41, a1, v13, v12, v26 + 4 * v10);
  v28 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v28 & 0x80u) == 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v28 & 0x80u) != 0)
  {
    v28 = a1->__r_.__value_.__l.__size_;
  }

  v30 = v29 + 4 * v28;
  if (*(&v43 + 1))
  {
    v31 = (v43 >> 7) & 0x1FFFFFFFFFFFFF8;
    if (v42 == v41.i64[1])
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v33 = v41.i64[1] + 8 * ((v43 + *(&v43 + 1)) >> 10);
    }

    else
    {
      v32 = ((v43 + *(&v43 + 1)) >> 7) & 0x1FFFFFFFFFFFFF8;
      v33 = v41.i64[1] + v32;
      v34 = (v43 + *(&v43 + 1)) & 0x3FF;
      v35 = *(v41.i64[1] + v32) + 4 * v34;
      v36 = (v34 | ((v32 - v31) << 7)) - (v43 & 0x3FF);
      v37 = v35;
      v38 = (*(v41.i64[1] + v31) + 4 * (v43 & 0x3FF));
      if (v35 == v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v36;
      }
    }

    std::basic_string<char32_t>::__insert_with_size<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(a1, v30, (v41.i64[1] + v31), v38, v33, v37, v39);
  }

  else
  {
    std::basic_string<char32_t>::erase(a1, (v27 - v29) >> 2, (v30 - v27) >> 2);
  }

  return std::deque<int>::~deque[abi:ne200100](&v41);
}

char *boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char32_t>,std::basic_string<char32_t>,std::__wrap_iter<char32_t *>>(int a1, int64x2_t *a2, int a3, char *__dst, char *__src, char *a6)
{
  v8 = __dst;
  v10 = a2[2].i64[1];
  if (v10)
  {
    v11 = __dst == __src;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = __dst + 4;
    do
    {
      v13 = a2[2].u64[0];
      *(v12 - 1) = *(*(a2->i64[1] + ((v13 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v13 & 0x3FF));
      a2[2].i64[0] = v13 + 1;
      a2[2].i64[1] = v10 - 1;
      std::deque<int>::__maybe_remove_front_spare[abi:ne200100](a2, 1);
      v10 = a2[2].i64[1];
      v8 += 4;
      if (v10)
      {
        v14 = v12 == __src;
      }

      else
      {
        v14 = 1;
      }

      v12 += 4;
    }

    while (!v14);
  }

  if (v10)
  {
    if (v8 != a6)
    {
      do
      {
        std::deque<char32_t>::push_back(a2, v8);
        v15 = vaddq_s64(a2[2], xmmword_1B5AE01E0);
        *v8 = *(*(a2->i64[1] + ((a2[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (a2[2].i64[0] & 0x3FF));
        v8 += 4;
        a2[2] = v15;
        std::deque<int>::__maybe_remove_front_spare[abi:ne200100](a2, 1);
      }

      while (v8 != a6);
      return a6;
    }
  }

  else
  {
    if (v8 == __src)
    {
      return a6;
    }

    v16 = a6 - __src;
    if (v16)
    {
      memmove(v8, __src, v16);
    }

    v8 += v16;
  }

  return v8;
}

void std::deque<char32_t>::push_back(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<char32_t>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<char32_t>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<int *>::emplace_back<int *>(a1, &v9);
}

void sub_1B53B2FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<char32_t>::__insert_bidirectional[abi:ne200100]<std::__wrap_iter<char32_t const*>>(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 10;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 10));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 4 * (a1[2].i64[0] & 0x3FF);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = ((a3 - *a2) >> 2) + ((a2 - v14) << 7) - ((v15 - *v14) >> 2);
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = ((v13 - v12) << 7) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      std::deque<char32_t>::__add_back_capacity(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 >> 10));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = &(*v23)[4 * (v21 & 0x3FF)];
    }

    v73.n128_u64[0] = v12 + 8 * (v21 >> 10);
    v73.n128_u64[1] = v24;
    v49 = v17 - v16;
    if (v17 - v16 < v6)
    {
      if (v49 >= v6 >> 1)
      {
        v50 = v6;
      }

      else
      {
        v50 = 0;
      }

      if (v49 >= v6 >> 1)
      {
        v51 = a5;
      }

      else
      {
        v51 = a4;
      }

      v52 = &v51[4 * (v49 - v50)];
      if (v52 != a5)
      {
        v53 = *v23;
        v54 = v52;
        do
        {
          *v24 = *v54;
          v24 += 4;
          if (v24 - v53 == 4096)
          {
            v55 = v23[1];
            ++v23;
            v53 = v55;
            v24 = v55;
          }

          v54 += 4;
          ++v17;
        }

        while (v54 != a5);
        a1[2].i64[1] = v17;
      }

      a5 = v52;
      v6 = v49;
    }

    if (v6)
    {
      v56 = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator-[abi:ne200100](&v73, v6);
      v58 = v56;
      v59 = v57;
      v60 = v73.n128_u64[1];
      if (v73.n128_u64[1] != v57)
      {
        v61 = a1[2].i64[1];
        v62 = *v23;
        v63 = v56;
        v64 = v57;
        do
        {
          *v24 = *v64;
          v24 += 4;
          if (v24 - v62 == 4096)
          {
            v65 = v23[1];
            ++v23;
            v62 = v65;
            v24 = v65;
          }

          v64 += 4;
          if (&v64[-*v63] == 4096)
          {
            v66 = v63[1];
            ++v63;
            v64 = v66;
          }

          ++v61;
        }

        while (v64 != v60);
        a1[2].i64[1] = v61;
      }

      if (v6 >= v49)
      {
        v69 = v73.n128_u64[0];
      }

      else
      {
        v67 = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator-[abi:ne200100](&v73, v49);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v67, v68, v58, v59, &v74, v73.n128_u64[0], v73.n128_u64[1]);
        v60 = v75.n128_u64[1];
        v69 = v75.n128_u64[0];
        v73 = v75;
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(a4, a5, v69, v60, &v74);
    }
  }

  else
  {
    if (a6 > v10)
    {
      std::deque<char32_t>::__add_front_capacity(a1, a6 - v10);
      v10 = a1[2].u64[0];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v11 = v10 >> 10;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18 + 4 * (v10 & 0x3FF);
    }

    v73.n128_u64[0] = v12 + 8 * v11;
    v73.n128_u64[1] = v19;
    if (v6 > v16)
    {
      v25 = &a4[4 * (v6 - v16)];
      if (v16 < v6 >> 1)
      {
        v25 = &a5[-4 * v16];
      }

      if (v25 != a4)
      {
        v26 = a1[2].i64[1];
        v27 = *v18;
        v28 = v25;
        do
        {
          if (v19 == v27)
          {
            v29 = *--v18;
            v27 = v29;
            v19 = v29 + 4096;
          }

          v30 = *(v28 - 1);
          v28 -= 4;
          *(v19 - 4) = v30;
          v19 -= 4;
          --v10;
          ++v26;
        }

        while (v28 != a4);
        a1[2].i64[0] = v10;
        a1[2].i64[1] = v26;
      }

      a4 = v25;
      v6 = v16;
    }

    if (v6)
    {
      v32 = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](&v73, v6);
      v33 = v31;
      v34 = v73.n128_u64[1];
      if (v73.n128_u64[1] != v31)
      {
        v35 = a1[2];
        v36 = *v18;
        v37 = v32;
        v38 = v31;
        do
        {
          if (v19 == v36)
          {
            v39 = *--v18;
            v36 = v39;
            v19 = v39 + 4096;
          }

          if (v38 == *v37)
          {
            v40 = *--v37;
            v38 = (v40 + 4096);
          }

          v41 = *(v38 - 1);
          v38 = (v38 - 4);
          *(v19 - 4) = v41;
          v19 -= 4;
          v35 = vaddq_s64(v35, xmmword_1B5AE1340);
        }

        while (v38 != v34);
        a1[2] = v35;
      }

      if (v6 < v16)
      {
        v42 = std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](&v73, v16);
        v74 = v73;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>>(v32, v33, v42, v43, &v74);
        v34 = v74.n128_u64[1];
        v73 = v74;
      }

      if (a4 != a5)
      {
        v45 = (v73.n128_u64[0] + 8);
        v44 = *v73.n128_u64[0];
        while (1)
        {
          v46 = v44 - v34 + 4096;
          if ((a5 - a4) >> 2 >= v46 >> 2)
          {
            v47 = v46 >> 2;
          }

          else
          {
            v47 = (a5 - a4) >> 2;
          }

          if (v47)
          {
            memmove(v34, a4, 4 * v47);
          }

          a4 += 4 * v47;
          if (a4 == a5)
          {
            break;
          }

          v48 = *v45++;
          v44 = v48;
          v34 = v48;
        }
      }
    }
  }

  v70 = a1->i64[1];
  if (a1[1].i64[0] == v70)
  {
    v71 = 0;
  }

  else
  {
    v71 = *(v70 + 8 * (a1[2].i64[0] >> 10)) + 4 * (a1[2].i64[0] & 0x3FF);
  }

  v74.n128_u64[0] = v70 + 8 * (a1[2].i64[0] >> 10);
  v74.n128_u64[1] = v71;
  return std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](&v74, v16);
}

void std::deque<char32_t>::__add_front_capacity(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 7) - 1;
  }

  if ((v6 & 0x3FF) != 0)
  {
    v8 = (v6 >> 10) + 1;
  }

  else
  {
    v8 = v6 >> 10;
  }

  v9 = a1[4];
  v10 = v7 - (a1[5] + v9);
  if (v8 >= v10 >> 10)
  {
    v11 = v10 >> 10;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 10)
  {
    for (a1[4] = (v9 + (v11 << 10)); v11; --v11)
    {
      v15 = a1[2];
      *&v17[0] = *(v15 - 8);
      a1[2] = (v15 - 8);
      std::__split_buffer<int *>::emplace_front<int *&>(a1, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = a1[3] - *a1;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *a1)
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = (v9 + (v11 << 10)); v11; --v11)
    {
      v16 = a1[2];
      *&v17[0] = *(v16 - 8);
      a1[2] = (v16 - 8);
      std::__split_buffer<int *>::emplace_front<int *&>(a1, v17);
    }
  }
}

void sub_1B53B36EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

void std::deque<char32_t>::__add_back_capacity(unint64_t *a1, unint64_t a2)
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

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (a1[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      std::__split_buffer<int *>::emplace_back<int *>(a1, v16);
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v12);
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

    for (a1[4] -= v7 << 10; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      std::__split_buffer<int *>::emplace_back<int *>(a1, v16);
    }
  }
}

void sub_1B53B3A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 2) - a2;
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>>(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,char32_t *,char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 2 >= v11 >> 2 ? v11 >> 2 : (a4 - v9) >> 2;
      if (v12)
      {
        __src = memmove(__dst, v9, 4 * v12);
      }

      v9 = (v9 + 4 * v12);
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, __n128 *a5@<X8>, char *a6@<X5>, char *a7@<X6>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a6;
    v14 = a7;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a6;
    v14 = a7;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 4096);
    }

    v12 = (*v17 + 4096);
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a5->n128_u64[0] = a3;
  a5->n128_u64[1] = a4;
  a5[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<char32_t *,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 2 >= v12 >> 2)
      {
        v13 = v12 >> 2;
      }

      else
      {
        v13 = (v11 - a1) >> 2;
      }

      v11 -= 4 * v13;
      a4 -= 4 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 4 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *(v6 - 1);
      v6 -= 8;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = *(v6 + 1);
      v6 += 8;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

uint64_t std::basic_string<char32_t>::__insert_with_size<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(std::basic_string<char32_t> *a1, uint64_t a2, void *a3, std::basic_string<char32_t>::value_type *a4, uint64_t a5, std::basic_string<char32_t>::value_type *a6, std::basic_string<char32_t>::size_type a7)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = a1->__r_.__value_.__r.__words[0];
    v9 = a2 - a1->__r_.__value_.__r.__words[0];
    if (!a7)
    {
      return v10 + v9;
    }
  }

  else
  {
    v9 = a2 - a1;
    if (!a7)
    {
      v10 = a1;
      return v10 + v9;
    }
  }

  v11 = v9 >> 2;
  std::basic_string<char32_t>::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(&__p, a3, a4, a5, a6);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = std::basic_string<char32_t>::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char32_t const*>,std::__wrap_iter<char32_t const*>>(a1, a7, v11, p_p, p_p + 4 * size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1B53B3F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_string<char32_t>::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char32_t const*>,std::__wrap_iter<char32_t const*>>(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __n_add, std::basic_string<char32_t>::size_type __n_copy, _BYTE *a4, _BYTE *a5)
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
    v11 = 4;
    v12 = this;
    if (4 - size >= __n_add)
    {
LABEL_7:
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + 4 * __n_copy + 4 * __n_add, v12 + 4 * __n_copy, 4 * (size - __n_copy));
      }

      goto LABEL_10;
    }
  }

  std::basic_string<char32_t>::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v13 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v13;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v13 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v13] = 0;
  if (a5 != a4)
  {
    memmove(v12 + 4 * __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + 4 * __n_copy;
}

void std::basic_string<char32_t>::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>,std::__deque_iterator<char32_t,char32_t *,char32_t &,char32_t **,long,1024l>>(std::basic_string<char32_t> *this, void *a2, std::basic_string<char32_t>::value_type *a3, uint64_t a4, std::basic_string<char32_t>::value_type *a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::basic_string<char32_t>::push_back(this, *v6++);
      if ((v6 - *a2) == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }
}

void sub_1B53B40C4(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *quasar::rescoring::operator<<(void *a1, unsigned __int8 *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Feature(", 8);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "type=", 5);
  v6 = *a2;
  if (v6 <= 0x15)
  {
    v7 = quasar::rescoring::EnumNamesFeatureType(void)::names[v6];
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "index=", 6);
  v12 = MEMORY[0x1B8C84C00](v11, *(a2 + 1));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
  return a1;
}

void *quasar::rescoring::operator<<(void *a1, int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "TransformedFeature(", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "feature=[", 9);
  v5 = (a2 + *(a2 - *a2 + 4));
  v6 = (v5 + *v5);
  v7 = *v6;
  if (v7)
  {
    v8 = 8 * v7;
    v9 = (v6 + 1);
    do
    {
      v10 = quasar::rescoring::operator<<(a1, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
      v9 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "], ", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "transformation=[", 16);
  v12 = (a2 + *(a2 - *a2 + 6));
  v13 = (v12 + *v12);
  v14 = *v13;
  if (v14)
  {
    v15 = (v13 + 1);
    do
    {
      v16 = *v15;
      v17 = "";
      if (v16 <= 0x11)
      {
        v17 = quasar::rescoring::EnumNamesFeatureTransformation(void)::names[v16];
      }

      v18 = strlen(v17);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v17, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 2);
      ++v15;
      --v14;
    }

    while (v14);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "], ", 3);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "index=", 6);
  v22 = (a2 - *a2);
  if (*v22 >= 9u && (v23 = v22[4]) != 0)
  {
    v24 = *(a2 + v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x1B8C84C00](v21, v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ")", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "FeatureWeight(", 14);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "weight=", 7);
  v6 = (a2 - *a2);
  v7.n128_u64[0] = 0;
  if (*v6 >= 7u)
  {
    v8 = v6[3];
    if (v8)
    {
      v7.n128_u64[0] = *(a2 + v8);
    }
  }

  v9 = MEMORY[0x1B8C84BE0](v5, v7);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "feature=[", 9);
  v11 = *(a2 - *a2 + 4);
  v12 = *(a2 + v11);
  v13 = *(a2 + v11 + v12);
  if (v13)
  {
    v14 = 4 * v13;
    v15 = a2 + v12 + v11 + 4;
    v16 = v15;
    do
    {
      v17 = *v16++;
      v18 = quasar::rescoring::operator<<(a1, &v15[v17]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
      v15 = v16;
      v14 -= 4;
    }

    while (v14);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "])", 2);
  return a1;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorOfStructs<quasar::rescoring::Feature>(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = 8 * a3;
  flatbuffers_2_0_6::FlatBufferBuilder::StartVector(a1, 2 * (a3 & 0x1FFFFFFFFFFFFFFFLL), 4uLL);
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7 - *(a1 + 64) < v6)
    {
      flatbuffers_2_0_6::vector_downward::reallocate(a1, v6);
      v7 = *(a1 + 56);
    }

    *(a1 + 56) = v7 - v6;
    *(a1 + 40) += v6;
    memcpy((v7 - v6), a2, v6);
  }

  *(a1 + 78) = 0;

  return flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void *quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::~unique_string_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v2, v3);
  }

  return a1;
}

void quasar::rescoring::NullOpAdapterModel()
{
  v20 = 0;
  v21 = xmmword_1B5AEA6A0;
  v22 = 0;
  v23 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  v27 = 256;
  v28 = 0;
  v18 = 21;
  v19 = 0;
  v2 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorOfStructs<quasar::rescoring::Feature>(&v19, &v18, 1);
  BYTE14(v25) = 1;
  v3 = v23;
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v19, 10, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(&v19, 8, 0, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v19, 6, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v19, 4, v2);
  v16 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v19, v3);
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*>(&__p, &v16, &v17, 1uLL);
  if (v14 == __p)
  {
    v4 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>> const&)::t;
  }

  else
  {
    v4 = __p;
  }

  v5 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(&v19, v4, (v14 - __p) >> 2);
  BYTE14(v25) = 1;
  v6 = v23;
  if (v27 == 1)
  {
    v7 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(&v19, 0.0);
    flatbuffers_2_0_6::FlatBufferBuilder::TrackField(&v19, 8, v7);
  }

  v8 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(&v19, 1.0);
  flatbuffers_2_0_6::FlatBufferBuilder::TrackField(&v19, 6, v8);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v19, 4, v5);
  v17 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v19, v6);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*>(&v29, &v17, &v18, 1uLL);
  if (v30 == v29)
  {
    v9 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>> const&)::t;
  }

  else
  {
    v9 = v29;
  }

  v10 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(&v19, v9, (v30 - v29) >> 2);
  BYTE14(v25) = 1;
  v11 = v23;
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v19, 6, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v19, 4, v10);
  v12 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v19, v11);
  flatbuffers_2_0_6::FlatBufferBuilder::Finish(&v19, v12, 0, 0);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::fromBuilder();
}

void sub_1B53B49B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = *(v18 - 80);
  *(v18 - 88) = &unk_1F2D0F210;
  *(v18 - 80) = 0;
  if (v20)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v17 + 8, v20);
  }

  MEMORY[0x1B8C85350](v16, 0x10E1C40DC75050CLL, a3, a4, a5, a6, a7, a8);
  v21 = a11;
  a11 = 0;
  if (v21)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](&a11, v21);
  }

  flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void quasar::rescoring::LoadLinearAdapterModelFromPath(uint64_t a1, kaldi::quasar::Vocab *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  v29 = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v27[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v27 + *(v27[0] - 24)) = v5;
  v27[1] = 0;
  v6 = (v27 + *(v27[0] - 24));
  std::ios_base::init(v6, v28);
  v7 = MEMORY[0x1E69E5528] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v27[0] = v7;
  v29 = v4;
  MEMORY[0x1B8C849F0](v28);
  kaldi::quasar::Vocab::OOvWord(a2, __p);
  std::ifstream::open();
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (!*&v28[*(v27[0] - 24) + 16])
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
    std::ostream::operator<<();
    std::stringbuf::str();
    quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::fromString();
  }

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
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to load adapter model at ", 32);
  v9 = quasar::filesystem::operator<<(v8, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".", 1);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B53B4F8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *quasar::rescoring::AdapterModelMultiplexer::AdapterModelMultiplexer(void *result, uint64_t *a2, void *a3)
{
  *result = *a3;
  v3 = a3 + 1;
  v4 = a3[1];
  result[1] = v4;
  v5 = result + 1;
  v6 = a3[2];
  result[2] = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *a3 = v3;
    *v3 = 0;
    a3[2] = 0;
  }

  else
  {
    *result = v5;
  }

  v7 = *a2;
  *a2 = 0;
  result[3] = v7;
  return result;
}

uint64_t quasar::rescoring::AdapterModelMultiplexer::getModel(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return *(a1 + 24);
  }

  v3 = (a2 - *a2);
  if (*v3 < 5u)
  {
    return *(a1 + 24);
  }

  v4 = v3[2];
  if (!v4)
  {
    return *(a1 + 24);
  }

  v5 = (a2 + v4 + *(a2 + v4));
  v6 = *v5;
  v10[0] = v5 + 1;
  v10[1] = v6;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1, v10);
  if (a1 + 8 == v7)
  {
    v8 = a1 + 24;
  }

  else
  {
    v8 = v7 + 56;
  }

  return *v8;
}

char *flatbuffers_2_0_6::FlatBufferBuilder::AddElement<double>(char *this, uint64_t a2, double a3, double a4)
{
  v5 = this;
  if (a3 != a4 || this[88] == 1)
  {
    v6 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(this, a3);

    return flatbuffers_2_0_6::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return this;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::PushElement<double>(flatbuffers_2_0_6::vector_downward *this, double a2)
{
  if (*(this + 10) <= 7uLL)
  {
    *(this + 10) = 8;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, -*(this + 10) & 7);
  v5 = a2;
  flatbuffers_2_0_6::vector_downward::push_small<double>(this, &v5);
  return *(this + 10);
}

double flatbuffers_2_0_6::vector_downward::push_small<double>(flatbuffers_2_0_6::vector_downward *this, double *a2)
{
  v4 = *(this + 7);
  if ((v4 - *(this + 8)) <= 7)
  {
    flatbuffers_2_0_6::vector_downward::reallocate(this, 8uLL);
    v4 = *(this + 7);
  }

  result = *a2;
  *(v4 - 8) = *a2;
  *(this + 7) = v4 - 8;
  *(this + 10) += 8;
  return result;
}

void *quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::~generic_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v2, v3);
  }

  return a1;
}

void quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::~generic_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v3 = a1[1];
  v1 = a1 + 1;
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = *a3;
      v8 = *(*a3[1] + 8 * v6);
      v9 = a3[2];
      v22[0] = *a3;
      v22[1] = v8;
      v22[2] = v9;
      v10 = *(v8 + 1) - *v8;
      if (v10)
      {
        v11 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(v7, v10 >> 3, v22);
      }

      else
      {
        v11 = 0;
      }

      v13 = v8[3];
      v12 = v8[4];
      *(v7 + 78) = 1;
      v14 = *(v7 + 40);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<double>(v7, 8, v12, 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddElement<double>(v7, 6, v13, 0.0);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v7, 4, v11);
      v15 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v7, v14);
      v16 = __p;
      *(__p + v6++) = v15;
    }

    while (a2 != v6);
  }

  else
  {
    v16 = __p;
  }

  if (v21 == v16)
  {
    v17 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>> const&)::t;
  }

  else
  {
    v17 = v16;
  }

  v18 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v17, (v21 - v16) >> 2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_1B53B559C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#2},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      TransformedFeature = quasar::rescoring::CreateTransformedFeature(*a3, *(*(a3[1] + 24) + 8 * v6), a3[2]);
      v8 = __p;
      *(__p + v6++) = TransformedFeature;
    }

    while (a2 != v6);
  }

  else
  {
    v8 = __p;
  }

  if (v13 == v8)
  {
    v9 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>> const&)::t;
  }

  else
  {
    v9 = v8;
  }

  v10 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v9, (v13 - v8) >> 2);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1B53B566C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B53B56E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateFeatureWeight(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::FeatureWeightT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      TransformedFeature = quasar::rescoring::CreateTransformedFeature(*a3, *(**(a3 + 8) + 8 * v6), *(a3 + 16));
      v8 = __p;
      *(__p + v6++) = TransformedFeature;
    }

    while (a2 != v6);
  }

  else
  {
    v8 = __p;
  }

  if (v13 == v8)
  {
    v9 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>> const&)::t;
  }

  else
  {
    v9 = v8;
  }

  v10 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v9, (v13 - v8) >> 2);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1B53B57B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B53B5830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::rescoring::CreateTransformedFeature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7)
  {
    v8 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorOfStructs<quasar::rescoring::Feature>(a1, v5, v7 >> 3);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorScalarCast<signed char,quasar::rescoring::FeatureTransformation>(a1, v9, v10 - v9);
  }

  v12 = *(a2 + 48);
  v13 = *(a2 + 64) - *(a2 + 56);
  if (v13)
  {
    v14 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(a1, v13 >> 3, v17);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 78) = 1;
  v15 = *(a1 + 40);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(a1, 10, v14);
  flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(a1, 8, v12, 0);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(a1, 6, v11);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(a1, 4, v8);
  return flatbuffers_2_0_6::FlatBufferBuilder::EndTable(a1, v15);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVectorScalarCast<signed char,quasar::rescoring::FeatureTransformation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  flatbuffers_2_0_6::FlatBufferBuilder::StartVector(a1, a3, 1uLL);
  if (a3)
  {
    v6 = a2 - 1;
    v7 = a3;
    do
    {
      v8 = *(v6 + v7);
      if (!*(a1 + 80))
      {
        *(a1 + 80) = 1;
      }

      --v7;
      v10 = v8;
      flatbuffers_2_0_6::vector_downward::push_small<signed char>(a1, &v10);
    }

    while (v7);
  }

  *(a1 + 78) = 0;
  return flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateTransformedFeature(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::TransformedFeatureT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(flatbuffers_2_0_6::FlatBufferBuilder *a1, unint64_t a2, uint64_t *a3)
{
  std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = *a3;
      v8 = **(*(a3[1] + 56) + 8 * v6);
      if (v8)
      {
        v9 = *v8;
        *(v7 + 78) = 1;
        v10 = *(v7 + 40);
        flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(v7, 4, v9, 0.0);
        v11 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v7, v10);
      }

      else
      {
        v11 = 0;
      }

      *(v7 + 78) = 1;
      v12 = *(v7 + 40);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v7, 4, v11);
      v13 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v7, v12);
      v14 = __p;
      *(__p + v6++) = v13;
    }

    while (a2 != v6);
  }

  else
  {
    v14 = __p;
  }

  if (v19 == v14)
  {
    v15 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>> const&)::t;
  }

  else
  {
    v15 = v14;
  }

  v16 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(a1, v15, (v19 - v14) >> 2);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v16;
}

void sub_1B53B5B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureTransformationArgument>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1B53B5B80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature> const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B5BF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>>::__init_with_size[abi:ne200100]<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*,flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight> const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B5C68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::generic_flatbuf_ptr(uint64_t result, unsigned int **a2, unsigned int a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_1F2D0F210;
  *(result + 8) = v3;
  *(result + 16) = a3;
  if (!a3)
  {
    *(result + 24) = 0;
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    goto LABEL_10;
  }

  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = (v3 + *v3);
  *(result + 24) = v4;
  v5 = (v4 - *v4);
  if (*v5 > a3)
  {
    v6 = *(v5 + a3);
    if (v6)
    {
      v3 = (v4 + v6);
LABEL_10:
      v7 = v3 + *v3;
      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  *(result + 32) = v7;
  return result;
}

void quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::~unique_string_flatbuf_ptr(void *a1)
{
  *a1 = &unk_1F2D0F210;
  v3 = a1[1];
  v1 = a1 + 1;
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::unique_string_flatbuf_ptr(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = v4;
  quasar::tennessee::generic_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc,std::string,std::unique_ptr<std::string>>::generic_flatbuf_ptr(a1, &v7, *(a2 + 16));
  *a1 = &unk_1F2D0F240;
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](&v7, v5);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

void sub_1B53B5E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::rescoring::LinearAdapterModel::LinearAdapterModel(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_1F2D0F2D8;
  a1[1] = v5;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F2D0F278;
  v6 = quasar::tennessee::unique_string_flatbuf_ptr<quasar::rescoring::LinearRescoringModelDesc>::unique_string_flatbuf_ptr(a1 + 3, a3);
  v9 = a1[7];
  v10 = (v9 - *v9);
  if (*v10 < 7u || (v11 = v10[3]) == 0)
  {
    quasar::rescoring::GetDefaultTransformedFeatureDescs(v6, v7, v8);
  }

  quasar::rescoring::ConvertTransformedFeaturesToTransformedFeatureDescs<flatbuffers_2_0_6::Vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>((v9 + v11 + *(v9 + v11)), a1 + 8);
  return a1;
}

void sub_1B53B5EF0(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  v1[3] = &unk_1F2D0F210;
  v1[4] = 0;
  if (v4)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100]((v1 + 4), v4);
  }

  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(exception_object);
}

void quasar::rescoring::ConvertTransformedFeaturesToTransformedFeatureDescs<flatbuffers_2_0_6::Vector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>>>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<quasar::rescoring::TransformedFeatureDesc>::reserve(a2, *a1);
  v4 = *a1;
  if (v4)
  {
    v5 = 4 * v4;
    v6 = a1 + 1;
    do
    {
      quasar::rescoring::CreateTransformedFeatureDesc((v6 + *v6), v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = std::vector<quasar::rescoring::TransformedFeatureDesc>::__emplace_back_slow_path<quasar::rescoring::TransformedFeatureDesc>(a2, v9);
      }

      else
      {
        v7[2] = 0;
        v7[3] = 0;
        *v7 = 0;
        v7[1] = 0;
        *v7 = *v9;
        v7[2] = v10;
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        v7[4] = 0;
        v7[5] = 0;
        *(v7 + 3) = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v7[5] = v12;
        v7[6] = 0;
        v12 = 0;
        v7[7] = 0;
        v7[8] = 0;
        *(v7 + 3) = v13;
        v7[8] = v14;
        v13 = 0uLL;
        v14 = 0;
        v8 = (v7 + 9);
      }

      a2[1] = v8;
      v15 = &v13;
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v15);
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

      ++v6;
      v5 -= 4;
    }

    while (v5);
  }
}

void quasar::rescoring::LinearAdapterModel::~LinearAdapterModel(quasar::rescoring::LinearAdapterModel *this)
{
  *this = &unk_1F2D0F278;
  v4 = (this + 64);
  std::vector<quasar::rescoring::TransformedFeatureDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  *(this + 3) = &unk_1F2D0F210;
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](this + 32, v2);
  }

  *this = &unk_1F2D0F2D8;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F2D0F278;
  v4 = (this + 64);
  std::vector<quasar::rescoring::TransformedFeatureDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  *(this + 3) = &unk_1F2D0F210;
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<quasar::PhonesetMapping>::operator()[abi:ne200100](this + 32, v2);
  }

  *this = &unk_1F2D0F2D8;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1B8C85350](this, 0x10E1C40DC75050CLL);
}

float quasar::rescoring::LinearAdapterModel::scoreHypothesis(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (quasar::gLogLevel >= 6)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Scoring hypothesis ", 19);
    v9 = MEMORY[0x1B8C84C30](v8, a4);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of ", 4);
    v11 = (a2 + *(a2 - *a2 + 4));
    v12 = v11 + *v11;
    v13 = strlen(v12 + 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, (v12 + 4), v13);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
  }

  v14 = *(a1 + 56);
  v15 = *(v14 - *v14 + 4);
  v16 = *(v14 + v15);
  v17 = (v14 + v15 + v16);
  v18 = *v17;
  if (v18)
  {
    v19 = 0;
    v20 = 4 * v18;
    v21 = v14 + v15 + v16;
    v22 = 0.0;
    while (1)
    {
      v23 = v17[v19 / 4 + 1];
      v24 = (&v17[v19 / 4] + v23);
      v25 = v23 - v24[1];
      v26 = &v17[v19 / 4] + v25;
      if (*(v26 + 2) >= 7u)
      {
        v27 = *(v26 + 5);
        if (v27)
        {
          if (*(&v17[v19 / 4 + 1] + v23 + v27) != 0.0)
          {
            break;
          }
        }
      }

LABEL_24:
      v19 += 4;
      if (v20 == v19)
      {
        goto LABEL_27;
      }
    }

    v28 = *(&v17[v19 / 4 + 2] + v25);
    if (v28)
    {
      v29 = &v17[v19 / 4 + 1] + v23 + v28 + *(&v17[v19 / 4 + 1] + v23 + v28);
    }

    else
    {
      v29 = 0;
    }

    v30 = (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a3, a4, v29);
    v31 = v30;
    v32 = v23 - v24[1];
    v33 = &v21[v19 + v32];
    v34 = *(v33 + 2);
    if (v34 < 9)
    {
      v36 = (v30 + 0.0);
      v37 = 0.0;
      if (v34 < 7)
      {
LABEL_21:
        v40 = v36 * v37;
        if (quasar::gLogLevel >= 6)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Hypothesis ", 11);
          v42 = MEMORY[0x1B8C84C30](v41, a4);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " ", 1);
          v44 = quasar::rescoring::operator<<(v43, v24 + 1);
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "; ", 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "featureValue=", 13);
          v46 = std::ostream::operator<<();
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " ", 1);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "shiftedAndWeightedFeatureValue=", 31);
          std::ostream::operator<<();
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
        }

        v22 = v22 + v40;
        goto LABEL_24;
      }
    }

    else
    {
      if (*(v33 + 6))
      {
        v35 = *&v21[v19 + 4 + v23 + *(v33 + 6)];
      }

      else
      {
        v35 = 0.0;
      }

      v38 = v35 + v31;
      v36 = v38;
    }

    v39 = *&v21[v19 + 10 + v32];
    if (v39)
    {
      v37 = *&v21[v19 + 4 + v23 + v39];
    }

    else
    {
      v37 = 0.0;
    }

    goto LABEL_21;
  }

  v22 = 0.0;
LABEL_27:
  if (quasar::gLogLevel > 5)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Score: ", 7);
    MEMORY[0x1B8C84BE0](v48, v22);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
  }

  return v22;
}

void quasar::rescoring::LinearAdapterModel::serialize(uint64_t a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  quasar::rescoring::LinearRescoringModelDesc::UnPackTo(*(a1 + 56), &v17, 0);
  v7 = 0;
  v8 = 0;
  v9 = xmmword_1B5AEA6A0;
  v10 = 0;
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 1;
  v15 = 256;
  v16 = 0;
  v20[0] = &v7;
  v20[1] = &v17;
  v20[2] = 0;
  if (*(&v17 + 1) == v17)
  {
    v3 = 0;
  }

  else
  {
    v3 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::FeatureWeight>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#1},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(&v7, (*(&v17 + 1) - v17) >> 3, v20);
  }

  if (v19 == *(&v18 + 1))
  {
    v4 = 0;
  }

  else
  {
    v4 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<flatbuffers_2_0_6::Offset<quasar::rescoring::TransformedFeature>,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::{lambda(unsigned long,quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs *)#2},quasar::rescoring::CreateLinearRescoringModelDesc(flatbuffers_2_0_6::FlatBufferBuilder&,quasar::rescoring::LinearRescoringModelDescT const*,std::function<unsigned long long ()(void *)> const*)::_VectorArgs>(&v7, (v19 - *(&v18 + 1)) >> 3, v20);
  }

  BYTE14(v13) = 1;
  v5 = v11;
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v7, 6, v4);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(&v7, 4, v3);
  v6 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(&v7, v5);
  flatbuffers_2_0_6::FlatBufferBuilder::Finish(&v7, v6, 0, 0);
  quasar::tennessee::Serialize(&v7, a2);
  flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder(&v7);
  v7 = &v18 + 1;
  std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = &v17;
  std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B53B677C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  quasar::rescoring::LinearRescoringModelDescT::~LinearRescoringModelDescT(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<quasar::rescoring::TransformedFeatureDesc>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B53B6874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::rescoring::CreateTransformedFeatureDesc(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v4 = (a1 + *(a1 - *a1 + 4));
  std::vector<quasar::rescoring::FeatureType>::reserve(&v47, *(v4 + *v4));
  v40 = a2;
  v5 = *a1;
  v6 = *(a1 - v5 + 4);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + v7);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v48;
    v11 = v6 + v7 + 4;
    do
    {
      v12 = *(a1 + v11);
      if (v10 >= v49)
      {
        v13 = v47;
        v14 = (v10 - v47);
        v15 = v10 - v47 + 1;
        if (v15 < 0)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = v49 - v47;
        if (2 * (v49 - v47) > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          operator new();
        }

        v18 = v10 - v47;
        *v14 = v12;
        v10 = v14 + 1;
        memcpy(0, v13, v18);
        v47 = 0;
        v48 = v14 + 1;
        v49 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v10++ = v12;
      }

      v48 = v10;
      v11 += 8;
      v9 -= 8;
    }

    while (v9);
    v19 = -*a1;
  }

  else
  {
    v19 = -v5;
  }

  v20 = (a1 + v19);
  v21 = *v20;
  if (v20[3])
  {
    v39 = a1 + v20[3] + *(a1 + v20[3]);
  }

  else
  {
    v39 = 0;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v21 >= 0xB)
  {
    v22 = v20[5];
    if (v20[5])
    {
      v23 = *(a1 + v22);
      v24 = (a1 + v22 + v23);
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::resize(&v44, *v24);
      v25 = *v24;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = 4 * v25;
        v29 = a1 + v22 + v23;
        do
        {
          v30 = *&v29[v26 + 4];
          v31 = &v29[v26 + v30 - *(&v24[v26 / 4 + 1] + v30)];
          if (*(v31 + 2) >= 5u)
          {
            v32 = *(v31 + 4);
            if (*(v31 + 4))
            {
              v33 = *&v29[v26 + 4 + v30 + v32];
              v34 = *(v44 + v27);
              if (!v34)
              {
                operator new();
              }

              v35 = *&v29[v30 + 4 + v32 + v26 + v33];
              v36 = 0;
              if (*&v29[v26 + 4 + v30 + v32 + v33 - v35] >= 5u)
              {
                v37 = v30 + v32 + v33;
                if (*&v29[v26 + 8 + v37 - v35])
                {
                  v36 = *&v29[v37 + 4 + v26 + *&v29[v26 + 8 + v37 - v35]];
                }
              }

              *v34 = v36;
            }
          }

          v27 += 8;
          v26 += 4;
        }

        while (v28 != v26);
      }
    }
  }

  v38 = *v39;
  v42 = 0;
  v43 = 0;
  __p = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation const*,quasar::rescoring::FeatureTransformation const*>(&__p, v39 + 4, &v39[v38 + 4], v38);
  *v40 = 0;
  v40[1] = 0;
  v40[2] = 0;
  std::vector<quasar::rescoring::FeatureType>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureType*,quasar::rescoring::FeatureType*>(v40, v47, v48, v48 - v47);
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation*,quasar::rescoring::FeatureTransformation*>(v40 + 3, __p, v42, v42 - __p);
  v40[6] = 0;
  v40[7] = 0;
  v40[8] = 0;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformationArgumentT*,quasar::rescoring::FeatureTransformationArgumentT*>(v40 + 6, v44, v45, (v45 - v44) >> 3);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  __p = &v44;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_1B53B6C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  a12 = &a15;
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(a1, a4, v7);
      v7 += 72;
      a4 = v12 + 9;
      v12 += 9;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 48);
  std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 72;
      std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(v5, v4 - 72);
  }
}

uint64_t std::vector<quasar::rescoring::TransformedFeatureDesc>::__emplace_back_slow_path<quasar::rescoring::TransformedFeatureDesc>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(a1, (72 * v2), a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = (72 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::TransformedFeatureDesc>,quasar::rescoring::TransformedFeatureDesc*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(&v13);
  return v12;
}

void sub_1B53B70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::rescoring::TransformedFeatureDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<quasar::rescoring::FeatureType>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<quasar::rescoring::FeatureTransformationArgumentT>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__base_destruct_at_end[abi:ne200100](result, (*result + 8 * a2));
    }
  }

  else
  {
    std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__append(result, a2 - v2);
  }
}

void std::vector<quasar::rescoring::FeatureTransformationArgumentT>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v4 - v6;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v17 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v11);
    }

    v14 = 0;
    v15 = 8 * v9;
    bzero((8 * v9), 8 * a2);
    v16 = 8 * v9 + 8 * a2;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>(a1, v6, v5, 0);
    v12 = *a1;
    *a1 = 0;
    v13 = *(a1 + 16);
    *(a1 + 8) = v16;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v14 = v12;
    v15 = v12;
    std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::~__split_buffer(&v14);
  }
}

void sub_1B53B72EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6++ = 0;
      *a4++ = v7;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = *v5;
        *v5 = 0;
        if (v8)
        {
          MEMORY[0x1B8C85350](v8, 0x1000C4052888210);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::rescoring::FeatureTransformationArgumentT>,quasar::rescoring::FeatureTransformationArgumentT*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<quasar::rescoring::FeatureTransformationArgumentT>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        result = MEMORY[0x1B8C85350](result, 0x1000C4052888210);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::vector<quasar::rescoring::FeatureTransformation>::__init_with_size[abi:ne200100]<quasar::rescoring::FeatureTransformation const*,quasar::rescoring::FeatureTransformation const*>(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53B74C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::rescoring::TransformedFeatureDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::rescoring::TransformedFeatureDesc>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::rescoring::TransformedFeatureDesc>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::rescoring::TransformedFeatureDesc>>::destroy[abi:ne200100]<quasar::rescoring::TransformedFeatureDesc,0>(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void quasar::rescoring::LinearRescoringModelDesc::UnPackTo(int *result, uint64_t *a2, uint64_t a3)
{
  v6 = (result - *result);
  if (*v6 >= 5u)
  {
    v7 = v6[2];
    if (v7)
    {
      v8 = (result + v7 + *(result + v7));
      std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::resize(a2, *v8);
      if (*v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = v8 + 1;
        do
        {
          v12 = *(*a2 + v9);
          if (!v12)
          {
            operator new();
          }

          quasar::rescoring::FeatureWeight::UnPackTo((v11 + *v11), v12, a3);
          ++v10;
          v9 += 8;
          ++v11;
        }

        while (v10 < *v8);
      }
    }
  }

  v13 = (result - *result);
  if (*v13 >= 7u)
  {
    v14 = v13[3];
    if (v14)
    {
      v15 = (result + v14 + *(result + v14));
      std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::resize(a2 + 3, *v15);
      if (*v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = v15 + 1;
        do
        {
          v19 = *(a2[3] + v16);
          if (!v19)
          {
            operator new();
          }

          quasar::rescoring::TransformedFeature::UnPackTo((v18 + *v18), v19);
          ++v17;
          v16 += 8;
          ++v18;
        }

        while (v17 < *v15);
      }
    }
  }
}

void sub_1B53B77C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100](--v3, 0);
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__append(result, v5);
  }
}

void quasar::rescoring::FeatureWeight::UnPackTo(int *result, uint64_t *a2, uint64_t a3)
{
  v5 = (result - *result);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      v7 = (result + v6 + *(result + v6));
      std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::resize(a2, *v7);
      if (*v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = v7 + 1;
        do
        {
          v11 = *(*a2 + v8);
          if (!v11)
          {
            operator new();
          }

          quasar::rescoring::TransformedFeature::UnPackTo((v10 + *v10), v11);
          ++v9;
          v8 += 8;
          ++v10;
        }

        while (v9 < *v7);
      }
    }
  }

  v12 = (result - *result);
  v13 = *v12;
  if (v13 <= 6)
  {
    a2[3] = 0;
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (v12[3])
    {
      v15 = *(result + v12[3]);
    }

    a2[3] = v15;
    if (v13 >= 9)
    {
      v16 = v12[4];
      if (v16)
      {
        v14 = *(result + v16);
      }
    }
  }

  a2[4] = v14;
}

void sub_1B53B7A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](--v3, 0);
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__append(result, v5);
  }
}

void quasar::rescoring::TransformedFeature::UnPackTo(int *a1, uint64_t a2)
{
  v4 = (a1 - *a1);
  if (*v4 >= 5u)
  {
    v5 = v4[2];
    if (v4[2])
    {
      v6 = a1 + v5;
      v7 = *(a1 + v5);
      std::vector<std::pair<int,float>>::resize(a2, *(a1 + v5 + v7));
      if (*&v6[v7])
      {
        v8 = 0;
        do
        {
          *(*a2 + 8 * v8) = *(&a1[2 * v8 + 1] + v5 + v7);
          ++v8;
        }

        while (v8 < *&v6[v7]);
      }
    }
  }

  v9 = (a1 - *a1);
  if (*v9 >= 7u)
  {
    v10 = v9[3];
    if (v10)
    {
      v11 = (a1 + v10 + *(a1 + v10));
      v12 = *(a2 + 24);
      v13 = *v11;
      v14 = *(a2 + 32) - v12;
      if (v13 <= v14)
      {
        if (v13 < v14)
        {
          *(a2 + 32) = v12 + v13;
        }
      }

      else
      {
        std::vector<signed char>::__append((a2 + 24), v13 - v14);
        LODWORD(v13) = *v11;
      }

      if (v13)
      {
        v15 = (v11 + 1);
        v16 = *(a2 + 24);
        v13 = v13;
        do
        {
          v17 = *v15++;
          *v16++ = v17;
          --v13;
        }

        while (v13);
      }
    }
  }

  v18 = (a1 - *a1);
  if (*v18 < 9u)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[4];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  *(a2 + 48) = v19;
  v20 = (a1 - *a1);
  if (*v20 >= 0xBu)
  {
    v21 = v20[5];
    if (v21)
    {
      v22 = (a1 + v21 + *(a1 + v21));
      std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::resize((a2 + 56), *v22);
      if (*v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = v22 + 1;
        do
        {
          v26 = *(*(a2 + 56) + v23);
          if (!v26)
          {
            operator new();
          }

          v27 = *v25;
          v28 = v27 - *(v25 + v27);
          if (*(v25 + v28) >= 5u)
          {
            v29 = v25 + v28;
            v30 = *(v29 + 2);
            if (*(v29 + 2))
            {
              v31 = *(v25 + v27 + v30);
              v32 = v27 + v30 + v31;
              if (!*v26)
              {
                operator new();
              }

              v33 = *(v25 + v32);
              v34 = 0;
              if (*(v25 + v32 - v33) >= 5u)
              {
                v35 = v27 + v30 + v31;
                v36 = *(v25 + v35 - v33 + 4);
                if (v36)
                {
                  v34 = *(v25 + v35 + v36);
                }
              }

              **v26 = v34;
            }
          }

          ++v24;
          v23 += 8;
          ++v25;
        }

        while (v24 < *v22);
      }
    }
  }
}

void sub_1B53B7E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](&a10, v10);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x1B8C85350](v2, 0x1020C4084B17629);
  }

  return result;
}

void std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__base_destruct_at_end[abi:ne200100](result, (*result + 8 * a2));
    }
  }

  else
  {
    std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__append(result, a2 - v2);
  }
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
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
      std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(result + 8) = a2;
}

void std::default_delete<quasar::rescoring::FeatureTransformationArgumentT>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      MEMORY[0x1B8C85350](v2, 0x1000C4052888210);
    }

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t *std::unique_ptr<quasar::rescoring::TransformedFeatureT>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 56);
    std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    return MEMORY[0x1B8C85350](v2, 0x1030C40F1006E01);
  }

  return result;
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<quasar::rescoring::FeatureTransformationArgumentT>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void quasar::rescoring::LinearRescoringModelDescT::~LinearRescoringModelDescT(void **this)
{
  v2 = this + 3;
  std::vector<std::unique_ptr<quasar::rescoring::TransformedFeatureT>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<std::unique_ptr<quasar::rescoring::FeatureWeightT>>::__destroy_vector::operator()[abi:ne200100](void *****a1)
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
        std::unique_ptr<quasar::rescoring::FeatureWeightT>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void quasar::TranslationTokenInternal::strippedText(std::string *__str@<X0>, std::string *a2@<X8>)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = __str;
  }

  v4 = 3;
  if (size < 3)
  {
    v4 = size;
  }

  if (!size)
  {
    goto LABEL_20;
  }

  v5 = v3 + v4;
  v6 = v3;
  v7 = (v3 + v4);
  do
  {
    if (v6->__r_.__value_.__s.__data_[0] == 226)
    {
      v8 = 1u;
      while (v8 != 3)
      {
        if ((v6 + v8) == v5)
        {
          goto LABEL_17;
        }

        v9 = v6->__r_.__value_.__s.__data_[v8];
        v10 = asc_1B5BFF99D[v8++];
        if (v9 != v10)
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
    }

LABEL_9:
    v6 = (v6 + 1);
  }

  while (v6 != v5);
LABEL_17:
  if (v7 != v5 && v7 == v3)
  {
    std::string::basic_string(a2, __str, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v13);
  }

  else
  {
LABEL_20:
    if (SHIBYTE(__str[3].__r_.__value_.__r.__words[2]) < 0)
    {
      data = __str[3].__r_.__value_.__l.__data_;
      v12 = __str[3].__r_.__value_.__l.__size_;

      std::string::__init_copy_ctor_external(a2, data, v12);
    }

    else
    {
      *a2 = __str[3];
    }
  }
}

uint64_t quasar::join<std::vector<float>>(float **a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  quasar::joinToStream<std::vector<float>>(&v8, a1, a2);
  std::stringbuf::str();
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v8 = v5;
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B53B8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v3 + 128);
  _Unwind_Resume(a1);
}

void *quasar::joinToStream<std::vector<float>>(void *result, float **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      ++v3;
      result = std::ostream::operator<<();
      v7 = 0;
    }

    while (v3 != v4);
  }

  return result;
}

kaldi::nnet1::RecurrentBaseComponent *kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::RecurrentBaseComponent *a2, uint64_t a3)
{
  *this = &unk_1F2D16320;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 1, *(a3 + 8), *(a3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 16) - *(a3 + 8)) >> 4));
  *(this + 4) = &unk_1F2D27A18;
  *(this + 10) = *(a3 + 40);
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = *(a2 + 1);
  *(this + 6) = &unk_1F2D279F8;
  v7 = *(a3 + 56);
  *(this + 71) = *(a3 + 71);
  *(this + 56) = v7;
  *&v7 = *(a3 + 96);
  *(this + 13) = 0;
  *(this + 6) = &unk_1F2D27A38;
  *(this + 11) = &unk_1F2D27A58;
  *(this + 12) = v7;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 13, *(a3 + 104), *(a3 + 112), (*(a3 + 112) - *(a3 + 104)) >> 5);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 16, *(a3 + 128), *(a3 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 136) - *(a3 + 128)) >> 4));
  *(this + 19) = *(a3 + 152);
  return this;
}

void sub_1B53B8BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(v4);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v3);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(uint64_t a1, unint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7, v8, v9, v10, v11);
  if (*(a1 + 208) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v4);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v12);
  }

  if (*(a1 + 224) == 1)
  {
    v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v4);

    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v13);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>((a1 + 872), *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0F728, a2);
  *a1 = &unk_1F2D0F318;
  *(a1 + 848) = &unk_1F2D0F608;
  *(a1 + 160) = &unk_1F2D0F4A8;
  *(a1 + 168) = &unk_1F2D0F4D0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 248), *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 272), *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 296), *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 320), *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 344), *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 368), *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 392), *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 416), *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 440), *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 480), *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 504), *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 656), *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 680), *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 704), *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>((a1 + 728), *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 752), *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53B9B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, quasar::Bitmap *a24, quasar::Bitmap *a25, kaldi::nnet1::UpdatableComponent *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t a30)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v30);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v33 = *(v31 + 63);
  if (v33)
  {
    *(v31 + 64) = v33;
    operator delete(v33);
  }

  v34 = *(v31 + 60);
  if (v34)
  {
    *(v31 + 61) = v34;
    operator delete(v34);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a23;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a27, 0);
  v35 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a29, 0);
  quasar::Bitmap::~Bitmap(a24);
  quasar::Bitmap::~Bitmap(a25);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F2D0F728);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a26);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(uint64_t a1, unint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7, v8, v9, v10, v11);
  if (*(a1 + 208) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v4);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v12);
  }

  if (*(a1 + 224) == 1)
  {
    v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v4);

    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v13);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>((a1 + 872), *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FB68, a2);
  *a1 = &unk_1F2D0F758;
  *(a1 + 848) = &unk_1F2D0FA48;
  *(a1 + 160) = &unk_1F2D0F8E8;
  *(a1 + 168) = &unk_1F2D0F910;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 248), *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 272), *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 296), *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 320), *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 344), *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 368), *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 392), *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 416), *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 440), *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 480), *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 504), *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 656), *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 680), *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 704), *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>((a1 + 728), *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 752), *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(a2 + 216);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v10))
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, 0);
      }

      if (*(*(a2 + 560) + 8 * v10))
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v12, 0);
      }

      if (*(*(a2 + 608) + 8 * v10))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v10);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v10))
      {
        v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v13, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v10))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v10);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      ++v10;
    }

    while (v10 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53BA990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, quasar::Bitmap *a24, quasar::Bitmap *a25, kaldi::nnet1::UpdatableComponent *a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, uint64_t a30)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v30);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v33 = *(v31 + 63);
  if (v33)
  {
    *(v31 + 64) = v33;
    operator delete(v33);
  }

  v34 = *(v31 + 60);
  if (v34)
  {
    *(v31 + 61) = v34;
    operator delete(v34);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a23;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a27, 0);
  v35 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a29, 0);
  quasar::Bitmap::~Bitmap(a24);
  quasar::Bitmap::~Bitmap(a25);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F2D0FB68);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a26);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 856) = a2;
  *(a1 + 860) = a3;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  *(a1 + 904) = xmmword_1B5AE0070;
  *(a1 + 920) = 0x3BF800000;
  *(a1 + 928) = 1;
  *(a1 + 932) = 0;
  *(a1 + 934) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FFA8);
  *v4 = &unk_1F2D0FB98;
  *(v4 + 848) = &unk_1F2D0FE88;
  *(v4 + 160) = &unk_1F2D0FD28;
  *(v4 + 168) = &unk_1F2D0FD50;
  *(v4 + 176) = a3;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 184) = 0;
  *(v4 + 208) = 1;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 456) = 0;
  result = 0.0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 464) = 0x3DCCCCCD3F800000;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 504) = 0u;
  *(v4 + 513) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, unint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7, v8, v9, v10, v11);
  if (*(a1 + 208) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v4);
    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v12);
  }

  if (*(a1 + 224) == 1)
  {
    v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v4);

    kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v13);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = &unk_1F2D15BB8;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>((a1 + 872), *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F2D172B0;
  *(a1 + 896) = &unk_1F2D279F8;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F2D0FFA8, a2);
  *a1 = &unk_1F2D0FB98;
  *(a1 + 848) = &unk_1F2D0FE88;
  *(a1 + 160) = &unk_1F2D0FD28;
  *(a1 + 168) = &unk_1F2D0FD50;
  v7 = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 176) = v7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  LOBYTE(v7) = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 248), *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 272), *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 296), *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 320), *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 344), *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 368), *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 392), *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 416), *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 440), *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 480), *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 504), *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 656), *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 680), *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 704), *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>((a1 + 728), *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>((a1 + 752), *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  v9 = *(a2 + 184);
  if (v9)
  {
    kaldi::NewCuSubOrMat<float>(v9, 0);
  }

  v10 = *(a2 + 192);
  if (v10)
  {
    kaldi::NewCuSubOrMat<float>(v10, 0);
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v11 = *(a2 + 216);
  if (v11)
  {
    kaldi::NewCuSubOrMat<float>(v11, 0);
  }

  v12 = *(a2 + 232);
  if (v12)
  {
    kaldi::NewCuSubOrMat<float>(v12, 0);
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    v13 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v13))
      {
        v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v14, 0);
      }

      if (*(*(a2 + 560) + 8 * v13))
      {
        v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 608) + 8 * v13))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v13);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v13))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v13))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v13);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      ++v13;
    }

    while (v13 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_1B53BBA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, quasar::Bitmap *a22, quasar::Bitmap *a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t a26)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v27);
  a26 = a9;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v29 = *(v26 + 63);
  if (v29)
  {
    *(v26 + 64) = v29;
    operator delete(v29);
  }

  v30 = *(v26 + 60);
  if (v30)
  {
    *(v26 + 61) = v30;
    operator delete(v30);
  }

  a26 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v31 = *(v26 + 29);
  *(v26 + 29) = 0;
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  v32 = *(v26 + 27);
  *(v26 + 27) = 0;
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  v33 = *(v26 + 25);
  *(v26 + 25) = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = *(v26 + 24);
  *(v26 + 24) = 0;
  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  v35 = *a25;
  *a25 = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  quasar::Bitmap::~Bitmap(a22);
  quasar::Bitmap::~Bitmap(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v26, off_1F2D0FFA8);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = &unk_1F2D0FD28;
  *(a1 + 168) = &unk_1F2D0FD50;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 776));
  v12 = (a1 + 752);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 728);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 704);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 680);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 656);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 632);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 608);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 584);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 560);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 536);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v5 = *(a1 + 504);
  if (v5)
  {
    *(a1 + 512) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    *(a1 + 488) = v6;
    operator delete(v6);
  }

  v12 = (a1 + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 320);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 296);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 272);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v10 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  quasar::Bitmap::~Bitmap((a1 + 168));
  quasar::Bitmap::~Bitmap((a1 + 160));
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, void *a2, kaldi::UniformRandomNumber *a3)
{
  v5 = *(a1 + *(*a1 - 24) + 12);
  v69 = -1;
  v70 = v5;
  v67 = 0x40000000;
  v68 = -1073741824;
  v65 = -1073741824;
  v66 = 1036831949;
  v64 = 0x40000000;
  kaldi::nnet1::Component::TypeToMarker(2, &v63);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &v62);
  memset(v61, 0, sizeof(v61));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_227;
    }

    kaldi::ReadToken(a2, 0, v61);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      break;
    }

    v9 = v61[1];
    if (v61[1] > 14)
    {
      if (v61[1] > 20)
      {
        if (v61[1] == 21)
        {
          if (*v61[0] != 0x47746567726F463CLL || *(v61[0] + 8) != 0x5273616942657461 || *(v61[0] + 13) != 0x3E65676E61527361)
          {
            goto LABEL_226;
          }

LABEL_126:
          v22 = &v64;
LABEL_213:
          kaldi::ReadBasicType<float>(a2, 0, v22);
          goto LABEL_214;
        }

        if (v61[1] == 25)
        {
LABEL_106:
          v31 = *v61[0] == 0x7463656A6F72503CLL && *(v61[0] + 8) == 0x6E7261654C6E6F69 && *(v61[0] + 16) == 0x66656F4365746152 && *(v61[0] + 24) == 62;
          v22 = (a1 + 468);
          if (v31)
          {
            goto LABEL_213;
          }

          goto LABEL_173;
        }

        goto LABEL_154;
      }

      if (v61[1] != 15)
      {
        if (v61[1] == 20)
        {
          if (*v61[0] != 0x47746567726F463CLL || *(v61[0] + 8) != 0x4D73616942657461 || *(v61[0] + 16) != 1047421285)
          {
            goto LABEL_226;
          }

LABEL_82:
          v22 = &v65;
          goto LABEL_213;
        }

        goto LABEL_154;
      }

      v6 = v61[0];
LABEL_100:
      v26 = *v6;
      v27 = *(v6 + 7);
      v28 = v26 == 0x61526E7261654C3CLL && v27 == 0x3E66656F43657461;
      v22 = (a1 + 464);
      if (v28)
      {
        goto LABEL_213;
      }

      v9 = v61[1];
      if ((v61[2] & 0x8000000000000000) != 0 && v61[1] == 25)
      {
        goto LABEL_106;
      }

      if ((v61[2] & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v61[2]) <= 0xBu)
        {
          goto LABEL_139;
        }

LABEL_137:
        if (HIBYTE(v61[2]) == 12)
        {
LABEL_32:
          if (v61[0] != 0x536D6F646E61523CLL || LODWORD(v61[1]) != 1046766949)
          {
            goto LABEL_226;
          }

LABEL_37:
          v13 = &v69;
LABEL_134:
          kaldi::ReadBasicType<int>(a2, 0, v13);
          goto LABEL_214;
        }

LABEL_200:
        if (HIBYTE(v61[2]) != 18)
        {
          if (HIBYTE(v61[2]) != 19)
          {
            goto LABEL_226;
          }

          v6 = v61;
          goto LABEL_203;
        }

        if (v61[0] != 0x4374757074754F3CLL || v61[1] != 0x65756C61566C6C65 || LOWORD(v61[2]) != 15987)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      goto LABEL_154;
    }

    if (v61[1] != 10)
    {
      if (v61[1] == 11)
      {
        if (*v61[0] != 0x6E6152736169423CLL || *(v61[0] + 3) != 0x3E65676E61527361)
        {
LABEL_226:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v61, "</Component>"))
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v60);
            v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Invalid token ", 14);
            if (v61[2] >= 0)
            {
              v55 = v61;
            }

            else
            {
              v55 = v61[0];
            }

            if (v61[2] >= 0)
            {
              v56 = HIBYTE(v61[2]);
            }

            else
            {
              v56 = v61[1];
            }

            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ". Allowed tokens: ", 18);
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "(NumCells|BiasMean|BiasRange|ForgetGateBiasMean|ForgetGateBiasRange|ParamStddev|LearnRateCoef|ProjectionLearnRateCoef|MaxNorm|", 126);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "MaxGrad|MaxCell|NoPeep|InitTransformType|GradientNormType|RandomSeed)", 69);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v60);
          }

LABEL_227:
          kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(a1, v70);
        }

        goto LABEL_132;
      }

      if (v61[1] == 13)
      {
        if (*v61[0] != 0x74536D617261503CLL || *(v61[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_226;
        }

        goto LABEL_88;
      }

LABEL_154:
      if (v9 == 9)
      {
        v41 = *v61[0] == 0x6D726F4E78614D3CLL && *(v61[0] + 8) == 62;
        v22 = (a1 + 472);
        if (v41)
        {
          goto LABEL_213;
        }

        v42 = *v61[0] == 0x6461724778614D3CLL && *(v61[0] + 8) == 62;
        v22 = (a1 + 152);
        if (v42)
        {
          goto LABEL_213;
        }
      }

      else if (v9 == 18)
      {
        v38 = *v61[0] == 0x6E6569646172473CLL && *(v61[0] + 8) == 0x7079546D726F4E74;
        if (v38 && *(v61[0] + 16) == 15973)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_173;
    }

    if (*v61[0] == 0x6C6C65436D754E3CLL && *(v61[0] + 8) == 15987)
    {
LABEL_133:
      v13 = &v70;
      goto LABEL_134;
    }

    if (*v61[0] == 0x61654D736169423CLL && *(v61[0] + 8) == 15982)
    {
      goto LABEL_98;
    }

LABEL_173:
    if (v61[1] == 9)
    {
      v46 = *v61[0] == 0x6C6C654378614D3CLL && *(v61[0] + 8) == 62;
      v22 = (a1 + 476);
      if (v46)
      {
        goto LABEL_213;
      }

      if ((v61[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_199;
      }
    }

    if (v61[1] == 12)
    {
      if (*v61[0] == 0x536D6F646E61523CLL && *(v61[0] + 8) == 1046766949)
      {
        goto LABEL_37;
      }

      if ((v61[2] & 0x8000000000000000) == 0)
      {
LABEL_199:
        if (HIBYTE(v61[2]) == 8)
        {
          goto LABEL_215;
        }

        goto LABEL_200;
      }
    }

    if (v61[1] == 8)
    {
      if (*v61[0] == 0x3E706565506F4E3CLL)
      {
        goto LABEL_216;
      }

      if ((v61[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }
    }

    if (v61[1] != 18)
    {
      goto LABEL_192;
    }

    if (*v61[0] != 0x4374757074754F3CLL || *(v61[0] + 8) != 0x65756C61566C6C65 || *(v61[0] + 16) != 15987)
    {
      if ((v61[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }

LABEL_192:
      if (v61[1] != 19)
      {
        goto LABEL_226;
      }

      v6 = v61[0];
LABEL_203:
      v47 = *v6;
      v48 = v6[1];
      v49 = *(v6 + 11);
      if (v47 != 0x61725474696E493CLL || v48 != 0x79546D726F66736ELL || v49 != 0x3E657079546D726FLL)
      {
        goto LABEL_226;
      }

      v40 = &v63;
LABEL_212:
      kaldi::ReadToken(a2, 0, v40);
      goto LABEL_214;
    }

LABEL_225:
    *(a1 + 209) = 1;
LABEL_214:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v61[2]) <= 0xCu)
  {
    if (HIBYTE(v61[2]) > 9u)
    {
      if (HIBYTE(v61[2]) == 10)
      {
        if (v61[0] == 0x6C6C65436D754E3CLL && LOWORD(v61[1]) == 15987)
        {
          goto LABEL_133;
        }

        if (v61[0] != 0x61654D736169423CLL || LOWORD(v61[1]) != 15982)
        {
          goto LABEL_226;
        }

LABEL_98:
        v22 = &v68;
        goto LABEL_213;
      }

      if (HIBYTE(v61[2]) != 11)
      {
        goto LABEL_32;
      }

      if (v61[0] != 0x6E6152736169423CLL || *(v61 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

LABEL_132:
      v22 = &v67;
      goto LABEL_213;
    }

LABEL_139:
    if (HIBYTE(v61[2]) != 8)
    {
      if (HIBYTE(v61[2]) != 9)
      {
        goto LABEL_226;
      }

      v35 = v61[0] == 0x6D726F4E78614D3CLL && LOBYTE(v61[1]) == 62;
      v22 = (a1 + 472);
      if (!v35)
      {
        v36 = v61[0] == 0x6461724778614D3CLL && LOBYTE(v61[1]) == 62;
        v22 = (a1 + 152);
        if (!v36)
        {
          v37 = v61[0] == 0x6C6C654378614D3CLL && LOBYTE(v61[1]) == 62;
          v22 = (a1 + 476);
          if (!v37)
          {
            goto LABEL_226;
          }
        }
      }

      goto LABEL_213;
    }

LABEL_215:
    if (v61[0] != 0x3E706565506F4E3CLL)
    {
      goto LABEL_226;
    }

LABEL_216:
    *(a1 + 208) = 0;
    goto LABEL_214;
  }

  v6 = v61;
  if (HIBYTE(v61[2]) > 0x12u)
  {
    if (HIBYTE(v61[2]) == 19)
    {
      goto LABEL_203;
    }

    if (HIBYTE(v61[2]) != 20)
    {
      if (HIBYTE(v61[2]) != 21)
      {
        goto LABEL_226;
      }

      v14 = v61[0] == 0x47746567726F463CLL && v61[1] == 0x5273616942657461;
      if (!v14 || *(&v61[1] + 5) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

      goto LABEL_126;
    }

    if (v61[0] != 0x47746567726F463CLL || v61[1] != 0x4D73616942657461 || LODWORD(v61[2]) != 1047421285)
    {
      goto LABEL_226;
    }

    goto LABEL_82;
  }

  if (HIBYTE(v61[2]) == 13)
  {
    if (v61[0] != 0x74536D617261503CLL || *(v61 + 5) != 0x3E7665646474536DLL)
    {
      goto LABEL_226;
    }

LABEL_88:
    v22 = &v66;
    goto LABEL_213;
  }

  if (HIBYTE(v61[2]) != 15)
  {
    if (HIBYTE(v61[2]) != 18)
    {
      goto LABEL_226;
    }

    if (v61[0] == 0x6E6569646172473CLL && v61[1] == 0x7079546D726F4E74 && LOWORD(v61[2]) == 15973)
    {
LABEL_164:
      v40 = &v62;
      goto LABEL_212;
    }

    goto LABEL_137;
  }

  goto LABEL_100;
}

void sub_1B53BD0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  if (*(v5 - 185) < 0)
  {
    operator delete(*(v5 - 208));
  }

  if (*(v5 - 161) < 0)
  {
    operator delete(*(v5 - 184));
  }

  if (*(v5 - 137) < 0)
  {
    operator delete(*(v5 - 160));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(uint64_t *a1, uint64_t a2)
{
  *(a1 + 44) = a2;
  if (*(a1 + *(*a1 - 24) + 12) > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "# LSTM cells (", 14);
    v5 = MEMORY[0x1B8C84C00](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") should not be less than output dim (", 38);
    v7 = MEMORY[0x1B8C84C00](v6, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
  }

  else
  {
    if (!a1[23])
    {
      operator new();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "input_weights_ thought to be un-initialized here");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

uint64_t kaldi::nnet1::RandMatrix<kaldi::CuMatrixBase<float>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, uint64_t a4, float a5)
{
  kaldi::Matrix<float>::Matrix(v15, *(a4 + 20), *(a4 + 16), 0, 0);
  v10 = 0;
LABEL_2:
  if (v10 < kaldi::MatrixBase<float>::NumRows(v15))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::MatrixBase<float>::NumCols(v15))
      {
        ++v10;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0);
          v12 = v13 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v12 = (kaldi::UniformRandomNumber::RandUniform(a1, 0) + -0.5) * (a5 + a5);
        }
      }

      else if (v10 == i)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      *(*v15 + 4 * v10 * v16 + 4 * i) = v12;
    }
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(a4, v15, 111);
  return kaldi::Matrix<float>::~Matrix(v15);
}

void sub_1B53BD7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(uint64_t a1)
{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(uint64_t a1)
{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_113:
    v36 = *(a1 + 176);
    v37 = *(a1 + *(*a1 - 24) + 12);
    if (v36 < v37)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# LSTM cells (", 14);
      v42 = MEMORY[0x1B8C84C00](v41, *(a1 + 176));
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ") should not be less than output dim (", 38);
      v44 = MEMORY[0x1B8C84C00](v43, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, ").");
    }

    else
    {
      *(a1 + 224) = v36 > v37;
      if (!*(a1 + 184))
      {
        operator new();
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_weights_ thougth to be un-initialized here");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    kaldi::ReadToken(a2, v4, &v47);
    if (SHIBYTE(v49) < 0)
    {
      if (v48 != 10 || (*v47 == 0x6C6C65436D754E3CLL ? (v8 = *(v47 + 4) == 15987) : (v8 = 0), !v8))
      {
        if (v48 != 15)
        {
          v13 = v48;
          if (v48 == 25)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

        v7 = v47;
LABEL_13:
        v9 = *v7;
        v10 = *(v7 + 7);
        v11 = v9 == 0x61526E7261654C3CLL && v10 == 0x3E66656F43657461;
        v12 = (a1 + 464);
        if (v11)
        {
          goto LABEL_109;
        }

        v13 = v48;
        if (v49 < 0 && v48 == 25)
        {
LABEL_33:
          v18 = *v47 == 0x7463656A6F72503CLL && v47[1] == 0x6E7261654C6E6F69 && v47[2] == 0x66656F4365746152 && *(v47 + 24) == 62;
          v12 = (a1 + 468);
          if (!v18)
          {
LABEL_116:
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
            if (v49 >= 0)
            {
              v39 = &v47;
            }

            else
            {
              v39 = v47;
            }

            if (v49 >= 0)
            {
              v40 = HIBYTE(v49);
            }

            else
            {
              v40 = v48;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_109;
        }

        if (v49 < 0)
        {
LABEL_44:
          if (v13 == 9)
          {
            v19 = *v47 == 0x6D726F4E78614D3CLL && *(v47 + 8) == 62;
            v12 = (a1 + 472);
            if (v19)
            {
              goto LABEL_109;
            }

            if (v49 < 0)
            {
              v32 = *v47 == 0x6C6C654378614D3CLL && *(v47 + 8) == 62;
              v12 = (a1 + 476);
              if (!v32)
              {
                v30 = v47;
                goto LABEL_104;
              }

LABEL_109:
              kaldi::ReadBasicType<float>(a2, v4, v12);
              goto LABEL_110;
            }

            goto LABEL_50;
          }

          if (v13 == 8)
          {
            v31 = *v47;
            goto LABEL_97;
          }

          if (v13 != 18)
          {
            goto LABEL_116;
          }

          if (*v47 != 0x4374757074754F3CLL || v47[1] != 0x65756C61566C6C65 || *(v47 + 8) != 15987)
          {
            if (*v47 == 0x6E6569646172473CLL && v47[1] == 0x7079546D726F4E74 && *(v47 + 8) == 15973)
            {
              goto LABEL_73;
            }

            if (HIBYTE(v49) != 9)
            {
              goto LABEL_116;
            }

LABEL_93:
            v30 = &v47;
LABEL_104:
            v33 = *v30;
            v34 = *(v30 + 8);
            v35 = v33 == 0x6461724778614D3CLL && v34 == 62;
            v12 = (a1 + 152);
            if (!v35)
            {
              goto LABEL_116;
            }

            goto LABEL_109;
          }

LABEL_95:
          *(a1 + 209) = 1;
          goto LABEL_110;
        }

LABEL_25:
        if (HIBYTE(v49) == 9)
        {
          v15 = v47 == 0x6D726F4E78614D3CLL && v48 == 62;
          v12 = (a1 + 472);
          if (v15)
          {
            goto LABEL_109;
          }

LABEL_53:
          v20 = v47 == 0x6C6C654378614D3CLL && v48 == 62;
          v12 = (a1 + 476);
          if (v20)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_50:
        if (HIBYTE(v49) == 8)
        {
          v31 = v47;
LABEL_97:
          if (v31 != 0x3E706565506F4E3CLL)
          {
            goto LABEL_116;
          }

          *(a1 + 208) = 0;
          goto LABEL_110;
        }

        if (HIBYTE(v49) != 18)
        {
          if (HIBYTE(v49) != 9)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }

        if (v47 != 0x4374757074754F3CLL || v48 != 0x65756C61566C6C65 || v49 != 15987)
        {
          if (v47 != 0x6E6569646172473CLL || v48 != 0x7079546D726F4E74 || v49 != 15973)
          {
            goto LABEL_116;
          }

LABEL_73:
          __p[0] = 0;
          __p[1] = 0;
          v46 = 0;
          kaldi::ReadToken(a2, v4, __p);
          kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          *(a1 + 156) = v25;
          if (SHIBYTE(v46) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_110;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (HIBYTE(v49) != 10)
      {
        if (HIBYTE(v49) == 15)
        {
          v7 = &v47;
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      if (v47 != 0x6C6C65436D754E3CLL || v48 != 15987)
      {
        goto LABEL_25;
      }
    }

    kaldi::ReadBasicType<int>(a2, v4, a1 + 176);
LABEL_110:
    if (SHIBYTE(v49) < 0)
    {
      operator delete(v47);
    }

    if (kaldi::Peek(a2, v4) != 60)
    {
      goto LABEL_113;
    }
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<NumCells>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 176));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 464));
  kaldi::WriteToken(a2, a3, "<ProjectionLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 468));
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 472));
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  kaldi::WriteBasicType<float>(a2, a3, *(a1 + 152));
  kaldi::WriteToken(a2, a3, "<MaxCell>");
  result = kaldi::WriteBasicType<float>(a2, a3, *(a1 + 476));
  if ((*(a1 + 208) & 1) == 0)
  {
    result = kaldi::WriteToken(a2, a3, "<NoPeep>");
  }

  if (*(a1 + 209) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<OutputCellValues>");
  }

  return result;
}

void sub_1B53BE650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3);
  if (a1[224] == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);

    kaldi::CuMatrixBase<float>::Write(v12, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::NumParams(uint64_t a1)
{
  v2 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v3 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v2;
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v5 = v3 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v4;
  v6 = (v5 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v6 = (v6 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v7);
  }

  if (*(a1 + 224) == 1)
  {
    v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    return (v6 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v8);
  }

  return v6;
}

const void **kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetParams(_BYTE *a1, char **a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v6 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v5;
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v7;
  v24 = 0;
  v25 = 0;
  v23 = *a2;
  LODWORD(v24) = v6;
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v9);
  v24 = 0;
  v25 = 0;
  v10 = v8 + v6;
  v23 = &(*a2)[4 * v6];
  LODWORD(v24) = v8;
  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v11);
  if (a1[208] == 1)
  {
    v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v13 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v12;
    v24 = 0;
    v25 = 0;
    v14 = v13 + v10;
    v23 = &(*a2)[4 * v10];
    LODWORD(v24) = v13;
    v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v15);
    v10 = v14;
  }

  v16 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v24 = 0;
  v25 = 0;
  v23 = &(*a2)[4 * v10];
  LODWORD(v24) = v16;
  v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  result = kaldi::CuVectorBase<float>::CopyToVec<float>(v17, &v23);
  if (a1[224] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v10;
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v20;
    v24 = 0;
    v25 = 0;
    v23 = &(*a2)[4 * v19];
    LODWORD(v24) = v21;
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    return kaldi::VectorBase<float>::CopyRowsFromMat(&v23, v22);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetParams(_BYTE *a1, char **a2)
{
  (*(*a1 + 208))(a1);
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v5 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v4;
  v6 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v6;
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v21 = 0;
  v22 = 0;
  v20 = *a2;
  LODWORD(v21) = v5;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v8, &v20);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v21 = 0;
  v22 = 0;
  v10 = v7 + v5;
  v20 = &(*a2)[4 * v5];
  LODWORD(v21) = v7;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v9, &v20);
  if (a1[208] == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v11;
    v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v21 = 0;
    v22 = 0;
    v20 = &(*a2)[4 * v10];
    LODWORD(v21) = v12;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v13, &v20);
    v10 += v12;
  }

  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v15 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v21 = 0;
  v22 = 0;
  v20 = &(*a2)[4 * v10];
  LODWORD(v21) = v15;
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v14, &v20);
  if (a1[224] == 1)
  {
    v16 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v10;
    v17 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v18 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v17;
    v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v21 = 0;
    v22 = 0;
    v20 = &(*a2)[4 * v16];
    LODWORD(v21) = v18;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v19, &v20);
  }
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v3 = kaldi::CuMatrixBase<float>::Sum(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v5 = v3 + kaldi::CuMatrixBase<float>::Sum(v4);
  if (*(a1 + 208) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v5 = v5 + kaldi::CuMatrixBase<float>::Sum(v6);
  }

  if (*(a1 + 224) == 1)
  {
    v7 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v5 = v5 + kaldi::CuMatrixBase<float>::Sum(v7);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v9 = kaldi::CuVectorBase<float>::Sum(v8);
  return v5 + *&v9;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2)
{
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v5 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrix<float>::CuMatrix(v20, v4, *(v5 + 16), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v20);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v6, v20, 111, a2, 1.0);
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrix<float>::Resize(v20, v7, *(v8 + 16), 1, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v20);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v9, v20, 111, a2, 1.0);
  if (*(a1 + 208) == 1)
  {
    v10 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrix<float>::Resize(v20, v10, *(v11 + 16), 1, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v20);
    v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v12, v20, 111, a2, 1.0);
  }

  v13 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  memset(&v19[1], 0, 24);
  v19[0] = &unk_1F2D3AC18;
  kaldi::CuVector<float>::Resize(v19, v13, 1);
  kaldi::CuVectorBase<float>::SetRandn(v19);
  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::AddVec(v14, v19, a2, 1.0);
  if (*(a1 + 224) == 1)
  {
    v15 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrix<float>::Resize(v20, v15, *(v16 + 16), 1, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v20);
    v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v17, v20, 111, a2, 1.0);
  }

  kaldi::CuVector<float>::~CuVector(v19);
  return kaldi::CuMatrix<float>::~CuMatrix(v20);
}

void sub_1B53BF100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 336))(v9, a2, a3, 0, 0);
  v10 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 0);
  v11 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v11;
  v13 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v14 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16);
  v34 = 0;
  v35 = 0;
  v33 = *a4;
  LODWORD(v34) = v12;
  v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(v9, 0);
  kaldi::Matrix<float>::Matrix<float>(&v30, v15, 111);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v33, &v30);
  v16 = v14 * v13;
  kaldi::Matrix<float>::~Matrix(&v30);
  v31 = 0;
  v32 = 0;
  v17 = v16 + v12;
  v30 = &(*a4)[4 * v12];
  LODWORD(v31) = v16;
  v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(v9, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v30, v18);
  if (a1[208] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v19;
    v31 = 0;
    v32 = 0;
    v21 = v20 + v17;
    v30 = &(*a4)[4 * v17];
    LODWORD(v31) = v20;
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v30, v22);
    v17 = v21;
  }

  v23 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v31 = 0;
  v32 = 0;
  v30 = &(*a4)[4 * v17];
  LODWORD(v31) = v23;
  v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(v9, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v24, &v30);
  if (a1[224] == 1)
  {
    v25 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v17;
    v26 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v27 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v26;
    v31 = 0;
    v32 = 0;
    v30 = &(*a4)[4 * v25];
    LODWORD(v31) = v27;
    v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v30, v28);
  }

  return (*(*v9 + 8))(v9);
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v45);
  (*(*a1 + 192))(a1, &v45, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "\n Input weights:", 16);
  v4 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<float>(v4);
  if ((v44 & 0x80u) == 0)
  {
    v5 = v43;
  }

  else
  {
    v5 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v6 = v44;
  }

  else
  {
    v6 = v43[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n Recurrent weights:", 20);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<float>(v9);
  if ((v42 & 0x80u) == 0)
  {
    v10 = v41;
  }

  else
  {
    v10 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v11 = v42;
  }

  else
  {
    v11 = v41[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n Bias:", 7);
  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v14);
  if ((v40 & 0x80u) == 0)
  {
    v15 = v39;
  }

  else
  {
    v15 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v16 = v40;
  }

  else
  {
    v16 = v39[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n Forget gate bias:", 19);
  v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v20 = *(a1 + 176);
  v35 = 0;
  v21 = *(v19 + 8) + 4 * v20;
  v33 = &unk_1F2CFCA48;
  v34 = v21;
  LODWORD(v35) = v20;
  v36 = *(v19 + 24);
  kaldi::nnet1::MomentStatistics<float>(&v33);
  if ((v38 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v23 = v38;
  }

  else
  {
    v23 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v22, v23);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "\n Peephole weights:", 19);
    v25 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v25);
    v26 = v35 >= 0 ? &v33 : v33;
    v27 = v35 >= 0 ? HIBYTE(v35) : v34;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v33);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "\n Projection weights:", 21);
    v29 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v29);
    v30 = v35 >= 0 ? &v33 : v33;
    v31 = v35 >= 0 ? HIBYTE(v35) : v34;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v33);
    }
  }

  std::stringbuf::str();
  v45 = *MEMORY[0x1E69E54E8];
  *(&v45 + *(v45 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v46 = MEMORY[0x1E69E5548] + 16;
  if (v48 < 0)
  {
    operator delete(v47[7].__locale_);
  }

  v46 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v47);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v49);
}

void sub_1B53BFC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v101, 0, sizeof(v101));
    v100 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v88, "\n For batch ");
        kaldi::quasar::to_string<int>(&v100);
        if ((v87 & 0x80u) == 0)
        {
          v3 = v86;
        }

        else
        {
          v3 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v4 = v87;
        }

        else
        {
          v4 = v86[1];
        }

        v5 = std::string::append(&v88, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v84, ": ");
        if ((v85 & 0x80u) == 0)
        {
          v7 = v84;
        }

        else
        {
          v7 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v8 = v85;
        }

        else
        {
          v8 = v84[1];
        }

        v9 = std::string::append(&v89, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v82, "\n  Number of cells : ");
        if ((v83 & 0x80u) == 0)
        {
          v11 = v82;
        }

        else
        {
          v11 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v12 = v83;
        }

        else
        {
          v12 = v82[1];
        }

        v13 = std::string::append(&v90, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::quasar::to_string<int>((a1 + 176));
        if ((v81 & 0x80u) == 0)
        {
          v15 = v80;
        }

        else
        {
          v15 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v16 = v81;
        }

        else
        {
          v16 = v80[1];
        }

        v17 = std::string::append(&v91, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v92.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v92.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v78, "\n  Input weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v19 = v78;
        }

        else
        {
          v19 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v20 = v79;
        }

        else
        {
          v20 = v78[1];
        }

        v21 = std::string::append(&v92, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v77 & 0x80u) == 0)
        {
          v24 = v76;
        }

        else
        {
          v24 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v25 = v77;
        }

        else
        {
          v25 = v76[1];
        }

        v26 = std::string::append(&v93, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v74, "\n  Recurrent weights gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v28 = v74;
        }

        else
        {
          v28 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v29 = v75;
        }

        else
        {
          v29 = v74[1];
        }

        v30 = std::string::append(&v94, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v73 & 0x80u) == 0)
        {
          v33 = v72;
        }

        else
        {
          v33 = v72[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v34 = v73;
        }

        else
        {
          v34 = v72[1];
        }

        v35 = std::string::append(&v95, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(v70, "\n  Bias gradient: ");
        if ((v71 & 0x80u) == 0)
        {
          v37 = v70;
        }

        else
        {
          v37 = v70[0];
        }

        if ((v71 & 0x80u) == 0)
        {
          v38 = v71;
        }

        else
        {
          v38 = v70[1];
        }

        v39 = std::string::append(&v96, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v100);
        kaldi::nnet1::MomentStatistics<float>(v41);
        if ((v69 & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = __p[0];
        }

        if ((v69 & 0x80u) == 0)
        {
          v43 = v69;
        }

        else
        {
          v43 = __p[1];
        }

        v44 = std::string::append(&v97, v42, v43);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v99 = v44->__r_.__value_.__r.__words[2];
        v98 = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (v99 >= 0)
        {
          v46 = &v98;
        }

        else
        {
          v46 = v98;
        }

        if (v99 >= 0)
        {
          v47 = HIBYTE(v99);
        }

        else
        {
          v47 = *(&v98 + 1);
        }

        std::string::append(&v101, v46, v47);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(v98);
        }

        if (v69 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Peephole weights gradient: ");
          v48 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v48);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v96;
          }

          else
          {
            v49 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v96.__r_.__value_.__l.__size_;
          }

          v51 = std::string::append(&v97, v49, size);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v99 = v51->__r_.__value_.__r.__words[2];
          v98 = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v53 = &v98;
          }

          else
          {
            v53 = v98;
          }

          if (v99 >= 0)
          {
            v54 = HIBYTE(v99);
          }

          else
          {
            v54 = *(&v98 + 1);
          }

          std::string::append(&v101, v53, v54);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v97, "\n  Projection weights gradient: ");
          v55 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v100);
          kaldi::nnet1::MomentStatistics<float>(v55);
          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v96;
          }

          else
          {
            v56 = v96.__r_.__value_.__r.__words[0];
          }

          if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v96.__r_.__value_.__l.__size_;
          }

          v58 = std::string::append(&v97, v56, v57);
          v59 = *&v58->__r_.__value_.__l.__data_;
          v99 = v58->__r_.__value_.__r.__words[2];
          v98 = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          if (v99 >= 0)
          {
            v60 = &v98;
          }

          else
          {
            v60 = v98;
          }

          if (v99 >= 0)
          {
            v61 = HIBYTE(v99);
          }

          else
          {
            v61 = *(&v98 + 1);
          }

          std::string::append(&v101, v60, v61);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(v98);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        ++v100;
      }

      while (v100 < *(a1 + 80));
    }

    v62 = std::string::basic_string[abi:ne200100]<0>(&v98, "\n");
    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v101;
    }

    else
    {
      v63 = v101.__r_.__value_.__r.__words[0];
    }

    if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v101.__r_.__value_.__l.__size_;
    }

    v65 = std::string::insert(v62, 0, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    a2[2] = *(&v65->__r_.__value_.__l + 2);
    *a2 = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  Gradients are uninitialized");
  }
}

void sub_1B53C0400(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v76, "\n For batch ");
      kaldi::quasar::to_string<int>(&v88);
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = std::string::basic_string[abi:ne200100]<0>(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_1B53C0CE4(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v64, "\n For batch ");
      kaldi::quasar::to_string<int>(&v74);
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = std::string::basic_string[abi:ne200100]<0>(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_1B53C14D8(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 20);
  v9 = *(a1 + 96);
  v128 = (v8 / v9);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v159, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1B8C84C00](v10, v8);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1B8C84C00](v12, v128);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1B8C84C00](v14, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v159);
  }

  v16 = *(a3 + 32);
  (*(*v7 + 88))(v7);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(v7, a4, v8, v16);
  v17 = *(v7 + 104);
  if (*(v7 + 112) == v17 || *(v17 + 32 * a4 + 16) < 1)
  {
    v123 = 0;
  }

  else
  {
    v18 = (*(v7 + 128) + 48 * a4);
    v18[4] = v16;
    v123 = 1;
    kaldi::CuMatrix<float>::Resize(v18, v9, *(*(v7 + 8) + 48 * a4 + 16), 1, 0);
  }

  v19 = *(v7 + 248) + 48 * a4;
  v129 = *(v7 + 344) + 48 * a4;
  v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(v7);
  kaldi::CuMatrixBase<float>::AddMatMat(v19, a2, 111, v20, 112);
  v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(v7);
  v22.n128_u32[0] = 1.0;
  kaldi::CuMatrixBase<float>::AddVecToRows(v19, v21, v22, 1.0);
  if (v128 >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v124 = v7 + 12;
    v126 = 4 * v9;
    v127 = v9;
    v122 = -v9;
    v131 = v9;
    v125 = v7;
    do
    {
      v26 = *(v19 + 24);
      v27 = *(v19 + 8) + 4 * (v26 * v23);
      v28 = *(v19 + 28) - v26 * v23;
      v29 = *(v19 + 32);
      DWORD2(v160) = *(v7 + 176);
      HIDWORD(v160) = v9;
      *&v161 = __PAIR64__(v28, v26);
      *(&v161 + 1) = v29;
      *&v160 = v27;
      v159.__locale_ = &unk_1F2CFA908;
      v30 = *(v19 + 8) + 4 * (v26 * v23) + 4 * DWORD2(v160);
      v31 = *(v19 + 28) - DWORD2(v160) - v26 * v23;
      *(&v157 + 1) = __PAIR64__(v9, DWORD2(v160));
      *&v158 = __PAIR64__(v31, v26);
      *(&v158 + 1) = v29;
      v156 = &unk_1F2CFA908;
      *&v157 = v30;
      v32 = *(v19 + 24);
      v33 = *(v19 + 8) + 4 * (v32 * v23) + 12 * DWORD2(v160);
      LODWORD(v30) = *(v19 + 28) - 3 * DWORD2(v160) - v32 * v23;
      v34 = *(v19 + 32);
      *(&v154 + 1) = __PAIR64__(v9, DWORD2(v160));
      *&v155 = __PAIR64__(v30, v32);
      *(&v155 + 1) = v34;
      v153 = &unk_1F2CFA908;
      *&v154 = v33;
      v35 = *(v7 + 272) + 48 * a4;
      LODWORD(v33) = *(v35 + 16);
      LODWORD(v34) = *(v35 + 24);
      v36 = *(v35 + 8) + 4 * v34 * v23;
      LODWORD(v29) = *(v35 + 28) - v34 * v23;
      v37 = *(v35 + 32);
      *(&v151 + 1) = __PAIR64__(v9, v33);
      *&v152 = __PAIR64__(v29, v34);
      *(&v152 + 1) = v37;
      v150 = &unk_1F2CFA908;
      *&v151 = v36;
      v149 = 0u;
      v148 = 0u;
      v147 = &unk_1F2CFA908;
      v146 = 0u;
      v145 = 0u;
      v144 = &unk_1F2CFA908;
      v130 = v25;
      if (v25)
      {
        if (v123)
        {
          v38 = a4;
          kaldi::CuMatrixBase<float>::SetZero(*(v7 + 128) + 48 * a4);
          v39 = *(v7 + 128) + 48 * a4;
          v40 = *(v39 + 8);
          v41 = *(v39 + 20);
          v42 = *(v39 + 24);
          v43 = *(v39 + 28);
          v44 = *(v39 + 32);
          DWORD2(v142) = *(v7 + 176);
          *&v145 = v40;
          *(&v145 + 1) = __PAIR64__(v41, DWORD2(v142));
          *&v146 = __PAIR64__(v43, v42);
          *(&v146 + 1) = v44;
          v141 = &unk_1F2CFA908;
          v143 = 0u;
          v142 = 0u;
          quasar::Bitmap::~Bitmap(&v141);
          v45 = *(v7 + 272) + 48 * a4;
          v46 = *(v45 + 16);
          v47 = *(v45 + 24);
          v48 = *(v45 + 8) + 4 * (v47 * (v122 + v23));
          v49 = *(v45 + 28) - v47 * (v122 + v23);
          v50 = *(v45 + 32);
          *(&v142 + 1) = __PAIR64__(v9, v46);
          *&v143 = __PAIR64__(v49, v47);
          *(&v143 + 1) = v50;
          v141 = &unk_1F2CFA908;
          *&v142 = v48;
          v51 = *(v7 + 104) + 32 * a4;
          *(&v139 + 1) = 0;
          v138 = &unk_1F2CFCA48;
          *&v139 = *(v51 + 8) + v24;
          DWORD2(v139) = v9;
          *&v140 = *(v51 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v144, &v141, &v138, 1);
          v141 = &unk_1F2CFA908;
          v142 = 0u;
          v143 = 0u;
          quasar::Bitmap::~Bitmap(&v141);
          v52 = *(v7 + 128) + 48 * a4;
          v53 = *(v7 + 176);
          v54 = *(v52 + 20);
          v55 = *(v52 + 24);
          v56 = *(v52 + 8) + 4 * v53;
          LODWORD(v53) = *(v52 + 28) - v53;
          v57 = *(v52 + 32);
          DWORD2(v142) = *(v124 + *(*v7 - 24));
          *&v148 = v56;
          *(&v148 + 1) = __PAIR64__(v54, DWORD2(v142));
          *&v149 = __PAIR64__(v53, v55);
          *(&v149 + 1) = v57;
          v141 = &unk_1F2CFA908;
          v143 = 0u;
          v142 = 0u;
          quasar::Bitmap::~Bitmap(&v141);
          v58 = *(v129 + 24);
          v59 = *(v129 + 8) + 4 * (v58 * (v122 + v23));
          v60 = *(v129 + 28) - v58 * (v122 + v23);
          v61 = *(v129 + 32);
          DWORD2(v142) = *(v129 + 16);
          HIDWORD(v142) = v9;
          *&v143 = __PAIR64__(v60, v58);
          *(&v143 + 1) = v61;
          v141 = &unk_1F2CFA908;
          *&v142 = v59;
          v62 = *(v7 + 104) + 32 * a4;
          *(&v139 + 1) = 0;
          v138 = &unk_1F2CFCA48;
          *&v139 = *(v62 + 8) + v24;
          DWORD2(v139) = v9;
          *&v140 = *(v62 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v147, &v141, &v138, 1);
          v141 = &unk_1F2CFA908;
          v142 = 0u;
          v143 = 0u;
          quasar::Bitmap::~Bitmap(&v141);
          LODWORD(v9) = v131;
        }

        else
        {
          v75 = *(v129 + 16);
          v76 = *(v129 + 24);
          v77 = *(v129 + 28) - v76 * (v122 + v23);
          v78 = *(v129 + 32);
          *&v148 = *(v129 + 8) + 4 * (v76 * (v122 + v23));
          *(&v148 + 1) = __PAIR64__(v9, v75);
          *&v149 = __PAIR64__(v77, v76);
          *(&v149 + 1) = v78;
          v141 = &unk_1F2CFA908;
          v142 = 0uLL;
          v143 = 0uLL;
          quasar::Bitmap::~Bitmap(&v141);
          v38 = a4;
          v79 = *(v7 + 272) + 48 * a4;
          v80 = *(v79 + 16);
          v81 = *(v79 + 24);
          v82 = *(v79 + 8) + 4 * (v81 * (v122 + v23));
          v83 = *(v79 + 28) - v81 * (v122 + v23);
          v84 = *(v79 + 32);
          *&v145 = v82;
          *(&v145 + 1) = __PAIR64__(v9, v80);
          *&v146 = __PAIR64__(v83, v81);
          *(&v146 + 1) = v84;
          v141 = &unk_1F2CFA908;
          v143 = 0u;
          v142 = 0u;
          quasar::Bitmap::~Bitmap(&v141);
        }
      }

      else
      {
        v63 = *(v7 + 8) + 48 * a4;
        v64 = *(v63 + 20);
        v65 = *(v63 + 24);
        v66 = *(v63 + 8) + 4 * DWORD2(v160);
        v67 = *(v63 + 28) - DWORD2(v160);
        v68 = *(v63 + 32);
        DWORD2(v142) = *(v124 + *(*v7 - 24));
        *&v148 = v66;
        *(&v148 + 1) = __PAIR64__(v64, DWORD2(v142));
        *&v149 = __PAIR64__(v67, v65);
        *(&v149 + 1) = v68;
        v141 = &unk_1F2CFA908;
        v143 = 0uLL;
        v142 = 0uLL;
        quasar::Bitmap::~Bitmap(&v141);
        v69 = *(v7 + 8) + 48 * a4;
        v70 = *(v69 + 8);
        v71 = *(v69 + 20);
        v72 = *(v69 + 24);
        v73 = *(v69 + 28);
        v74 = *(v69 + 32);
        DWORD2(v142) = *(v7 + 176);
        *&v145 = v70;
        *(&v145 + 1) = __PAIR64__(v71, DWORD2(v142));
        *&v146 = __PAIR64__(v73, v72);
        *(&v146 + 1) = v74;
        v141 = &unk_1F2CFA908;
        v143 = 0u;
        v142 = 0u;
        quasar::Bitmap::~Bitmap(&v141);
        v38 = a4;
      }

      v85 = *(v19 + 24);
      v86 = *(v19 + 8) + 4 * (v85 * v23);
      v87 = *(v19 + 28) - v85 * v23;
      v88 = *(v19 + 32);
      DWORD2(v142) = *(v19 + 16);
      HIDWORD(v142) = v9;
      *&v143 = __PAIR64__(v87, v85);
      *(&v143 + 1) = v88;
      v141 = &unk_1F2CFA908;
      *&v142 = v86;
      v89 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(v7);
      kaldi::CuMatrixBase<float>::AddMatMat(&v141, &v147, 111, v89, 112);
      v141 = &unk_1F2CFA908;
      v142 = 0u;
      v143 = 0u;
      quasar::Bitmap::~Bitmap(&v141);
      if (*(v7 + 208) == 1)
      {
        v90 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v7);
        v91 = *(v90 + 16);
        v92 = *(v90 + 32);
        *&v142 = *(v90 + 8);
        v141 = &unk_1F2CFCA48;
        *(&v142 + 1) = v91;
        *&v143 = v92;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v144, 111, &v141, 1.0, 1.0);
        v93 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v7);
        v94 = *(v93 + 16);
        v95 = *(v93 + 32);
        *&v142 = *(v93 + 8) + 4 * *(v93 + 24);
        v141 = &unk_1F2CFCA48;
        *(&v142 + 1) = v94;
        *&v143 = v95;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v156, &v144, 111, &v141, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v159, &v159);
      kaldi::CuMatrixBase<float>::Sigmoid(&v156, &v156);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v153);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v150, &v159, 111, &v153, 111, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v150, &v156, 111, &v144, 111, 1.0, 1.0);
      v96 = *(v7 + 476);
      if (v96 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v150, v96);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v150, -*(v7 + 476));
      }

      v97 = *(v7 + 176);
      v98 = *(v19 + 24);
      v99 = *(v19 + 8) + 4 * (v98 * v23) + 8 * v97;
      v100 = *(v19 + 28) - (v98 * v23 + 2 * v97);
      v101 = *(v19 + 32);
      DWORD2(v142) = *(v7 + 176);
      HIDWORD(v142) = v9;
      *&v143 = __PAIR64__(v100, v98);
      *(&v143 + 1) = v101;
      v141 = &unk_1F2CFA908;
      *&v142 = v99;
      if (*(v7 + 208) == 1)
      {
        v102 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v7);
        v103 = *(v102 + 16);
        v104 = *(v102 + 32);
        *&v139 = *(v102 + 8) + 8 * *(v102 + 24);
        v138 = &unk_1F2CFCA48;
        *(&v139 + 1) = v103;
        *&v140 = v104;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v141, &v150, 111, &v138, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v141, &v141);
      v105 = *(v7 + 296) + 48 * v38;
      v106 = *(v105 + 16);
      v107 = *(v105 + 24);
      v108 = *(v105 + 8) + 4 * (v107 * v23);
      v109 = *(v105 + 28) - v107 * v23;
      v110 = *(v105 + 32);
      *(&v139 + 1) = __PAIR64__(v131, v106);
      *&v140 = __PAIR64__(v109, v107);
      *(&v140 + 1) = v110;
      v138 = &unk_1F2CFA908;
      *&v139 = v108;
      kaldi::CuMatrixBase<float>::Tanh(&v138, &v150);
      v111 = *(v7 + 320) + 48 * v38;
      v112 = *(v111 + 16);
      v113 = *(v111 + 24);
      v114 = *(v111 + 8) + 4 * (v113 * v23);
      v115 = *(v111 + 28) - v113 * v23;
      v116 = *(v111 + 32);
      *(&v136 + 1) = __PAIR64__(v131, v112);
      *&v137 = __PAIR64__(v115, v113);
      *(&v137 + 1) = v116;
      v135 = &unk_1F2CFA908;
      *&v136 = v114;
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v135, &v141, 111, &v138, 111, 1.0, 0.0);
      v117 = *(v129 + 24);
      v118 = *(v129 + 8) + 4 * (v117 * v23);
      v119 = *(v129 + 28) - v117 * v23;
      v120 = *(v129 + 32);
      if (*(v7 + 224) == 1)
      {
        DWORD2(v133) = *(v129 + 16);
        HIDWORD(v133) = v131;
        *&v134 = __PAIR64__(v119, v117);
        *(&v134 + 1) = v120;
        v132 = &unk_1F2CFA908;
        *&v133 = v118;
        v121 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(v7);
        kaldi::CuMatrixBase<float>::AddMatMat(&v132, &v135, 111, v121, 112);
      }

      else
      {
        DWORD2(v133) = *(v129 + 16);
        HIDWORD(v133) = v131;
        *&v134 = __PAIR64__(v119, v117);
        *(&v134 + 1) = v120;
        v132 = &unk_1F2CFA908;
        *&v133 = v118;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v132, &v135, 111);
      }

      v132 = &unk_1F2CFA908;
      v133 = 0u;
      v134 = 0u;
      quasar::Bitmap::~Bitmap(&v132);
      v135 = &unk_1F2CFA908;
      v136 = 0u;
      v137 = 0u;
      quasar::Bitmap::~Bitmap(&v135);
      v138 = &unk_1F2CFA908;
      v139 = 0u;
      v140 = 0u;
      quasar::Bitmap::~Bitmap(&v138);
      v141 = &unk_1F2CFA908;
      v142 = 0u;
      v143 = 0u;
      quasar::Bitmap::~Bitmap(&v141);
      v144 = &unk_1F2CFA908;
      v145 = 0u;
      v146 = 0u;
      quasar::Bitmap::~Bitmap(&v144);
      v147 = &unk_1F2CFA908;
      v148 = 0u;
      v149 = 0u;
      quasar::Bitmap::~Bitmap(&v147);
      v150 = &unk_1F2CFA908;
      v151 = 0u;
      v152 = 0u;
      quasar::Bitmap::~Bitmap(&v150);
      v153 = &unk_1F2CFA908;
      v154 = 0u;
      v155 = 0u;
      quasar::Bitmap::~Bitmap(&v153);
      v156 = &unk_1F2CFA908;
      v157 = 0u;
      v158 = 0u;
      quasar::Bitmap::~Bitmap(&v156);
      v159.__locale_ = &unk_1F2CFA908;
      v160 = 0u;
      v161 = 0u;
      quasar::Bitmap::~Bitmap(&v159);
      v25 = v130 + 1;
      v24 += v126;
      v23 += v127;
      LODWORD(v9) = v131;
      v7 = v125;
    }

    while (v128 != v130 + 1);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v129, 111);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(v7, a4);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating forward buffers for batch ", 37);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 248) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 272) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 296) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 320) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 344) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * a2 + 32) = a4;
  *(*(a1 + 272) + 48 * a2 + 32) = a4;
  *(*(a1 + 296) + 48 * a2 + 32) = a4;
  *(*(a1 + 320) + 48 * a2 + 32) = a4;
  *(*(a1 + 344) + 48 * a2 + 32) = a4;
}

void sub_1B53C29A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(uint64_t a1, uint64_t a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v27, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Saving last output and cell state for batch ", 44);
    MEMORY[0x1B8C84C00](v4, a2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v27);
  }

  v5 = *(a1 + 272) + 48 * a2;
  v6 = *(a1 + 96);
  v7 = *(v5 + 20) - v6;
  v8 = *(a1 + 8) + 48 * a2;
  v9 = *(a1 + 176);
  v10 = *(v8 + 28);
  v11 = *(v8 + 32);
  v28[0] = *(v8 + 8);
  LODWORD(v28[1]) = v9;
  *(&v28[1] + 4) = *(v8 + 20);
  HIDWORD(v28[2]) = v10;
  v28[3] = v11;
  v27.__locale_ = &unk_1F2CFA908;
  LODWORD(v8) = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 8) + 4 * (v12 * v7);
  v14 = *(v5 + 28) - v12 * v7;
  v15 = *(v5 + 32);
  *(&v25 + 1) = __PAIR64__(v6, v8);
  *&v26 = __PAIR64__(v14, v12);
  *(&v26 + 1) = v15;
  v24 = &unk_1F2CFA908;
  *&v25 = v13;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
  v16 = *(a1 + 8) + 48 * a2;
  v17 = *(a1 + 176);
  v18 = *(a1 + *(*a1 - 24) + 12);
  v19 = *(v16 + 8) + 4 * v17;
  LODWORD(v17) = *(v16 + 28) - v17;
  v20 = *(v16 + 32);
  v28[0] = v19;
  LODWORD(v28[1]) = v18;
  *(&v28[1] + 4) = *(v16 + 20);
  HIDWORD(v28[2]) = v17;
  v28[3] = v20;
  v27.__locale_ = &unk_1F2CFA908;
  v21 = *(a1 + 344) + 48 * a2;
  LODWORD(v17) = *(v21 + 16);
  LODWORD(v19) = *(v21 + 24);
  v22 = *(v21 + 8) + 4 * (v19 * v7);
  LODWORD(v20) = *(v21 + 28) - v19 * v7;
  v23 = *(v21 + 32);
  *(&v25 + 1) = __PAIR64__(*(a1 + 96), v17);
  *&v26 = __PAIR64__(v20, v19);
  *(&v26 + 1) = v23;
  v24 = &unk_1F2CFA908;
  *&v25 = v22;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
}

void sub_1B53C2C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a1 + 88))(a1);
  v6 = a3[3];
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(a1, 0, 1, v6);
  v7 = *(a1 + 104);
  if (*(a1 + 112) != v7 && *(v7 + 16) >= 1)
  {
    v8 = *(a1 + 128);
    v8[4] = v6;
    kaldi::CuMatrix<float>::Resize(v8, 1, *(*(a1 + 8) + 16), 1, 0);
  }

  v9 = *(a1 + 248);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v10 = *(v9 + 8);
  v66 = &unk_1F2CFCA48;
  v67 = v10;
  LODWORD(v68) = *(v9 + 16);
  v69 = *(v9 + 32);
  v11 = *(a1 + 344);
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v12 = *(v11 + 8);
  v62 = &unk_1F2CFCA48;
  v63 = v12;
  LODWORD(v64) = *(v11 + 16);
  v65 = *(v11 + 32);
  v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec(&v66, v13, 111, a2, 1.0, 0.0);
  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::AddVec(&v66, v14, 1.0, 1.0);
  v15 = *(a1 + 176);
  v60[3] = v69;
  v61[0] = &unk_1F2CFCA48;
  v61[1] = v67;
  v61[2] = v15;
  v61[3] = v69;
  v60[0] = &unk_1F2CFCA48;
  v60[1] = v67 + 4 * v15;
  v60[2] = v15;
  v58 = 0;
  v59[0] = &unk_1F2CFCA48;
  v59[1] = v67 + 12 * v15;
  v59[2] = v15;
  v59[3] = v69;
  v16 = *(a1 + 272);
  v56 = 0;
  v57 = 0;
  v17 = *(v16 + 8);
  v55 = &unk_1F2CFCA48;
  v56 = v17;
  LODWORD(v57) = *(v16 + 16);
  v58 = *(v16 + 32);
  v18 = *(a1 + 8);
  v19 = *(v18 + 16);
  v20 = *(v18 + 32);
  v51 = *(v18 + 8);
  v50 = &unk_1F2CFCA48;
  v52 = v19;
  v53 = v20;
  v21 = *(a1 + *(*a1 - 24) + 12);
  v54[0] = &unk_1F2CFCA48;
  v54[1] = v51 + 4 * v15;
  v54[2] = v21;
  v54[3] = v20;
  v51 = *(v18 + 8);
  v50 = &unk_1F2CFCA48;
  v52 = v15;
  v53 = v20;
  v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec(&v66, v22, 111, v54, 1.0, 1.0);
  if (*(a1 + 208) == 1)
  {
    v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v24 = *(v23 + 16);
    v25 = *(v23 + 32);
    v47 = *(v23 + 8);
    v46 = &unk_1F2CFCA48;
    v48 = v24;
    v49 = v25;
    kaldi::CuVectorBase<float>::AddVecVec(v61, &v50, &v46);
    v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    v47 = *(v26 + 8) + 4 * *(v26 + 24);
    v46 = &unk_1F2CFCA48;
    v48 = v27;
    v49 = v28;
    kaldi::CuVectorBase<float>::AddVecVec(v60, &v50, &v46);
  }

  kaldi::CuVectorBase<float>::Sigmoid(v61, v61);
  kaldi::CuVectorBase<float>::Sigmoid(v60, v60);
  kaldi::CuVectorBase<float>::ApplyTanh(v59);
  kaldi::CuVectorBase<float>::AddVecVec(&v55, v61, v59);
  kaldi::CuVectorBase<float>::AddVecVec(&v55, &v50, v60);
  v29 = *(a1 + 476);
  if (v29 > 0.0)
  {
    kaldi::CuVectorBase<float>::ApplyCeiling(&v55, v29);
    kaldi::CuVectorBase<float>::ApplyFloor(&v55, -*(a1 + 476));
  }

  v30 = *(a1 + 176);
  v46 = &unk_1F2CFCA48;
  v47 = v67 + 8 * v30;
  v48 = v30;
  v49 = v69;
  if (*(a1 + 208) == 1)
  {
    v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v32 = *(v31 + 16);
    v33 = *(v31 + 32);
    v43 = *(v31 + 8) + 8 * *(v31 + 24);
    v42 = &unk_1F2CFCA48;
    v44 = v32;
    v45 = v33;
    kaldi::CuVectorBase<float>::AddVecVec(&v46, &v55, &v42);
  }

  kaldi::CuVectorBase<float>::Sigmoid(&v46, &v46);
  v34 = *(a1 + 296);
  v44 = 0;
  v35 = *(v34 + 8);
  v42 = &unk_1F2CFCA48;
  v43 = v35;
  LODWORD(v44) = *(v34 + 16);
  v45 = *(v34 + 32);
  kaldi::CuVectorBase<float>::Tanh(&v42, &v55);
  v36 = *(a1 + 320);
  v40 = 0;
  v37 = *(v36 + 8);
  v39[0] = &unk_1F2CFCA48;
  v39[1] = v37;
  LODWORD(v40) = *(v36 + 16);
  v41 = *(v36 + 32);
  kaldi::CuVectorBase<float>::AddVecVec(v39, &v46, &v42);
  if (*(a1 + 224) == 1)
  {
    v38 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuVectorBase<float>::AddMatVec(&v62, v38, 111, v39, 1.0, 0.0);
  }

  else
  {
    kaldi::CuVectorBase<float>::CopyFromVec(&v62, v39);
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a3, &v62);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(a1, 0);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc()
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc();
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc();
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 20);
  v10 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v185, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v185, "Running backward propagation for batch size = ", 46);
    v12 = MEMORY[0x1B8C84C00](v11, v9);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v9 / v10));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v185);
  }

  v127 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateBackwardBuffers(a1, a6, v9, v18);
  v19 = a6;
  v20 = 3 * a6;
  v21 = *(a1 + 248) + 48 * a6;
  v22 = *(a1 + 440) + 16 * v20;
  v128 = (*(a1 + 368) + 16 * v20);
  v138 = *(a1 + 416);
  v23 = *(a1 + 104);
  v134 = v19;
  v136 = (v9 / v10);
  if (*(a1 + 112) == v23 || *(v23 + 32 * v19 + 16) < 1)
  {
    v133 = 0;
    v24 = a1;
  }

  else
  {
    v24 = a1;
    v25 = (*(a1 + 128) + 48 * v19);
    v25[4] = v18;
    v133 = 1;
    kaldi::CuMatrix<float>::Resize(v25, v10, *(v22 + 16), 1, 0);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v128, a4, 111);
  v26 = *(v24 + 176);
  v27 = *(v21 + 20);
  v28 = *(v21 + 24);
  v29 = *(v21 + 28);
  v30 = *(v21 + 32);
  *&v186 = *(v21 + 8);
  *(&v186 + 1) = __PAIR64__(v27, v26);
  *&v187 = __PAIR64__(v29, v28);
  *(&v187 + 1) = v30;
  v185.__locale_ = &unk_1F2CFA908;
  *&v183 = v186 + 4 * v26;
  *(&v183 + 1) = __PAIR64__(v27, v26);
  LODWORD(v184) = v28;
  DWORD1(v184) = v29 - v26;
  *(&v184 + 1) = v30;
  v182 = &unk_1F2CFA908;
  v31 = *(v21 + 20);
  v32 = *(v21 + 24);
  v33 = *(v21 + 28) - 2 * v26;
  v34 = *(v21 + 32);
  *&v180 = *(v21 + 8) + 8 * v26;
  *(&v180 + 1) = __PAIR64__(v31, v26);
  *&v181 = __PAIR64__(v33, v32);
  *(&v181 + 1) = v34;
  v179 = &unk_1F2CFA908;
  v35 = *(v21 + 28) - 3 * v26;
  *&v177 = *(v21 + 8) + 12 * v26;
  *(&v177 + 1) = __PAIR64__(v31, v26);
  *&v178 = __PAIR64__(v35, v32);
  *(&v178 + 1) = v34;
  v176 = &unk_1F2CFA908;
  v36 = *(v22 + 20);
  v37 = *(v22 + 24);
  v38 = *(v22 + 28);
  v39 = *(v22 + 32);
  *&v174 = *(v22 + 8);
  *(&v174 + 1) = __PAIR64__(v36, v26);
  *&v175 = __PAIR64__(v38, v37);
  *(&v175 + 1) = v39;
  v173 = &unk_1F2CFA908;
  *&v171 = v174 + 4 * v26;
  *(&v171 + 1) = __PAIR64__(v36, v26);
  LODWORD(v172) = v37;
  DWORD1(v172) = v38 - v26;
  *(&v172 + 1) = v39;
  v170 = &unk_1F2CFA908;
  v40 = *(v22 + 20);
  v41 = *(v22 + 24);
  v42 = *(v22 + 28) - 2 * v26;
  v43 = *(v22 + 32);
  *&v168 = *(v22 + 8) + 8 * v26;
  *(&v168 + 1) = __PAIR64__(v40, v26);
  *&v169 = __PAIR64__(v42, v41);
  *(&v169 + 1) = v43;
  v167 = &unk_1F2CFA908;
  v44 = *(v22 + 28) - 3 * v26;
  *&v165 = *(v22 + 8) + 12 * v26;
  *(&v165 + 1) = __PAIR64__(v40, v26);
  *&v166 = __PAIR64__(v44, v41);
  *(&v166 + 1) = v43;
  v164 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v173, &v185, &v176);
  *&v163[0] = v171 + 4 * v172 * v10;
  DWORD2(v163[0]) = DWORD2(v171);
  HIDWORD(v163[0]) = v9 - v10;
  LODWORD(v163[1]) = v172;
  DWORD1(v163[1]) = DWORD1(v172) - v172 * v10;
  *(&v163[1] + 1) = *(&v172 + 1);
  v162 = &unk_1F2CFA908;
  *&v160 = v183 + 4 * v184 * v10;
  DWORD2(v160) = DWORD2(v183);
  HIDWORD(v160) = v9 - v10;
  LODWORD(v161) = v184;
  DWORD1(v161) = DWORD1(v184) - v184 * v10;
  *(&v161 + 1) = *(&v184 + 1);
  v159 = &unk_1F2CFA908;
  v45 = *(v24 + 272) + 48 * v134;
  v46 = *(v45 + 16);
  v47 = *(v45 + 32);
  *&v157 = *(v45 + 8);
  DWORD2(v157) = v46;
  HIDWORD(v157) = v9 - v10;
  *&v158 = *(v45 + 24);
  *(&v158 + 1) = v47;
  v156 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v162, &v159, &v156);
  v156 = &unk_1F2CFA908;
  v157 = 0u;
  v158 = 0u;
  quasar::Bitmap::~Bitmap(&v156);
  v159 = &unk_1F2CFA908;
  v160 = 0u;
  v161 = 0u;
  quasar::Bitmap::~Bitmap(&v159);
  v162 = &unk_1F2CFA908;
  memset(v163, 0, sizeof(v163));
  quasar::Bitmap::~Bitmap(&v162);
  *&v163[0] = v171;
  *(&v163[0] + 1) = __PAIR64__(v10, DWORD2(v171));
  v163[1] = v172;
  v162 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::SetZero(&v162);
  v162 = &unk_1F2CFA908;
  memset(v163, 0, sizeof(v163));
  quasar::Bitmap::~Bitmap(&v162);
  v48 = v134;
  v49 = a1;
  v130 = v22;
  if (v133)
  {
    v50 = *(a1 + 128) + 48 * v134;
    v51 = *(a1 + 176);
    v52 = *(v50 + 28);
    v53 = *(v50 + 32);
    *&v163[0] = *(v50 + 8);
    DWORD2(v163[0]) = v51;
    *(v163 + 12) = *(v50 + 20);
    DWORD1(v163[1]) = v52;
    *(&v163[1] + 1) = v53;
    v162 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::SetZero(&v162);
    v54 = v136 - 1;
    v55 = v10;
    v56 = 4 * v10;
    do
    {
      *(&v160 + 1) = __PAIR64__(v10, DWORD2(v171));
      LODWORD(v161) = v172;
      DWORD1(v161) = DWORD1(v172) - v172 * v55;
      *(&v161 + 1) = *(&v172 + 1);
      *&v160 = v171 + 4 * v172 * v55;
      v159 = &unk_1F2CFA908;
      v57 = *(a1 + 104) + 32 * v134;
      *(&v157 + 1) = 0;
      v156 = &unk_1F2CFCA48;
      *&v157 = *(v57 + 8) + v56;
      DWORD2(v157) = v10;
      *&v158 = *(v57 + 24);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v159, &v162, &v156, 0);
      v159 = &unk_1F2CFA908;
      v160 = 0u;
      v161 = 0u;
      quasar::Bitmap::~Bitmap(&v159);
      v56 += 4 * v10;
      v55 += v10;
      --v54;
    }

    while (v54);
    v162 = &unk_1F2CFA908;
    memset(v163, 0, sizeof(v163));
    quasar::Bitmap::~Bitmap(&v162);
    v48 = v134;
    v49 = a1;
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v167, &v179, *(v49 + 296) + 48 * v48);
  kaldi::CuMatrixBase<float>::DiffTanh(&v164, &v176, &v185);
  v58 = v138 + 16 * v20;
  kaldi::CuMatrixBase<float>::DiffTanh(v58, *(v49 + 296) + 48 * v48, &v179);
  v59 = 0;
  v132 = v10 * (v136 - 1);
  v137 = 0;
  v139 = (v136 - 1);
  v131 = 4 * (v10 + v10 * v139);
  v129 = v10 * v136;
  v60 = v128;
  do
  {
    v61 = v132 + v59;
    v62 = v60[6];
    v63 = *(v60 + 1) + 4 * v62 * (v132 + v59);
    v64 = v60[7] - v62 * (v132 + v59);
    v65 = *(v60 + 4);
    DWORD2(v163[0]) = v60[4];
    HIDWORD(v163[0]) = v10;
    *&v163[1] = __PAIR64__(v64, v62);
    *(&v163[1] + 1) = v65;
    *&v163[0] = v63;
    v162 = &unk_1F2CFA908;
    v66 = *(v49 + 392) + 48 * v48;
    LODWORD(v63) = *(v66 + 16);
    v67 = *(v66 + 24);
    v68 = v67 * (v132 + v59);
    v69 = *(v66 + 8) + 4 * v68;
    LODWORD(v65) = *(v66 + 28) - v68;
    v70 = *(v66 + 32);
    *(&v160 + 1) = __PAIR64__(v10, v63);
    *&v161 = __PAIR64__(v65, v67);
    *(&v161 + 1) = v70;
    *&v160 = v69;
    v159 = &unk_1F2CFA908;
    if (*(v49 + 224) == 1)
    {
      v71 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(v49);
      kaldi::CuMatrixBase<float>::AddMatMat(&v159, &v162, 111, v71, 111);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v159, &v162, 111);
    }

    *&v157 = v168 + 4 * v169 * v61;
    *(&v157 + 1) = __PAIR64__(v10, DWORD2(v168));
    LODWORD(v158) = v169;
    DWORD1(v158) = DWORD1(v169) - v169 * v61;
    *(&v158 + 1) = *(&v169 + 1);
    v156 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::MulElements(&v156, &v159);
    v72 = *(v58 + 24);
    v73 = *(v58 + 8) + 4 * (v72 * v61);
    v74 = *(v58 + 28) - v72 * v61;
    v75 = *(v58 + 32);
    DWORD2(v154) = *(v58 + 16);
    HIDWORD(v154) = v10;
    *&v155 = __PAIR64__(v74, v72);
    *(&v155 + 1) = v75;
    v153 = &unk_1F2CFA908;
    *&v154 = v73;
    kaldi::CuMatrixBase<float>::MulElements(&v153, &v159);
    if (*(v49 + 208) == 1)
    {
      v76 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(v49);
      v77 = *(v76 + 16);
      v78 = *(v76 + 32);
      v152[0] = *(v76 + 8) + 8 * *(v76 + 24);
      v151 = &unk_1F2CFCA48;
      v152[1] = v77;
      v152[2] = v78;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v153, &v156, 111, &v151, 1.0, 1.0);
    }

    if (v139 < v136 - 1)
    {
      v79 = v129 + v59;
      v80 = *(v58 + 24);
      v81 = *(v58 + 8) + 4 * (v80 * (v129 + v59));
      v82 = *(v58 + 28) - v80 * (v129 + v59);
      v83 = *(v58 + 32);
      LODWORD(v152[1]) = *(v58 + 16);
      HIDWORD(v152[1]) = v10;
      v152[2] = __PAIR64__(v82, v80);
      v152[3] = v83;
      v151 = &unk_1F2CFA908;
      v152[0] = v81;
      v150[0] = v183 + 4 * v184 * (v129 + v59);
      v150[1] = __PAIR64__(v10, DWORD2(v183));
      LODWORD(v150[2]) = v184;
      HIDWORD(v150[2]) = DWORD1(v184) - v184 * (v129 + v59);
      v150[3] = *(&v184 + 1);
      v149 = &unk_1F2CFA908;
      if (v133)
      {
        v84 = *(v49 + 128) + 48 * v134;
        v85 = *(v49 + 176);
        v86 = *(v84 + 28);
        v87 = *(v84 + 32);
        v148[0] = *(v84 + 8);
        LODWORD(v148[1]) = v85;
        *(&v148[1] + 4) = *(v84 + 20);
        HIDWORD(v148[2]) = v86;
        v148[3] = v87;
        v147 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v147);
        v88 = *(v49 + 104) + 32 * v134;
        v146[1] = 0;
        v145 = &unk_1F2CFCA48;
        v146[0] = *(v88 + 8) + v131 + v137;
        LODWORD(v146[1]) = v10;
        v146[2] = *(v88 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v147, &v151, &v145, 1);
        *&v152[1] = *&v148[1];
        v152[0] = v148[0];
        v152[3] = v148[3];
        v89 = *(v49 + 128) + 48 * v134;
        v90 = *(v49 + 176);
        v91 = *(v89 + 28) - v90;
        v92 = *(v89 + 32);
        v146[0] = *(v89 + 8) + 4 * v90;
        LODWORD(v146[1]) = v90;
        *(&v146[1] + 4) = *(v89 + 20);
        HIDWORD(v146[2]) = v91;
        v146[3] = v92;
        v145 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v145);
        v93 = *(v49 + 104) + 32 * v134;
        v144[2] = 0;
        v144[0] = &unk_1F2CFCA48;
        v144[1] = *(v93 + 8) + v131 + v137;
        LODWORD(v144[2]) = v10;
        v144[3] = *(v93 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v145, &v149, v144, 1);
        v150[0] = v146[0];
        *&v150[1] = *&v146[1];
        v150[3] = v146[3];
        v145 = &unk_1F2CFA908;
        memset(v146, 0, sizeof(v146));
        quasar::Bitmap::~Bitmap(&v145);
        v147 = &unk_1F2CFA908;
        memset(v148, 0, sizeof(v148));
        quasar::Bitmap::~Bitmap(&v147);
        v49 = a1;
        v60 = v128;
      }

      if (*(v49 + 208) == 1)
      {
        v148[0] = v171 + 4 * v172 * v79;
        v148[1] = __PAIR64__(v10, DWORD2(v171));
        LODWORD(v148[2]) = v172;
        HIDWORD(v148[2]) = DWORD1(v172) - v172 * v79;
        v148[3] = *(&v172 + 1);
        v146[1] = __PAIR64__(v10, DWORD2(v174));
        LODWORD(v146[2]) = v175;
        HIDWORD(v146[2]) = DWORD1(v175) - v175 * v79;
        v146[3] = *(&v175 + 1);
        v147 = &unk_1F2CFA908;
        v145 = &unk_1F2CFA908;
        v146[0] = v174 + 4 * v175 * v79;
        if (v133)
        {
          v94 = *(a1 + 128) + 48 * v134;
          v95 = *(a1 + 176);
          v96 = *(v94 + 28) - 2 * v95;
          v97 = *(v94 + 32);
          v144[1] = *(v94 + 8) + 8 * v95;
          LODWORD(v144[2]) = v95;
          *(&v144[2] + 4) = *(v94 + 20);
          HIDWORD(v144[3]) = v96;
          v144[4] = v97;
          v144[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v144);
          v98 = *(a1 + 104) + 32 * v134;
          v143[2] = 0;
          v143[0] = &unk_1F2CFCA48;
          v143[1] = *(v98 + 8) + v131 + v137;
          LODWORD(v143[2]) = v10;
          v143[3] = *(v98 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v144, &v147, v143, 1);
          *&v148[1] = *&v144[2];
          v148[0] = v144[1];
          v148[3] = v144[4];
          v99 = *(a1 + 128) + 48 * v134;
          v100 = *(a1 + 176);
          v101 = *(v99 + 28) - 3 * v100;
          v102 = *(v99 + 32);
          v143[1] = *(v99 + 8) + 12 * v100;
          LODWORD(v143[2]) = v100;
          *(&v143[2] + 4) = *(v99 + 20);
          HIDWORD(v143[3]) = v101;
          v143[4] = v102;
          v143[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v143);
          v103 = *(a1 + 104) + 32 * v134;
          v141 = 0;
          v140[0] = &unk_1F2CFCA48;
          v140[1] = *(v103 + 8) + v131 + v137;
          LODWORD(v141) = v10;
          v142 = *(v103 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v143, &v145, v140, 1);
          v146[0] = v143[1];
          *&v146[1] = *&v143[2];
          v146[3] = v143[4];
          v143[0] = &unk_1F2CFA908;
          memset(&v143[1], 0, 32);
          quasar::Bitmap::~Bitmap(v143);
          v144[0] = &unk_1F2CFA908;
          memset(&v144[1], 0, 32);
          quasar::Bitmap::~Bitmap(v144);
          v60 = v128;
        }

        v104 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        v105 = *(v104 + 16);
        v106 = *(v104 + 32);
        v144[1] = *(v104 + 8) + 4 * *(v104 + 24);
        v144[0] = &unk_1F2CFCA48;
        v144[2] = v105;
        v144[3] = v106;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v153, &v147, 111, v144, 1.0, 1.0);
        v107 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        v108 = *(v107 + 16);
        v109 = *(v107 + 32);
        v144[1] = *(v107 + 8);
        v144[0] = &unk_1F2CFCA48;
        v144[2] = v108;
        v144[3] = v109;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v153, &v145, 111, v144, 1.0, 1.0);
        v145 = &unk_1F2CFA908;
        memset(v146, 0, sizeof(v146));
        quasar::Bitmap::~Bitmap(&v145);
        v147 = &unk_1F2CFA908;
        memset(v148, 0, sizeof(v148));
        quasar::Bitmap::~Bitmap(&v147);
        v49 = a1;
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v153, &v151, 111, &v149, 111, 1.0, 1.0);
      v149 = &unk_1F2CFA908;
      memset(v150, 0, sizeof(v150));
      quasar::Bitmap::~Bitmap(&v149);
      v151 = &unk_1F2CFA908;
      memset(v152, 0, sizeof(v152));
      quasar::Bitmap::~Bitmap(&v151);
      v48 = v134;
    }

    v152[1] = __PAIR64__(v10, DWORD2(v174));
    LODWORD(v152[2]) = v175;
    HIDWORD(v152[2]) = DWORD1(v175) - v175 * v61;
    v152[3] = *(&v175 + 1);
    v151 = &unk_1F2CFA908;
    v152[0] = v174 + 4 * v175 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v151, &v153);
    v151 = &unk_1F2CFA908;
    memset(v152, 0, sizeof(v152));
    quasar::Bitmap::~Bitmap(&v151);
    v152[1] = __PAIR64__(v10, DWORD2(v165));
    LODWORD(v152[2]) = v166;
    HIDWORD(v152[2]) = DWORD1(v166) - v166 * v61;
    v152[3] = *(&v166 + 1);
    v151 = &unk_1F2CFA908;
    v152[0] = v165 + 4 * v166 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v151, &v153);
    v151 = &unk_1F2CFA908;
    memset(v152, 0, sizeof(v152));
    quasar::Bitmap::~Bitmap(&v151);
    if (v139)
    {
      v152[1] = __PAIR64__(v10, DWORD2(v171));
      LODWORD(v152[2]) = v172;
      HIDWORD(v152[2]) = DWORD1(v172) - v172 * v61;
      v152[3] = *(&v172 + 1);
      v151 = &unk_1F2CFA908;
      v152[0] = v171 + 4 * v172 * v61;
      kaldi::CuMatrixBase<float>::MulElements(&v151, &v153);
      v151 = &unk_1F2CFA908;
      memset(v152, 0, sizeof(v152));
      quasar::Bitmap::~Bitmap(&v151);
      v110 = *(v130 + 16);
      v111 = *(v130 + 24);
      v112 = *(v130 + 8) + 4 * (v111 * v61);
      v113 = *(v130 + 28) - v111 * v61;
      v114 = *(v130 + 32);
      v152[1] = __PAIR64__(v10, v110);
      v152[2] = __PAIR64__(v113, v111);
      v152[3] = v114;
      v151 = &unk_1F2CFA908;
      v152[0] = v112;
      if (v133)
      {
        v115 = *(v49 + 128) + 48 * v48;
        v116 = *(v115 + 28);
        v117 = *(v115 + 32);
        v150[0] = *(v115 + 8);
        LODWORD(v150[1]) = v110;
        *(&v150[1] + 4) = *(v115 + 20);
        HIDWORD(v150[2]) = v116;
        v150[3] = v117;
        v149 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v149);
        v118 = *(v49 + 104) + 32 * v48;
        v148[1] = 0;
        v147 = &unk_1F2CFCA48;
        v148[0] = *(v118 + 8) + 4 * v10 * (v136 - 1) + v137;
        LODWORD(v148[1]) = v10;
        v148[2] = *(v118 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v149, &v151, &v147, 1);
        *&v152[1] = *&v150[1];
        v152[0] = v150[0];
        v152[3] = v150[3];
        v149 = &unk_1F2CFA908;
        memset(v150, 0, sizeof(v150));
        quasar::Bitmap::~Bitmap(&v149);
      }

      v119 = v60[6];
      v120 = v119 * (v10 * (v136 - 2) + v59);
      v121 = *(v60 + 1) + 4 * v120;
      v122 = v60[7] - v120;
      v123 = *(v60 + 4);
      LODWORD(v150[1]) = v60[4];
      HIDWORD(v150[1]) = v10;
      v150[2] = __PAIR64__(v122, v119);
      v150[3] = v123;
      v149 = &unk_1F2CFA908;
      v150[0] = v121;
      v124 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(v49);
      kaldi::CuMatrixBase<float>::AddMatMat(&v149, &v151, 111, v124, 111);
      v149 = &unk_1F2CFA908;
      memset(v150, 0, sizeof(v150));
      quasar::Bitmap::~Bitmap(&v149);
      v151 = &unk_1F2CFA908;
      memset(v152, 0, sizeof(v152));
      quasar::Bitmap::~Bitmap(&v151);
    }

    v153 = &unk_1F2CFA908;
    v154 = 0u;
    v155 = 0u;
    quasar::Bitmap::~Bitmap(&v153);
    v156 = &unk_1F2CFA908;
    v157 = 0u;
    v158 = 0u;
    quasar::Bitmap::~Bitmap(&v156);
    v159 = &unk_1F2CFA908;
    v160 = 0u;
    v161 = 0u;
    quasar::Bitmap::~Bitmap(&v159);
    v162 = &unk_1F2CFA908;
    memset(v163, 0, sizeof(v163));
    quasar::Bitmap::~Bitmap(&v162);
    v125 = v139;
    v137 -= 4 * v10;
    --v139;
    v59 -= v10;
  }

  while (v125 > 0);
  if (v127)
  {
    v126 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(v49);
    kaldi::CuMatrixBase<float>::AddMatMat(v127, v130, 111, v126, 111);
  }

  v164 = &unk_1F2CFA908;
  v165 = 0u;
  v166 = 0u;
  quasar::Bitmap::~Bitmap(&v164);
  v167 = &unk_1F2CFA908;
  v168 = 0u;
  v169 = 0u;
  quasar::Bitmap::~Bitmap(&v167);
  v170 = &unk_1F2CFA908;
  v171 = 0u;
  v172 = 0u;
  quasar::Bitmap::~Bitmap(&v170);
  v173 = &unk_1F2CFA908;
  v174 = 0u;
  v175 = 0u;
  quasar::Bitmap::~Bitmap(&v173);
  v176 = &unk_1F2CFA908;
  v177 = 0u;
  v178 = 0u;
  quasar::Bitmap::~Bitmap(&v176);
  v179 = &unk_1F2CFA908;
  v180 = 0u;
  v181 = 0u;
  quasar::Bitmap::~Bitmap(&v179);
  v182 = &unk_1F2CFA908;
  v183 = 0u;
  v184 = 0u;
  quasar::Bitmap::~Bitmap(&v182);
  v185.__locale_ = &unk_1F2CFA908;
  v186 = 0u;
  v187 = 0u;
  quasar::Bitmap::~Bitmap(&v185);
}