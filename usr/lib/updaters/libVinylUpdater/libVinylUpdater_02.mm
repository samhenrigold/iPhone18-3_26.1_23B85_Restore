void sub_299FAA2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C2B8F30](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if ((a3 + 1) == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (v6[v10] != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = &v6[v10];
    if (v10)
    {
      if (*result == 46)
      {
        v6 = (a3 + 1);
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<float,float>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x29C2B8F30](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 5), 112, 3uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x29C2B8F30](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

uint64_t *std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t *result, char a2)
{
  v2 = result[4];
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = result[2];
    result[2] = v6 + 1;
    *(v5 + v6) = a2;
    if (result[2] == result[1])
    {
      return (result[3])(result, 2);
    }
  }

  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t **a1, unint64_t a2, unint64_t a3, double a4)
{
  v47[128] = *MEMORY[0x29EDCA608];
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v43 = v10;
    v44 = 0;
    if (v10 < 1075)
    {
      v11 = v10 + 316;
      v45 = v11;
      if ((v10 + 316) < 0x401)
      {
        v12 = v47;
        goto LABEL_10;
      }
    }

    else
    {
      v43 = 1074;
      v44 = v10 - 1074;
      v11 = 1390;
      v45 = 1390;
    }

    v12 = operator new(v11);
LABEL_10:
    __p = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v43, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v39, v9);
    if ((a2 & 0x20) != 0)
    {
      v13 = v40;
      v14 = *v42;
      if (v40 == *v42)
      {
        ++*v42;
        *v14 = 46;
        v15 = v41;
        v16 = (*v42 - 1);
        if (v41 != (*v42 - 1))
        {
          if (v41 + 1 == v16)
          {
            v18 = *v41;
            *v41 = v41[1];
            v15[1] = v18;
          }

          else
          {
            v17 = *(*v42 - 1);
            memmove(v41 + 1, v41, v16 - v41);
            *v15 = v17;
          }
        }

        v13 = v41;
        v40 = v41++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v19 = 6;
        }

        if (v41 == *v42)
        {
          v20 = v39 - v13;
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 + v19;
        v22 = &v41[~v13];
        if (v22 < v21)
        {
          v44 += v21 - v22;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v30 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v38);
      v31 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v30, &v43, &v39, &v38, a2, a3);
      std::locale::~locale(&v38);
    }

    else
    {
      v23 = *v42;
      v24 = __p;
      v25 = *v42 - __p;
      v26 = v44;
      if (*v42 - __p + v44 >= a2 >> 32)
      {
        if (!v44 || (v32 = v41, v41 == *v42))
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v42 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
        }

        else
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v41 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v31, v32, v23 - v32);
        }
      }

      else
      {
        v27 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v39)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v27, *__p);
            ++v24;
          }

          v28 = a2 & 0xB8 | 3;
          v29 = 48;
        }

        else
        {
          v29 = BYTE4(a3);
          v28 = a2;
        }

        v33 = a2 & 0xFFFFFFFFFFFFFF00 | v28;
        v34 = a3 & 0xFFFFFF00FFFFFFFFLL | (v29 << 32);
        if (v26)
        {
          v35 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42, v27, v33, v34, v25, v41, v26);
        }

        else
        {
          v35 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42 - v24, v27, v33, v34, v25);
        }

        v31 = v35;
      }
    }

    if (v45 >= 0x401)
    {
      operator delete(__p);
    }

    return v31;
  }

  v37 = *a1;

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v37, a2, a3, a4 < 0.0, 0);
}

void sub_299FAAB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__1 *std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x29C2B8ED0](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = (result - v14);
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_299FAB148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C2B8ED0](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if ((a3 + 1) == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (v6[v10] != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = &v6[v10];
    if (v10)
    {
      if (*result == 46)
      {
        v6 = (a3 + 1);
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x29C2B8ED0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x29C2B8ED0](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

void *std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t **a1, unint64_t a2, unint64_t a3, double a4)
{
  v47[128] = *MEMORY[0x29EDCA608];
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v43 = v10;
    v44 = 0;
    if (v10 < 1075)
    {
      v11 = v10 + 316;
      v45 = v11;
      if ((v10 + 316) < 0x401)
      {
        v12 = v47;
        goto LABEL_10;
      }
    }

    else
    {
      v43 = 1074;
      v44 = v10 - 1074;
      v11 = 1390;
      v45 = 1390;
    }

    v12 = operator new(v11);
LABEL_10:
    __p = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v43, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v39, v9);
    if ((a2 & 0x20) != 0)
    {
      v13 = v40;
      v14 = *v42;
      if (v40 == *v42)
      {
        ++*v42;
        *v14 = 46;
        v15 = v41;
        v16 = (*v42 - 1);
        if (v41 != (*v42 - 1))
        {
          if (v41 + 1 == v16)
          {
            v18 = *v41;
            *v41 = v41[1];
            v15[1] = v18;
          }

          else
          {
            v17 = *(*v42 - 1);
            memmove(v41 + 1, v41, v16 - v41);
            *v15 = v17;
          }
        }

        v13 = v41;
        v40 = v41++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v19 = 6;
        }

        if (v41 == *v42)
        {
          v20 = v39 - v13;
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 + v19;
        v22 = &v41[~v13];
        if (v22 < v21)
        {
          v44 += v21 - v22;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v30 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v38);
      v31 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v30, &v43, &v39, &v38, a2, a3);
      std::locale::~locale(&v38);
    }

    else
    {
      v23 = *v42;
      v24 = __p;
      v25 = *v42 - __p;
      v26 = v44;
      if (*v42 - __p + v44 >= a2 >> 32)
      {
        if (!v44 || (v32 = v41, v41 == *v42))
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v42 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
        }

        else
        {
          v31 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v41 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v31, v26, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v31, v32, v23 - v32);
        }
      }

      else
      {
        v27 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v39)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v27, *__p);
            ++v24;
          }

          v28 = a2 & 0xB8 | 3;
          v29 = 48;
        }

        else
        {
          v29 = BYTE4(a3);
          v28 = a2;
        }

        v33 = a2 & 0xFFFFFFFFFFFFFF00 | v28;
        v34 = a3 & 0xFFFFFF00FFFFFFFFLL | (v29 << 32);
        if (v26)
        {
          v35 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42, v27, v33, v34, v25, v41, v26);
        }

        else
        {
          v35 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, *v42 - v24, v27, v33, v34, v25);
        }

        v31 = v35;
      }
    }

    if (v45 >= 0x401)
    {
      operator delete(__p);
    }

    return v31;
  }

  v37 = *a1;

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v37, a2, a3, a4 < 0.0, 0);
}

void sub_299FAB8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__1 *std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x29C2B8F00](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = (result - v14);
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v17, v9, a6);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(a1 + 4) = 0;
  *a4 = a3;
  v6 = MEMORY[0x29C2B8F00](a3, *(a1 + 16) + *(a1 + 8), 3, a2);
  a4[3] = v6;
  result = (a3 + 1);
  if ((a3 + 1) == v6)
  {
    a4[1] = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a4[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (v6[v10] != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a4[2] = &v6[v10];
    if (v10)
    {
      if (*result == 46)
      {
        v6 = (a3 + 1);
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a4[v11] = v6;
  return result;
}

_BYTE *std::__formatter::__format_buffer_default[abi:ne200100]<double,long double>@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x29C2B8F00](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
  }

  a4[3] = result;
  v8 = *(a3 + 1);
  v7 = a3 + 1;
  if (v8 == 46)
  {
    v9 = result - 2;
    v10 = memchr((result - 6), 112, 4uLL);
    result = v7;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(a1, a2, a3, a4);
  v6 = *a4;
  v7 = a4[2];
  if (*a4 != v7)
  {
    do
    {
      result = std::__formatter::__hex_to_upper[abi:ne200100](*v6);
      *v6++ = result;
    }

    while (v6 != v7);
    v7 = a4[2];
  }

  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  result = MEMORY[0x29C2B8F00](a3, *(a1 + 16) + *(a1 + 8), 1, a2);
  a4[3] = result;
  v7 = a3 + 1;
  if (*(a3 + 1) == 46)
  {
    a4[1] = v7;
    v8 = result - a3 - 2;
    if (v8 < 4)
    {
LABEL_8:
      v7 = result;
    }

    else
    {
      if (v8 >= 6)
      {
        v8 = 6;
      }

      v9 = -v8;
      while (*(result + v9) != 101)
      {
        if (++v9 == -3)
        {
          goto LABEL_8;
        }
      }

      v7 = result + v9;
    }
  }

  else
  {
    a4[1] = result;
  }

  a4[2] = v7;
  return result;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

  return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, v6, v7, v9, v8);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
  }

  return result;
}

void *std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, uint64_t **a3)
{
  v5 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *a6, char *a7, char *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_299FAC464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

void *VinylUpdaterCreate(const __CFDictionary *a1, uint64_t (*a2)(void, void), void *a3, ACFULogging **a4)
{
  MEMORY[0x29C2B8A50](v48, @"VinylUpdaterCreate");
  keys = CFDictionaryGetValue(a1, @"RestoreOptions");
  v8 = ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v47, &keys);
  BBULogParseDebugArgs(v8);
  if (v47)
  {
    CFRelease(v47);
  }

  gVinylUpdaterLogFunc = a2;
  VinylLogRegisterSync(VinylLogAdapter);
  v9 = BBULogModuleEnabled(22);
  if (!v9)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
    v18 = inited;
    goto LABEL_21;
  }

  keys = @"ACFUDebugArgs";
  v10 = *MEMORY[0x29EDB8ED8];
  values = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"logLevel=%d", 4);
  v11 = CFDictionaryCreate(v10, &keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v44 = v11;
  Mutable = CFDictionaryCreateMutable(v10, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = Mutable;
  v43 = Mutable;
  if (v11)
  {
    v14 = Mutable == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (!v14)
  {
    CFDictionaryAddValue(Mutable, @"Options", v11);
    v17 = ACFULogging::getLogInstance(v16);
    v18 = ACFULogging::initLog(v17, v13, a2, a3);
    if (values)
    {
      CFRelease(values);
      values = 0;
    }

LABEL_13:
    CFRelease(v13);
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v29 = ACFULogging::getLogInstance(Mutable);
  inited = ACFULogging::handleMessage(v29, 2, "%s::%s: failed to init debugArgs/logOptions\n", "VinylUpdater", "VinylUpdaterCreate");
  if (v13)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v15 = 0;
  v18 = 0;
  if (v11)
  {
LABEL_14:
    CFRelease(v11);
  }

LABEL_15:
  if ((v15 & 1) == 0)
  {
    Instance = 0;
    goto LABEL_17;
  }

LABEL_21:
  if (v18)
  {
    v30 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v30, 2, "%s::%s: failed to init logging\n", "VinylUpdater", "VinylUpdaterCreate");
    std::string::basic_string[abi:ne200100]<0>(v41, "failed to init logging");
    inited = ACFUError::addError();
    Instance = 0;
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v31 = v41;
LABEL_39:
    operator delete(*v31);
    goto LABEL_17;
  }

  if (VinylUpdaterCreate::only_once != -1)
  {
    VinylUpdaterCreate_cold_1();
  }

  if (!kVinylRestoreObjTypeID)
  {
    v32 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v32, 2, "%s::%s: failed to create Vinyl CFRuntimeClass\n", "VinylUpdater", "VinylUpdaterCreate");
    std::string::basic_string[abi:ne200100]<0>(v39, "failed to create Vinyl CFRuntimeClass");
    inited = ACFUError::addError();
    Instance = 0;
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v31 = v39;
    goto LABEL_39;
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v33 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v33, 2, "%s::%s: failed to create Vinyl CFType object\n", "VinylUpdater", "VinylUpdaterCreate");
    std::string::basic_string[abi:ne200100]<0>(v37, "failed to create Vinyl CFType object");
    inited = ACFUError::addError();
    Instance = 0;
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v31 = v37;
    goto LABEL_39;
  }

  v26 = VinylRestore::create(a1, v25);
  Instance[2] = v26;
  if (v26)
  {
    v27 = ACFULogging::getLogInstance(v26);
    ACFULogging::handleMessage(v27, 4, "%s::%s: Updater object created successfully\n", "VinylUpdater", "VinylUpdaterCreate");
    goto LABEL_28;
  }

  v34 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v34, 2, "%s::%s: failed to get the Vinyl restore instance\n", "VinylUpdater", "VinylUpdaterCreate");
  std::string::basic_string[abi:ne200100]<0>(v35, "failed to get the Vinyl restore instance");
  inited = ACFUError::addError();
  if (v36 < 0)
  {
    v31 = v35;
    goto LABEL_39;
  }

LABEL_17:
  v21 = ACFULogging::getLogInstance(inited);
  ACFULogging::handleMessage(v21, 2, "%s::%s: failed to create restore object\n", "VinylUpdater", "VinylUpdaterCreate");
  CFError = ACFUError::getCFError(v48);
  *a4 = CFError;
  if (Instance)
  {
    CFRelease(Instance);
  }

  v23 = ACFULogging::getLogInstance(CFError);
  ACFULogging::handleMessage(v23, 4, "%s::%s: leaving: VinylUpdater: %s\n", "VinylUpdater", "VinylUpdaterCreate", "VinylUpdaterCreate");
  Instance = 0;
LABEL_28:
  MEMORY[0x29C2B8A60](v48);
  return Instance;
}

void sub_299FAC998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, __int16 a38, char a39, char a40)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8A60](v40 - 96, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void VinylLogAdapter(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (gVinylUpdaterLogFunc)
  {
    v8 = 0;
    vasprintf(&v8, a2, va);
    gVinylUpdaterLogFunc(0, v8);
    free(v8);
  }
}

uint64_t __VinylUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kVinylRestoreObjTypeID = result;
  return result;
}

uint64_t VinylRestoreObjDestroy(ACFULogging **a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylUpdater: %s\n", "VinylUpdater", "VinylRestoreObjDestroy", "VinylRestoreObjDestroy");
  if (a1)
  {
    v3 = a1[2];
    if (v3)
    {
      v4 = (*(*v3 + 8))(v3);
      v5 = ACFULogging::getLogInstance(v4);
      v3 = ACFULogging::handleMessage(v5, 3, "%s::%s: Cleaning up restore object\n", "VinylUpdater", "VinylRestoreObjDestroy");
      a1[2] = 0;
    }
  }

  v6 = ACFULogging::getLogInstance(v3);
  return ACFULogging::handleMessage(v6, 4, "%s::%s: leaving: VinylUpdater: %s\n", "VinylUpdater", "VinylRestoreObjDestroy", "VinylRestoreObjDestroy");
}

ACFULogging *VinylRestoreObjDescribe(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylUpdater: %s\n", "VinylUpdater", "VinylRestoreObjDescribe", "VinylRestoreObjDescribe");
  if (v1)
  {
    v4 = CFGetAllocator(v1);
    v5 = CFGetAllocator(v1);
    v3 = CFStringCreateWithFormat(v4, 0, @"<VinylRestoreObj %p [%p]>{}", v1, v5);
    v1 = v3;
  }

  v6 = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(v6, 4, "%s::%s: leaving: VinylUpdater: %s\n", "VinylUpdater", "VinylRestoreObjDescribe", "VinylRestoreObjDescribe");
  return v1;
}

uint64_t VinylUpdaterExecCommand(uint64_t a1, __CFString *theString, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  CString = CFStringGetCString(theString, buffer, 128, 0x8000100u);
  LogInstance = ACFULogging::getLogInstance(CString);
  v8 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: entering: VinylUpdater: %s command: %s\n", "VinylUpdater", "VinylUpdaterExecCommand", "VinylUpdaterExecCommand", buffer);
  if (a1)
  {
    if (*(a1 + 16))
    {
      v10 = ACFURestore::restoreCommand(theString, v9);
      v11 = ACFURestore::executeCommand();
      if ((v11 & 1) == 0)
      {
        v11 = VinylUpdaterExecCommand_cold_1(v10);
        v12 = 0;
        goto LABEL_5;
      }
    }

    else
    {
      v11 = VinylUpdaterExecCommand_cold_2(v8);
    }
  }

  else
  {
    v11 = VinylUpdaterExecCommand_cold_3(v8);
  }

  v12 = 1;
LABEL_5:
  v13 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v13, 4, "%s::%s: leaving: VinylUpdater: %s\n", "VinylUpdater", "VinylUpdaterExecCommand", "VinylUpdaterExecCommand");
  return v12;
}

ACFULogging *VinylUpdaterIsDone(ACFULogging *a1, void *a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: entering: VinylUpdater: %s\n", "VinylUpdater", "VinylUpdaterIsDone", "VinylUpdaterIsDone");
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v5 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(v21);
    v6 = *v21;
    v21[0] = 0;
    v21[1] = 0;
    v7 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (v21[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21[1]);
      }
    }

    v5 = xmmword_2A14F5908;
  }

  v8 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v9 = BBUCapabilities::supportsVinylUpdate(v5);
  v10 = v9;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 1) == 0)
  {
    v13 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v13, 0, "%s::%s: Vinyl update through generic updater is not supported, skip Vinyl update\n", "VinylUpdater", "VinylUpdaterIsDone");
    if (a2)
    {
      *a2 = 0;
    }

    return 1;
  }

  if (v3)
  {
    v11 = *(v3 + 2);
    if (v11)
    {
      if (VinylRestore::updateAllowed(*(v3 + 2)))
      {
        isRestoreComplete = ACFURestore::isRestoreComplete(v11);
        v3 = isRestoreComplete;
        if (a2)
        {
          if (!isRestoreComplete)
          {
            *a2 = 0;
            goto LABEL_30;
          }

          ACFURestore::getErrorHandle(v21, v11);
          *a2 = ACFUError::getCFError(v21[0]);
          isRestoreComplete = v21[1];
          if (v21[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21[1]);
          }
        }

        else if (!isRestoreComplete)
        {
LABEL_30:
          v18 = ACFULogging::getLogInstance(isRestoreComplete);
          ACFULogging::handleMessage(v18, 4, "%s::%s: leaving: VinylUpdater: %s\n", "VinylUpdater", "VinylUpdaterIsDone", "VinylUpdaterIsDone");
          return v3;
        }

        v17 = ACFULogging::getLogInstance(isRestoreComplete);
        isRestoreComplete = ACFULogging::handleMessage(v17, 0, "%s::%s: Vinyl Update is complete!\n", "VinylUpdater", "VinylUpdaterIsDone");
        goto LABEL_30;
      }
    }

    else
    {
      v14 = MEMORY[0x29C2B8A50](v21, @"VinylUpdaterIsDone");
      v15 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v15, 2, "%s::%s: VinylRestore object doesn't exist\n", "VinylUpdater", "VinylUpdaterIsDone");
      std::string::basic_string[abi:ne200100]<0>(&__p, "VinylRestore object doesn't exist");
      ACFUError::addError();
      if (v20 < 0)
      {
        operator delete(__p);
      }

      if (a2)
      {
        *a2 = ACFUError::getCFError(v21);
      }

      MEMORY[0x29C2B8A60](v21);
    }

    return 1;
  }

  return v3;
}

void sub_299FACFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylUpdaterSupported(void *a1)
{
  if (a1)
  {
    *a1 = 0;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v1 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(&v9);
    v2 = v9;
    v9 = 0uLL;
    v3 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    v1 = xmmword_2A14F5908;
  }

  v4 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v5 = BBUCapabilities::supportsVinylUpdate(v1);
  v6 = v5;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v6)
  {
    return 0;
  }

  LogInstance = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Vinyl update through generic updater is supported\n", "VinylUpdater", "VinylUpdaterSupported");
  return 1;
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

FILE *vinyl_fopen_file_func(int a1, void *__buf, int a3, size_t __size)
{
  if (__buf)
  {
    return fmemopen(__buf, __size, "rb");
  }

  else
  {
    return 0;
  }
}

uint64_t vinyl_fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

FILE *(**vinyl_fill_fopen_filefunc(FILE *(**result)(int a1, void *__buf, int a3, size_t __size)))(int a1, void *__buf, int a3, size_t __size)
{
  *result = vinyl_fopen_file_func;
  result[1] = vinyl_fread_file_func;
  result[2] = vinyl_fwrite_file_func;
  result[3] = vinyl_ftell_file_func;
  result[4] = vinyl_fseek_file_func;
  result[5] = vinyl_fclose_file_func;
  result[6] = vinyl_ferror_file_func;
  result[7] = 0;
  return result;
}

void VinylICECommunication::statusCallback(const void *a1, uint64_t a2, int a3)
{
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "transport %p, status: %d\n", a1, a3);
  }

  if (a3 == 1)
  {
    Controller = TelephonyBasebandCreateController();
    v6 = TelephonyBasebandResetModem();
    v7 = v6;
    if ((*gBBULogMaskGet(v6, v8) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = "failure";
      if (v7)
      {
        v9 = "success";
      }

      _BBULog(2, 0, "BBUICE16Communication", "", "Resetting modem: %s\n", v9);
    }

    if (Controller)
    {
      CFRelease(Controller);
    }
  }
}

void sub_299FAD3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylICECommunication::freeTransportSync(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (v2 == a2)
  {
    v6 = *(a1 + 40);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = a1;
    dispatch_sync(v6, block);
    v5 = TelephonyUtilTransportFree();
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_8;
    v10 = v5;
    v9[4] = a1;
    v9[5] = a2;
    dispatch_sync(v7, v9);
  }

  else
  {
    v5 = 0;
    if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(2, 0, "BBUICE16Communication", "", "call with %p different from fTransportCreated(%p)\n", a2, *(a1 + 48));
      return 0;
    }
  }

  return v5;
}

uint64_t ___ZN21VinylICECommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(v2 + 24) = 0;
  if (*(result + 48) == 1)
  {
    *(v2 + 48) = 0;
  }

  else
  {
    v3 = result;
    result = gBBULogMaskGet(result, a2);
    if ((*result & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(2, 0, "BBUICE16Communication", "", "fail to free transport: %p\n", *(v3 + 40));
    }
  }

  return result;
}

uint64_t VinylICECommunication::openChannel(uint64_t a1, uint64_t a2)
{
  gBBULogMaskGet(a1, a2);
  _BBULog(0, 0xFFFFFFFFLL, "BBUICE16Communication", "", " Initializing KTL options struct, opening ARI channel\n");
  IceAriGetContext();
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v2 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(&v9);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }
    }

    v2 = xmmword_2A14F5908;
  }

  v5 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  BBUCapabilities::getARICommandTimeout(v2);
  v6 = KTLInitOptions();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v6)
  {
    IceAriGetContext();
    v7 = KTLOpenChannel();
    IceAriSetContextValid(1);
    if (v7)
    {
      return 0;
    }

    else
    {
      return 11;
    }
  }

  else
  {
    IceAriSetContextValid(1);
    return 11;
  }
}

void IceAriSetContextValid(char a1)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v2 = off_2A14F5858;
  if (!off_2A14F5858)
  {
    v3 = operator new(0x28uLL);
    v3[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v7, v3);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(&off_2A14F5858 + 1);
    off_2A14F5858 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v2 = off_2A14F5858;
  }

  v6 = *(&off_2A14F5858 + 1);
  if (*(&off_2A14F5858 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F5858 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  *(v2 + 32) = a1;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t VinylICECommunication::createTransport(uint64_t a1, const void *a2)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  inited = TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 48))
  {
    if ((*gBBULogMaskGet(inited, v5) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(2, 0, "BBUICE16Communication", "", "Need to free transport before creating again");
    }

    inited = (*(*a1 + 40))(a1, *(a1 + 48));
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 40);
  LODWORD(v22) = v22 | 1;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 0x40000000;
  v19[2] = ___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke;
  v19[3] = &__block_descriptor_tmp_12;
  v19[4] = a2;
  *(&v20 + 1) = v6;
  *&v21 = v19;
  v7 = gBBULogMaskGet(inited, v5);
  if ((*v7 & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = _BBULog(2, 0, "BBUICE16Communication", "", "Creating transport:%p \n", a2);
  }

  LODWORD(v20) = 8;
  DWORD2(v21) = 10000;
  *(a1 + 56) = 8;
  if ((*gBBULogMaskGet(v7, v8) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating with timeout set to %u ms\n", DWORD2(v21));
  }

  v9 = *(a1 + 32);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2;
  block[3] = &unk_29F293530;
  block[6] = a1;
  block[7] = a2;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v13 = v20;
  v14 = v21;
  block[4] = v26;
  block[5] = &v28;
  dispatch_sync(v9, block);
  v10 = *(v29 + 6);
  if (v20 == 8 && !v10)
  {
    v10 = (*(*a1 + 24))(a1, a2);
    *(v29 + 6) = v10;
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  return v10;
}

void sub_299FADB20(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

_BYTE *___ZN21VinylICECommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 56);
  v8 = TelephonyBasebandPCITransportCreate();
  *(*(*(a1 + 32) + 8) + 24) = v8;
  result = gBBULogMaskGet(v8, v9);
  if ((*result & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v11 = "success";
    }

    else
    {
      v11 = "failure";
    }

    result = _BBULog(2, 0, "BBUICE16Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v11);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (!*(v7 + 48))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/ICE/VinylICECommunication.cpp", 0x82u, "Assertion failure(nullptr != fTransportCreated && Telephony util transport error.)", v14, v15, v16);
    }

    v12 = 0;
  }

  else
  {
    result = VinylICECommunication::freeTransportSync(v7, *(a1 + 56));
    v12 = 3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v12;
  return result;
}

void VinylICECommunication::closeChannel(VinylICECommunication *this)
{
  if (IceAriGetContextValid())
  {
    IceAriGetContext();
    KTLCloseChannel();

    IceAriSetContextValid(0);
  }
}

uint64_t IceAriGetContextValid(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v0 = off_2A14F5858;
  if (!off_2A14F5858)
  {
    v1 = operator new(0x28uLL);
    v1[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v7, v1);
    v2 = v7;
    v7 = 0uLL;
    v3 = *(&off_2A14F5858 + 1);
    off_2A14F5858 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v0 = off_2A14F5858;
  }

  v4 = *(&off_2A14F5858 + 1);
  if (*(&off_2A14F5858 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F5858 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v5 = *(v0 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

uint64_t VinylICECommunication::freeTransport(void *a1, const void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "request to free transport: %p\n", a2);
  }

  (*(*a1 + 32))(a1);
  v4 = a1[4];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylICECommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &unk_29F293558;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZN21VinylICECommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(uint64_t a1)
{
  result = VinylICECommunication::freeTransportSync(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void VinylICECommunication::~VinylICECommunication(VinylICECommunication *this)
{
  VinylICECommunication::~VinylICECommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A2031940;
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_21()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

unint64_t DEREncodeItemIntoVector(unint64_t a1, unint64_t a2, const void *a3, unint64_t *a4)
{
  v8 = DERLengthOfItem(a1, a2);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeItem(a1, a2, a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DEREncodeSequenceIntoVector(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v8 = DERLengthOfEncodedSequence(a1, a2, *(a3 + 4), *a3);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeSequence(a1, a2, *(a3 + 4), *a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DERDecodeBBTicket(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v16[6] = xmmword_299FE2D58;
  v16[7] = unk_299FE2D68;
  v16[8] = xmmword_299FE2D78;
  v16[2] = xmmword_299FE2D18;
  v16[3] = unk_299FE2D28;
  v16[4] = xmmword_299FE2D38;
  v16[5] = unk_299FE2D48;
  v16[0] = xmmword_299FE2CF8;
  v16[1] = unk_299FE2D08;
  v14[6] = xmmword_299FE2DE8;
  v14[7] = unk_299FE2DF8;
  v14[8] = xmmword_299FE2E08;
  v14[9] = unk_299FE2E18;
  v14[2] = xmmword_299FE2DA8;
  v14[3] = unk_299FE2DB8;
  v14[4] = xmmword_299FE2DC8;
  v14[5] = unk_299FE2DD8;
  v14[0] = xmmword_299FE2D88;
  v14[1] = unk_299FE2D98;
  v15 = 1;
  v11[0] = a1;
  v11[1] = a2;
  result = DERDecodeItem(v11, &v12);
  if (!result)
  {
    if (v12 == 0x2000000000000010)
    {
      if (TelephonyRadiosGetRadioVendor() == 1)
      {
        v5 = v14;
        v6 = 7;
      }

      else
      {
        v5 = v16;
        v6 = 6;
      }

      result = DERParseSequenceContent(&v13, v6, v5, a3, 0);
      if (!result)
      {
        v7 = *(a3 + 16);
        v8 = *v7;
        v9 = *(v7 + 4);
        v10 = v8 == 0x43DCE48862A0806 && v9 == 771;
        result = 3;
        if (v10)
        {
          if (*(a3 + 24) == 10)
          {
            return 0;
          }

          else
          {
            return 3;
          }
        }
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t parseAndCheckIfTagEnabled(uint64_t a1, unsigned int a2, int *a3)
{
  v12 = 0;
  v5 = DERDecodeSeqInit(a1, &v12, v13);
  v6 = 0;
  if (!v5)
  {
    v7 = a2 | 0x8000000000000000;
    while (1)
    {
      v5 = DERDecodeSeqNext(v13, &v9);
      if (v5)
      {
        break;
      }

      if (v9 == v7)
      {
        if (v11 != 4)
        {
          v6 = 0;
LABEL_14:
          v5 = 3;
          goto LABEL_12;
        }

        v6 = 0;
        if (*v10)
        {
          if (*v10 != 1)
          {
            goto LABEL_14;
          }

          v6 = 1;
        }
      }
    }

    if (v5 == 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_12:
  *a3 = v5;
  return v6 & 1;
}

uint64_t isBBTicketCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0xD4u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t isBBTicketFATPCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0x1C2u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
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
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t _BBUException::_BBUException(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *a1 = &unk_2A20319A0;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, va);
  return a1;
}

{
  va_start(va, a8);
  *a1 = &unk_2A20319A0;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, va);
  return a1;
}

void _BBUException::constructCommon(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *this, char *a6)
{
  v8 = a2;
  ctu::LogMessageBuffer::vCreateWithFormat(&v40, this, a6, a3);
  v10 = MEMORY[0x29C2B81B0](&v40);
  v11 = *v10;
  v42.__r_.__value_.__r.__words[2] = *(v10 + 16);
  *&v42.__r_.__value_.__l.__data_ = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  MEMORY[0x29C2B81D0](&v40);
  *(&v35.__r_.__value_.__s + 23) = 1;
  LOWORD(v35.__r_.__value_.__l.__data_) = 32;
  v12 = BBUReturnAsString(v8);
  v13 = strlen(v12);
  v14 = std::string::append(&v35, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v36, "@", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  ctu::llvm::StringRef::StringRef(&v32, a3);
  ctu::basename();
  if ((v34 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v19 = v34;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::string::append(&v37, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ":", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v32, a4);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v32;
  }

  else
  {
    v24 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v39, v24, size);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v41 = v26->__r_.__value_.__r.__words[2];
  v40 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v41 >= 0)
  {
    v28 = &v40;
  }

  else
  {
    v28 = v40;
  }

  if (v41 >= 0)
  {
    v29 = HIBYTE(v41);
  }

  else
  {
    v29 = *(&v40 + 1);
  }

  std::string::append(&v42, v28, v29);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = 0u;
  v30 = a1 + 8;
  *(v30 + 480) = 0u;
  *(v30 + 496) = 0u;
  *(v30 + 448) = 0u;
  *(v30 + 464) = 0u;
  *(v30 + 416) = 0u;
  *(v30 + 432) = 0u;
  *(v30 + 384) = 0u;
  *(v30 + 400) = 0u;
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 256) = 0u;
  *(v30 + 272) = 0u;
  *(v30 + 224) = 0u;
  *(v30 + 240) = 0u;
  *(v30 + 192) = 0u;
  *(v30 + 208) = 0u;
  *(v30 + 160) = 0u;
  *(v30 + 176) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 144) = 0u;
  *(v30 + 96) = 0u;
  *(v30 + 112) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  v31 = &v42;
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = v42.__r_.__value_.__r.__words[0];
  }

  *(v30 + 16) = 0uLL;
  snprintf(v30, 0x200uLL, "%s\n", v31);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }
}

void sub_299FAE900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v54 - 57) < 0)
  {
    operator delete(*(v54 - 80));
  }

  _Unwind_Resume(exception_object);
}

void _BBUException::~_BBUException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void _BBUException::_BBUException(_BBUException *this, const _BBUException *a2)
{
  *this = &unk_2A20319A0;
  strncpy(this + 8, a2 + 8, 0x200uLL);
  *(this + 130) = *(a2 + 130);
}

ctu::llvm::StringRef *ctu::llvm::StringRef::StringRef(ctu::llvm::StringRef *this, const char *__s)
{
  *this = __s;
  if (!__s)
  {
    ctu::llvm::StringRef::StringRef();
  }

  *(this + 1) = strlen(__s);
  return this;
}

uint64_t eUICC::logEUICCData(int *a1, uint64_t a2)
{
  gBBULogMaskGet(a1, a2);
  v3 = *(a1 + 5);
  v4 = *a1;
  ctu::hex(v33, (a1 + 7), 0x10);
  if (v34 >= 0)
  {
    v5 = v33;
  }

  else
  {
    v5 = v33[0];
  }

  v6 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "status 0x%x sw1_sw2 0x%x eid 0x%s op_mode 0x%hhx\n", v4, v3, v5, *(a1 + 23));
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v6, v7);
  v8 = v33;
  ctu::hex(v33, (a1 + 6), 0x20);
  if (v34 < 0)
  {
    v8 = v33[0];
  }

  ctu::hex(v31, (a1 + 14), 8);
  v9 = v32;
  v10 = v31[0];
  ctu::hex(__p, (a1 + 16), 8);
  v11 = v31;
  if (v9 < 0)
  {
    v11 = v10;
  }

  if (v30 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "current_fw_version %s main_fw_nonce 0x%s gold_fw_nonce 0x%s\n", v8, v11, v12);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v13, v14);
  ctu::hex(v33, (a1 + 18), 0x10);
  v15 = v34;
  v16 = v33[0];
  ctu::hex(v31, (a1 + 147), 0x10);
  if (v15 >= 0)
  {
    v17 = v33;
  }

  else
  {
    v17 = v16;
  }

  if (v32 >= 0)
  {
    v18 = v31;
  }

  else
  {
    v18 = v31[0];
  }

  v19 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "main_fw_pcf_mac 0x%s gold_fw_pcf_mac 0x%s pcf_version 0x%x\n", v17, v18, *(a1 + 111));
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v19, v20);
  ctu::hex(v33, (a1 + 60), 3);
  v21 = v34;
  v22 = v33[0];
  ctu::hex(v31, (a1 + 243), 0x20);
  if (v21 >= 0)
  {
    v23 = v33;
  }

  else
  {
    v23 = v22;
  }

  if (v32 >= 0)
  {
    v24 = v31;
  }

  else
  {
    v24 = v31[0];
  }

  v25 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "loader_version 0x%s key_id 0x%s perso %d\n", v23, v24, *(a1 + 4));
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v25, v26);
  if (*(a1 + 279))
  {
    v27 = "Yes";
  }

  else
  {
    v27 = "No";
  }

  return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "chip_id 0x%x stream_apdu_max_apdus 0x%x isAbsentOk: %s\n", *(a1 + 275), *(a1 + 276), v27);
}

void sub_299FAEE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t vinyl_unzStringFileNameCompare(const char *a1, const char *a2, int a3)
{
  if (a3 == 1)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *vinyl_unzOpen2(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v5 = a2[1];
    __src[0] = *a2;
    __src[1] = v5;
    v6 = a2[3];
    __src[2] = a2[2];
    __src[3] = v6;
    v7 = (*&__src[0])(*(&v6 + 1), a1, 5, a3);
  }

  else
  {
    vinyl_fill_fopen_filefunc(__src);
    v7 = (*&__src[0])(*(&__src[3] + 1), a1, 5, a3);
  }

  v8 = v7;
  *&__src[4] = v7;
  if (v7)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v7, 0, 2) || ((v10 = (*(&__src[1] + 1))(*(&__src[3] + 1), v8), v11 = v10, v10 >= 0xFFFF) ? (v12 = 0xFFFFLL) : (v12 = v10), (v13 = malloc(0x404uLL)) == 0))
    {
      v9 = 0;
      v36 = 0;
    }

    else
    {
      v14 = v13;
      if (v11 >= 5)
      {
        v15 = 4;
        while (2)
        {
          v16 = v15 + 1024;
          if (v15 + 1024 >= v12)
          {
            v15 = v12;
          }

          else
          {
            v15 += 1024;
          }

          v17 = v15 >= 0x404 ? 1028 : v15;
          if (!(*&__src[2])(*(&__src[3] + 1), v8, v11 - v15, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v8, v14, v17) == v17)
          {
            v18 = (v17 - 4);
            v19 = v15 - v11 - v18;
            v20 = v17 - 3;
            v21 = &v14[v18 + 1];
            while (*(v21 - 1) != 80 || *v21 != 75 || v21[1] != 5 || v21[2] != 6)
            {
              ++v19;
              --v21;
              v22 = __OFSUB__(v20--, 1);
              if ((v20 < 0) ^ v22 | (v20 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v19)
            {
              v9 = -v19;
              v36 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v16 < v12)
            {
              continue;
            }
          }

          break;
        }
      }

      v9 = 0;
      v36 = 0;
LABEL_33:
      free(v14);
    }

    v38 = 0;
    v39 = 0;
    v37 = 0;
    v33 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v9, 0);
    HIDWORD(v34) = unzlocal_getLong(__src, *&__src[4], v40);
    LODWORD(v34) = unzlocal_getShort(__src, *&__src[4], &v39);
    Short = unzlocal_getShort(__src, *&__src[4], &v38);
    v23 = unzlocal_getShort(__src, *&__src[4], &__src[4] + 1);
    v24 = unzlocal_getShort(__src, *&__src[4], &v37);
    v26 = v37;
    v25 = v38;
    v27 = v39;
    v28 = *(&__src[4] + 1);
    Long = unzlocal_getLong(__src, *&__src[4], &__src[8]);
    v30 = unzlocal_getLong(__src, *&__src[4], &__src[8] + 1);
    v31 = unzlocal_getShort(__src, *&__src[4], &__src[5]);
    if (v9 < *&__src[8] + *(&__src[8] + 1) || v30 | Long | v31 || v26 != v28 || v25 || v27 || !v36 || v24 || v23 || Short || v34 || v33)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v9 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v9;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v8 = malloc(0x150uLL);
      memcpy(v8, __src, 0x150uLL);
      vinyl_unzGoToFirstFile(v8);
    }
  }

  return v8;
}

uint64_t unzlocal_getLong(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (unzlocal_getByte(a1, a2, &v11) || (v6 = v11, unzlocal_getByte(a1, a2, &v11)) || (v7 = v11, unzlocal_getByte(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 + (v7 << 8) + (v11 << 16);
    result = unzlocal_getByte(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t unzlocal_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if (unzlocal_getByte(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = unzlocal_getByte(a1, a2, &v9);
    v6 = v8 + (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t vinyl_unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[17];
  a1[12] = 0;
  a1[13] = v2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t vinyl_unzClose(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    vinyl_unzCloseCurrentFile(a1);
  }

  (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  free(a1);
  return 0;
}

uint64_t vinyl_unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 184) || *(v2 + 280))
  {
    v3 = 0;
  }

  else if (*(v2 + 160) == *(v2 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128))
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 288) = 0;
  return v3;
}

uint64_t vinyl_unzGetGlobalInfo(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  result = 0;
  *a2 = *(a1 + 72);
  return result;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0) || (v52 = 0, unzlocal_getLong(a1, *(a1 + 64), &v52)))
  {
    v11 = -1;
  }

  else if (v52 == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = -103;
  }

  v46 = v11;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v44 = unzlocal_getShort(a1, *(a1 + 64), &v54 + 1);
  v12 = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v55 + 1);
  Long = unzlocal_getLong(a1, *(a1 + 64), &v56);
  v15.i32[0] = v56;
  v16 = vshlq_u32(vdupq_n_s32(v56), xmmword_299FE2E60);
  v16.i32[0] = vshlq_u32(v15, xmmword_299FE2E50).u32[0];
  LODWORD(v62) = ((v56 >> 21) & 0xF) - 1;
  HIDWORD(v62) = (v56 >> 25) + 1980;
  v61 = vandq_s8(v16, xmmword_299FE2E70);
  v17 = unzlocal_getLong(a1, *(a1 + 64), &v56 + 1) | Long;
  v18 = unzlocal_getLong(a1, *(a1 + 64), &v57);
  v19 = v17 | v18 | unzlocal_getLong(a1, *(a1 + 64), &v57 + 1);
  v20 = v19 | unzlocal_getShort(a1, *(a1 + 64), &v58);
  v21 = unzlocal_getShort(a1, *(a1 + 64), &v58 + 1);
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v59);
  v23 = unzlocal_getShort(a1, *(a1 + 64), &v59 + 1);
  v24 = unzlocal_getShort(a1, *(a1 + 64), &v60);
  v25 = unzlocal_getLong(a1, *(a1 + 64), &v60 + 1);
  if (unzlocal_getLong(a1, *(a1 + 64), &v53) | v25 | v24 | v23 | v22 | v21 | v20 | v13 | v12 | v44 | Short)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v46;
  }

  v27 = v58;
  if (a4)
  {
    v29 = a7;
    v28 = a6;
    if (v26)
    {
      v31 = a8;
    }

    else
    {
      v30 = a5;
      v31 = a8;
      if (v58 < a5)
      {
        *(a4 + v58) = 0;
        v30 = v27;
      }

      v26 = 0;
      if (a5 && v27)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64)) == v30)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      v27 -= v30;
    }
  }

  else
  {
    v28 = a6;
    v31 = a8;
    v29 = a7;
  }

  v32 = *(&v58 + 1);
  if (!v28 || v26)
  {
    v35 = *(&v58 + 1) + v27;
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  if (*(&v58 + 1) >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = *(&v58 + 1);
  }

  if (!v27)
  {
    v26 = 0;
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v34 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v27, 1);
  if (v34)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v29)
  {
LABEL_37:
    if (v32)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v28, v33) == v33)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_41:
  v35 = v32 - v33 + v27;
  if (!v31)
  {
    goto LABEL_56;
  }

LABEL_42:
  if (!v26)
  {
    v36 = v59;
    v37 = a9;
    if (v59 < a9)
    {
      *(v31 + v59) = 0;
      v37 = v36;
    }

    if (v35)
    {
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v35, 1))
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      if (!a9)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v36)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v31, v37) == v37)
        {
          v26 = v26;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_56;
    }

    v26 = 0;
    if (a9)
    {
      goto LABEL_52;
    }
  }

LABEL_56:
  if (a2 && !v26)
  {
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  if (a3 && !v26)
  {
    *a3 = v53;
  }

  return v26;
}

uint64_t vinyl_unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[14])
  {
    return 4294967196;
  }

  v2 = a1[9];
  v3 = a1[12] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[26] + a1[27] + a1[28] + a1[13] + 46;
  a1[12] = v3;
  a1[13] = v5;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t vinyl_unzLocateFile(uint64_t a1, char *__s, int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1 || strlen(__s) > 0xFF)
  {
    return 4294967194;
  }

  if (!*(a1 + 112))
  {
    return 4294967196;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v17 = *(a1 + 240);
  v18 = *(a1 + 256);
  v9 = *(a1 + 280);
  v19 = *(a1 + 272);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v10 = *(a1 + 136);
  *(a1 + 96) = 0;
  *(a1 + 104) = v10;
  result = unzlocal_GetCurrentFileInfoInternal(a1, a1 + 144, (a1 + 280), 0, 0, 0, 0, 0, 0);
  for (*(a1 + 112) = result == 0; !result; result = vinyl_unzGoToNextFile(a1))
  {
    result = unzlocal_GetCurrentFileInfoInternal(a1, 0, 0, v20, 0x100uLL, 0, 0, 0, 0);
    if (result)
    {
      break;
    }

    result = vinyl_unzStringFileNameCompare(v20, __s, a3);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 240) = v17;
  *(a1 + 256) = v18;
  *(a1 + 176) = v13;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 224) = v16;
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 272) = v19;
  *(a1 + 280) = v9;
  return result;
}

uint64_t vinyl_unzGetFilePos(int8x16_t *a1, int8x16_t *a2)
{
  result = 4294967194;
  if (a1 && a2)
  {
    if (a1[7].i64[0])
    {
      result = 0;
      *a2 = vextq_s8(a1[6], a1[6], 8uLL);
    }

    else
    {
      return 4294967196;
    }
  }

  return result;
}

uint64_t vinyl_unzGoToFilePos(int8x16_t *a1, int8x16_t *a2)
{
  result = 4294967194;
  if (a1)
  {
    if (a2)
    {
      a1[6] = vextq_s8(*a2, *a2, 8uLL);
      result = unzlocal_GetCurrentFileInfoInternal(a1, a1[9].i64, &a1[17].i64[1], 0, 0, 0, 0, 0, 0);
      a1[7].i64[0] = result == 0;
    }
  }

  return result;
}

uint64_t vinyl_unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  v55[2] = *MEMORY[0x29EDCA608];
  if (!a1 || !*(a1 + 112))
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    vinyl_unzCloseCurrentFile(a1);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    return 4294967193;
  }

  v54 = 0;
  v55[0] = 0;
  v53 = 0;
  Long = unzlocal_getLong(a1, *(a1 + 64), v55);
  v11 = v55[0];
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v53);
  v14 = -103;
  if (!unzlocal_getShort(a1, *(a1 + 64), &v54))
  {
    v19 = v11 == 67324752 ? 0 : -103;
    v20 = v13 | Short | Long;
    v14 = v20 ? -1 : v19;
    if (!v20 && v11 == 67324752)
    {
      v14 = -103;
      if (v54 == *(a1 + 168))
      {
        if ((v54 & 0xFFFFFFFFFFFFFFF7) != 0)
        {
          v14 = -103;
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  v15 = unzlocal_getLong(a1, *(a1 + 64), &v54);
  v16 = unzlocal_getLong(a1, *(a1 + 64), &v54) || v15 | v14 || v54 != *(a1 + 184) && (v53 & 8) == 0;
  v18 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v54) && !v16)
  {
    v18 = v54 != *(a1 + 192) && (v53 & 8) == 0;
  }

  v21 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v54) && !v18)
  {
    v21 = v54 != *(a1 + 200) && (v53 & 8) == 0;
  }

  v52 = 0;
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v52);
  v23 = 0;
  v24 = v52;
  if (!v22 && !v21)
  {
    v23 = v52 == *(a1 + 208);
  }

  v51 = 0;
  if (unzlocal_getShort(a1, *(a1 + 64), &v51) || !v23)
  {
    return 4294967193;
  }

  v25 = *(a1 + 280);
  v26 = v51;
  v27 = malloc(0x120uLL);
  if (!v27)
  {
    return 4294967192;
  }

  v28 = v27;
  v29 = malloc(0x4000uLL);
  *v28 = v29;
  *(v28 + 17) = v24 + v25 + 30;
  *(v28 + 36) = v26;
  *(v28 + 19) = 0;
  *(v28 + 70) = a4;
  if (!v29)
  {
    free(v28);
    return 4294967192;
  }

  *(v28 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  if (a3)
  {
    *a3 = 6;
    v30 = *(a1 + 160) & 6;
    if (v30 > 3)
    {
      if (v30 == 6)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_56;
      }

      v31 = 9;
    }

    *a3 = v31;
  }

LABEL_56:
  v33 = *(a1 + 184);
  *(v28 + 20) = 0;
  *(v28 + 21) = v33;
  v34 = *(a1 + 168);
  *(v28 + 32) = *(a1 + 64);
  *(v28 + 33) = v34;
  v35 = *(a1 + 16);
  *(v28 + 12) = *a1;
  *(v28 + 13) = v35;
  v36 = *(a1 + 48);
  *(v28 + 14) = *(a1 + 32);
  *(v28 + 15) = v36;
  *(v28 + 34) = *(a1 + 88);
  *(v28 + 6) = 0;
  if (!a4 && v34 == 8)
  {
    *(v28 + 1) = 0;
    *(v28 + 4) = 0;
    *(v28 + 10) = 0;
    *(v28 + 11) = 0;
    *(v28 + 9) = 0;
    v37 = inflateInit2_((v28 + 8), -15, "1.2.12", 112);
    if (v37)
    {
      v17 = v37;
      free(v28);
      return v17;
    }

    *(v28 + 16) = 1;
    v25 = *(a1 + 280);
  }

  *(v28 + 11) = *(a1 + 192);
  *(v28 + 15) = v25 + (v26 + v24) + 30;
  *(v28 + 4) = 0;
  *(a1 + 288) = v28;
  if (!a5)
  {
    return 0;
  }

  v38 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_299FE2E80;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v40 = *a5;
  if (*a5)
  {
    v41 = a5 + 1;
    v42 = 305419896;
    v43 = 591751049;
    do
    {
      v42 = crc_table[v40 ^ v42] ^ (v42 >> 8);
      v43 = 134775813 * (v43 + v42) + 1;
      *(a1 + 304) = v42;
      *(a1 + 312) = v43;
      v38 = crc_table[(v38 ^ BYTE3(v43))] ^ (v38 >> 8);
      *(a1 + 320) = v38;
      v44 = *v41++;
      v40 = v44;
    }

    while (v44);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), v55, 12) < 0xC)
  {
    return 4294967192;
  }

  v45 = 0;
  v47 = *(a1 + 320);
  v46 = *(a1 + 328);
  v48 = *(a1 + 304);
  v49 = *(a1 + 312);
  do
  {
    v50 = *(v55 + v45) ^ (((v47 & 0xFFFD ^ 3) * (v47 | 2)) >> 8);
    *(v55 + v45) = v50;
    v48 = *(v46 + 8 * (v50 ^ v48)) ^ (v48 >> 8);
    v49 = 134775813 * (v49 + v48) + 1;
    *(a1 + 304) = v48;
    *(a1 + 312) = v49;
    v47 = *(v46 + 8 * (v47 ^ BYTE3(v49))) ^ (v47 >> 8);
    *(a1 + 320) = v47;
    ++v45;
  }

  while (v45 != 12);
  v17 = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
  return v17;
}

uint64_t vinyl_unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      LODWORD(v10) = *(v4 + 16);
      if (!v10)
      {
        v11 = *(v4 + 176);
        if (v11)
        {
          if (v11 >= 0x4000)
          {
            v10 = 0x4000;
          }

          else
          {
            v10 = *(v4 + 176);
          }

          if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v10) != v10)
          {
            return 0xFFFFFFFFLL;
          }

          if (*(a1 + 296))
          {
            v12 = 0;
            do
            {
              v13 = *(a1 + 328);
              v14 = *(*v4 + v12) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
              *(*v4 + v12) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
              v15 = *(v13 + 8 * (v14 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
              v16 = 134775813 * (*(a1 + 312) + v15) + 1;
              *(a1 + 304) = v15;
              *(a1 + 312) = v16;
              *(a1 + 320) = *(v13 + 8 * (*(a1 + 320) ^ BYTE3(v16))) ^ (*(a1 + 320) >> 8);
              *(*v4 + v12++) = v14;
            }

            while (v10 != v12);
          }

          *(v4 + 120) += v10;
          *(v4 + 176) -= v10;
          *(v4 + 8) = *v4;
          *(v4 + 16) = v10;
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (*(v4 + 264) && !*(v4 + 280))
      {
        break;
      }

      if (v10 || *(v4 + 176))
      {
        v17 = *(v4 + 40);
        v10 = v17 >= v10 ? v10 : v17;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
          }

          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v10);
        *(v4 + 184) -= v19;
        *(v4 + 16) -= v10;
        v20 = *(v4 + 40) - v10;
        *(v4 + 40) = v20;
        *(v4 + 32) += v19;
        *(v4 + 8) += v19;
        v9 = (v10 + v9);
        *(v4 + 48) += v19;
        if (v20)
        {
          continue;
        }
      }

      return v9;
    }

    v21 = *(v4 + 48);
    v22 = *(v4 + 32);
    v23 = inflate((v4 + 8), 2);
    if ((v23 & 0x80000000) == 0 && *(v4 + 56))
    {
      v26 = *(v4 + 48);
      v27 = v26 - v21;
      *(v4 + 160) = crc32(*(v4 + 160), v22, v26 - v21);
      *(v4 + 184) -= v27;
      return 4294967293;
    }

    v24 = *(v4 + 48) - v21;
    *(v4 + 160) = crc32(*(v4 + 160), v22, v24);
    *(v4 + 184) -= v24;
    v9 = (v9 + v24);
    if (v23)
    {
      break;
    }

    if (!*(v4 + 40))
    {
      return v9;
    }
  }

  if (v23 == 1)
  {
    return v9;
  }

  else
  {
    return v23;
  }
}

uint64_t vinyl_unztell(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    return *(v1 + 48);
  }

  else
  {
    return -102;
  }
}

uint64_t vinyl_unzeof(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    return *(v1 + 184) == 0;
  }

  else
  {
    return 4294967194;
  }
}

unint64_t vinyl_unzGetLocalExtrafield(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v3 = *(a1 + 288);
  if (!v3)
  {
    return 4294967194;
  }

  v5 = *(v3 + 152);
  result = *(v3 + 144) - v5;
  if (a2)
  {
    if (result >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = result;
    }

    if (v7)
    {
      if ((*(v3 + 224))(*(v3 + 248), *(v3 + 256), *(v3 + 136) + v5, 0))
      {
        return 0xFFFFFFFFLL;
      }

      else if ((*(v3 + 200))(*(v3 + 248), *(v3 + 256), a2, v7) == v7)
      {
        return v7;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vinyl_unzGetGlobalComment(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 80) >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(a1 + 80);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 120) + 22, 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (v6)
  {
    *a2 = 0;
    if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), a2, v6) != v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!a2)
  {
    return v6;
  }

  v8 = *(a1 + 80);
  if (v8 < a3)
  {
    a2[v8] = 0;
  }

  return v6;
}

uint64_t vinyl_unzGetOffset(void *a1)
{
  if (!a1)
  {
    return -102;
  }

  if (a1[14])
  {
    v1 = a1[9];
    v2 = !v1 || v1 == 0xFFFF;
    if (v2 || a1[12] != v1)
    {
      return a1[13];
    }
  }

  return 0;
}

uint64_t vinyl_unzSetOffset(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  a1[12] = a1[9];
  a1[13] = a2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t unzlocal_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

eUICC::eUICCVinylMAVValve *eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *this = &unk_2A20319E0;
  *(this + 37) = a2;
  *(this + 73) = a3;
  *(this + 291) = a4;
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = eUICC::eUICCVinylMAVValve::HardwareHasESIM(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

uint64_t eUICC::eUICCVinylMAVValve::HardwareHasESIM(eUICC::eUICCVinylMAVValve *this, unsigned __int8 *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v3[5] = a2;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, v3);
  }

  return eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result;
}

uint64_t ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = capabilities::euicc::supportsGenericUpdater(a1);
  if (!result)
  {
    return result;
  }

  v10[0] = *(v2 + 296);
  v10[1] = 30000;
  v5 = eUICC::GetSIMSKUID::Perform(v10, v4);
  if (v5 || v6 != 1)
  {
    gBBULogMaskGet(v5, v6);
    return _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "GetSIMSKUID error %d status 0x%hhx\n");
  }

  **(a1 + 40) = BYTE1(v6);
  v7 = **(a1 + 40);
  result = TelephonyRadiosGetRadio();
  if (result == 13)
  {
    goto LABEL_7;
  }

  if (result != 18)
  {
    if (result != 17)
    {
      gBBULogMaskGet(result, v8);
      return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "MAV radio %d eSIM lookup not supported!\n");
    }

LABEL_7:
    if (v7 <= 6 && ((1 << v7) & 0x74) != 0)
    {
      eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
    }

    return result;
  }

  if (v7 - 7 <= 1)
  {
    eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  return result;
}

void *eUICC::eUICCVinylMAVValve::GetVinylType@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v4 = eUICC::GetVinylType::Perform();
  v6 = v5;
  v7 = v4;
  v8 = v5;
  gBBULogMaskGet(v4, v5);
  if (v7 || v8 != 1)
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status 0x%hhx\n", v7, v8);
  }

  else
  {
    v9 = v6 >> 8;
    v10 = BYTE1(v6);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "status 0x%hhx cards_type: %hhu \n", 1, v10);
    *(this + 2) = 1;
    *(this + 285) = v9;
    *(this + 288) = v10 == 3;
  }

  return memcpy(a2, this + 8, 0x11BuLL);
}

void *eUICC::eUICCVinylMAVValve::GetData@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  if (!*(this + 37))
  {
    eUICC::eUICCVinylMAVValve::GetData(this, a3);
    return memcpy(a2, this + 8, 0x11BuLL);
  }

  if (*(this + 290) == 1)
  {
    gBBULogMaskGet(this, a3);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
  }

  else
  {
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 8) = 0u;
    *(this + 275) = 0u;
    *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
    eUICC::GetData::Perform();
    *(this + 2) = v10;
    *(this + 13) = bswap32(v12) >> 16;
    *(this + 15) = v13;
    *(this + 31) = v14;
    *(this + 2) = v15;
    *(this + 3) = v16;
    *(this + 4) = v17;
    *(this + 5) = v18;
    *(this + 143) = *&v21[15];
    *(this + 7) = v20;
    *(this + 8) = *v21;
    *(this + 6) = v19;
    *(this + 218) = *&v25[15];
    *(this + 203) = *v25;
    *(this + 187) = v24;
    *(this + 171) = v23;
    *(this + 155) = v22;
    *(this + 115) = v26;
    *(this + 250) = v28;
    *(this + 124) = v27;
    *(this + 267) = v30;
    *(this + 251) = v29;
    *(this + 12) = v11;
    *(this + 283) = v31;
    v6 = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
    *(this + 287) = (v10 == 4) & (v6 ^ 1);
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (*(this + 2) != (RadioVendor - 5) < 0xFFFFFFFD)
    {
      gBBULogMaskGet(RadioVendor, v5);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status %u sw1_sw2 0x%x\n", v9, *(this + 2), *(this + 13));
      return memcpy(a2, this + 8, 0x11BuLL);
    }

    *(this + 290) = 1;
  }

  eUICC::logEUICCData(this + 2, v5);
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylMAVValve::SetCardMode(uint64_t a1, int a2, char a3)
{
  __src[36] = *MEMORY[0x29EDCA608];
  v6 = (a1 + 8);
  (*(*a1 + 8))(__src);
  memcpy(v6, __src, 0x11BuLL);
  if (a3)
  {
    goto LABEL_2;
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (*v6 != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v12);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()");
    return 18;
  }

  if (*(a1 + 31) != a2)
  {
LABEL_2:
    v7 = *(a1 + 292);
    __src[0] = *(a1 + 296);
    LOBYTE(__src[1]) = v7;
    BYTE1(__src[1]) = a2;
    WORD1(__src[1]) = 1;
    HIDWORD(__src[1]) = 10000;
    v8 = eUICC::SwitchMode::Perform();
    v10 = v8;
    if (!v8 && (v9 & 0xFF00000000) == 0x100000000 && a2 == BYTE5(v9))
    {
      return 0;
    }

    gBBULogMaskGet(v8, v9);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Failed err %d status %hhu mode %d sw1 0x%x sw2 0x%x\n", v10);
    return 18;
  }

  gBBULogMaskGet(RadioVendor, v12);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Baseband already in mode %hhu\n", a2);
  return 0;
}

uint64_t eUICC::eUICCVinylMAVValve::ResetCard(eUICC::eUICCVinylMAVValve *this, uint64_t a2)
{
  gBBULogMaskGet(this, a2);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylMAVValve::ResetCard not supported\n");
  return 9;
}

uint64_t eUICC::eUICCVinylMAVValve::DeleteProfile(eUICC::eUICCVinylMAVValve *this, uint64_t a2)
{
  if (*(this + 37))
  {
    v2 = *(this + 73);
    v8 = *(this + 37);
    v9 = v2;
    v10 = a2;
    v11 = 0;
    v12 = 60000;
    result = eUICC::DeleteProfile::Perform();
    v5 = result;
    v6 = v4;
    v7 = v4;
    if (result || (result = 0, v4 != 1))
    {
      gBBULogMaskGet(result, v4);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "DeleteProfile failed, error %d status %hhu sw1 0x%x sw2 0x%x\n", v5, v7, BYTE1(v6), BYTE2(v6));
      return 18;
    }
  }

  else
  {
    eUICC::eUICCVinylMAVValve::DeleteProfile(&v8, a2);
    return v8;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::StoreData(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v2 = v1;
  v4 = v3;
  v15 = *MEMORY[0x29EDCA608];
  v5 = eUICC::StoreData::Perform();
  if (v10 || v11 != 1)
  {
    gBBULogMaskGet(v5, v6);
    v8 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 224);
    gBBULogMaskGet(v8, v9);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to StoreData status %hhu SW1 0x%x SW2 0x%x\n", v11, v12, HIBYTE(v12));
    result = 18;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, v14, &v14[v13], v13);
    result = 0;
  }

  *v2 = bswap32(v12) >> 16;
  return result;
}

unint64_t eUICC::eUICCVinylMAVValve::LETOEnableEUICC(eUICC::eUICCVinylMAVValve *this, uint64_t a2)
{
  v9[0] = *(this + 37);
  v9[1] = 0x271000003201;
  result = eUICC::LETOMuxSwitch::Perform(v9, a2);
  v4 = v3;
  v5 = HIDWORD(result);
  if (result)
  {
    goto LABEL_6;
  }

  v6 = BYTE4(result) == 0;
  if ((v3 & 0xFF000000000000) != 0x5000000000000)
  {
    v6 = 0;
  }

  if (BYTE4(result) != 2 && !v6)
  {
LABEL_6:
    gBBULogMaskGet(result, v3);
    v7 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid() &&(( rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kSuccess && rsp.contents.resultPhase == LETOMuxSwitch::ResultPhase::kTargetHWActivationCompleted) || rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kErrorAlreadySet)", "", "", 240);
    gBBULogMaskGet(v7, v8);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to LETOEnableEUICC hwSetRsp %hhu resultAvailable %d srcSimHwSet %hhu targetSimHwSet %hhu resultPhase %hhu\n", v5, BYTE3(v4), BYTE4(v4), BYTE5(v4), BYTE6(v4));
    return 18;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallTicket(uint64_t a1, CFDataRef *a2)
{
  if (*a2)
  {
    v3 = (*(*a1 + 16))(a1, 0, 0);
    if (v3)
    {
      v5 = v3;
      gBBULogMaskGet(v3, v4);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 252);
    }

    else
    {
      CFDataGetBytePtr(*a2);
      CFDataGetLength(*a2);
      v6 = eUICC::InstallTicket::Perform();
      v8 = v6;
      v9 = HIDWORD(v7);
      if (v6 || (v7 & 0xFF00000000) != 0x100000000)
      {
        gBBULogMaskGet(v6, v7);
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallTicket failed error %d status %hhu sw1 0x%x sw2 0x%x\n", v8, v9, BYTE1(v9), BYTE2(v9));
        return 16;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    gBBULogMaskGet(a1, a2);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "installTicket", "", "", 249);
    return 2;
  }

  return v5;
}

uint64_t eUICC::eUICCVinylMAVValve::StreamFirmware(eUICC::eUICCVinylMAVValve *this, __CFData *a2)
{
  __src[36] = *MEMORY[0x29EDCA608];
  VinylFirmware::getFirmwareAPDUs(a2, &v45);
  v4 = v45;
  v3 = v46;
  (*(*this + 8))(__src, this);
  memcpy(this + 8, __src, 0x11BuLL);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (*(this + 2) == (RadioVendor - 5) < 0xFFFFFFFD)
  {
    v7 = *(this + 284);
    if (!*(this + 284))
    {
      v7 = *(this + 304);
    }

    gBBULogMaskGet(RadioVendor, v6);
    v8 = v7;
    v9 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "~~~~ MAX APDU PER SET: %zu  ~~~~\n", v7);
    v11 = (v3 - v4) >> 5;
    v44 = v11;
    if (v11 % v7)
    {
      v12 = v11 / v7 + 1;
    }

    else
    {
      v12 = v11 / v7;
    }

    if (v12)
    {
      v13 = (*(*this + 16))(this, 1, 0);
      v15 = v13;
      if (v13)
      {
        gBBULogMaskGet(v13, v14);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 295);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v43 = 0;
        v18 = 32 * v7;
        v19 = v44;
        while (1)
        {
          v20 = v19 - v8;
          if (v19 >= v8)
          {
            v19 = v8;
          }

          v21 = v19 <= 1 ? 1 : v19;
          v22 = v44 - v17 * v8 >= v8 ? v8 : v44 - v17 * v8;
          LODWORD(__src[4]) = 15000;
          v23 = v18;
          __src[2] = operator new[](v18);
          __src[3] = v8;
          __src[0] = *(this + 37);
          LOBYTE(__src[1]) = *(this + 73);
          WORD1(__src[1]) = v12;
          WORD2(__src[1]) = v17;
          BYTE6(__src[1]) = v22;
          gBBULogMaskGet(__src[2], v24);
          v25 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v17, v12, v22);
          if (v44 == v17 * v8)
          {
LABEL_25:
            v34 = eUICC::StreamAPDU::Perform();
            v36 = v34;
            v37 = HIDWORD(v35);
            if (v34 || (v35 & 0xFF00000000) != 0x100000000)
            {
              gBBULogMaskGet(v34, v35);
              _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed StreamAPDU set %d/%zu, error %d status %hhu sw1 0x%x sw2 0x%x\n", v17, v12, v36, v37, BYTE1(v37), BYTE2(v37));
              v38 = 0;
              v43 = 16;
            }

            else
            {
              v38 = 1;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = v16;
            while (__src[3] >= v28)
            {
              v30 = *(v45 + v29);
              v31 = *(v45 + v29 + 16);
              v32 = *(v45 + v29 + 24);
              v33 = (__src[2] + v27);
              *v33 = *(v45 + v29 + 8);
              v33[1] = v30;
              v33[2] = v32;
              v33[3] = v31;
              ++v28;
              v29 += 32;
              v27 += 32;
              if (v21 == v28)
              {
                goto LABEL_25;
              }
            }

            gBBULogMaskGet(v25, v26);
            v39 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "j <= req.apdu_payload.apdu_data_size", "", "", 315);
            gBBULogMaskGet(v39, v40);
            _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed SteamAPDU index '%d' is greater than max array size '%zu'", v28, __src[3]);
            v38 = 0;
          }

          v41 = __src[2];
          __src[2] = 0;
          if (v41)
          {
            operator delete[](v41);
          }

          if ((v38 & 1) == 0)
          {
            break;
          }

          ++v17;
          v18 = v23;
          v16 += v23;
          v19 = v20;
          if (v12 <= v17)
          {
            v15 = 0;
            goto LABEL_36;
          }
        }

        v15 = v43;
      }
    }

    else
    {
      gBBULogMaskGet(v9, v10);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "apduSetCount", "", "", 291);
      v15 = 15;
    }
  }

  else
  {
    gBBULogMaskGet(RadioVendor, v6);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()", "", "", 286);
    v15 = 18;
  }

LABEL_36:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return v15;
}

void sub_299FB198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylMAVValve::InitPerso(uint64_t a1, uint64_t a2, void **a3)
{
  v24 = *MEMORY[0x29EDCA608];
  *&__dst[6] = 0;
  *__dst = 0;
  *&__dst[14] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = v8;
  }

  memcpy(__dst, v6, v9);
  v17 = v4;
  v18 = v5;
  v19 = 0;
  v20 = 0;
  v21 = v9;
  v22 = *__dst;
  v23 = *&__dst[16];
  v10 = eUICC::InitPersoSession::Perform();
  if (*__dst)
  {
    if (!**__dst && *(*__dst + 8) == 1 && *(*__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (*__dst + 13), (*__dst + 13 + *(*__dst + 11)), *(*__dst + 11));
      v12 = 0;
    }

    else
    {
      gBBULogMaskGet(v10, v11);
      v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 341);
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InitPerso status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(*__dst + 8), *(*__dst + 9), *(*__dst + 10), *(*__dst + 11));
      v12 = 18;
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 340);
    v12 = 11;
  }

  if (*&__dst[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__dst[8]);
  }

  return v12;
}

uint64_t eUICC::eUICCVinylMAVValve::AuthPerso(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = operator new(0x818uLL);
  bzero(v6 + 2, 0x810uLL);
  bzero(v6 + 3, 0x802uLL);
  v6[516] = 30000;
  *v6 = *(a1 + 296);
  *(v6 + 8) = *(a1 + 292);
  v7 = *a2;
  if (*(a2 + 8) - *a2 >= 0x800uLL)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(a2 + 8) - *a2;
  }

  memcpy(v6 + 14, v7, v8);
  *(v6 + 6) = v8;
  v9 = eUICC::AuthPersoSession::Perform();
  if (v15)
  {
    if (!*v15 && *(v15 + 8) == 1 && *(v15 + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (v15 + 13), (v15 + 13 + *(v15 + 11)), *(v15 + 11));
      v11 = 0;
    }

    else
    {
      gBBULogMaskGet(v9, v10);
      v12 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 356);
      gBBULogMaskGet(v12, v13);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(v15 + 8), *(v15 + 9), *(v15 + 10), *(v15 + 11));
      v11 = 18;
    }
  }

  else
  {
    gBBULogMaskGet(v9, v10);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 355);
    v11 = 11;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  operator delete(v6);
  return v11;
}

uint64_t eUICC::eUICCVinylMAVValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, 266);
  *(&__dst[16] + 2) = 30000;
  v3 = *(a1 + 296);
  v4 = *(a1 + 292);
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7 >= 0x100)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, v5, v8);
  v9 = *(a1 + 291);
  v17 = v3;
  v18 = v4;
  v19 = 0;
  v20 = v9;
  v21 = 0;
  v22 = v8;
  memcpy(v23, __dst, sizeof(v23));
  v10 = eUICC::FinalizePersoSession::Perform();
  if (*&__dst[0])
  {
    if (**&__dst[0] || *(*&__dst[0] + 8) != 1)
    {
      gBBULogMaskGet(v10, v11);
      v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid()", "", "", 370);
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to FinalizePersoDevice status %hhu SW1 0x%x SW2 0x%x\n", *(*&__dst[0] + 8), *(*&__dst[0] + 9), *(*&__dst[0] + 10));
      v12 = 18;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 369);
    v12 = 11;
  }

  if (*(&__dst[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst[0] + 1));
  }

  return v12;
}

uint64_t eUICC::eUICCVinylMAVValve::ValidatePerso(uint64_t a1, uint64_t a2, void **a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v21 = 0u;
  memset(v22, 0, 24);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  __dst = 0u;
  *&v22[24] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0x78)
  {
    v9 = 120;
  }

  else
  {
    v9 = v8;
  }

  memcpy(&__dst, v6, v9);
  v31 = v20;
  v32 = v21;
  *v33 = *v22;
  *&v33[12] = *&v22[12];
  v27 = __dst;
  v28 = v17;
  v29 = v18;
  v23 = v4;
  v24 = v5;
  v25 = 0;
  v26 = v9;
  v30 = v19;
  v10 = eUICC::VinylValidatePerso::Perform(&v23, &__dst);
  if (__dst)
  {
    if (!*__dst && *(__dst + 8) == 1 && *(__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (__dst + 13), (__dst + 13 + *(__dst + 11)), *(__dst + 11));
      v12 = 0;
    }

    else
    {
      gBBULogMaskGet(v10, v11);
      v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 383);
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(__dst + 8), *(__dst + 9), *(__dst + 10), *(__dst + 11));
      v12 = 18;
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 382);
    v12 = 11;
  }

  if (*(&__dst + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst + 1));
  }

  return v12;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallPairingMSM(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v26 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v16 = 0;
  v2 = *(v1 + 292);
  v4 = *v3;
  v5 = v3[1] - *v3;
  v13 = *(v1 + 296);
  v14 = v2;
  v15 = 0;
  v18 = v4;
  v19 = v5;
  v20 = 10000;
  v6 = eUICC::VinylManagePairing::Perform(&v13, &v21, v3);
  v7 = v21;
  v8 = v22;
  gBBULogMaskGet(v6, v9);
  if (v7 || v8 != 1)
  {
    v11 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 395);
    gBBULogMaskGet(v11, v12);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InstallPairingMSM status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v22, v23, v24, v25);
    return 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallPairingMSM returning success\n");
    return 0;
  }
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingGetNonce(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v23 = *MEMORY[0x29EDCA608];
  v4 = *(v1 + 292);
  v12 = *(v1 + 296);
  v13 = v4;
  v14 = 1;
  *v16 = 0;
  v15 = 0;
  *&v16[3] = 0;
  *&v16[7] = 10000;
  v5 = eUICC::VinylManagePairing::Perform(&v12, &v17, v2);
  if (!v17 && v18 == 1 && v21)
  {
    v10 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, v22, &v22[v21], v21);
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce returning success\n");
    return 0;
  }

  else
  {
    gBBULogMaskGet(v5, v6);
    v7 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid() && rsp.contents.rsp_len", "", "", 406);
    gBBULogMaskGet(v7, v8);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v18, v19, v20, v21);
    return 18;
  }
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingAuthenticate(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v26 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v16 = 0;
  v2 = *(v1 + 292);
  v4 = *v3;
  v5 = v3[1] - *v3;
  v13 = *(v1 + 296);
  v14 = v2;
  v15 = 2;
  v18 = v4;
  v19 = v5;
  v20 = 10000;
  v6 = eUICC::VinylManagePairing::Perform(&v13, &v21, v3);
  v7 = v21;
  v8 = v22;
  gBBULogMaskGet(v6, v9);
  if (v7 || v8 != 1)
  {
    v11 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 418);
    gBBULogMaskGet(v11, v12);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v22, v23, v24, v25);
    return 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate returning success\n");
    return 0;
  }
}

void eUICC::eUICCVinylMAVValve::~eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this)
{
  eUICC::eUICCVinylValve::~eUICCVinylValve(this);

  operator delete(v1);
}

uint64_t eUICCStateMachine::Run(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t *a6)
{
  v54[0] = 0;
  if (a5)
  {
    v39 = a5;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(v54, &v39);
    cf = v54[0];
    if (v54[0])
    {
      CFRetain(v54[0]);
    }
  }

  else
  {
    cf = 0;
  }

  Options::Options(&v39, &cf);
  v12 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45 & 1) != 0 || (v40)
  {
    v13 = 0;
  }

  else
  {
    v13 = v41 ^ 1;
  }

  gBBULogMaskGet(v12, v11);
  Options::ToString(__p, &v39);
  if (v37 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Options:\n%s\n", v14);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = v39;
  v16 = v44;
  v17 = a6[1];
  v34 = *a6;
  v35 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  eUICC::VinylFactory::GetValve(a2, v15, v16, &v34, __p);
  v19 = v35;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (__p[0])
  {
    v20 = *a1;
    *a1 = 0;
    gBBULogMaskGet(v19, v18);
    v21 = eUICCStateMachine::StateAsString(v20);
    v22 = eUICCStateMachine::StateAsString(*a1);
    v23 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Resetting state machine: %s --> %s\n", v21, v22);
    while (1)
    {
      if (*a1 > 6)
      {
        v28 = 0;
        goto LABEL_30;
      }

      gBBULogMaskGet(v23, v24);
      v25 = eUICCStateMachine::StateAsString(*a1);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Running at state %s\n", v25);
      v26 = eUICCStateMachine::Step(a1, a3, a4, &v39, __p);
      v28 = v26;
      if (v26 == 45)
      {
        break;
      }

      gBBULogMaskGet(v26, v27);
      v29 = eUICCStateMachine::StateAsString(*a1);
      v23 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Result %d next state %s allowRetry %d\n", v28, v29, v13 & 1);
      if (((v28 != 0) & v13) == 1)
      {
        v28 = 0;
        v13 = 0;
        *a1 = 6;
      }

      if (v28)
      {
        goto LABEL_30;
      }
    }

    gBBULogMaskGet(v26, v27);
    v31 = eUICCStateMachine::StateAsString(*a1);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "eUICC -- back to host to personalize in state %s\n", v31);
    v28 = 0;
  }

  else
  {
    gBBULogMaskGet(v19, v18);
    v30 = eUICCStateMachine::StateAsString(*a1);
    v23 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Fatal Error: Error creating vinyl valve! Current State: %s\n", v30);
    *a1 = 7;
    v28 = 9;
LABEL_30:
    gBBULogMaskGet(v23, v24);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "ret = %d\n", v28);
  }

  v32 = __p[0];
  __p[0] = 0;
  if (v32)
  {
    (*(*v32 + 136))(v32);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v54[0])
  {
    CFRelease(v54[0]);
  }

  return v28;
}

void ctu::cf::CFSharedRef<__CFDictionary const>::reset(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

const char *eUICCStateMachine::StateAsString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "??????";
  }

  else
  {
    return off_29F293598[a1];
  }
}

uint64_t eUICCStateMachine::Step(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v25 = 7;
  v26[0] = 0;
  v27[0] = &unk_2A2031AA0;
  v27[1] = eUICCStateMachine::Start;
  v27[3] = v27;
  v28 = 2;
  v29[0] = &unk_2A2031AA0;
  v29[1] = eUICCStateMachine::Perso;
  v29[3] = v29;
  v30 = 1;
  v31[0] = &unk_2A2031AA0;
  v31[1] = eUICCStateMachine::Recovery;
  v31[3] = v31;
  v32 = 3;
  v33[0] = &unk_2A2031AA0;
  v33[1] = eUICCStateMachine::UpdateGold;
  v33[3] = v33;
  v34 = 4;
  v35[0] = &unk_2A2031AA0;
  v35[1] = eUICCStateMachine::UpdateMain;
  v35[3] = v35;
  v36 = 5;
  v37[0] = &unk_2A2031AA0;
  v37[1] = eUICCStateMachine::PostProcess;
  v37[3] = v37;
  v38 = 6;
  v39[0] = &unk_2A2031AA0;
  v39[1] = eUICCStateMachine::Retry;
  v39[3] = v39;
  v40 = 7;
  v41 = 0;
  v42 = 8;
  v43 = 0;
  std::map<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>::map[abi:ne200100](&v23, v26, 9);
  for (i = 82; i != -8; i -= 10)
  {
    std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](&v26[i]);
  }

  v9 = v24[0];
  if (!v24[0])
  {
    goto LABEL_17;
  }

  v10 = *a1;
  v11 = v24;
  do
  {
    if (*(v9 + 8) >= v10)
    {
      v11 = v9;
    }

    v9 = v9[*(v9 + 8) < v10];
  }

  while (v9);
  if (v11 == v24 || v10 < *(v11 + 8) || !v11[8])
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Update/StateMachine/eUICCStateMachine.cpp", 0x88u, "Assertion failure(((stateMap.end() != def) && def->second) && eUICCStateMachine is corrupted.)", v20, v21, v22);
  }

  v12 = std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::operator()((v11 + 5), a2, a3);
  gBBULogMaskGet(v12, v13);
  v14 = eUICCStateMachine::StateAsString(*a1);
  v15 = eUICCStateMachine::StateAsString(v25);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Ret %d from state %s next %s\n", v12, v14, v15);
  v16 = v12 == 45 || v12 == 0;
  v17 = v25;
  if (!v16)
  {
    v17 = 7;
  }

  *a1 = v17;
  std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(&v23, v24[0]);
  return v12;
}

void sub_299FB2F34(_Unwind_Exception *a1)
{
  for (i = 328; i != -32; i -= 40)
  {
    std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICCStateMachine::Start(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  *&v10[283] = *MEMORY[0x29EDCA608];
  (*(**a5 + 8))(v10);
  v7 = HowToProceed(v10, a3);
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      v9 = 8;
    }

    else
    {
      v9 = 5;
    }
  }

  else
  {
    if (!v7)
    {
      return 18;
    }

    v9 = 2;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t eUICCStateMachine::Perso(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  v16 = *MEMORY[0x29EDCA608];
  (*(**a5 + 8))(&v13);
  if (BYTE4(v13) == 1 || *(a3 + 48) == 1)
  {
    VinylFirmware::bootloaderVersion(v14, v15, &__p);
    v8 = eUICC::Perso::Perform(a3, &__p, a5);
    v9 = *a5;
    *(v9 + 8) = 0u;
    v9 += 8;
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 224) = 0u;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 267) = 0u;
    *v9 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(a3 + 9))
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  *a4 = v10;
  return v8;
}

void sub_299FB3198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICCStateMachine::Recovery(VinylFirmware *a1, VinylFirmware *a2, uint64_t a3, _DWORD *a4, void *a5)
{
  *&v27[137] = *MEMORY[0x29EDCA608];
  (*(**a5 + 8))(&v25);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (v25 != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v10);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 191);
    return 18;
  }

  if (!v26)
  {
    goto LABEL_18;
  }

  if (VinylFirmware::getRecoveryFwData(a2))
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  if (VinylFirmware::getRecoveryFwData(v11))
  {
    v12 = (*(**a5 + 64))();
    v13 = *a5;
    *(v13 + 8) = 0u;
    v13 += 8;
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 267) = 0u;
    v14 = TelephonyRadiosGetRadioVendor();
    *v13 = (v14 - 2) < 3;
    gBBULogMaskGet(v14, v15);
    if (v12)
    {
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 206);
      return v12;
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully streamed recovery Firmware\n");
    v19 = (*(**a5 + 16))(*a5, 0, 0);
    v12 = v19;
    if (v19)
    {
      gBBULogMaskGet(v19, v20);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 210);
      return v12;
    }

    v21 = *a5;
    *(v21 + 8) = 0u;
    v21 += 8;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 208) = 0u;
    *(v21 + 224) = 0u;
    *(v21 + 176) = 0u;
    *(v21 + 192) = 0u;
    *(v21 + 144) = 0u;
    *(v21 + 160) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 128) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 267) = 0u;
    *v21 = TelephonyRadiosGetRadioVendor() - 2 < 3;
LABEL_18:
    v12 = 0;
    *a4 = 3;
    return v12;
  }

  v16 = ctu::hex(__p, v27, 8);
  gBBULogMaskGet(v16, v17);
  v18 = __p;
  if (v24 < 0)
  {
    v18 = __p[0];
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "SM::Recovery Missing gold with hash %s\n", v18);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  return 15;
}

void sub_299FB34FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICCStateMachine::UpdateGold(const __CFDictionary **a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  *&__dst[71] = *MEMORY[0x29EDCA608];
  cf = 0;
  (*(**a5 + 8))(__dst);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (__dst[0] == (RadioVendor - 5) < 0xFFFFFFFD)
  {
    if (a1)
    {
      VinylFirmware::getFwMac(a1);
      __src = 0;
      v14 = 0uLL;
      v8 = ctu::cf::assign();
      gBBULogMaskGet(v8, v9);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "bundMac.size() == kFWMacSize", "", "", 232);
      return 1;
    }

    else
    {
      gBBULogMaskGet(RadioVendor, v7);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "goldFirmware", "", "", 230);
      return 15;
    }
  }

  else
  {
    gBBULogMaskGet(RadioVendor, v7);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 228);
    return 18;
  }
}

void sub_299FB3C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a22);
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICCStateMachine::UpdateMain(uint64_t a1, CFMutableDataRef *a2, uint64_t a3, int *a4, void *a5)
{
  v91 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0uLL;
  cf = 0;
  (*(**a5 + 8))(__dst);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (*__dst != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v10);
    v14 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 313);
    v15 = 18;
    goto LABEL_40;
  }

  if (!a2)
  {
    gBBULogMaskGet(RadioVendor, v10);
    v14 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "mainFirmware", "", "", 315);
    v15 = 15;
    goto LABEL_40;
  }

  VersionString = VinylFirmware::getVersionString(a2, __src);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *__src;
  v85 = *&__src[16];
  v79 = __dst[41];
  if (__dst[41] == 79)
  {
    gBBULogMaskGet(VersionString, v12);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Update card version as it is overridden\n");
    v89 = *&__dst[24];
    v90 = __dst[40];
    v88[0] = *&__dst[42];
    *(v88 + 6) = *&__dst[48];
    v13 = operator new(0x28uLL);
    *v13 = *&__dst[24];
    v13[16] = __dst[40];
    v13[17] = 77;
    *(v13 + 18) = *&__dst[42];
    *(v13 + 3) = *&__dst[48];
  }

  else
  {
    v13 = operator new(0x28uLL);
    v16 = *&__dst[40];
    *v13 = *&__dst[24];
    *(v13 + 1) = v16;
  }

  v13[32] = 0;
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  v82 = v13;
  v83 = xmmword_299FE2F20;
  VinylFirmware::getFwMac(a2);
  memset(__src, 0, 24);
  v17 = ctu::cf::assign();
  v14 = *__src;
  if (*&__src[8] - *__src != 8)
  {
    gBBULogMaskGet(v17, v18);
    v33 = 330;
    v34 = "bundMac.size() == kFWMacSize";
LABEL_39:
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", v34, "", "", v33);
    v15 = 1;
    goto LABEL_40;
  }

  v19 = HIBYTE(v85);
  if (v85 < 0)
  {
    v19 = __p[1];
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  v20 = HIBYTE(v83);
  if (v83 < 0)
  {
    v20 = v83;
  }

  if (!v20)
  {
LABEL_38:
    gBBULogMaskGet(v17, v18);
    v33 = 331;
    v34 = "!bundVersionString.empty() && !cardVersionString.empty()";
    goto LABEL_39;
  }

  gBBULogMaskGet(v17, v18);
  v21 = &v82;
  if (v83 < 0)
  {
    v21 = v82;
  }

  v22 = __p;
  if (v85 < 0)
  {
    v22 = __p[0];
  }

  v23 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Update Main:Card %s Bundle %s\n", v21, v22);
  v25 = a4;
  v26 = SHIBYTE(v83);
  if (v83 >= 0)
  {
    v27 = HIBYTE(v83);
  }

  else
  {
    v27 = v83;
  }

  v28 = HIBYTE(v85);
  if (v85 >= 0)
  {
    v29 = HIBYTE(v85);
  }

  else
  {
    v29 = __p[1];
  }

  if (v27 == v29)
  {
    if (v83 >= 0)
    {
      v30 = &v82;
    }

    else
    {
      v30 = v82;
    }

    if (v85 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    v23 = memcmp(v30, v31, v27);
    v32 = v23 == 0;
  }

  else
  {
    v32 = 0;
  }

  if (v27 < 0x12)
  {
    v37 = 0;
  }

  else
  {
    if (v26 >= 0)
    {
      v36 = &v82;
    }

    else
    {
      v36 = v82;
    }

    v23 = memchr(v36 + 17, 82, v27 - 17);
    v37 = 0;
    if (v23 && v23 - v36 == 17 && v29 >= 0x12)
    {
      if (v28 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      v23 = memchr(v38 + 17, 77, v29 - 17);
      if (v23)
      {
        v39 = v23 - v38 == 17;
      }

      else
      {
        v39 = 0;
      }

      v37 = v39;
    }
  }

  v40 = *(a3 + 137);
  gBBULogMaskGet(v23, v24);
  v41 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "isR2MUpdate=%d, optimizeRefurbFirmwareUpdatePath=%d\n", v37, *(a3 + 137));
  if (*(a3 + 10) & 1) == 0 && ((v32 | v37 & v40))
  {
    gBBULogMaskGet(v41, v42);
    if (v32)
    {
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Main FW versions already matching (no forceMain)\n");
    }

    else
    {
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Refurb optimization enabled, therefore blocking Refurb to Main FW update.");
    }

    v15 = 0;
    goto LABEL_73;
  }

  AuthPayload = VinylFirmware::getAuthPayload(a2);
  Length = CFDataGetLength(AuthPayload);
  *__src = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], Length, AuthPayload);
  ctu::cf::CFSharedRef<__CFData const>::operator=<__CFData,void>(&cf, __src);
  if (!cf)
  {
    gBBULogMaskGet(0, v46);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Install main but no ticket -- back to restored please\n");
    v15 = 45;
    v43 = 4;
    goto LABEL_80;
  }

  if ((*(a3 + 10) & 1) != 0 || *&__dst[72] != *v14)
  {
    v47 = *a5;
    v80 = cf;
    CFRetain(cf);
    v15 = (*(*v47 + 56))(v47, &v80);
    ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v80);
    v48 = *a5;
    *(v48 + 8) = 0u;
    v48 += 8;
    *(v48 + 240) = 0u;
    *(v48 + 256) = 0u;
    *(v48 + 208) = 0u;
    *(v48 + 224) = 0u;
    *(v48 + 176) = 0u;
    *(v48 + 192) = 0u;
    *(v48 + 144) = 0u;
    *(v48 + 160) = 0u;
    *(v48 + 112) = 0u;
    *(v48 + 128) = 0u;
    *(v48 + 80) = 0u;
    *(v48 + 96) = 0u;
    *(v48 + 48) = 0u;
    *(v48 + 64) = 0u;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 267) = 0u;
    v49 = TelephonyRadiosGetRadioVendor();
    *v48 = (v49 - 2) < 3;
    if (v15)
    {
      gBBULogMaskGet(v49, v50);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 364);
      goto LABEL_40;
    }

    gBBULogMaskGet(v49, v50);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully pushed Install Ticket\n");
  }

  v51 = *a5;
  FwData = VinylFirmware::getFwData(a2);
  v15 = (*(*v51 + 64))(v51, FwData);
  v53 = *a5;
  *(v53 + 8) = 0u;
  v53 += 8;
  *(v53 + 240) = 0u;
  *(v53 + 256) = 0u;
  *(v53 + 208) = 0u;
  *(v53 + 224) = 0u;
  *(v53 + 176) = 0u;
  *(v53 + 192) = 0u;
  *(v53 + 144) = 0u;
  *(v53 + 160) = 0u;
  *(v53 + 112) = 0u;
  *(v53 + 128) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 96) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 267) = 0u;
  v54 = TelephonyRadiosGetRadioVendor();
  *v53 = (v54 - 2) < 3;
  if (v15)
  {
    gBBULogMaskGet(v54, v55);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 370);
    goto LABEL_40;
  }

  gBBULogMaskGet(v54, v55);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully streamed Firmware\n");
  v15 = (*(**a5 + 16))(*a5, 0, 0);
  v56 = *a5;
  *(v56 + 8) = 0u;
  v56 += 8;
  *(v56 + 240) = 0u;
  *(v56 + 256) = 0u;
  *(v56 + 208) = 0u;
  *(v56 + 224) = 0u;
  *(v56 + 176) = 0u;
  *(v56 + 192) = 0u;
  *(v56 + 144) = 0u;
  *(v56 + 160) = 0u;
  *(v56 + 112) = 0u;
  *(v56 + 128) = 0u;
  *(v56 + 80) = 0u;
  *(v56 + 96) = 0u;
  *(v56 + 48) = 0u;
  *(v56 + 64) = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 267) = 0u;
  v57 = TelephonyRadiosGetRadioVendor();
  *v56 = (v57 - 2) < 3;
  if (v15)
  {
    gBBULogMaskGet(v57, v58);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 377);
    goto LABEL_40;
  }

  gBBULogMaskGet(v57, v58);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully switched back to Normal\n");
  if (v79 == 79 || *(a3 + 20) >= 1)
  {
    v70 = (*(**a5 + 16))(*a5, 1, 1);
    v15 = v70;
    if (v70)
    {
      gBBULogMaskGet(v70, v71);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 387);
      goto LABEL_40;
    }

    v72 = (*(**a5 + 16))(*a5, 0, 1);
    v15 = v72;
    if (v72)
    {
      gBBULogMaskGet(v72, v73);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 389);
      goto LABEL_40;
    }

    v76 = *a5;
    *(v76 + 8) = 0u;
    v76 += 8;
    *(v76 + 240) = 0u;
    *(v76 + 256) = 0u;
    *(v76 + 208) = 0u;
    *(v76 + 224) = 0u;
    *(v76 + 176) = 0u;
    *(v76 + 192) = 0u;
    *(v76 + 144) = 0u;
    *(v76 + 160) = 0u;
    *(v76 + 112) = 0u;
    *(v76 + 128) = 0u;
    *(v76 + 80) = 0u;
    *(v76 + 96) = 0u;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0u;
    *(v76 + 16) = 0u;
    *(v76 + 32) = 0u;
    *(v76 + 267) = 0u;
    v77 = TelephonyRadiosGetRadioVendor();
    *v76 = (v77 - 2) < 3;
    gBBULogMaskGet(v77, v78);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "successfully reset the card\n");
  }

  (*(**a5 + 8))(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v59 = operator new(0x28uLL);
  v61 = v59;
  *__src = v59;
  *&__src[8] = xmmword_299FE2F20;
  v62 = *&__dst[40];
  *v59 = *&__dst[24];
  v59[1] = v62;
  *(v59 + 32) = 0;
  if (*(a3 + 20) >= 1)
  {
    v89 = *&__dst[24];
    v90 = __dst[40];
    v63 = __dst[41];
    v88[0] = *&__dst[42];
    *(v88 + 6) = *&__dst[48];
    if (__dst[41] == 79)
    {
      gBBULogMaskGet(v59, v60);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Update card version as it is overridden\n");
      v63 = 77;
    }

    v64 = operator new(0x28uLL);
    *v64 = v89;
    v64[16] = v90;
    v64[17] = v63;
    *(v64 + 18) = v88[0];
    *(v64 + 3) = *(v88 + 6);
    v64[32] = 0;
    operator delete(v61);
    *__src = v64;
    *&__src[8] = xmmword_299FE2F20;
  }

  v65 = TelephonyRadiosGetRadioVendor();
  if (*__dst == (v65 - 5) < 0xFFFFFFFD)
  {
    v67 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__src, __p);
    if (v67)
    {
      v15 = 0;
      v69 = 1;
    }

    else
    {
      gBBULogMaskGet(v67, v68);
      v74 = __src;
      if (__src[23] < 0)
      {
        v74 = *__src;
      }

      v75 = __p;
      if (v85 < 0)
      {
        v75 = __p[0];
      }

      v67 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Main version strings mismatched: Card %s Bundle %s", v74, v75);
      v69 = 0;
      v15 = 22;
    }
  }

  else
  {
    gBBULogMaskGet(v65, v66);
    v67 = _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Condition <<%s>> failed %s %s/%d\n", "euiccData.Valid()", "", "", 408);
    v69 = 0;
    v15 = 18;
  }

  if ((__src[23] & 0x80000000) != 0)
  {
    operator delete(*__src);
  }

  if (v69)
  {
    gBBULogMaskGet(v67, v68);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Success!\n");
LABEL_73:
    v43 = 5;
LABEL_80:
    *v25 = v43;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_299FB4964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  operator delete(__p);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a18);
  if (v36)
  {
    operator delete(v36);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICCStateMachine::PostProcess(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  gBBULogMaskGet(a1, a2);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "Empty implementation for PostProcess. Non updater takes care of refurb options!\n");
  *a4 = 8;
  return 0;
}

uint64_t eUICCStateMachine::Retry(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  v6 = (*(**a5 + 16))(*a5, 0, 1);
  gBBULogMaskGet(v6, v7);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCeUICCStateMachine", "", "...waiting patiently for reset\n");
  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  *a4 = 0;
  return 0;
}

uint64_t std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t HowToProceed(uint64_t a1, uint64_t a2)
{
  *&v25 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) == 1)
  {
    gBBULogMaskGet(a1, a2);
    _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", "eUICC Skip All\n");
    return 3;
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (*a1 == (RadioVendor - 5) < 0xFFFFFFFD)
  {
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3223088;
    memset(&v23, 0, sizeof(v23));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v23, &__p, &v25, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    VinylFirmware::bootloaderVersion(*(a1 + 240), *(a1 + 241), &__p);
    size = v23.__r_.__value_.__l.__size_;
    v8 = v23.__r_.__value_.__r.__words[0];
    if (v23.__r_.__value_.__r.__words[0] != v23.__r_.__value_.__l.__size_)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v12 = *(v8 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v8 + 8);
        }

        if (v12 == v10)
        {
          v14 = v13 >= 0 ? v8 : *v8;
          v6 = memcmp(v14, p_p, v10);
          if (!v6)
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == size)
        {
          goto LABEL_27;
        }
      }
    }

    if (v8 == size)
    {
LABEL_27:
      v2 = 1;
    }

    else
    {
      gBBULogMaskGet(v6, v7);
      _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", "eUICC HW present is too old so we will skip updating it\n");
      v2 = 3;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    if (*(a1 + 279) == 1)
    {
      gBBULogMaskGet(RadioVendor, v5);
      _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", "eUICC not stuffed but that's ok!\n");
      return 3;
    }

    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v15 = xmmword_2A14F5908;
    if (!xmmword_2A14F5908)
    {
      BBUCapabilities::create_default_global(&v23);
      v16 = *&v23.__r_.__value_.__l.__data_;
      *&v23.__r_.__value_.__l.__data_ = 0uLL;
      v17 = *(&xmmword_2A14F5908 + 1);
      xmmword_2A14F5908 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        if (v23.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23.__r_.__value_.__l.__size_);
        }
      }

      v15 = xmmword_2A14F5908;
    }

    v18 = *(&xmmword_2A14F5908 + 1);
    if (*(&xmmword_2A14F5908 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v19 = BBUCapabilities::supportsVinylUpdate(v15);
    v21 = v19;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v21)
    {
      gBBULogMaskGet(v19, v20);
      _BBULog(0, 0xFFFFFFFFLL, "eUICC", "", "Bailing on eUICC error due to status %u\n", *a1);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<__CFData,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<__CFData,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void Options::~Options(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void *std::__function::__func<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2031AA0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &),std::allocator<BBUReturn (*)(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>,BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_299FB51E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 24 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t **std::map<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICCStateMachine::State,std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(a1, v4, a2, a2);
      a2 += 10;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__emplace_hint_unique_key_args<eUICCStateMachine::State,std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__find_equal<eUICCStateMachine::State>(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__construct_node<std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>(a1, a4, v10);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v12, v8, v10[0]);
    v7 = v10[0];
    v10[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](v10);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__find_equal<eUICCStateMachine::State>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
        v9 = *(v9 + 8);
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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
      v17 = (a1 + 1);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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
      v21 = (a1 + 1);
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

uint64_t std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::__construct_node<std::pair<eUICCStateMachine::State const,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[8] = *a2;
  result = std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__value_func[abi:ne200100]((v6 + 10), (a2 + 2));
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::__map_value_compare<eUICCStateMachine::State,std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>,std::less<eUICCStateMachine::State>,true>,std::allocator<std::__value_type<eUICCStateMachine::State,std::function<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State&,std::unique_ptr<eUICC::eUICCVinylValve> &)>>>>::destroy(a1, a2[1]);
    std::__function::__value_func<BBUReturn ()(VinylFirmware *,VinylFirmware *,Options const&,eUICCStateMachine::State &,std::unique_ptr<eUICC::eUICCVinylValve> &)>::~__value_func[abi:ne200100]((a2 + 5));

    operator delete(a2);
  }
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<__CFData,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDataGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_53()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t VinylController::create(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  gBBULogMaskGet(a1, a2);
  v4 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n");
  v6 = VinylController::instance;
  if (!v2 || VinylController::instance)
  {
    if (VinylController::instance)
    {
      goto LABEL_7;
    }

    v6 = operator new(0x88uLL);
    VinylController::VinylController(v6);
  }

  else
  {
    v6 = operator new(0x88uLL);
    v4 = VinylController::VinylController(v6, 0, a1);
  }

  VinylController::instance = v6;
LABEL_7:
  if (!*(v6 + 2))
  {
    v4 = VinylControllerObjDestroy(v6);
    VinylController::instance = 0;
  }

  gBBULogMaskGet(v4, v5);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n");
  return VinylController::instance;
}

uint64_t VinylControllerObjDestroy(uint64_t result)
{
  if (result)
  {
    v1 = (*(*result + 8))(result);
    VinylController::instance = 0;
    gBBULogMaskGet(v1, v2);

    return _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Cleaning up VinylController object \n");
  }

  return result;
}

uint64_t VinylController::create(uint64_t *a1, uint64_t a2)
{
  gBBULogMaskGet(a1, a2);
  v3 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n");
  v5 = VinylController::instance;
  if (!VinylController::instance)
  {
    v6 = operator new(0x88uLL);
    v5 = v6;
    v7 = *a1;
    v8 = a1[1];
    v10[0] = v7;
    v10[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = VinylController::VinylController(v6, v10);
    VinylController::instance = v5;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v5 = VinylController::instance;
    }
  }

  if (!*(v5 + 16))
  {
    v3 = VinylControllerObjDestroy(v5);
    VinylController::instance = 0;
  }

  gBBULogMaskGet(v3, v4);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n");
  return VinylController::instance;
}

void sub_299FB5B84(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylController::VinylController(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_2A2031B50;
  *(a1 + 8) = 0;
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = VinylCommunication::create(&v7, a2);
  v5 = v8;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  *(a1 + 24) = *a2 != 0;
  return a1;
}

void sub_299FB5C4C(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylController::VinylController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A2031B50;
  *(a1 + 8) = 0;
  v5 = VinylCommunication::create(a2, 0);
  *(a1 + 16) = v5;
  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  if (a3)
  {
    v6 = *(a3 + 16);
    *(a1 + 32) = *a3;
    *(a1 + 48) = v6;
    v7 = *(a3 + 32);
    v8 = *(a3 + 48);
    v9 = *(a3 + 64);
    *(a1 + 112) = *(a3 + 80);
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    *(a1 + 64) = v7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_299FB5D6C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v2);
  _Unwind_Resume(a1);
}

void VinylController::VinylController(VinylController *this)
{
  *this = &unk_2A2031B50;
  *(this + 1) = 0;
  *(this + 2) = VinylCommunication::create(0, 0);
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
}

uint64_t get_info(__CFDictionary **a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*a2 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    return 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    get_info(&v39, v5);
    return LODWORD(v39.__r_.__value_.__l.__data_);
  }

  v6 = Mutable;
  stringifyDataBuffer((a2 + 7), 16, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v39;
  }

  v8 = copyAsCFString(&v37);
  v38 = v8;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylEID", v8);
  *v40 = 0;
  *&v40[8] = 0;
  *&v40[15] = 0;
  if (*(a2 + 4))
  {
    qmemcpy(v40, "Unpersonalized", 14);
    v9 = 14;
  }

  else
  {
    qmemcpy(v40, "Personalized", 12);
    v9 = 12;
  }

  *v34 = *v40;
  *&v34[15] = *&v40[15];
  v35 = v9;
  v10 = copyAsCFString(v34);
  v36 = v10;
  if (v35 < 0)
  {
    operator delete(*v34);
  }

  CFDictionarySetValue(v6, @"kVinylPersoState", v10);
  v11 = operator new(0x28uLL);
  v12 = *(a2 + 40);
  *v11 = *(a2 + 24);
  v11[1] = v12;
  *(v11 + 32) = 0;
  std::string::__init_copy_ctor_external(&v32, v11, 0x20uLL);
  v13 = copyAsCFString(&v32);
  v33 = v13;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylFirmware", v13);
  v14 = *(a2 + 281);
  v15 = *(a2 + 278);
  std::to_string(&v30, v15);
  v16 = copyAsCFString(&v30);
  v31 = v16;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylSIMSKUID", v16);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v18 = "ESIM";
  if ((RadioVendor - 2) < 2)
  {
    if (!v14)
    {
      v18 = "PSIM";
    }

    goto LABEL_24;
  }

  if (RadioVendor != 1)
  {
    if (RadioVendor != 4)
    {
      goto LABEL_28;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(&v29, v18);
    goto LABEL_29;
  }

  if (v15 < 0xB)
  {
    std::string::basic_string[abi:ne200100]<0>(&v29, eUICC::MAVHWSIMSKUStr[v15]);
    goto LABEL_29;
  }

  gBBULogMaskGet(RadioVendor, "ESIM");
  v19 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", "simSKUID < ARR_SIZE(MAVHWSIMSKUStr)", "", "", 142);
  gBBULogMaskGet(v19, v20);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Error: invalid simSKUID = %u\n", v15);
LABEL_28:
  memset(&v29, 0, sizeof(v29));
LABEL_29:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v29;
  }

  v21 = copyAsCFString(&v27);
  v28 = v21;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylSIMSKU", v21);
  capabilities::radio::radioType(&__p, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = __p;
  }

  v23 = copyAsCFString(&v24);
  v25 = v23;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylRadioType", v23);
  *a1 = v6;
  if (v23)
  {
    CFRelease(v23);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v21)
  {
LABEL_45:
    CFRelease(v21);
  }

LABEL_46:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v16)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  if (v16)
  {
LABEL_50:
    CFRelease(v16);
  }

LABEL_51:
  if (v13)
  {
    CFRelease(v13);
  }

  operator delete(v11);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_299FB62D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, const void *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, const void *a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a34);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a47);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a54);
  operator delete(v54);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 184));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 144));
  if (*(v55 - 113) < 0)
  {
    operator delete(*(v55 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t VinylController::getParamUpdateOperation(const void **this, __CFDictionary *a2, const __CFDictionary *a3)
{
  v107 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, 283);
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  if (a3)
  {
    __p[0] = a3;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 16, __p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, this + 16);
  Options::Options(v82, &cf);
  v77 = this;
  v6 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  gBBULogMaskGet(v6, v5);
  Options::ToString(__p, v82);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "VinylRestore Options:\n%s\n", v7);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (!a2)
  {
    gBBULogMaskGet(v8, v9);
    Transport = VinylDaleCommunication::createTransport();
    if (Transport)
    {
      Transport = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 241, "deviceInfoDict");
    }

    v76 = 1;
    v75 = 0;
    if (*gBBULogMaskGet(Transport, v52))
    {
      v73 = 0;
      v74 = 0;
      v44 = 0;
      v28 = 0;
      v33 = 0;
      v35 = 0;
      v31 = 0;
      v27 = 0;
      v37 = 0;
      v39 = 0;
      v78 = 0;
      if (gBBULogVerbosity >= 1)
      {
        v76 = 1;
        v78 = 0;
        _BBULog(0, 1, "VinylController", "", "deviceInfoDict passed is NULL:\n");
        v74 = 0;
        v75 = 0;
        v44 = 0;
        v73 = 0;
        v28 = 0;
        v33 = 0;
        v35 = 0;
        v31 = 0;
        v27 = 0;
        v37 = 0;
        v39 = 0;
      }

      goto LABEL_34;
    }

LABEL_123:
    v73 = 0;
    v74 = 0;
    v44 = 0;
    v28 = 0;
    v33 = 0;
    v35 = 0;
    v31 = 0;
    v27 = 0;
    v37 = 0;
    v39 = 0;
    v78 = 0;
    goto LABEL_34;
  }

  TransportNoEvents = VinylController::createTransportNoEvents(this, 0);
  v12 = TransportNoEvents;
  if (!TransportNoEvents)
  {
    v13 = v82[0];
    (*(**(v77 + 2) + 48))(&v79);
    eUICC::VinylFactory::GetValve(v77 + 32, v13, 0, &v79, __p);
    v15 = __p[0];
    __p[0] = 0;
    v16 = v80;
    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }

    if (v15)
    {
      v78 = v15;
      (*(*v15 + 8))(__p, v15);
      memcpy(__dst, __p, 0x11BuLL);
      RadioVendor = TelephonyRadiosGetRadioVendor();
      if (LODWORD(__dst[0]) == (RadioVendor - 5) < 0xFFFFFFFD)
      {
        v19 = *MEMORY[0x29EDB8ED8];
        v21 = CFDataCreate(*MEMORY[0x29EDB8ED8], __dst + 7, 16);
        v104 = v21;
        if (v21)
        {
          v75 = v21;
          CFDictionarySetValue(a2, @"eUICC,EID", v21);
          v23 = CFNumberCreate(v19, kCFNumberSInt8Type, &__dst[17] + 3);
          v103 = v23;
          if (v23)
          {
            v74 = v23;
            CFDictionarySetValue(a2, @"eUICC,ChipID", v23);
            v24 = CFDataCreate(v19, &__dst[3] + 8, 8);
            v101 = v24;
            Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v27 = Mutable;
            v96 = Mutable;
            v73 = v24;
            if (!v24 || !Mutable)
            {
              gBBULogMaskGet(Mutable, v26);
              v47 = VinylDaleCommunication::createTransport();
              if (v47)
              {
                v47 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 270, "mainNonce && mainDict");
              }

              gBBULogMaskGet(v47, v48);
              _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create mainDict\n");
              v44 = 0;
              v28 = 0;
              v33 = 0;
              v35 = 0;
              v31 = 0;
              goto LABEL_111;
            }

            CFDictionarySetValue(Mutable, @"Nonce", v24);
            CFDictionarySetValue(a2, @"eUICC,Main", v27);
            v28 = CFDataCreate(v19, &__dst[4], 8);
            v100 = v28;
            v29 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
            v31 = v29;
            v97 = v29;
            if (v28 && v29)
            {
              CFDictionarySetValue(v29, @"Nonce", v28);
              CFDictionarySetValue(a2, @"eUICC,Gold", v31);
              CFDictionarySetValue(a2, @"@eUICC,Ticket", *MEMORY[0x29EDB8F00]);
              v33 = CFDataCreate(v19, &__dst[15] + 3, 20);
              v99 = v33;
              if (v33)
              {
                CFDictionarySetValue(a2, @"eUICC,RootKeyIdentifier", v33);
                v35 = CFDataCreate(v19, &__dst[15], 3);
                v98 = v35;
                if (v35)
                {
                  CFDictionarySetValue(a2, @"eUICC,FirmwareLoaderVersion", v35);
                  v37 = CFDataCreate(v19, &__dst[4] + 8, 16);
                  v95 = v37;
                  if (v37)
                  {
                    CFDictionarySetValue(a2, @"eUICC,MainFwMac", v37);
                    v39 = CFDataCreate(v19, &__dst[9] + 3, 16);
                    v94 = v39;
                    if (v39)
                    {
                      CFDictionarySetValue(a2, @"eUICC,GoldFwMac", v39);
                      v41 = MGCopyAnswer();
                      if (v41)
                      {
                        CFDictionarySetValue(a2, @"eUICC,ApProductionMode", v41);
                      }

                      else
                      {
                        gBBULogMaskGet(0, v40);
                        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "MobileGestalt returned NULL for SigningFuse");
                      }

                      if (v83 < 1)
                      {
                        v44 = 0;
                        goto LABEL_33;
                      }

                      v44 = CFNumberCreate(v19, kCFNumberSInt8Type, &v83);
                      v102 = v44;
                      if (v44)
                      {
                        CFDictionarySetValue(a2, @"eUICC,BypassSEPPairing", v44);
LABEL_33:
                        v76 = 0;
                        goto LABEL_34;
                      }

                      gBBULogMaskGet(0, v43);
                      v71 = VinylDaleCommunication::createTransport();
                      if (v71)
                      {
                        v71 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 323, "eUICCSepPairingBypassValue");
                      }

                      gBBULogMaskGet(v71, v72);
                      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create eUICCSepPairingBypassValue\n");
                      v44 = 0;
                      goto LABEL_113;
                    }

                    gBBULogMaskGet(0, v38);
                    v69 = VinylDaleCommunication::createTransport();
                    if (v69)
                    {
                      v69 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 303, "goldFwMac");
                    }

                    gBBULogMaskGet(v69, v70);
                    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create goldFwMac\n");
                    v44 = 0;
LABEL_112:
                    v39 = 0;
LABEL_113:
                    v76 = 1;
                    goto LABEL_34;
                  }

                  gBBULogMaskGet(0, v36);
                  v67 = VinylDaleCommunication::createTransport();
                  if (v67)
                  {
                    v67 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 298, "mainFwMac");
                  }

                  gBBULogMaskGet(v67, v68);
                  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create mainFwMac\n");
                  v44 = 0;
LABEL_111:
                  v37 = 0;
                  goto LABEL_112;
                }

                gBBULogMaskGet(0, v34);
                v65 = VinylDaleCommunication::createTransport();
                if (v65)
                {
                  v65 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 292, "firmwareLoaderVersion");
                }

                gBBULogMaskGet(v65, v66);
                _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create firmwareLoaderVersion\n");
                v44 = 0;
LABEL_110:
                v35 = 0;
                goto LABEL_111;
              }

              gBBULogMaskGet(0, v32);
              v63 = VinylDaleCommunication::createTransport();
              if (v63)
              {
                v63 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 287, "certIdentifier");
              }

              gBBULogMaskGet(v63, v64);
              _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create certIdentifier\n");
            }

            else
            {
              gBBULogMaskGet(v29, v30);
              v49 = VinylDaleCommunication::createTransport();
              if (v49)
              {
                v49 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 279, "goldNonce && goldDict");
              }

              gBBULogMaskGet(v49, v50);
              _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create goldDict\n");
            }

            v44 = 0;
            v33 = 0;
            goto LABEL_110;
          }

          gBBULogMaskGet(0, v22);
          v61 = VinylDaleCommunication::createTransport();
          if (v61)
          {
            v61 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 262, "chipID");
          }

          gBBULogMaskGet(v61, v62);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create euiccCSN\n");
LABEL_102:
          v73 = 0;
          v74 = 0;
          v44 = 0;
          v28 = 0;
          v33 = 0;
          v35 = 0;
          v31 = 0;
          v27 = 0;
          goto LABEL_111;
        }

        gBBULogMaskGet(0, v20);
        v59 = VinylDaleCommunication::createTransport();
        if (v59)
        {
          v59 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 257, "euiccCSN");
        }

        gBBULogMaskGet(v59, v60);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "failed to create euiccCSN\n");
      }

      else
      {
        gBBULogMaskGet(RadioVendor, v18);
        v57 = VinylDaleCommunication::createTransport();
        if (v57)
        {
          v57 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 254, "outData.Valid()");
        }

        gBBULogMaskGet(v57, v58);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "eUICC not detected, skipping\n");
      }

      v75 = 0;
      goto LABEL_102;
    }

    gBBULogMaskGet(v16, v14);
    v55 = VinylDaleCommunication::createTransport();
    if (v55)
    {
      v55 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 250, "vinylValve");
    }

    gBBULogMaskGet(v55, v56);
    v12 = 0;
    v76 = -1;
LABEL_91:
    v78 = 0;
    _BBULog(0, v76, "VinylController", "", "Fail to create transport: %d\n", v12);
    v76 = 1;
    v39 = 0;
    v74 = 0;
    v75 = 0;
    v44 = 0;
    v73 = 0;
    v28 = 0;
    v33 = 0;
    v35 = 0;
    v31 = 0;
    v27 = 0;
    v37 = 0;
    goto LABEL_34;
  }

  gBBULogMaskGet(TransportNoEvents, v11);
  v53 = VinylDaleCommunication::createTransport();
  if (v53)
  {
    v53 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 245, "kBBUReturnSuccess == ret");
  }

  v76 = 1;
  v75 = 0;
  if ((*gBBULogMaskGet(v53, v54) & 1) == 0)
  {
    goto LABEL_123;
  }

  v73 = 0;
  v74 = 0;
  v44 = 0;
  v28 = 0;
  v33 = 0;
  v35 = 0;
  v31 = 0;
  v27 = 0;
  v37 = 0;
  v39 = 0;
  v78 = 0;
  if (gBBULogVerbosity > 0)
  {
    goto LABEL_91;
  }

LABEL_34:
  v45 = VinylController::freeTransport(v77, v42);
  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v89 < 0)
  {
    operator delete(v88);
  }

  if (v87 < 0)
  {
    operator delete(v86);
  }

  if (v85 < 0)
  {
    operator delete(v84);
    if (!v39)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v39)
  {
LABEL_46:
    CFRelease(v39);
  }

LABEL_47:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v78)
  {
    (*(*v78 + 136))(v78);
  }

  if (v45)
  {
    return v45;
  }

  else
  {
    return v76;
  }
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t VinylController::createTransportNoEvents(VinylController *this, uint64_t a2)
{
  if (!*(this + 2))
  {
    VinylController::createTransportNoEvents(&v13, a2);
    return v13;
  }

  if (!*(this + 24))
  {
    v5 = VinylController::freeTransport(this, a2);
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v7;
      gBBULogMaskGet(v5, v6);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "createTransport attempt %d/%d\n", v8, 2);
      v11 = (*(**(this + 2) + 16))(*(this + 2), this + 32);
      if (!v11)
      {
        break;
      }

      VinylController::freeTransport(this, v10);
      __ns.__rep_ = 3000000000;
      std::this_thread::sleep_for (&__ns);
      v7 = 0;
      v8 = 2;
    }

    while ((v9 & 1) != 0);
    return v11;
  }

  gBBULogMaskGet(this, a2);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "opening channel on provided external transport\n");
  v3 = *(**(this + 2) + 24);

  return v3();
}

uint64_t VinylController::freeTransport(VinylController *this, uint64_t a2)
{
  if (*(this + 24))
  {
    gBBULogMaskGet(this, a2);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Skipping free of external transport\n");
    return 0;
  }

  else
  {
    v4 = *(this + 2);
    if (v4)
    {
      v5 = *(this + 11);
      if (v5 && (v6 = v5(this + 32), v4 = *(this + 2), v6))
      {
        v7 = *(*v4 + 40);
      }

      else
      {
        v7 = *(*v4 + 40);
      }

      if (v7())
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      VinylController::freeTransport(&v8, a2);
      return v8;
    }
  }
}

uint64_t VinylController::checkVinylPresence(const void **this, const __CFDictionary *a2, BOOL *a3, char a4)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    __p[0] = a2;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 16, __p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, this + 16);
  Options::Options(v39, &cf);
  v8 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  gBBULogMaskGet(v8, v7);
  Options::ToString(__p, v39);
  if (v51 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "VinylRestore Options:\n%s\n", v9);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if (a3)
  {
    *a3 = 0;
    TransportNoEvents = VinylController::createTransportNoEvents(this, 0);
    v14 = TransportNoEvents;
    if (TransportNoEvents)
    {
      gBBULogMaskGet(TransportNoEvents, v13);
      Transport = VinylDaleCommunication::createTransport();
      if (Transport)
      {
        Transport = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 365, "kBBUReturnSuccess == ret");
      }

      gBBULogMaskGet(Transport, v33);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to create transport: %d\n", v14);
    }

    else
    {
      v15 = v39[0];
      (*(*this[2] + 48))(&v36);
      eUICC::VinylFactory::GetValve(this + 4, v15, 0, &v36, __p);
      v17 = __p[0];
      __p[0] = 0;
      v18 = v37;
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v17)
      {
        v19 = (*(*v17 + 8))(__p, v17);
        v20 = __p[0];
        v21 = v52;
        if ((*(gBBULogMaskGet(v19, v22) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
        {
          v23 = v20 == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD;
          _BBULog(22, 7, "VinylController", "", "Get data Valid(): %d isAbsentOk %d\n", v23, v21);
        }

        if (v20 == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD || (v21 & 1) == 0)
        {
          RadioVendor = TelephonyRadiosGetRadioVendor();
          if (v20 != (RadioVendor - 5) < 0xFFFFFFFD)
          {
            gBBULogMaskGet(RadioVendor, v24);
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid GetData, but allow Vinyl Update for coredump collection\n");
          }

          v25 = 1;
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_24;
      }

      gBBULogMaskGet(v18, v16);
      v34 = VinylDaleCommunication::createTransport();
      if (v34)
      {
        v34 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 370, "vinylValve");
      }

      gBBULogMaskGet(v34, v35);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to create transport: %d\n", 0);
    }

    v17 = 0;
    v25 = a4 ^ 1;
LABEL_24:
    v27 = 0;
    *a3 = v25;
    goto LABEL_25;
  }

  gBBULogMaskGet(v10, v11);
  v30 = VinylDaleCommunication::createTransport();
  if (v30)
  {
    v30 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 356, "vinylPresent");
  }

  gBBULogMaskGet(v30, v31);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid input parameter\n");
  v17 = 0;
  v27 = 2;
LABEL_25:
  v28 = VinylController::freeTransport(this, v24);
  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v17)
  {
    (*(*v17 + 136))(v17);
  }

  if (v28)
  {
    return v28;
  }

  else
  {
    return v27;
  }
}

void sub_299FB7AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylController::updateFw(VinylController *this, VinylFirmware *a2, VinylFirmware *a3, const __CFDictionary *a4)
{
  default_global = eUICCStateMachine::create_default_global(&v29);
  gBBULogMaskGet(default_global, v9);
  v10 = _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::updateFw\n");
  if (a2 && a3 && a4)
  {
    TransportNoEvents = VinylController::createTransportNoEvents(this, 0);
    v14 = TransportNoEvents;
    if (TransportNoEvents)
    {
      gBBULogMaskGet(TransportNoEvents, v13);
      Transport = VinylDaleCommunication::createTransport();
      if (Transport)
      {
        Transport = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 415, "kBBUReturnSuccess == ret");
      }

      gBBULogMaskGet(Transport, v24);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to create transport: %d\n", v14);
    }

    else
    {
      v15 = v29;
      (*(**(this + 2) + 48))(&v27);
      v14 = eUICCStateMachine::Run(v15, this + 32, a2, a3, a4, &v27);
      v17 = v28;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v14)
      {
        gBBULogMaskGet(v17, v16);
        v25 = VinylDaleCommunication::createTransport();
        if (v25)
        {
          v25 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 419, "kBBUReturnSuccess == ret");
        }

        gBBULogMaskGet(v25, v26);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to run eUICC state machine: %d\n", v14);
      }

      else
      {
        v14 = 0;
        if ((*(gBBULogMaskGet(v17, v16) + 2) & 0x40) != 0 && gBBULogVerbosity >= 1)
        {
          _BBULog(22, 1, "VinylController", "", "returning VinylController::updateFw\n");
          v14 = 0;
        }
      }
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    v21 = VinylDaleCommunication::createTransport();
    if (v21)
    {
      v21 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 411, "goldFirmware && mainFirmware && restoreOptions");
    }

    gBBULogMaskGet(v21, v22);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "invalid input params");
    v14 = 2;
  }

  v19 = VinylController::freeTransport(this, v18);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v19)
  {
    return v19;
  }

  else
  {
    return v14;
  }
}

void sub_299FB7E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t *eUICCStateMachine::create_default_global@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v2 = operator new(4uLL);
  eUICCStateMachine::eUICCStateMachine(v2);

  return std::shared_ptr<eUICCStateMachine>::shared_ptr[abi:ne200100]<eUICCStateMachine,0>(a1, v2);
}

uint64_t VinylController::Refurb(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *&v13[283] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v5 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "refurbAction: %d\n", v4);
  v7 = 0;
  if ((v4 - 3) >= 2)
  {
    if (v4 == 1)
    {
      v8 = 0;
    }

    else
    {
      if (v4 != 2)
      {
        gBBULogMaskGet(v5, v6);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "default case\n");
        return 0;
      }

      v8 = 1;
    }

    v9 = (*(**a3 + 32))(*a3, v8);
    if (v9)
    {
      v7 = v9;
      gBBULogMaskGet(v9, v10);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to handle Refurb operation, ret %d\n", v7);
      return v7;
    }

    v11 = *a3;
    *(v11 + 8) = 0u;
    v11 += 8;
    *(v11 + 240) = 0u;
    *(v11 + 256) = 0u;
    *(v11 + 208) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 267) = 0u;
    *v11 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    (*(**a3 + 8))(v13);
    return 0;
  }

  return v7;
}

uint64_t VinylController::operationRequested(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v5 = xmmword_2A14F5908;
    if (!xmmword_2A14F5908)
    {
      BBUCapabilities::create_default_global(&v19);
      v6 = v19;
      v19 = 0uLL;
      v7 = *(&xmmword_2A14F5908 + 1);
      xmmword_2A14F5908 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
        }
      }

      v5 = xmmword_2A14F5908;
    }

    v8 = *(&xmmword_2A14F5908 + 1);
    if (*(&xmmword_2A14F5908 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    if (BBUCapabilities::supportsEuiccViaEOS(v5))
    {
      v9 = 1;
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v10 = xmmword_2A14F5908;
      if (!xmmword_2A14F5908)
      {
        BBUCapabilities::create_default_global(&v19);
        v11 = v19;
        v19 = 0uLL;
        v12 = *(&xmmword_2A14F5908 + 1);
        xmmword_2A14F5908 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          if (*(&v19 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
          }
        }

        v10 = xmmword_2A14F5908;
      }

      v13 = *(&xmmword_2A14F5908 + 1);
      if (*(&xmmword_2A14F5908 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v9 = BBUCapabilities::supportsVinylUpdate(v10);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *(a3 + 135);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a3 + 120);
  }

  v15 = *(a3 + 79);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 64);
  }

  if (a2 > 2)
  {
    if ((a2 - 4) >= 3)
    {
      if (a2 == 3)
      {
        return (v15 | v14) != 0;
      }

      if (a2 != 8)
      {
        return 0;
      }
    }

    return 1;
  }

  switch(a2)
  {
    case 0:
      return 1;
    case 1:
      if (v15 | v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9;
      }

      return (*(a3 + 13) | *(a3 + 12) | v17);
    case 2:
      return v9;
    default:
      return 0;
  }
}

void sub_299FB82E0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void VinylController::~VinylController(VinylController *this)
{
  VinylController::~VinylController(this);

  operator delete(v1);
}

{
  *this = &unk_2A2031B50;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    CFRelease(v5);
  }
}

void *std::shared_ptr<eUICCStateMachine>::shared_ptr[abi:ne200100]<eUICCStateMachine,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2031B80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299FB83CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICCStateMachine *,std::shared_ptr<eUICCStateMachine>::__shared_ptr_default_delete<eUICCStateMachine,eUICCStateMachine>,std::allocator<eUICCStateMachine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICCStateMachine *,std::shared_ptr<eUICCStateMachine>::__shared_ptr_default_delete<eUICCStateMachine,eUICCStateMachine>,std::allocator<eUICCStateMachine>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICCStateMachine *,std::shared_ptr<eUICCStateMachine>::__shared_ptr_default_delete<eUICCStateMachine,eUICCStateMachine>,std::allocator<eUICCStateMachine>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_109()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

VinylDaleCommunication *VinylCommunication::create(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create");
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v7 = operator new(0x40uLL);
    VinylICECommunication::VinylICECommunication(v7, v3, a2);
  }

  else
  {
    v6 = RadioVendor;
    if (RadioVendor == 4)
    {
      v7 = operator new(0x58uLL);
      VinylDaleCommunication::VinylDaleCommunication(v7);
    }

    else if (RadioVendor == 1)
    {
      v7 = operator new(0x38uLL);
      VinylEURCommunication::VinylEURCommunication(v7, a2);
    }

    else
    {
      gBBULogMaskGet(RadioVendor, v5);
      _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v6);
      return 0;
    }
  }

  return v7;
}

void *VinylCommunication::create(uint64_t *a1, uint64_t a2)
{
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create");
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (RadioVendor == 4)
  {
    v5 = operator new(0x58uLL);
    v6 = v5;
    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylDaleCommunication::VinylDaleCommunication(v5, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v8 = RadioVendor;
    gBBULogMaskGet(RadioVendor, v4);
    _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v8);
    return 0;
  }

  return v6;
}

void sub_299FB8794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t VinylCommunication::VinylCommunication(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_2A2031BF8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t VinylEURCommunication::VinylEURCommunication(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *a1 = &unk_2A20312F8;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 35;
  return a1;
}

uint64_t VinylICECommunication::VinylICECommunication(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_2A2031940;
  *(a1 + 24) = 0;
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 40) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 35;
  return a1;
}

void VinylDaleCommunication::VinylDaleCommunication(VinylDaleCommunication *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *this = &unk_2A2031358;
  *(this + 3) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(this + 4) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(this + 10) = 35;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
}

uint64_t VinylDaleCommunication::VinylDaleCommunication(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2031358;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(a1 + 40) = 35;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(a1 + 48) = v5;
    *(a1 + 56) = 0;
  }

  return a1;
}

uint64_t *ReverseProxyGetSettings@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3002000000;
  v29[3] = __Block_byref_object_copy__0;
  v29[4] = __Block_byref_object_dispose__0;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A2031C50;
  v30[0] = v4;
  v28 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  *a2 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a1, *(a1 + 8));
  }

  else
  {
    v26 = *a1;
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v26;
  }

  v30[1] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v31;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v32;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = CFURLCreateWithString(v5, v34, 0);
    CFRelease(v34);
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v27 = v6;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v7 = RPRegisterForAvailability();
  v9 = v7;
  if (!v7)
  {
    gBBULogMaskGet(0, v8);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "reg", "", "", 41);
    gBBULogMaskGet(v16, v17);
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to register for proxy\n");
    if (!v6)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v10 = *(a1 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  if (v10 && v6)
  {
    RPRegistrationResume();
    v33.__r_.__value_.__r.__words[0] = 5;
    v11 = std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(v4, &v33);
    v12 = RPRegistrationInvalidate();
    if (v11)
    {
      gBBULogMaskGet(v12, v13);
      v14 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "fs == std::future_status::ready", "", "", 47);
      gBBULogMaskGet(v14, v15);
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "PRP timed out %d\n", v11);
    }

    else
    {
      v22 = std::future<BOOL>::get(&v28);
      if (v22)
      {
        v33.__r_.__value_.__r.__words[0] = RPCopyProxyDictionary();
        ctu::cf::CFSharedRef<__CFDictionary const>::operator=(a2, &v33.__r_.__value_.__l.__data_);
      }

      else
      {
        gBBULogMaskGet(v22, v23);
        v24 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "future.get()", "", "", 48);
        gBBULogMaskGet(v24, v25);
        _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to get PRP\n");
      }
    }
  }

  else
  {
    gBBULogMaskGet(v7, v8);
    v18 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "!url.empty() && urlRef", "", "", 42);
    gBBULogMaskGet(v18, v19);
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "NULL requestURL?\n");
  }

  CFRelease(v9);
  v6 = v27;
  if (v27)
  {
LABEL_35:
    CFRelease(v6);
  }

LABEL_36:
  v20 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
  }

  _Block_object_dispose(v29, 8);
  return std::promise<BOOL>::~promise(v30);
}