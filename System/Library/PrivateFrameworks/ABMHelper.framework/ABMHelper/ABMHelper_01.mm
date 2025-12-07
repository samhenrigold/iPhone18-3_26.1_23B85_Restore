void sub_23C1D2444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void ***std::string::__assign_no_alias<false>(void ***a1, const void *a2, void **__len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(__len + v7) = 0;
  return a1;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  *(v16 + 11) = *(v16 + 3);
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_23C1D2808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v8 = 0;
  v9 = a2 + 1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_25:
    v17 = *(a1 + 24) & 0x1F0;
    goto LABEL_26;
  }

  v10 = a2[1];
  if (v10 != 46)
  {
    if (v10 == 58)
    {
      v11 = a2 + 2;
      if (a3 - (v4 + 2) >= 2 && a3 - 1 != v11)
      {
        v12 = v4 + 2;
        v13 = v4 + 3;
        if (v4[2] != 58)
        {
          goto LABEL_14;
        }

LABEL_13:
        if (*v13 == 93)
        {
          if (a3 != v12)
          {
            v21 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, v11, v12, *(a1 + 24) & 1);
            if (!v21)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
            }

            *(a4 + 160) |= v21;
            if (SHIBYTE(v35) < 0)
            {
              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
LABEL_14:
          while (v13 != a3 - 1)
          {
            ++v12;
            if (*v13++ == 58)
            {
              goto LABEL_13;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    if (v10 == 61)
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_69;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v14 = a2 + 2;
  if (a3 - (v4 + 2) < 2 || a3 - 1 == v14)
  {
LABEL_90:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v15 = v4 + 2;
  v16 = v9 + 2;
  if (*(v16 - 1) != 46)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*v16 != 93)
  {
LABEL_21:
    while (v16 != a3 - 1)
    {
      ++v15;
      if (*v16++ == 46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_90;
  }

  if (a3 == v15)
  {
    goto LABEL_90;
  }

  v22 = a1;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, v14, v15, &v36);
  a1 = v22;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
    a1 = v22;
  }

  v35 = v37;
  *__p = v36;
  v23 = HIBYTE(v37);
  v8 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v23 = __p[1];
  }

  if ((v23 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v4 = v15 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  v24 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v24 = __p[1];
  }

  if (v24)
  {
LABEL_49:
    if (v4 == a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_26:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v18) = *v4;
    goto LABEL_45;
  }

  v18 = *v4;
  if (v18 != 92)
  {
LABEL_45:
    if (v8 < 0)
    {
      v25 = __p[0];
      __p[1] = 1;
    }

    else
    {
      HIBYTE(v35) = 1;
      v25 = __p;
    }

    *v25 = v18;
    *(v25 + 1) = 0;
    ++v4;
    goto LABEL_49;
  }

  v19 = a1;
  if (v17)
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p);
  }

  else
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p, a4);
  }

  v4 = v20;
  a1 = v19;
  if (v4 == a3)
  {
LABEL_51:
    if (SHIBYTE(v35) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_68;
      }

      if (__p[1] != 1)
      {
        v27 = __p[0];
LABEL_67:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v27, *(v27 + 1));
        goto LABEL_68;
      }

      v27 = __p[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_68;
      }

      v27 = __p;
      if (HIBYTE(v35) != 1)
      {
        goto LABEL_67;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v27);
    goto LABEL_68;
  }

LABEL_50:
  v26 = *v4;
  if (v26 == 93)
  {
    goto LABEL_51;
  }

  v28 = v4 + 1;
  if (v4 + 1 == a3 || v26 != 45 || *v28 == 93)
  {
    goto LABEL_51;
  }

  v36 = 0uLL;
  v37 = 0;
  v29 = v4 + 2;
  if (v28 + 1 != a3 && *v28 == 91 && *v29 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v28 + 2, a3, &v36);
    goto LABEL_81;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v28) = *v28;
    goto LABEL_79;
  }

  LODWORD(v28) = *v28;
  if (v28 != 92)
  {
LABEL_79:
    HIBYTE(v37) = 1;
    LOWORD(v36) = v28;
    goto LABEL_81;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36, a4);
  }

LABEL_81:
  *v32 = *__p;
  v33 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  *v30 = v36;
  v31 = v37;
  v36 = 0uLL;
  v37 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v32, v30);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:
    operator delete(v32[0]);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_87;
    }

LABEL_68:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_87:
  operator delete(v36);
  if (SHIBYTE(v35) < 0)
  {
LABEL_69:
    operator delete(__p[0]);
  }
}

void sub_23C1D2D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_23C1D3068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
            return a2 + 1;
          }

        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
            return a2 + 1;
          }

        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
    return a2 + 1;
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_23C1D3CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_23C1D3CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::pair<std::string,std::string>::~pair(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v6 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v8 < v7)
    {
      *v8 = v6;
      v9 = v8 + 2;
LABEL_41:
      *(a1 + 120) = v9;
      return;
    }

    v19 = *(a1 + 112);
    v20 = v8 - v19;
    v21 = (v8 - v19) >> 1;
    if (v21 > -2)
    {
      v22 = v7 - v19;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        v25 = 0;
LABEL_39:
        v31 = &v25[2 * v21];
        *v31 = v6;
        v9 = v31 + 2;
        memcpy(v25, v19, v20);
        *(a1 + 112) = v25;
        *(a1 + 120) = v9;
        *(a1 + 128) = &v25[2 * v24];
        if (v19)
        {
          operator delete(v19);
        }

        goto LABEL_41;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = operator new(2 * v24);
        goto LABEL_39;
      }

LABEL_47:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_46:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v10 = a2 | (a3 << 8);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  if (*(a1 + 170) == 1)
  {
    if (v12 >= v11)
    {
      v13 = *(a1 + 112);
      v14 = v12 - v13;
      v15 = (v12 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_46;
      }

      v16 = v11 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  else if (v12 >= v11)
  {
    v13 = *(a1 + 112);
    v14 = v12 - v13;
    v15 = (v12 - v13) >> 1;
    if (v15 <= -2)
    {
      goto LABEL_46;
    }

    v27 = v11 - v13;
    if (v27 <= v15 + 1)
    {
      v28 = v15 + 1;
    }

    else
    {
      v28 = v27;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v28;
    }

    if (v18)
    {
      if (v18 < 0)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = v10;
      v30 = operator new(2 * v18);
      v10 = v29;
      goto LABEL_43;
    }

LABEL_42:
    v30 = 0;
LABEL_43:
    v32 = &v30[2 * v15];
    *v32 = v10;
    v26 = v32 + 2;
    memcpy(v30, v13, v14);
    *(a1 + 112) = v30;
    *(a1 + 120) = v26;
    *(a1 + 128) = &v30[2 * v18];
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_45;
  }

  *v12 = v10;
  v26 = v12 + 2;
LABEL_45:
  *(a1 + 120) = v26;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          std::string::__assign_no_alias<false>(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__assign_no_alias<true>(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_23C1D421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  *(v16 + 11) = *(v16 + 3);
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_23C1D4408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *a2;
    v9->__r_.__value_.__r.__words[2] = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = &v11[1];
  v13 = v9 - v3;
  memcpy(v9 - v3, v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_23C1D4790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v9 = *(a1 + 64);
    v10 = v5 - v9;
    v11 = v5 - v9 + 1;
    if (v11 >= 0)
    {
      v12 = v4 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = v3;
        v15 = operator new(v13);
        v3 = v14;
      }

      else
      {
        v15 = 0;
      }

      v21 = &v15[v13];
      v15[v10] = v3;
      v6 = &v15[v10 + 1];
      goto LABEL_26;
    }

LABEL_29:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v8 < v7)
  {
    *v8 = a2;
    *(a1 + 72) = v8 + 1;
    return;
  }

  v9 = *(a1 + 64);
  v10 = v8 - v9;
  v16 = v8 - v9 + 1;
  if (v16 < 0)
  {
    goto LABEL_29;
  }

  v17 = v7 - v9;
  if (2 * v17 > v16)
  {
    v16 = 2 * v17;
  }

  if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    v19 = a2;
    v20 = operator new(v18);
    LOBYTE(a2) = v19;
    v15 = v20;
  }

  else
  {
    v15 = 0;
  }

  v21 = &v15[v18];
  v15[v10] = a2;
  v6 = &v15[v10 + 1];
LABEL_26:
  memcpy(v15, v9, v10);
  *(a1 + 64) = v15;
  *(a1 + 72) = v6;
  *(a1 + 80) = v21;
  if (v9)
  {
    operator delete(v9);
    *(a1 + 72) = v6;
    return;
  }

LABEL_28:
  *(a1 + 72) = v6;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](char **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = a2;
    v13 = operator new(48 * v11);
    a2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[48 * v8];
  *v14 = *a2;
  v15 = &v13[48 * v11];
  *(v14 + 2) = *(a2 + 2);
  *a2 = 0uLL;
  v16 = *(a2 + 24);
  a2[1] = 0uLL;
  *(v14 + 5) = *(a2 + 5);
  a2[2] = 0uLL;
  v7 = v14 + 48;
  v17 = *a1;
  v18 = a1[1] - *a1;
  *(v14 + 24) = v16;
  v19 = &v14[-v18];
  memcpy(&v14[-v18], v17, v18);
  *a1 = v19;
  a1[1] = v7;
  a1[2] = v15;
  if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  a1[1] = v7;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v6 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v6, a2, v3);
    goto LABEL_10;
  }

  if ((v3 | 7) == 0x17)
  {
    v7 = 25;
  }

  else
  {
    v7 = (v3 | 7) + 1;
  }

  v8 = a2;
  v9 = operator new(v7);
  a2 = v8;
  v6 = v9;
  __dst[1] = v3;
  __dst[2] = (v7 | 0x8000000000000000);
  __dst[0] = v9;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v6 + v3) = 0;
  v10 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_23C1D4C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_loop(std::basic_regex<char> *this, size_t __min, size_t __max, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end, BOOL __greedy)
{
  v7 = __mexp_end;
  v8 = __mexp_begin;
  v13 = operator new(0x10uLL);
  end = this->__end_;
  first = end->__first_;
  v13->__first_ = first;
  end->__first_ = 0;
  v16 = operator new(0x38uLL);
  loop_count = this->__loop_count_;
  v16[1].__vftable = __s->__first_;
  v16[2].__vftable = v13;
  v16->__vftable = &unk_284EF90D8;
  v16[3].__vftable = __min;
  v16[4].__vftable = __max;
  LODWORD(v16[5].__vftable) = loop_count;
  HIDWORD(v16[5].__vftable) = v8;
  LODWORD(v16[6].__vftable) = v7;
  BYTE4(v16[6].__vftable) = __greedy;
  __s->__first_ = 0;
  v18 = operator new(0x10uLL);
  v18->__vftable = &unk_284EF9168;
  v18[1].__vftable = v16;
  end->__first_ = v18;
  this->__end_ = v13;
  __s->__first_ = v16;
  this->__loop_count_ = loop_count + 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_284EF9138;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__loop<char>::~__loop(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_284EF9138;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__loop<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t std::__loop<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_284EF9138;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_284EF9138;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_284EF9138;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_284EF9138;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x23EECDDA0](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v4 = a2;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || (&v4->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v6->__traits_.__loc_.__locale_) != 92)
  {
    return v4;
  }

  v7 = BYTE1(v4->__traits_.__loc_.__locale_);
  if (v7 == 40)
  {
    v6 = (&v4->__traits_.__loc_.__locale_ + 2);
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = &unk_284EF9048;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if ((&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92)
      {
        goto LABEL_31;
      }

      if (BYTE1(v14->__traits_.__loc_.__locale_) == 41)
      {
        v4 = (&v14->__traits_.__loc_.__locale_ + 2);
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = &unk_284EF9090;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
  return (&v4->__traits_.__loc_.__locale_ + 2);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    v7 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (&v7->__traits_.__loc_.__locale_ + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92)
  {
    return this;
  }

  v9 = BYTE1(this->__traits_.__loc_.__locale_) == 123 ? (&this->__traits_.__loc_.__locale_ + 2) : this;
  if (v9 == this)
  {
    return this;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = *v9;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = (v9 + 1);
  if ((v9 + 1) == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    v12 = (v12 + 1);
    if (v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = LOBYTE(v12->__traits_.__loc_.__locale_);
  v15 = (&v12->__traits_.__loc_.__locale_ + 1);
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = LOBYTE(v15->__traits_.__loc_.__locale_);
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = (&v12->__traits_.__loc_.__locale_ + 2);
      if ((&v12->__traits_.__loc_.__locale_ + 2) == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = LOBYTE(v15->__traits_.__loc_.__locale_);
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        v15 = (v15 + 1);
        if (v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if ((&v15->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v15->__traits_.__loc_.__locale_) != 92)
      {
        goto LABEL_55;
      }

      if (BYTE1(v15->__traits_.__loc_.__locale_) == 125)
      {
        a3 = (&v15->__traits_.__loc_.__locale_ + 2);
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_53;
      }

LABEL_54:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = BYTE1(v12->__traits_.__loc_.__locale_) == 125 ? &v12->__traits_.__loc_.__locale_ + 2 : v12;
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  __mexp_begin = __mexp_begin;
  __mexp_end = __mexp_end;
  v21 = v10;
LABEL_53:
  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v20, v21, a4, __mexp_begin, __mexp_end, 1);
  return v19;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      end = v14->__end_;
      first = end->__first_;
      v15->__vftable = &unk_284EF9240;
      v15->__first_ = first;
      end->__first_ = v15;
      v14->__end_ = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_284EF8D30;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = &unk_284EF9048;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = &unk_284EF9090;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_284EF8CE8;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, v6, (v7 + 1), v23);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!this->__open_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      end = this->__end_;
      first = end->__first_;
      v10->__vftable = &unk_284EF9240;
      v10->__first_ = first;
      end->__first_ = v10;
      this->__end_ = v10;
      return v9 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = &a2->first + 1; i != a3; ++i)
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80, 0))
            {
              goto LABEL_28;
            }
          }

          else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80, 0))
          {
            goto LABEL_28;
          }
        }

        else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80, 0))
        {
          goto LABEL_28;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
      }

      std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80, 0))
          {
            goto LABEL_28;
          }
        }

        else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80, 0))
        {
          goto LABEL_28;
        }
      }

      else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    this->__end_ = this->__begin_;
    return result;
  }

  if ((std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (this->__end_ == this->__begin_)
  {
    begin = v11;
  }

  else
  {
    begin = this->__begin_;
  }

  first = begin->first;
  this[2].__end_ = begin->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = begin->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *this, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  begin = this->__begin_;
  end = this->__end_;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      end = (begin + v11);
      this->__end_ = (begin + v11);
    }
  }

  else
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v12 - v15);
    begin = this->__begin_;
    end = this->__end_;
  }

  if (end == begin)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    p_matched = &begin->matched;
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(p_matched - 2) = v20 + *v22;
      *(p_matched - 1) = v20 + v22[1];
      *p_matched = *(v22 + 16);
      p_matched += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  this[1].__begin_ = a3;
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  v23 = (v20 + a4[6]);
  this[2].__begin_ = v23;
  this[2].__end_ = (v20 + a4[7]);
  LOBYTE(this[2].__end_cap_.__value_) = *(a4 + 64);
  this[3].__begin_ = (v20 + a4[9]);
  this[3].__end_ = (v20 + a4[10]);
  LOBYTE(this[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    this[4].__end_ = v23;
  }

  LOBYTE(this[4].__begin_) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_91;
  }

  *v79 = 0;
  memset(&v79[8], 0, 85);
  std::deque<std::__state<char>>::__add_back_capacity(&v80);
  v12 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v82.i64[1]) / 0x2AuLL)) + 96 * ((v82.i64[0] + v82.i64[1]) % 0x2AuLL);
  v13 = *&v79[16];
  *v12 = *v79;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v79[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  memset(&v79[56], 0, 24);
  v14 = *&v79[80];
  *(v12 + 85) = *&v79[85];
  *(v12 + 80) = v14;
  v16 = v82.i64[1];
  v15 = v82.i64[0];
  v17 = ++v82.i64[1];
  v18 = *(&v80 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v16) / 0x2AuLL)) + 96 * ((v82.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v20 + 56), v19 - v22);
    v17 = v82.i64[1];
    v15 = v82.i64[0];
    v18 = *(&v80 + 1);
  }

  v75 = a3;
  v76 = 0;
  v77 = 0;
  v23 = 0;
  v24 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v24 + 80) = v6;
  *(v24 + 92) = a6;
  v25 = a3 - a2;
  *(v24 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v25)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v27 = *(*(&v80 + 1) + 8 * ((v17 + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v82.i64[0] - 1) % 0x2AuLL);
    v28 = *(v27 + 80);
    if (v28)
    {
      (*(*v28 + 16))(v28, v27);
    }

    v29 = *v27;
    if (*v27 <= -995)
    {
      if (v29 != -1000)
      {
        if (v29 == -999)
        {
          goto LABEL_9;
        }

        if (v29 != -995)
        {
LABEL_105:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        v30 = v82.i64[0];
        if (!v82.i64[0])
        {
          std::deque<std::__state<char>>::__add_front_capacity(&v80);
          v30 = v82.i64[0];
        }

        v31 = (*(&v80 + 1) + 8 * (v30 / 0x2A));
        v32 = *v31 + 96 * (v30 % 0x2A);
        if (v81 == *(&v80 + 1))
        {
          v32 = 0;
        }

        if (v32 == *v31)
        {
          v32 = *(v31 - 1) + 4032;
        }

        v33 = *(v27 + 16);
        *(v32 - 96) = *v27;
        *(v32 - 80) = v33;
        *(v32 - 56) = 0;
        *(v32 - 48) = 0;
        *(v32 - 64) = 0;
        *(v32 - 64) = *(v27 + 32);
        *(v32 - 48) = *(v27 + 48);
        *(v27 + 32) = 0;
        *(v27 + 40) = 0;
        *(v27 + 48) = 0;
        *(v32 - 40) = 0;
        *(v32 - 32) = 0;
        *(v32 - 24) = 0;
        *(v32 - 40) = *(v27 + 56);
        *(v32 - 24) = *(v27 + 72);
        *(v27 + 56) = 0;
        *(v27 + 64) = 0;
        *(v27 + 72) = 0;
        v34 = *(v27 + 80);
        *(v32 - 11) = *(v27 + 85);
        *(v32 - 16) = v34;
        v35 = vdupq_laneq_s64(v82, 1);
        v82 = vaddq_s64(v82, xmmword_23C32BF70);
        v35.i64[0] = vaddq_s64(v35, v82).u64[0];
        v36 = (*(*(&v80 + 1) + 8 * (v35.i64[0] / 0x2AuLL)) + 96 * (v35.i64[0] % 0x2AuLL));
        v37 = v36[7];
        if (!v37)
        {
          goto LABEL_39;
        }

LABEL_38:
        v36[8] = v37;
        operator delete(v37);
LABEL_39:
        v39 = v36[4];
        if (v39)
        {
          v36[5] = v39;
          operator delete(v39);
        }

        v40 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        v41 = v82;
        --v82.i64[1];
        if (v81 == *(&v80 + 1))
        {
          v40 = 0;
        }

        if ((v40 - (v41.i64[1] + v41.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v81 - 8));
          *&v81 = v81 - 8;
        }

        goto LABEL_9;
      }

      v38 = *(v27 + 16);
      if ((a5 & 0x20) != 0 && v38 == a2 || (a5 & 0x1000) != 0 && v38 != v75)
      {
        goto LABEL_37;
      }

      v49 = v38 - *(v27 + 8);
      v50 = v76;
      if (v76 <= v49)
      {
        v50 = v49;
      }

      if (v77)
      {
        v49 = v50;
      }

      if (v49 == v25)
      {
        v51 = *(&v80 + 1);
        v52 = v81;
        if (v81 == *(&v80 + 1))
        {
          v82.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v80 + 1) + 8 * (v82.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v82.i64[0] % 0x2AuLL));
          v55 = *(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0]) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v80 + 1);
            v52 = v81;
          }

          v82.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v80 + 1) + 8);
              *(&v80 + 1) = v51;
              v64 = (v81 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_86:
          v82.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_86;
        }

        v77 = 1;
        v76 = v25;
        goto LABEL_9;
      }

      v76 = v49;
      v59 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
      v63 = v82;
      --v82.i64[1];
      if (v81 == *(&v80 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v81 - 8));
        *&v81 = v81 - 8;
      }

      v77 = 1;
    }

    else
    {
      if (v29 <= -993)
      {
        if (v29 == -994)
        {
          goto LABEL_9;
        }

        if (v29 != -993)
        {
          goto LABEL_105;
        }

LABEL_37:
        v36 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
        v37 = v36[7];
        if (v37)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v29 == -992)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v79[64] = v42;
        *&v79[80] = v42;
        *&v79[32] = v42;
        *&v79[48] = v42;
        *v79 = v42;
        *&v79[16] = v42;
        std::__state<char>::__state(v79, v27);
        (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
        (*(**&v79[80] + 24))(*&v79[80], 0, v79);
        v43 = *(&v80 + 1);
        if (v81 == *(&v80 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        }

        v45 = v82.i64[1] + v82.i64[0];
        if (v44 == v82.i64[1] + v82.i64[0])
        {
          std::deque<std::__state<char>>::__add_back_capacity(&v80);
          v43 = *(&v80 + 1);
          v45 = v82.i64[1] + v82.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v79[16];
        *v46 = *v79;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v79[32];
        *(v46 + 48) = *&v79[48];
        memset(&v79[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *&v79[56];
        *(v46 + 72) = *&v79[72];
        memset(&v79[56], 0, 24);
        v48 = *&v79[80];
        *(v46 + 85) = *&v79[85];
        *(v46 + 80) = v48;
        ++v82.i64[1];
        if (*&v79[56])
        {
          *&v79[64] = *&v79[56];
          operator delete(*&v79[56]);
        }

        if (*&v79[32])
        {
          *&v79[40] = *&v79[32];
          operator delete(*&v79[32]);
        }
      }

      else if (v29 != -991)
      {
        goto LABEL_105;
      }
    }

LABEL_9:
    v17 = v82.i64[1];
  }

  while (v82.i64[1]);
  if (v77)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v76;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v80 + 1);
    v69 = v81;
    v82.i64[1] = 0;
    v70 = (v81 - *(&v80 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_91:
  v67 = 0;
  v68 = *(&v80 + 1);
  v69 = v81;
  v82.i64[1] = 0;
  v70 = (v81 - *(&v80 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_93;
  }

  do
  {
LABEL_92:
    operator delete(*v68);
    v69 = v81;
    v68 = (*(&v80 + 1) + 8);
    *(&v80 + 1) = v68;
    v70 = (v81 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_93:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_97:
    v82.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_97;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v81 != *(&v80 + 1))
    {
      *&v81 = v81 + ((*(&v80 + 1) - v81 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v67;
}

void sub_23C1D71D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__state<char>::~__state(va);
  std::deque<std::__state<char>>::~deque[abi:ne200100]((v16 - 144));
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  *&v67[36] = -1431655766;
  *v65 = 0xAAAAAAAA00000000;
  memset(&v65[8], 0, 32);
  *v66 = 0u;
  memset(v67, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v53 = 0;
    v54 = *v67;
    if (!*v67)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v63 = 0;
  memset(&v63[8], 0, 85);
  v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
  if (*&v63[56])
  {
    *&v63[64] = *&v63[56];
    operator delete(*&v63[56]);
  }

  if (*&v63[32])
  {
    *&v63[40] = *&v63[32];
    operator delete(*&v63[32]);
  }

  v13 = v69;
  *(v69 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v69;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v61 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v18 - v19);
    v13 = v69;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v62 = a3;
  v23 = (a3 - a2);
  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v24 = (++v22 & 0xFFF) != 0 || (v22 >> 12) < v23;
    if (!v24)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v26 = v13 - 1;
    v25 = *(v13 - 2);
    v27 = v13 - 6;
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 6);
    }

    v28 = *v27;
    if (*v27 <= -994)
    {
      if ((v28 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v28 != -1000)
      {
LABEL_84:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      v29 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v29 == a2 || (a5 & 0x1000) != 0 && v29 != v62)
      {
LABEL_34:
        v30 = v69;
        v31 = *(v69 - 5);
        if (v31)
        {
          *(v69 - 4) = v31;
          operator delete(v31);
        }

        v32 = *(v30 - 8);
        if (v32)
        {
          *(v30 - 7) = v32;
          operator delete(v32);
        }

        v69 = v30 - 6;
        goto LABEL_16;
      }

      v37 = v20;
      v38 = &v29[-*(v13 - 11)];
      if ((v21 & (v37 >= v38)) == 0)
      {
        v39 = *(v13 - 5);
        *v65 = *v27;
        *&v65[16] = v39;
        if (v65 != v27)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v65[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v67, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v40 = *v26;
        *&v67[29] = *(v13 - 11);
        *&v67[24] = v40;
        v37 = v38;
      }

      v41 = v69;
      if (v37 == v23)
      {
        v42 = v68;
        while (v41 != v42)
        {
          v43 = *(v41 - 5);
          if (v43)
          {
            *(v41 - 4) = v43;
            operator delete(v43);
          }

          v44 = *(v41 - 8);
          if (v44)
          {
            *(v41 - 7) = v44;
            operator delete(v44);
          }

          v41 -= 6;
        }

        v69 = v42;
        v21 = 1;
        v20 = v23;
      }

      else
      {
        v20 = v37;
        v45 = *(v69 - 5);
        if (v45)
        {
          *(v69 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v41 - 8);
        if (v46)
        {
          *(v41 - 7) = v46;
          operator delete(v46);
        }

        v69 = v41 - 6;
        v21 = 1;
      }
    }

    else
    {
      switch(v28)
      {
        case -993:
          goto LABEL_34;
        case -992:
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v63[64] = v33;
          *&v63[80] = v33;
          *&v63[32] = v33;
          *&v63[48] = v33;
          *v63 = v33;
          *&v63[16] = v33;
          std::__state<char>::__state(v63, v13 - 6);
          (*(**v26 + 24))(*v26, 1, v13 - 6);
          (*(**&v63[80] + 24))(*&v63[80], 0, v63);
          v34 = v69;
          if (v69 >= v70)
          {
            v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
            if (*&v63[56])
            {
              *&v63[64] = *&v63[56];
              operator delete(*&v63[56]);
            }
          }

          else
          {
            v35 = *&v63[16];
            *v69 = *v63;
            v34[1] = v35;
            *(v34 + 6) = 0;
            *(v34 + 7) = 0;
            *(v34 + 4) = 0;
            *(v34 + 5) = 0;
            v34[2] = *&v63[32];
            *(v34 + 6) = *&v63[48];
            *&v63[32] = 0;
            *&v63[40] = 0;
            *(v34 + 8) = 0;
            *(v34 + 9) = 0;
            *(v34 + 56) = *&v63[56];
            *(v34 + 9) = *&v63[72];
            memset(&v63[48], 0, 32);
            v36 = *&v63[80];
            *(v34 + 85) = *&v63[85];
            *(v34 + 10) = v36;
            v69 = v34 + 6;
          }

          if (*&v63[32])
          {
            *&v63[40] = *&v63[32];
            operator delete(*&v63[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v69;
  }

  while (v68 != v69);
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  v47 = *v61;
  *v47 = a2;
  *(v47 + 8) = &v20[a2];
  *(v47 + 16) = 1;
  if (v66[0] != *&v65[32])
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v66[0] - *&v65[32]) >> 3);
    v49 = (*&v65[32] + 16);
    v50 = 1;
    do
    {
      v51 = v47 + 24 * v50;
      *v51 = *(v49 - 1);
      v52 = *v49;
      v49 += 24;
      *(v51 + 16) = v52;
      v24 = v48 > v50++;
    }

    while (v24);
  }

  v53 = 1;
  v54 = *v67;
  if (*v67)
  {
LABEL_70:
    *&v67[8] = v54;
    operator delete(v54);
  }

LABEL_71:
  if (*&v65[32])
  {
    v66[0] = *&v65[32];
    operator delete(*&v65[32]);
  }

  v55 = v68;
  if (v68)
  {
    v56 = v69;
    v57 = v68;
    if (v69 != v68)
    {
      do
      {
        v58 = *(v56 - 5);
        if (v58)
        {
          *(v56 - 4) = v58;
          operator delete(v58);
        }

        v59 = *(v56 - 8);
        if (v59)
        {
          *(v56 - 7) = v59;
          operator delete(v59);
        }

        v56 -= 6;
      }

      while (v56 != v55);
      v57 = v68;
    }

    v69 = v55;
    operator delete(v57);
  }

  return v53;
}

void sub_23C1D7818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a27);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v27 - 120));
  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void std::deque<std::__state<char>>::__add_back_capacity(char **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[1];
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v44);
LABEL_4:
    v5 = a1[1];
    v44 = *v5;
    a1[1] = v5 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = a1[1];
    v7 = a1[2];
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 1);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == a1[1])
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  a1[1] = v20;
  a1[2] = v19;
  a1[3] = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_23C1D7CDC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x2A)
  {
    *(a1 + 32) = v5 + 42;
    v41 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v41);
      v37 = *(a1 + 16);
      v41 = *(v37 - 8);
      *(a1 + 16) = v37 - 8;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
LABEL_9:
        v9 = 21;
LABEL_42:
        *(a1 + 32) = v9;
        return;
      }
    }

    v9 = *(a1 + 32) + 42;
    goto LABEL_42;
  }

  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 2;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = operator new(8 * v10);
  v12 = operator new(0xFC0uLL);
  v13 = v12;
  if (v10)
  {
    v14 = &v11[8 * v10];
    *v11 = v12;
    v15 = v11 + 8;
    if (v3 != v2)
    {
LABEL_16:
      v16 = v11;
      while (1)
      {
        if (v15 == v14)
        {
          if (v16 <= v11)
          {
            if (v15 == v11)
            {
              v20 = 1;
            }

            else
            {
              v20 = (v15 - v11) >> 2;
            }

            if (v20 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v21 = operator new(8 * v20);
            v22 = v21;
            v23 = v20 >> 2;
            v17 = &v21[8 * (v20 >> 2)];
            v25 = v15 - v16;
            v24 = v15 == v16;
            v15 = v17;
            if (!v24)
            {
              v15 = &v17[v25];
              v26 = v25 - 8;
              if (v26 < 0x18 || (v27 = 8 * v23, (&v21[8 * v23] - v16) < 0x20))
              {
                v28 = &v21[8 * (v20 >> 2)];
                v29 = v16;
                goto LABEL_32;
              }

              v31 = (v26 >> 3) + 1;
              v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
              v28 = &v17[v32];
              v29 = &v16[v32];
              v33 = (v16 + 16);
              v34 = &v21[v27 + 16];
              v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v36 = *v33;
                *(v34 - 1) = *(v33 - 1);
                *v34 = v36;
                v33 += 2;
                v34 += 32;
                v35 -= 4;
              }

              while (v35);
              if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_32:
                  v30 = *v29;
                  v29 += 8;
                  *v28 = v30;
                  v28 += 8;
                }

                while (v28 != v15);
              }
            }

            v14 = &v21[8 * v20];
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v22;
            goto LABEL_18;
          }

          v19 = (((v16 - v11) >> 3) + 1 + ((((v16 - v11) >> 3) + 1) >> 63)) >> 1;
          v17 = &v16[-8 * v19];
          if (v15 != v16)
          {
            memmove(&v16[-8 * v19], v16, v15 - v16);
          }

          v15 = &v17[v15 - v16];
        }

        else
        {
          v17 = v16;
        }

LABEL_18:
        v18 = *v3;
        v3 += 8;
        *v15 = v18;
        v15 += 8;
        v16 = v17;
        if (v3 == *(a1 + 16))
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    v38 = operator new(8uLL);
    v14 = v38 + 8;
    operator delete(v11);
    v3 = *(a1 + 8);
    v39 = *(a1 + 16);
    v11 = v38;
    *v38 = v13;
    v15 = v38 + 8;
    if (v3 != v39)
    {
      goto LABEL_16;
    }
  }

  v17 = v11;
LABEL_45:
  v40 = *a1;
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 21;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 42;
    if (!v40)
    {
      return;
    }
  }

  operator delete(v40);
}

void sub_23C1D8370(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void **std::deque<std::__state<char>>::~deque[abi:ne200100](void **a1)
{
  std::deque<std::__state<char>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) >= a4)
  {
    v16 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - result) >> 3) >= a4)
    {
      while (v5 != a3)
      {
        *result = *v5;
        result[16] = v5[16];
        v5 += 24;
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v17 = &a2[v16 - result];
      if (v16 != result)
      {
        do
        {
          *result = *v5;
          result[16] = v5[16];
          v5 += 24;
          result += 24;
        }

        while (v5 != v17);
      }

      if (v17 == a3)
      {
        a1[1] = v16;
      }

      else
      {
        v18 = v16;
        do
        {
          v19 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v19;
          v16 += 24;
          v17 += 24;
          v18 += 24;
        }

        while (v17 != a3);
        a1[1] = v18;
      }
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_25;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    v12 = v10 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v11;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_25:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * v12;
    result = operator new(24 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    if (v5 != a3)
    {
      v15 = 24 * ((a3 - v5 - 24) / 0x18uLL) + 24;
      result = memcpy(result, v5, v15);
      v14 += v15;
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = a2 + 32;
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = *(v53 + 1);
          v53 += 64;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          *(v54 + 1) = v58;
          v54 += 64;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = a2 + 32;
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = *(v37 + 1);
          v37 += 64;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          *(v38 + 1) = v42;
          v38 += 64;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v5 = v4 + __n;
    if (v4 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v8 = __n;
      v9 = this;
      v10 = operator new(24 * v7);
      this = v9;
      __n = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * __n;
    v15 = &v13[24 * __n];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    begin = this->__begin_;
    v19 = &v13[(this->__begin_ - end)];
    if (end != this->__begin_)
    {
      v20 = v19;
      do
      {
        v21 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *&v20->matched = *&begin->matched;
        v20->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v21;
        ++v20;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = v15;
    this->__end_cap_.__value_ = v17;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x23EECDEE0](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = v6[1].__fmtflags_;
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((fmtflags & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(rdbuf, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EECDEF0](v14);
  return a1;
}

void sub_23C1D8D30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EECDEF0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23C1D8D10);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_23C1D8F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::TapToRadarTask::TapToRadarTask(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  *a1 = &unk_284EF9288;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  *a1 = &unk_284EF9288;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void sub_23C1D9018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C1D90BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void abm::TapToRadarTask::~TapToRadarTask(abm::TapToRadarTask *this)
{
  *this = &unk_284EF9288;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 16);
  *(this + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *this = &unk_284F001D8;
  v10 = *(this + 12);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 10);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x23EECD800](this + 40);
  v12 = *(this + 4);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 3);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void abm::TapToRadarTask::init_sync(abm::TapToRadarTask *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  v7 = std::__shared_weak_count::lock(v6);
  v17 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(this + 11);
    v16 = v9;
    if (v9)
    {
      abm::TapToRadarTask::populateComponents_sync(this);
      v15[23] = 19;
      strcpy(v15, "CommandPrepareRadar");
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3321888768;
      aBlock[2] = ___ZN3abm14TapToRadarTask9init_syncEv_block_invoke;
      aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      aBlock[4] = this;
      aBlock[5] = v3;
      v13 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = _Block_copy(aBlock);
      v11 = *(this + 3);
      if (v11)
      {
        dispatch_retain(v11);
      }

      v14[0] = v10;
      v14[1] = v11;
      abm::HelperServerInternal::setCommandHandler(v9, v15, v14);
      if (v11)
      {
        dispatch_release(v11);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_19:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C1D93FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(va);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v17 - 64);
    std::__shared_weak_count::__release_weak(v16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v17 - 64);
  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void abm::TapToRadarTask::populateComponents_sync(NSObject **this)
{
  memset(__s, 170, sizeof(__s));
  v2 = capabilities::abs::radarComponentName(__s, this);
  memset(v50, 170, sizeof(v50));
  v3 = capabilities::abs::radarComponentVersion(v50, v2);
  memset(__p, 170, sizeof(__p));
  capabilities::abs::radarComponentID(__p, v3);
  v4 = operator new(0x18uLL);
  v4->isa = "Telephony";
  v4[1].isa = "iOS";
  v4[2].isa = "230851";
  v5 = this[20];
  this[20] = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(0x18uLL);
  v6->isa = "Telephony";
  v6[1].isa = "iOS";
  v6[2].isa = "230851";
  v7 = this[13];
  this[13] = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(0x18uLL);
  v8->isa = "Telephony";
  v8[1].isa = "iOS";
  v8[2].isa = "230851";
  v9 = this[14];
  this[14] = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(0x18uLL);
  v10->isa = "Purple Baseband Updater";
  v10[1].isa = "1.0";
  v10[2].isa = "250082";
  v11 = this[17];
  this[17] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(0x18uLL);
  v12->isa = "Telephony";
  v12[1].isa = "iOS";
  v12[2].isa = "230851";
  v13 = this[18];
  this[18] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(0x18uLL);
  v14->isa = "Telephony";
  v14[1].isa = "iOS";
  v14[2].isa = "230851";
  v15 = this[19];
  this[19] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  if (__s[23] < 0)
  {
    if (!*&__s[8])
    {
      goto LABEL_61;
    }

    v16 = *__s;
    v17 = strlen(*__s);
    if (v17 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }

LABEL_21:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (!__s[23])
  {
    goto LABEL_61;
  }

  v16 = __s;
  v17 = strlen(__s);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_21;
  }

LABEL_16:
  v18 = v17;
  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v17 | 7) + 1;
    }

    v19 = operator new(v20);
    __dst[1] = v18;
    v48 = v20 | 0x8000000000000000;
    __dst[0] = v19;
    goto LABEL_26;
  }

  HIBYTE(v48) = v17;
  v19 = __dst;
  if (v17)
  {
LABEL_26:
    memmove(v19, v16, v18);
  }

  *(v19 + v18) = 0;
  v46[23] = 7;
  strcpy(v46, "Unknown");
  v21 = SHIBYTE(v48);
  v22 = __dst[0];
  if (v48 >= 0)
  {
    v23 = __dst;
  }

  else
  {
    v23 = __dst[0];
  }

  v24 = strcasecmp(v23, v46);
  if ((v21 & 0x80000000) == 0)
  {
    if (v24)
    {
      goto LABEL_32;
    }

LABEL_61:
    v43 = this[5];
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    LOWORD(__dst[0]) = 0;
    v44 = "Unknown Radar component for this device";
    goto LABEL_72;
  }

  v45 = v24;
  operator delete(v22);
  if (!v45)
  {
    goto LABEL_61;
  }

LABEL_32:
  v25 = HIBYTE(v50[2]);
  v26 = HIBYTE(v50[2]);
  if (SHIBYTE(v50[2]) < 0)
  {
    v25 = v50[1];
  }

  if (!v25 || ((HIBYTE(v48) = 7, strcpy(__dst, "Unknown"), v27 = v50[0], SHIBYTE(v50[2]) >= 0) ? (v28 = v50) : (v28 = v50[0]), !strcasecmp(v28, __dst)))
  {
    v43 = this[5];
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    LOWORD(__dst[0]) = 0;
    v44 = "Unknown Radar component version for this device";
LABEL_72:
    _os_log_error_impl(&dword_23C1C4000, v43, OS_LOG_TYPE_ERROR, v44, __dst, 2u);
    goto LABEL_62;
  }

  v29 = HIBYTE(__p[2]);
  v30 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v29 = __p[1];
  }

  if (!v29 || ((HIBYTE(v48) = 7, strcpy(__dst, "Unknown"), v31 = __p[0], SHIBYTE(__p[2]) >= 0) ? (v32 = __p) : (v32 = __p[0]), !strcasecmp(v32, __dst)))
  {
    v43 = this[5];
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    LOWORD(__dst[0]) = 0;
    v44 = "Unknown Radar component ID for this device";
    goto LABEL_72;
  }

  v33 = __s[23];
  v34 = *__s;
  v35 = operator new(0x18uLL);
  v36 = __s;
  if (v33 < 0)
  {
    v36 = v34;
  }

  v35->isa = v36;
  v35[1].isa = v28;
  v35[2].isa = v32;
  v37 = this[16];
  this[16] = v35;
  if (v37)
  {
    operator delete(v37);
    LOBYTE(v33) = __s[23];
    v34 = *__s;
    v26 = HIBYTE(v50[2]);
    v27 = v50[0];
    v30 = HIBYTE(__p[2]);
    v31 = __p[0];
  }

  v38 = operator new(0x18uLL);
  v39 = __p;
  if (v30 < 0)
  {
    v39 = v31;
  }

  v40 = v50;
  if (v26 < 0)
  {
    v40 = v27;
  }

  v41 = __s;
  if ((v33 & 0x80u) != 0)
  {
    v41 = v34;
  }

  v38->isa = v41;
  v38[1].isa = v40;
  v38[2].isa = v39;
  v42 = this[15];
  this[15] = v38;
  if (v42)
  {
    operator delete(v42);
  }

LABEL_62:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v50[2]) & 0x80000000) == 0)
    {
LABEL_64:
      if ((__s[23] & 0x80000000) == 0)
      {
        return;
      }

LABEL_68:
      operator delete(*__s);
      return;
    }
  }

  else if ((SHIBYTE(v50[2]) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v50[0]);
  if (__s[23] < 0)
  {
    goto LABEL_68;
  }
}

void sub_23C1D990C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a28);
  _Unwind_Resume(exception_object);
}

void sub_23C1D9990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    JUMPOUT(0x23C1D9980);
  }

  JUMPOUT(0x23C1D9948);
}

void ___ZN3abm14TapToRadarTask9init_syncEv_block_invoke(void *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v66 = 0;
  v67 = 0;
  v6 = a1[6];
  if (v6)
  {
    v67 = std::__shared_weak_count::lock(v6);
    if (!v67)
    {
      return;
    }

    v66 = a1[5];
    if (v66)
    {
      v9 = *(v5 + 80);
      if (v9)
      {
        dispatch_retain(*(v5 + 80));
        dispatch_group_enter(v9);
      }

      v10 = xpc_null_create();
      v11 = MEMORY[0x23EECEE80](*a3);
      v12 = MEMORY[0x277D86468];
      if (v11 == MEMORY[0x277D86468] && ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()))
      {
        value = xpc_dictionary_get_value(*a3, "RadarType");
        *block = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          *block = xpc_null_create();
        }

        v19 = xpc::dyn_cast_or_default();
        xpc_release(*block);
        memset(&v65, 170, sizeof(v65));
        v20 = xpc_dictionary_get_value(*a3, "RadarTitle");
        *block = v20;
        if (v20)
        {
          xpc_retain(v20);
        }

        else
        {
          *block = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*block);
        memset(&v64, 170, sizeof(v64));
        v21 = xpc_dictionary_get_value(*a3, "RadarMessage");
        *block = v21;
        if (v21)
        {
          xpc_retain(v21);
        }

        else
        {
          *block = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*block);
        memset(&__p, 170, sizeof(__p));
        v22 = xpc_dictionary_get_value(*a3, "SysdiagnosePath");
        *block = v22;
        if (v22)
        {
          xpc_retain(v22);
        }

        else
        {
          *block = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*block);
        v62 = 0xAAAAAAAAAAAAAAAALL;
        v23 = xpc_dictionary_get_value(*a3, "RadarAttachments");
        v24 = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          v24 = xpc_null_create();
        }

        v25 = xpc_null_create();
        v62 = v24;
        v26 = MEMORY[0x277D86440];
        if (v24 && MEMORY[0x23EECEE80](v24) == v26)
        {
          xpc_retain(v24);
        }

        else
        {
          v62 = xpc_null_create();
        }

        if (MEMORY[0x23EECEE80]() != v26)
        {
          if (v25)
          {
            xpc_retain(v25);
            v27 = v25;
          }

          else
          {
            v27 = xpc_null_create();
          }

          v28 = v62;
          v62 = v27;
          xpc_release(v28);
        }

        xpc_release(v25);
        xpc_release(v24);
        v29 = xpc_dictionary_get_value(*a3, "RadarAction");
        *block = v29;
        if (v29)
        {
          xpc_retain(v29);
        }

        else
        {
          *block = xpc_null_create();
        }

        v61 = xpc::dyn_cast_or_default();
        xpc_release(*block);
        v30 = *(v5 + 40);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v19;
          if (v19 > 7)
          {
            v32 = "Invalid";
          }

          else
          {
            v32 = off_278BB8690[v19 & 7];
          }

          if (MEMORY[0x23EECEE80](v62) == v26)
          {
            count = xpc_array_get_count(v62);
          }

          else
          {
            count = 0;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *block = 136315906;
          *&block[4] = v32;
          *&block[12] = 1024;
          *&block[14] = v61;
          *&block[18] = 2048;
          *&block[20] = count;
          *&block[28] = 2080;
          *&block[30] = p_p;
          _os_log_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEFAULT, "#I Type = %s, Action = %d, Num of attachements: %zu, Sysdiagnose: %s", block, 0x26u);
          v19 = v31;
        }

        if (abm::TapToRadarTask::validateAttachments_sync(v5, &v62))
        {
          v35 = xpc_dictionary_create(0, 0, 0);
          if (v35 || (v35 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x23EECEE80](v35) == v12)
            {
              xpc_retain(v35);
              v36 = v35;
            }

            else
            {
              v36 = xpc_null_create();
            }
          }

          else
          {
            v36 = xpc_null_create();
            v35 = 0;
          }

          xpc_release(v35);
          v39 = xpc_null_create();
          xpc_release(v10);
          xpc_release(v39);
          if (!abm::TapToRadarTask::checkAttachmentForRadarType_sync(v5, v19, &v62))
          {
            v49 = *(v5 + 40);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *block = 67109120;
              *&block[4] = v19;
              _os_log_error_impl(&dword_23C1C4000, v49, OS_LOG_TYPE_ERROR, "required log missing for this type[%d]", block, 8u);
            }

            v50 = xpc_BOOL_create(0);
            if (!v50)
            {
              v50 = xpc_null_create();
            }

            xpc_dictionary_set_value(v36, "AllRequiredLogsFound", v50);
            v51 = xpc_null_create();
            xpc_release(v50);
            xpc_release(v51);
            goto LABEL_115;
          }

          v40 = xpc_BOOL_create(1);
          if (!v40)
          {
            v40 = xpc_null_create();
          }

          xpc_dictionary_set_value(v36, "AllRequiredLogsFound", v40);
          v41 = xpc_null_create();
          xpc_release(v40);
          xpc_release(v41);
          *&v42 = 0xAAAAAAAAAAAAAAAALL;
          *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v77 = v42;
          v78 = v42;
          v76 = v42;
          v43 = *(v5 + 40);
          v44 = os_signpost_id_generate(v43);
          if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v45 = *(v5 + 40);
            if (os_signpost_enabled(v45))
            {
              v46 = abm::helper::asString(v19);
              v47 = &v65;
              if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v47 = v65.__r_.__value_.__r.__words[0];
              }

              *block = 136315394;
              *&block[4] = v46;
              *&block[12] = 2080;
              *&block[14] = v47;
              _os_signpost_emit_with_name_impl(&dword_23C1C4000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v44, "CellularTapToRadar", "Type=%{signpost.description:attribute}s, Title=%{signpost.description:attribute}s,", block, 0x16u);
            }
          }

          *block = &unk_284EF9330;
          *&block[24] = block;
          *&v76 = v44;
          *(&v76 + 1) = os_retain(v43);
          if (*&block[24])
          {
            if (*&block[24] == block)
            {
              *(&v78 + 1) = &v77;
              (*(**&block[24] + 24))();
              goto LABEL_96;
            }

            v48 = &block[24];
            *(&v78 + 1) = *&block[24];
          }

          else
          {
            v48 = &v78 + 8;
          }

          *v48 = 0;
LABEL_96:
          if (*&block[24] == block)
          {
            (*(**&block[24] + 32))(*&block[24]);
          }

          else if (*&block[24])
          {
            (*(**&block[24] + 40))();
          }

          if (v61 == 1)
          {
            memset(block, 170, 24);
            abm::TapToRadarTask::prepareRadar_sync(v19, &v64, &v62, &__p, block);
            abm::TapToRadarTask::fileRadar_sync(v5, v19, &v65, block, &v62, &__p);
            if ((block[23] & 0x80000000) != 0)
            {
              operator delete(*block);
            }
          }

          else if (!v61)
          {
            ctu::os::signpost_interval::signpost_interval(block, &v76);
            v70 = v19;
            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v71, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
            }

            else
            {
              v71 = v65;
            }

            v72 = v5;
            if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v73, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
            }

            else
            {
              v73 = v64;
            }

            xpc::array::array(&v74, v62);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v75, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v75 = __p;
            }

            _ZN8dispatch5asyncIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3EEvRKNS_5queueEOT_(*(v5 + 24), block);
            _ZZZN3abm14TapToRadarTask9init_syncEvEUb_EN3__3D1Ev(block);
          }

          ctu::os::signpost_interval::~signpost_interval(&v76);
LABEL_115:
          if (v36)
          {
            xpc_retain(v36);
            v52 = v36;
          }

          else
          {
            v52 = xpc_null_create();
          }

          if (*a4)
          {
            v53 = _Block_copy(*a4);
          }

          else
          {
            v53 = 0;
          }

          v54 = *(a4 + 8);
          *block = MEMORY[0x277D85DD0];
          *&block[8] = 3321888768;
          *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke;
          *&block[24] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v53)
          {
            v55 = _Block_copy(v53);
          }

          else
          {
            v55 = 0;
          }

          v70 = 0;
          *&block[32] = v55;
          object = v52;
          if (v52)
          {
            xpc_retain(v52);
          }

          else
          {
            object = xpc_null_create();
          }

          dispatch_async(v54, block);
          xpc_release(object);
          object = 0;
          if (*&block[32])
          {
            _Block_release(*&block[32]);
          }

          if (v53)
          {
            _Block_release(v53);
          }

          xpc_release(v52);
          v10 = v36;
          goto LABEL_151;
        }

        v37 = *(v5 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v56 = v62;
          if (MEMORY[0x23EECEE80](v62) == v26)
          {
            v57 = xpc_array_get_count(v56);
          }

          else
          {
            v57 = 0;
          }

          *block = 134217984;
          *&block[4] = v57;
          _os_log_error_impl(&dword_23C1C4000, v37, OS_LOG_TYPE_ERROR, "Attachment error size: %zu", block, 0xCu);
          if (v10)
          {
            goto LABEL_74;
          }
        }

        else if (v10)
        {
LABEL_74:
          xpc_retain(v10);
          v38 = v10;
LABEL_137:
          if (*a4)
          {
            v58 = _Block_copy(*a4);
          }

          else
          {
            v58 = 0;
          }

          v59 = *(a4 + 8);
          *block = MEMORY[0x277D85DD0];
          *&block[8] = 3321888768;
          *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke;
          *&block[24] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
          if (v58)
          {
            v60 = _Block_copy(v58);
          }

          else
          {
            v60 = 0;
          }

          v70 = -534716414;
          *&block[32] = v60;
          object = v38;
          if (v38)
          {
            xpc_retain(v38);
          }

          else
          {
            object = xpc_null_create();
          }

          dispatch_async(v59, block);
          xpc_release(object);
          object = 0;
          if (*&block[32])
          {
            _Block_release(*&block[32]);
          }

          if (v58)
          {
            _Block_release(v58);
          }

          xpc_release(v38);
LABEL_151:
          xpc_release(v62);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_153:
              if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_26;
              }

LABEL_157:
              operator delete(v65.__r_.__value_.__l.__data_);
LABEL_26:
              xpc_release(v10);
              if (v9)
              {
                dispatch_group_leave(v9);
                dispatch_release(v9);
              }

              goto LABEL_28;
            }
          }

          else if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_153;
          }

          operator delete(v64.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_157;
        }

        v38 = xpc_null_create();
        goto LABEL_137;
      }

      if (v10)
      {
        xpc_retain(v10);
        v13 = v10;
        v14 = *a4;
        if (*a4)
        {
LABEL_9:
          v15 = _Block_copy(v14);
          goto LABEL_16;
        }
      }

      else
      {
        v13 = xpc_null_create();
        v14 = *a4;
        if (*a4)
        {
          goto LABEL_9;
        }
      }

      v15 = 0;
LABEL_16:
      v17 = *(a4 + 8);
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3321888768;
      *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__0ES2_EEEvDpT__block_invoke;
      *&block[24] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v15)
      {
        v70 = -534716414;
        *&block[32] = _Block_copy(v15);
        object = v13;
        if (v13)
        {
LABEL_18:
          xpc_retain(v13);
LABEL_21:
          dispatch_async(v17, block);
          xpc_release(object);
          object = 0;
          if (*&block[32])
          {
            _Block_release(*&block[32]);
          }

          if (v15)
          {
            _Block_release(v15);
          }

          xpc_release(v13);
          goto LABEL_26;
        }
      }

      else
      {
        v70 = -534716414;
        *&block[32] = 0;
        object = v13;
        if (v13)
        {
          goto LABEL_18;
        }
      }

      object = xpc_null_create();
      goto LABEL_21;
    }
  }

LABEL_28:
  v18 = v67;
  if (v67)
  {
    if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18, a2, a3, a4);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_23C1DA5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, xpc_object_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, xpc_object_t object)
{
  xpc_release(object);
  object = 0;
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  ctu::os::signpost_interval::~signpost_interval(&a32);
  ctu::os::signpost_interval::~signpost_interval((v57 - 144));
  xpc_release(a11);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  xpc_release(v56);
  if (v55)
  {
    dispatch_group_leave(v55);
    dispatch_release(v55);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

uint64_t abm::TapToRadarTask::validateAttachments_sync(abm::TapToRadarTask *this, xpc_object_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
LABEL_4:
    xpc_retain(v4);
    v5 = v4;
    goto LABEL_5;
  }

  v4 = xpc_null_create();
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = xpc_null_create();
  v5 = 0;
LABEL_5:
  xpc_release(v5);
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](*a2) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(*a2);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_12:
    v8 = xpc_null_create();
    goto LABEL_13;
  }

  count = 0;
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_10:
  xpc_retain(v6);
  v8 = v6;
LABEL_13:
  xpc_release(v6);
  if (count || v4 != v8)
  {
    if (v4 == v8)
    {
      v10 = 0;
      while (1)
      {
        memset(__p, 170, sizeof(__p));
        value = xpc_array_get_value(v4, v10);
        *&object.st_dev = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          *&object.st_dev = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*&object.st_dev);
        v12 = HIBYTE(__p[2]);
        if (SHIBYTE(__p[2]) < 0)
        {
          v12 = __p[1];
        }

        if (!v12)
        {
          break;
        }

        v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&object.st_blksize = v13;
        *object.st_qspare = v13;
        object.st_birthtimespec = v13;
        *&object.st_size = v13;
        object.st_mtimespec = v13;
        object.st_ctimespec = v13;
        *&object.st_uid = v13;
        object.st_atimespec = v13;
        *&object.st_dev = v13;
        v14 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        if (stat(v14, &object))
        {
          break;
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (count == ++v10)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      for (i = 0; ; ++i)
      {
        memset(__p, 170, sizeof(__p));
        v16 = xpc_array_get_value(v4, i);
        *&object.st_dev = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          *&object.st_dev = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*&object.st_dev);
        v17 = HIBYTE(__p[2]);
        if (SHIBYTE(__p[2]) < 0)
        {
          v17 = __p[1];
        }

        if (!v17)
        {
          break;
        }

        v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v18.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&object.st_blksize = v18;
        *object.st_qspare = v18;
        object.st_birthtimespec = v18;
        *&object.st_size = v18;
        object.st_mtimespec = v18;
        object.st_ctimespec = v18;
        *&object.st_uid = v18;
        object.st_atimespec = v18;
        *&object.st_dev = v18;
        v19 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        if (stat(v19, &object))
        {
          break;
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v20 = *(this + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v23 = __error();
      v24 = strerror(*v23);
      object.st_dev = 136315394;
      *&object.st_mode = v22;
      WORD2(object.st_ino) = 2080;
      *(&object.st_ino + 6) = v24;
      _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, "file [%s] error: %s", &object, 0x16u);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_48;
      }
    }

    else if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
LABEL_48:
      v9 = 0;
      goto LABEL_49;
    }

    operator delete(__p[0]);
    goto LABEL_48;
  }

LABEL_15:
  v9 = 1;
LABEL_49:
  xpc_release(v8);
  xpc_release(v4);
  return v9;
}

void sub_23C1DAC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

BOOL abm::TapToRadarTask::checkAttachmentForRadarType_sync(abm::trace *a1, unsigned int a2, xpc_object_t *a3)
{
  v142 = a3;
  v139 = a1;
  v173 = *MEMORY[0x277D85DE8];
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v153 = 0;
  v154 = 0uLL;
  if (a2 > 5)
  {
    goto LABEL_143;
  }

  if (((1 << a2) & 0x26) == 0)
  {
    if (((1 << a2) & 0x18) == 0)
    {
      goto LABEL_143;
    }

    abm::trace::getCoreDumpDirSuffix(v158);
    v7 = v158[23];
    if (v158[23] >= 0)
    {
      v8 = v158[23];
    }

    else
    {
      v8 = *&v158[8];
    }

    v9 = v8 + 2;
    if (v8 + 2 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 < 0x17)
    {
      *&__p[8] = 0;
      *&__p[16] = 0;
      __p[23] = v8 + 2;
      v12 = &__p[2];
      *__p = 10798;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v9 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v9 | 7) + 1;
      }

      v11 = operator new(v10);
      *&__p[8] = v8 + 2;
      *&__p[16] = v10 | 0x8000000000000000;
      *__p = v11;
      *v11 = 10798;
      v12 = v11 + 1;
    }

    if (v7 >= 0)
    {
      v13 = v158;
    }

    else
    {
      v13 = *v158;
    }

    memmove(v12, v13, v8);
LABEL_23:
    v12[v8] = 0;
    v14 = __p[23];
    if ((__p[23] & 0x8000000000000000) != 0)
    {
      v14 = *&__p[8];
      v17 = (*&__p[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v17 - *&__p[8] < 3)
      {
        v15 = *&__p[8] + 3;
        if (0x7FFFFFFFFFFFFFF7 - (*&__p[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__p[8] + 3 - v17)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v16 = *__p;
        if (v17 >= 0x3FFFFFFFFFFFFFF3)
        {
          v21 = 0;
          v20 = 0x7FFFFFFFFFFFFFF7;
LABEL_38:
          v22 = operator new(v20);
          v23 = v22;
          if (v14)
          {
            memmove(v22, v16, v14);
          }

          v24 = &v23[v14];
          v24[2] = 42;
          *v24 = 11823;
          if (!v21)
          {
            operator delete(v16);
          }

          *&__p[8] = v15;
          *&__p[16] = v20 | 0x8000000000000000;
          *__p = v23;
          v25 = &v23[v15];
LABEL_50:
          *v25 = 0;
          v29 = *__p;
          v171[0] = *&__p[8];
          *(&v171[0].__locale_ + 7) = *&__p[15];
          v30 = __p[23];
          memset(__p, 0, 24);
          if (SHIBYTE(v154) < 0)
          {
            operator delete(v153);
            v153 = v29;
            *&v154 = v171[0];
            *(&v154 + 7) = *(&v171[0].__locale_ + 7);
            HIBYTE(v154) = v30;
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
            v153 = v29;
            *&v154 = v171[0];
            *(&v154 + 7) = *(&v171[0].__locale_ + 7);
            HIBYTE(v154) = v30;
          }

          if ((v158[23] & 0x80000000) != 0)
          {
            operator delete(*v158);
          }

          v31 = operator new(8uLL);
          v32 = &v153;
          if (v154 < 0)
          {
            v32 = v153;
          }

          *v31 = v32;
          v156 = v31 + 1;
          v157 = v31 + 1;
          v155 = v31;
          v33 = *v142;
          if (*v142)
          {
            goto LABEL_144;
          }

          goto LABEL_59;
        }

LABEL_29:
        v18 = 2 * v17;
        if (v15 > 2 * v17)
        {
          v18 = v15;
        }

        if ((v18 | 7) == 0x17)
        {
          v19 = 25;
        }

        else
        {
          v19 = (v18 | 7) + 1;
        }

        if (v18 >= 0x17)
        {
          v20 = v19;
        }

        else
        {
          v20 = 23;
        }

        v21 = v17 == 22;
        goto LABEL_38;
      }

      v26 = *__p;
    }

    else
    {
      if ((__p[23] - 20) < 3)
      {
        v15 = __p[23] + 3;
        v16 = __p;
        v17 = 22;
        goto LABEL_29;
      }

      v26 = __p;
    }

    v27 = &v26[v14];
    v27[2] = 42;
    *v27 = 11823;
    v28 = v14 + 3;
    if ((__p[23] & 0x80000000) != 0)
    {
      *&__p[8] = v14 + 3;
    }

    else
    {
      __p[23] = v28 & 0x7F;
    }

    v25 = &v26[v28];
    goto LABEL_50;
  }

  v152 = 0;
  v3 = capabilities::diag::supportsQDSS(a1);
  if (!v3)
  {
    goto LABEL_87;
  }

  v171[0].__locale_ = 0xAAAAAAAAAAAAAAAALL;
  v171[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
  strcpy(__p, "TapToRadar");
  abm::client::CreateManager();
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = MEMORY[0x277D86468];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v4) == v5)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v35 = xpc_string_create("BasebandTrace");
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kKeyTraceName", v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_string_create("High_Tput");
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kKeyTracePropertyName", v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v148[0] = xpc_null_create();
  *&v39 = 0xAAAAAAAAAAAAAAAALL;
  *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v39;
  *&__p[16] = v39;
  locale = v171[0].__locale_;
  v151 = v171[1].__locale_;
  atomic_fetch_add_explicit(v171[1].__locale_ + 1, 1uLL, memory_order_relaxed);
  *v158 = operator new(0x20uLL);
  *&v158[8] = xmmword_23C32C5A0;
  strcpy(*v158, "kCommandGetTraceProperty");
  abm::client::PerformCommand();
  operator delete(*v158);
  if (atomic_fetch_add(v171[1].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v40 = v148[0];
    if (v148[0])
    {
      goto LABEL_71;
    }
  }

  else
  {
    (*(*v171[1].__locale_ + 16))(v171[1].__locale_);
    std::__shared_weak_count::__release_weak(v171[1].__locale_);
    v40 = v148[0];
    if (v148[0])
    {
      goto LABEL_71;
    }
  }

  v40 = xpc_null_create();
  if (!v40)
  {
    v41 = xpc_null_create();
    v40 = 0;
    goto LABEL_74;
  }

LABEL_71:
  if (MEMORY[0x23EECEE80](v40) == v5)
  {
    xpc_retain(v40);
    v41 = v40;
  }

  else
  {
    v41 = xpc_null_create();
  }

LABEL_74:
  xpc_release(v40);
  if (!*__p && MEMORY[0x23EECEE80](v41) == v5)
  {
    memset(v158, 170, 24);
    value = xpc_dictionary_get_value(v41, "kKeyTracePropertyValue");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(object);
    util::convert<BOOL>(v158, &v152, 0);
    if ((v158[23] & 0x80000000) != 0)
    {
      operator delete(*v158);
    }
  }

  xpc_release(v41);
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  xpc_release(v6);
  v43 = v171[1].__locale_;
  if (v171[1].__locale_ && !atomic_fetch_add(v171[1].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v43 + 16))(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

LABEL_87:
  v44 = v152;
  *&v158[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v158[16] = 0xAAAAAAAAAAAAAALL;
  *v158 = 0xAAAAAAAAAAAAAA00;
  v45 = capabilities::radio::vendor(v3);
  if ((v45 - 2) >= 3)
  {
    if (v45 != 1)
    {
      goto LABEL_93;
    }

    v46 = abm::trace::kEURTraceSnapshotDirectorySuffix;
    if (v44)
    {
      v46 = abm::trace::kEURQDSSTraceSnapshotDirectorySuffix;
    }
  }

  else
  {
    v46 = abm::trace::kICETraceSnapshotDirectorySuffix;
  }

  std::string::__assign_external(v158, *v46);
LABEL_93:
  v47 = v158[23];
  if (v158[23] >= 0)
  {
    v48 = v158[23];
  }

  else
  {
    v48 = *&v158[8];
  }

  v49 = v48 + 2;
  if (v48 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v49 < 0x17)
  {
    *&__p[8] = 0;
    *&__p[16] = 0;
    __p[23] = v48 + 2;
    v52 = &__p[2];
    *__p = 10798;
    if (!v48)
    {
      goto LABEL_107;
    }
  }

  else
  {
    if ((v49 | 7) == 0x17)
    {
      v50 = 25;
    }

    else
    {
      v50 = (v49 | 7) + 1;
    }

    v51 = operator new(v50);
    *&__p[8] = v48 + 2;
    *&__p[16] = v50 | 0x8000000000000000;
    *__p = v51;
    *v51 = 10798;
    v52 = v51 + 1;
  }

  if (v47 >= 0)
  {
    v53 = v158;
  }

  else
  {
    v53 = *v158;
  }

  memmove(v52, v53, v48);
LABEL_107:
  v52[v48] = 0;
  v54 = __p[23];
  if ((__p[23] & 0x8000000000000000) == 0)
  {
    if ((__p[23] - 20) < 3)
    {
      v55 = __p[23] + 3;
      v56 = __p;
      v57 = 22;
LABEL_113:
      v58 = 2 * v57;
      if (v55 > 2 * v57)
      {
        v58 = v55;
      }

      if ((v58 | 7) == 0x17)
      {
        v59 = 25;
      }

      else
      {
        v59 = (v58 | 7) + 1;
      }

      if (v58 >= 0x17)
      {
        v60 = v59;
      }

      else
      {
        v60 = 23;
      }

      v61 = v57 == 22;
      goto LABEL_122;
    }

    v66 = __p;
LABEL_129:
    v67 = &v66[v54];
    v67[2] = 42;
    *v67 = 11823;
    v68 = v54 + 3;
    if ((__p[23] & 0x80000000) != 0)
    {
      *&__p[8] = v54 + 3;
    }

    else
    {
      __p[23] = v68 & 0x7F;
    }

    v65 = &v66[v68];
    goto LABEL_133;
  }

  v54 = *&__p[8];
  v57 = (*&__p[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v57 - *&__p[8] >= 3)
  {
    v66 = *__p;
    goto LABEL_129;
  }

  v55 = *&__p[8] + 3;
  if (0x7FFFFFFFFFFFFFF7 - (*&__p[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__p[8] + 3 - v57)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v56 = *__p;
  if (v57 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_113;
  }

  v61 = 0;
  v60 = 0x7FFFFFFFFFFFFFF7;
LABEL_122:
  v62 = operator new(v60);
  v63 = v62;
  if (v54)
  {
    memmove(v62, v56, v54);
  }

  v64 = &v63[v54];
  v64[2] = 42;
  *v64 = 11823;
  if (!v61)
  {
    operator delete(v56);
  }

  *&__p[8] = v55;
  *&__p[16] = v60 | 0x8000000000000000;
  *__p = v63;
  v65 = &v63[v55];
LABEL_133:
  *v65 = 0;
  v69 = *__p;
  v171[0] = *&__p[8];
  *(&v171[0].__locale_ + 7) = *&__p[15];
  v70 = __p[23];
  memset(__p, 0, 24);
  if (SHIBYTE(v154) < 0)
  {
    operator delete(v153);
    v153 = v69;
    *&v154 = v171[0];
    *(&v154 + 7) = *(&v171[0].__locale_ + 7);
    HIBYTE(v154) = v70;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((v158[23] & 0x80000000) == 0)
      {
        goto LABEL_138;
      }
    }

    else if ((v158[23] & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_135;
  }

  v153 = v69;
  *&v154 = v171[0];
  *(&v154 + 7) = *(&v171[0].__locale_ + 7);
  HIBYTE(v154) = v70;
  if ((v158[23] & 0x80000000) != 0)
  {
LABEL_135:
    operator delete(*v158);
  }

LABEL_138:
  if (v154 >= 0)
  {
    v71 = &v153;
  }

  else
  {
    v71 = v153;
  }

  v72 = v156;
  if (v156 >= v157)
  {
    v130 = v155;
    v131 = v156 - v155;
    v132 = v156 - v155;
    v133 = v132 + 1;
    if ((v132 + 1) >> 61)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v134 = v157 - v155;
    if ((v157 - v155) >> 2 > v133)
    {
      v133 = v134 >> 2;
    }

    if (v134 >= 0x7FFFFFFFFFFFFFF8)
    {
      v135 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v135 = v133;
    }

    if (v135)
    {
      if (v135 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v136 = operator new(8 * v135);
    }

    else
    {
      v136 = 0;
    }

    v137 = &v136[8 * v132];
    *v137 = v71;
    v138 = v137 + 1;
    memcpy(v136, v130, v131);
    v155 = v136;
    v157 = &v136[8 * v135];
    if (v130)
    {
      operator delete(v130);
    }

    v156 = v138;
    v33 = *v142;
    if (*v142)
    {
      goto LABEL_144;
    }

    goto LABEL_59;
  }

  *v156 = v71;
  v156 = v72 + 1;
LABEL_143:
  v33 = *v142;
  if (*v142)
  {
LABEL_144:
    xpc_retain(v33);
    goto LABEL_145;
  }

LABEL_59:
  v33 = xpc_null_create();
  if (v33)
  {
LABEL_145:
    xpc_retain(v33);
    v34 = v33;
    goto LABEL_146;
  }

  v33 = xpc_null_create();
  v34 = 0;
LABEL_146:
  xarray = v33;
  xpc_release(v34);
  index = 0;
  while (1)
  {
    v74 = *v142;
    if (*v142)
    {
      xpc_retain(*v142);
    }

    else
    {
      v74 = xpc_null_create();
    }

    if (MEMORY[0x23EECEE80](*v142) == MEMORY[0x277D86440])
    {
      count = xpc_array_get_count(*v142);
      if (v74)
      {
LABEL_154:
        xpc_retain(v74);
        v76 = v74;
        goto LABEL_157;
      }
    }

    else
    {
      count = 0;
      if (v74)
      {
        goto LABEL_154;
      }
    }

    v76 = xpc_null_create();
LABEL_157:
    xpc_release(v74);
    if (index >= count)
    {
      break;
    }

    v78 = v155;
    v77 = v156;
    xpc_release(v76);
    if (v77 == v78)
    {
      goto LABEL_228;
    }

    memset(v148, 170, sizeof(v148));
    v79 = xpc_array_get_value(xarray, index);
    *__p = v79;
    if (v79)
    {
      xpc_retain(v79);
    }

    else
    {
      *__p = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(*__p);
    v80 = abm::trace::kLogTarExtension[0];
    v81 = v148;
    if (SHIBYTE(v148[2]) < 0)
    {
      v81 = v148[0];
    }

    __s = v81;
    if (SHIBYTE(v148[2]) >= 0)
    {
      v82 = HIBYTE(v148[2]);
    }

    else
    {
      v82 = v148[1];
    }

    v83 = strlen(abm::trace::kLogTarExtension[0]);
    if (v83)
    {
      v84 = v83;
      if (v82 >= v83)
      {
        v113 = __s;
        v114 = &v82[__s];
        v115 = *abm::trace::kLogTarExtension[0];
        do
        {
          if (&v82[-v84] == -1)
          {
            break;
          }

          v116 = memchr(v113, v115, &v82[-v84 + 1]);
          if (!v116)
          {
            break;
          }

          v117 = v116;
          if (!memcmp(v116, v80, v84))
          {
            if (v117 == v114 || v117 - __s == -1)
            {
              break;
            }

            goto LABEL_221;
          }

          v113 = v117 + 1;
          v82 = (v114 - (v117 + 1));
        }

        while (v82 >= v84);
      }

      for (i = v155; i < v156; ++i)
      {
        *&v86 = 0xAAAAAAAAAAAAAAAALL;
        *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v172[1] = v86;
        v172[2] = v86;
        *&v171[0].__locale_ = v86;
        v172[0] = v86;
        v87 = *i;
        v88 = MEMORY[0x23EECE100](v171);
        v171[1].__locale_ = std::locale::use_facet(v88, MEMORY[0x277D82680]);
        *&v172[0] = std::locale::use_facet(v171, MEMORY[0x277D826A0]);
        memset(v172 + 8, 0, 40);
        v89 = strlen(v87);
        if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(v171, v87, &v87[v89]) != &v87[v89])
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
        }

        v90 = HIBYTE(v148[2]);
        if (SHIBYTE(v148[2]) >= 0)
        {
          v91 = v148;
        }

        else
        {
          v91 = v148[0];
        }

        if (SHIBYTE(v148[2]) < 0)
        {
          v90 = v148[1];
        }

        v92 = &v90[v91];
        *&v93 = 0xAAAAAAAAAAAAAAAALL;
        *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v163 = v93;
        v161 = 0xAAAAAAAAAAAAAA00;
        v159 = 0xAAAAAAAAAAAAAAAALL;
        v160 = 0uLL;
        v162 = 0uLL;
        LOBYTE(v163) = 0;
        BYTE8(v163) = 0;
        v164 = 0;
        memset(v158, 0, sizeof(v158));
        v169 = v93;
        v167 = 0xAAAAAAAAAAAAAA00;
        *&__p[40] = 0xAAAAAAAAAAAAAAAALL;
        v166 = 0uLL;
        v168 = 0uLL;
        LOBYTE(v169) = 0;
        BYTE8(v169) = 0;
        v170 = 0;
        memset(__p, 0, 41);
        v94 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v171, v91, &v90[v91], __p, 0x1040u);
        v95 = v166.i64[0];
        v96 = *&__p[8] - *__p;
        v97 = 0xAAAAAAAAAAAAAAABLL * ((*&__p[8] - *__p) >> 3);
        v98 = *&v158[8];
        v99 = *v158;
        v100 = 0xAAAAAAAAAAAAAAABLL * ((*&v158[8] - *v158) >> 3);
        if (v97 <= v100)
        {
          if (v97 < v100)
          {
            v98 = *v158 + v96;
            *&v158[8] = *v158 + v96;
          }
        }

        else
        {
          std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(v158, v97 - v100);
          v98 = *&v158[8];
          v99 = *v158;
        }

        if (v98 == v99)
        {
          v105 = v91 - v95;
          v103 = *__p;
        }

        else
        {
          v101 = 0;
          v102 = 0xAAAAAAAAAAAAAAABLL * ((v98 - v99) >> 3);
          v103 = *__p;
          v104 = 0xAAAAAAAAAAAAAAABLL * ((*&__p[8] - *__p) >> 3);
          v105 = v91 - v95;
          if (v102 <= 1)
          {
            v102 = 1;
          }

          v106 = (v99 + 16);
          v107 = *__p;
          do
          {
            if (v104 <= v101)
            {
              v108 = &__p[24];
            }

            else
            {
              v108 = v107;
            }

            *(v106 - 2) = v105 + *v108;
            v109 = (v107 + 8);
            if (v104 <= v101)
            {
              v109 = &__p[32];
            }

            *(v106 - 1) = v105 + *v109;
            v110 = (v107 + 16);
            if (v104 <= v101)
            {
              v110 = &__p[40];
            }

            *v106 = *v110;
            v106 += 24;
            ++v101;
            v107 += 24;
          }

          while (v102 != v101);
        }

        *&v158[24] = v92;
        *&v158[32] = v92;
        LOBYTE(v159) = 0;
        v111 = vdupq_n_s64(v105);
        v160 = vaddq_s64(v111, v166);
        LOBYTE(v161) = v167;
        v162 = vaddq_s64(v111, v168);
        LOBYTE(v163) = v169;
        v164 = v160.i64[0];
        BYTE8(v163) = BYTE8(v169);
        if (v103)
        {
          *&__p[8] = v103;
          operator delete(v103);
        }

        if (v94 && (v163 & 1) != 0)
        {
          v94 = 0;
        }

        if (*v158)
        {
          *&v158[8] = *v158;
          operator delete(*v158);
        }

        if (v94)
        {
          v118 = v156 - (i + 1);
          if (v156 != i + 1)
          {
            memmove(i, i + 1, v156 - (i + 1));
          }

          v156 = (i + v118);
          v119 = *&v172[2];
          if (*&v172[2] && !atomic_fetch_add((*&v172[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v119->__on_zero_shared)(v119);
            std::__shared_weak_count::__release_weak(v119);
          }

          std::locale::~locale(v171);
          break;
        }

        v112 = *&v172[2];
        if (*&v172[2])
        {
          if (!atomic_fetch_add((*&v172[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
          }
        }

        std::locale::~locale(v171);
      }
    }

    else
    {
LABEL_221:
      abm::TapToRadarTask::checkTraceLogsInArchive_sync(v139, v148, &v155);
    }

    if (SHIBYTE(v148[2]) < 0)
    {
      operator delete(v148[0]);
      v120 = xarray;
      if (!xarray)
      {
LABEL_147:
        v73 = xpc_null_create();
        goto LABEL_148;
      }
    }

    else
    {
      v120 = xarray;
      if (!xarray)
      {
        goto LABEL_147;
      }
    }

    xpc_retain(v120);
    v73 = v120;
LABEL_148:
    ++index;
    xpc_release(v73);
  }

  xpc_release(v76);
LABEL_228:
  xpc_release(xarray);
  v121 = v155;
  v122 = v156;
  if (v156 != v155)
  {
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v145 = ___ZN3abm14TapToRadarTask32checkAttachmentForRadarType_syncENS_6helper9RadarTypeERN3xpc5arrayE_block_invoke;
    v146 = &__block_descriptor_40_e117_v32__0_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___8l;
    v147 = v139;
    for (j = v155; j != v122; ++j)
    {
      v124 = *j;
      v125 = strlen(*j);
      if (v125 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v126 = v125;
      if (v125 >= 0x17)
      {
        if ((v125 | 7) == 0x17)
        {
          v128 = 25;
        }

        else
        {
          v128 = (v125 | 7) + 1;
        }

        v127 = operator new(v128);
        *&__p[8] = v126;
        *&__p[16] = v128 | 0x8000000000000000;
        *__p = v127;
      }

      else
      {
        __p[23] = v125;
        v127 = __p;
        if (!v125)
        {
          goto LABEL_240;
        }
      }

      memmove(v127, v124, v126);
LABEL_240:
      v127[v126] = 0;
      v145(v144, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (SHIBYTE(v154) < 0)
  {
    operator delete(v153);
  }

  if (v121)
  {
    operator delete(v121);
  }

  return v122 == v121;
}

void sub_23C1DBE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, xpc_object_t object, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, xpc_object_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v60);
  if (a59 < 0)
  {
    operator delete(a54);
  }

  xpc_release(v59);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v61 - 176);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a33)
  {
    operator delete(a33);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *_ZN8dispatch5asyncIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3EEvRKNS_5queueEOT_(NSObject *a1, uint64_t a2)
{
  v4 = operator new(0x90uLL);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 1) = v5;
  v6 = a2 + 16;
  v8 = (a2 + 40);
  v7 = *(a2 + 40);
  if (!v7)
  {
    v8 = v4 + 40;
    goto LABEL_5;
  }

  if (v7 != v6)
  {
    *(v4 + 5) = v7;
LABEL_5:
    *v8 = 0;
    goto LABEL_7;
  }

  *(v4 + 5) = v4 + 16;
  (*(*v7 + 24))(v7);
LABEL_7:
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 40);
  *(a2 + 40) = 0;
  if (v9 == v6)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(v4 + 12) = *(a2 + 48);
  *(v4 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a2 + 72) = 0;
  *(v4 + 9) = v10;
  *(v4 + 10) = v11;
  *(v4 + 88) = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  *(v4 + 13) = v12;
  *(v4 + 14) = v13;
  v14 = xpc_null_create();
  *(v4 + 120) = *(a2 + 120);
  *(v4 + 17) = *(a2 + 136);
  *(a2 + 112) = v14;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v16 = 0;
  v17 = 0;
  dispatch_async_f(a1, v4, _ZZN8dispatch5asyncIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
  _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(&v16);
  return _ZNSt3__110unique_ptrIZZN3abm14TapToRadarTask9init_syncEvEUb_E3__3NS_14default_deleteIS3_EEED1B8ne200100Ev(&v17);
}

void ctu::os::signpost_interval::~signpost_interval(ctu::os::signpost_interval *this)
{
  v2 = *(this + 5);
  if (v2 && *this)
  {
    v3 = *(this + 1);
    v8 = *this;
    v9 = v3;
    (*(*v2 + 48))(v2, &v9, &v8);
  }

  v4 = *(this + 1);
  if (v4)
  {
    os_release(v4);
  }

  v5 = this + 16;
  *(this + 1) = 0;
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 == (this + 16))
  {
    (*(*v6 + 32))(v6);
    v7 = *(this + 5);
    *this = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    return;
  }

  if (!v6)
  {
    *this = 0;
    return;
  }

  (*(*v6 + 40))(v6);
  v7 = *(this + 5);
  *this = 0;
  if (v7 == v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

{
  v2 = *(this + 5);
  if (v2 && *this)
  {
    v3 = *(this + 1);
    v8 = *this;
    v9 = v3;
    (*(*v2 + 48))(v2, &v9, &v8);
  }

  v4 = *(this + 1);
  if (v4)
  {
    os_release(v4);
  }

  v5 = this + 16;
  *(this + 1) = 0;
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 == (this + 16))
  {
    (*(*v6 + 32))(v6);
    v7 = *(this + 5);
    *this = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    return;
  }

  if (!v6)
  {
    *this = 0;
    return;
  }

  (*(*v6 + 40))(v6);
  v7 = *(this + 5);
  *this = 0;
  if (v7 == v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

void _ZZZN3abm14TapToRadarTask9init_syncEvEUb_EN3__3D1Ev(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  xpc_release(*(a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_5:
      v2 = a1;

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 56));
  v2 = a1;

LABEL_7:
  ctu::os::signpost_interval::~signpost_interval(v2);
}

uint64_t abm::TapToRadarTask::prepareRadar_sync@<X0>(int a1@<W1>, uint64_t **a2@<X2>, xpc_object_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v134 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v133[7] = v8;
  v133[8] = v8;
  v133[5] = v8;
  v133[6] = v8;
  v133[3] = v8;
  v133[4] = v8;
  v133[1] = v8;
  v133[2] = v8;
  v132 = v8;
  v133[0] = v8;
  v130 = v8;
  v131 = v8;
  v128 = v8;
  v129 = v8;
  *&v126.__start_.__cntrl_ = v8;
  v127 = v8;
  *&v126.__loop_count_ = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v126.__loop_count_);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, "--- Description:\n\n", 18);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n\n", 2);
  memset(&v126, 170, 24);
  *(&v144[0].__r_.__value_.__s + 23) = 2;
  strcpy(v144, ".*");
  v14 = strlen(abm::trace::kABMLogSummaryExtension[0]);
  v15 = std::string::append(v144, abm::trace::kABMLogSummaryExtension[0], v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v126.__traits_.__col_ = v15->__r_.__value_.__r.__words[2];
  *&v126.__traits_.__loc_.__locale_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v144[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144[0].__r_.__value_.__l.__data_);
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v124 = v17;
  v125 = v17;
  *&v122[0].__locale_ = v17;
  v123 = v17;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v122, &v126, 0);
  v120[0] = 0;
  v120[1] = 0;
  v121 = 0;
  v18 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
LABEL_12:
    xpc_retain(v18);
    v19 = v18;
    goto LABEL_13;
  }

  v18 = xpc_null_create();
  if (v18)
  {
    goto LABEL_12;
  }

  v18 = xpc_null_create();
  v19 = 0;
LABEL_13:
  xpc_release(v19);
  v20 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v20 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](*a3) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(*a3);
    if (v20)
    {
      goto LABEL_18;
    }

LABEL_20:
    object = xpc_null_create();
    goto LABEL_21;
  }

  count = 0;
  if (!v20)
  {
    goto LABEL_20;
  }

LABEL_18:
  xpc_retain(v20);
  object = v20;
LABEL_21:
  v117 = a3;
  v114 = a4;
  xpc_release(v20);
  if (count || v18 != object)
  {
    v22 = 0;
    v23 = count - 1;
    while (1)
    {
      memset(v119, 170, sizeof(v119));
      value = xpc_array_get_value(v18, v22);
      v144[0].__r_.__value_.__r.__words[0] = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        v144[0].__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(v144[0].__r_.__value_.__l.__data_);
      if (SHIBYTE(v119[2]) >= 0)
      {
        v25 = v119;
      }

      else
      {
        v25 = v119[0];
      }

      if (SHIBYTE(v119[2]) >= 0)
      {
        v26 = HIBYTE(v119[2]);
      }

      else
      {
        v26 = v119[1];
      }

      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v142 = v27;
      v139 = 0xAAAAAAAAAAAAAA00;
      v136 = 0xAAAAAAAAAAAAAAAALL;
      v137 = 0;
      v138 = 0;
      v140 = 0;
      v141 = 0;
      LOBYTE(v142) = 0;
      BYTE8(v142) = 0;
      v143 = 0;
      memset(__p, 0, sizeof(__p));
      v150 = v27;
      v147 = 0xAAAAAAAAAAAAAA00;
      v144[1].__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
      v145 = 0;
      v146 = 0;
      v148 = 0;
      v149 = 0;
      LOBYTE(v150) = 0;
      BYTE8(v150) = 0;
      v151 = 0;
      memset(v144, 0, 40);
      v28 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v122, v25, &v26[v25], v144, 0x1040u);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v25, &v26[v25], v144, 0);
      if (v144[0].__r_.__value_.__r.__words[0])
      {
        v144[0].__r_.__value_.__l.__size_ = v144[0].__r_.__value_.__r.__words[0];
        operator delete(v144[0].__r_.__value_.__l.__data_);
      }

      if (v28 && (v142 & 1) != 0)
      {
        v28 = 0;
      }

      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      if (!v28)
      {
        goto LABEL_53;
      }

      if (SHIBYTE(v121) < 0)
      {
        break;
      }

      if ((HIBYTE(v119[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v120, v119[0], v119[1]);
LABEL_53:
        if (SHIBYTE(v119[2]) < 0)
        {
          operator delete(v119[0]);
          v29 = v22 + 1;
          v30 = v23 == v22++;
          if (v30)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v29 = v22 + 1;
          v30 = v23 == v22++;
          if (v30)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        *v120 = *v119;
        v121 = v119[2];
        v29 = v22 + 1;
        v30 = v23 == v22++;
        if (v30)
        {
LABEL_58:
          v22 = v29;
          if (v18 == object)
          {
            goto LABEL_59;
          }
        }
      }
    }

    if (SHIBYTE(v119[2]) >= 0)
    {
      v31 = v119;
    }

    else
    {
      v31 = v119[0];
    }

    if (SHIBYTE(v119[2]) >= 0)
    {
      v32 = HIBYTE(v119[2]);
    }

    else
    {
      v32 = v119[1];
    }

    std::string::__assign_no_alias<false>(v120, v31, v32);
    goto LABEL_53;
  }

LABEL_59:
  xpc_release(object);
  xpc_release(v18);
  v33 = v117;
  v34 = HIBYTE(v121);
  if (SHIBYTE(v121) < 0)
  {
    v34 = v120[1];
  }

  if (v34)
  {
    *__p = 0xAAAAAAAAAAAAAAAALL;
    util::createDictFromJSONFile(v120, __p);
    v35 = operator new(8uLL);
    v36 = *MEMORY[0x277CECC30];
    *v35 = *MEMORY[0x277CECC30];
    v37 = operator new(0x10uLL);
    v38 = *MEMORY[0x277CECBF0];
    *v37 = v36;
    v37[1] = v38;
    operator delete(v35);
    v39 = operator new(0x20uLL);
    v39[2] = *MEMORY[0x277CECBF8];
    *v39 = *v37;
    operator delete(v37);
    v39[3] = *MEMORY[0x277CECCB8];
    v40 = operator new(0x40uLL);
    v40[4] = *MEMORY[0x277CECD08];
    v41 = *(v39 + 1);
    *v40 = *v39;
    *(v40 + 1) = v41;
    operator delete(v39);
    v42 = MEMORY[0x23EECEE80](*__p);
    v43 = MEMORY[0x277D86468];
    if (v42 == MEMORY[0x277D86468])
    {
      LODWORD(v44) = 0;
      for (i = 0; i != 5; ++i)
      {
        v46 = v40[i];
        v119[0] = 0xAAAAAAAAAAAAAAAALL;
        v47 = xpc_dictionary_get_value(*__p, v46);
        v48 = v47;
        if (v47)
        {
          xpc_retain(v47);
        }

        else
        {
          v48 = xpc_null_create();
        }

        v49 = xpc_null_create();
        v119[0] = v48;
        if (v48 && MEMORY[0x23EECEE80](v48) == v43)
        {
          xpc_retain(v48);
        }

        else
        {
          v119[0] = xpc_null_create();
        }

        if (MEMORY[0x23EECEE80]() != v43)
        {
          if (v49)
          {
            xpc_retain(v49);
            v50 = v49;
          }

          else
          {
            v50 = xpc_null_create();
          }

          v51 = v119[0];
          v119[0] = v50;
          xpc_release(v51);
        }

        xpc_release(v49);
        xpc_release(v48);
        if (MEMORY[0x23EECEE80](v119[0]) == v43)
        {
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, "[", 1);
          v44 = (v44 + 1);
          v53 = MEMORY[0x23EECDF30](v52, v44);
          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "] ", 2);
          v55 = strlen(v46);
          v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v46, v55);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "\n", 1);
          xpc::object::to_string(v144, v119);
          v57 = (v144[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v144 : v144[0].__r_.__value_.__r.__words[0];
          v58 = strlen(v57);
          v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, v57, v58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "\n", 1);
          if (SHIBYTE(v144[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v144[0].__r_.__value_.__l.__data_);
          }
        }

        xpc_release(v119[0]);
      }
    }

    operator delete(v40);
    xpc_release(*__p);
    v33 = v117;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, "\n--- Required Attachments:\n\n", 28);
  v60 = *v33;
  if (*v33)
  {
    xpc_retain(*v33);
LABEL_87:
    xpc_retain(v60);
    v61 = v60;
    goto LABEL_88;
  }

  v60 = xpc_null_create();
  if (v60)
  {
    goto LABEL_87;
  }

  v60 = xpc_null_create();
  v61 = 0;
LABEL_88:
  xpc_release(v61);
  v62 = *v33;
  if (*v33)
  {
    xpc_retain(*v33);
  }

  else
  {
    v62 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](*v33) == MEMORY[0x277D86440])
  {
    v63 = xpc_array_get_count(*v33);
    if (v62)
    {
      goto LABEL_93;
    }

LABEL_95:
    v64 = xpc_null_create();
    goto LABEL_96;
  }

  v63 = 0;
  if (!v62)
  {
    goto LABEL_95;
  }

LABEL_93:
  xpc_retain(v62);
  v64 = v62;
LABEL_96:
  xpc_release(v62);
  if (v63 || v60 != v64)
  {
    v65 = 0;
    v66 = v63 - 1;
    while (1)
    {
      while (1)
      {
        memset(v144, 170, 24);
        v67 = xpc_array_get_value(v60, v65);
        *__p = v67;
        if (v67)
        {
          xpc_retain(v67);
        }

        else
        {
          *__p = xpc_null_create();
        }

        xpc::dyn_cast_or_default();
        xpc_release(*__p);
        support::fs::getFileName(__p);
        v68 = __p[23] >= 0 ? __p : *__p;
        v69 = __p[23] >= 0 ? __p[23] : *&__p[8];
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, v68, v69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "\n", 1);
        if ((__p[23] & 0x80000000) == 0)
        {
          break;
        }

        operator delete(*__p);
        if ((SHIBYTE(v144[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

LABEL_113:
        operator delete(v144[0].__r_.__value_.__l.__data_);
        v71 = v65 + 1;
        v30 = v66 == v65++;
        if (v30)
        {
          goto LABEL_115;
        }
      }

      if (SHIBYTE(v144[0].__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_113;
      }

LABEL_110:
      v71 = v65 + 1;
      v30 = v66 == v65++;
      if (v30)
      {
LABEL_115:
        v65 = v71;
        if (v60 == v64)
        {
          break;
        }
      }
    }
  }

  xpc_release(v64);
  xpc_release(v60);
  v72 = *(v114 + 23);
  if (v72 >= 0)
  {
    v73 = *(v114 + 23);
  }

  else
  {
    v73 = v114[1];
  }

  if (v73)
  {
    if (v72 >= 0)
    {
      v74 = v114;
    }

    else
    {
      v74 = *v114;
    }

    p_cntrl = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, v74, v73);
    v76 = "\n";
    v77 = 1;
  }

  else
  {
    if (a1 == 3)
    {
      goto LABEL_127;
    }

    v76 = "sysdiagnose\n\n";
    v77 = 13;
    p_cntrl = &v126.__start_.__cntrl_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(p_cntrl, v76, v77);
LABEL_127:
  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, "*** PLEASE READ ME ***\n", 23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "\nAfter filing your radar, please confirm the attachments listed above were successfully uploaded.\nOtherwise, please find the logs at the locations below and attach them manually:\n\n", 180);
  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v126.__start_.__cntrl_, ">> Mac:\n\n", 9);
  if (a1 == 6)
  {
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "\n>> Device:\n", 12);
    v93 = 48;
  }

  else
  {
    v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "\t ~/Library/Logs/CrashReporter/MobileDevice/<DeviceName>/Baseband/log-*<timestamp>*\n\n", 85);
    v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "\t ~/Library/Logs/CrashReporter/MobileDevice/<DeviceName>/DiagnosticLogs/sysdiagnose/", 84);
    v96 = strlen(abm::trace::kSysdiagnosePrefix[0]);
    v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, abm::trace::kSysdiagnosePrefix[0], v96);
    v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "<timestamp>*\n", 13);
    v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "\n>> Device:\n\n", 13);
    v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, "\t /var/wireless/Library/Logs/CrashReporter/Baseband/log-*<timestamp>*\n\n", 71);
    v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "\t ", 2);
    v102 = strlen(abm::trace::kSysdiagnoseFolder[0]);
    v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, abm::trace::kSysdiagnoseFolder[0], v102);
    v104 = strlen(abm::trace::kSysdiagnosePrefix[0]);
    v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, abm::trace::kSysdiagnosePrefix[0], v104);
    v92 = "<timestamp>*\n";
    v93 = 13;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, v92, v93);
  if ((BYTE8(v132) & 0x10) != 0)
  {
    v107 = v132;
    if (v132 < *(&v129 + 1))
    {
      *&v132 = *(&v129 + 1);
      v107 = *(&v129 + 1);
    }

    v106 = a5;
    v108 = v129;
    v105 = v107 - v129;
    if ((v107 - v129) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_154;
    }
  }

  else
  {
    if ((BYTE8(v132) & 8) == 0)
    {
      v105 = 0;
      v106 = a5;
      *(a5 + 23) = 0;
      goto LABEL_144;
    }

    v106 = a5;
    v108 = *(&v127 + 1);
    v105 = *(&v128 + 1) - *(&v127 + 1);
    if (*(&v128 + 1) - *(&v127 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_154:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v105 >= 0x17)
  {
    if ((v105 | 7) == 0x17)
    {
      v109 = 25;
    }

    else
    {
      v109 = (v105 | 7) + 1;
    }

    v110 = operator new(v109);
    *(a5 + 8) = v105;
    *(a5 + 16) = v109 | 0x8000000000000000;
    *a5 = v110;
    v106 = v110;
    goto LABEL_143;
  }

  v106[23] = v105;
  if (v105)
  {
LABEL_143:
    memmove(v106, v108, v105);
  }

LABEL_144:
  v106[v105] = 0;
  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120[0]);
  }

  v111 = v125;
  if (!v125 || atomic_fetch_add((v125 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v122);
    if ((SHIBYTE(v126.__traits_.__col_) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  (v111->__on_zero_shared)(v111);
  std::__shared_weak_count::__release_weak(v111);
  std::locale::~locale(v122);
  if (SHIBYTE(v126.__traits_.__col_) < 0)
  {
LABEL_149:
    operator delete(v126.__traits_.__loc_.__locale_);
  }

LABEL_150:
  *&v126.__loop_count_ = *MEMORY[0x277D82818];
  v112 = *(MEMORY[0x277D82818] + 72);
  *(&v126.__loop_count_ + *(*&v126.__loop_count_ - 24)) = *(MEMORY[0x277D82818] + 64);
  v126.__start_.__cntrl_ = v112;
  v126.__end_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(v131) < 0)
  {
    operator delete(*(&v130 + 1));
  }

  v126.__end_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v127);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECE150](v133);
}