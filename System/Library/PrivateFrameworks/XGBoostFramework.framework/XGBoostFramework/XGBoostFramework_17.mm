void sub_274DFF25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DFF428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        v12 = this;
        v13 = 8;
LABEL_20:
        std::string::operator=(v12, v13);
        return a2 + 1;
      }

      if (v7 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v7 == 68)
      {
        v8 = *(a5 + 164) | 0x400;
LABEL_22:
        *(a5 + 164) = v8;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
    }

    v12 = this;
    v13 = 0;
    goto LABEL_20;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v7 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
  }

  *(a5 + 164) |= 0x500u;
  v17 = 95;
  if (*(a5 + 169) == 1)
  {
    v16 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v10 = a5 + 64;
    v11 = &v16;
  }

  else
  {
    if (*(a5 + 170) != 1)
    {
      std::vector<char>::push_back[abi:ne200100](a5 + 64, &v17);
      return a2 + 1;
    }

    v15 = 95;
    v10 = a5 + 64;
    v11 = &v15;
  }

  std::vector<char>::push_back[abi:ne200100](v10, v11);
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v7 = 7;
          goto LABEL_31;
        }

        v7 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        v7 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      v7 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      v7 = 10;
      goto LABEL_51;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v7 = 13;
          goto LABEL_31;
        }

        v7 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        v7 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

        v7 = 11;
LABEL_51:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_55;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v9 & 0xF8) != 0x30)
    {
      goto LABEL_42;
    }

    v8 = *v9 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v10 = a2[2];
      v11 = v10 & 0xF8;
      v12 = v10 + 8 * v8 - 48;
      if (v11 == 48)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = a2 + 2;
      }

      if (v11 == 48)
      {
        v8 = v12;
      }

      goto LABEL_42;
    }
  }

  v9 = a3;
LABEL_42:
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  return v9;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = (a2 - v4 + 1);
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_274DFFD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DFFE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x277C68B90](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x277C69180);
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x277C69180);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2883E6D00;
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

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x277C69180);
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
  MEMORY[0x277C68B90](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = v3 + 2;
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    goto LABEL_16;
  }

  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_35;
  }

  v8 = a2;
  if (((1 << (v9 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v10 == 5)
    {
      v8 = a2;
      if (*(a1 + 36))
      {
        goto LABEL_5;
      }

      LOBYTE(v9) = 41;
LABEL_36:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v9);
      v8 = a2 + 1;
      goto LABEL_5;
    }

LABEL_35:
    v8 = a2;
    if ((v9 - 123) < 2)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_5:
  if (v8 == a2)
  {
    v11 = (a2 + 1);
    if (a2 + 1 == a3 || *a2 != 92)
    {
      v8 = a2;
    }

    else if ((v12 = *v11, v13 = *v11, (v12 - 36) <= 0x3A) && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v8 = a2 + 2;
    }

    else if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    }

    else
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13) ? a2 + 2 : a2;
    }

    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_2;
    }
  }

LABEL_16:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, (v8 + 1), a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_27;
    }

    ++v8;
  }

LABEL_27:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = v4[v9 / 0x2A] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_274E013F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:ne200100]((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<dmlc::io::FileInfo>::__construct_one_at_end[abi:ne200100]<dmlc::io::FileInfo const&>(uint64_t a1, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v7;
  }

  v8 = *(a2 + 9);
  *(v4 + 80) = *(a2 + 20);
  *(v4 + 72) = v8;
  *(a1 + 8) = v4 + 88;
}

void sub_274E01818(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<dmlc::io::FileInfo>::__emplace_back_slow_path<dmlc::io::FileInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::io::FileInfo>>(a1, v6);
  }

  v7 = 88 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v10 = a2[3];
    *(v7 + 64) = *(a2 + 8);
    *(v7 + 48) = v10;
  }

  v11 = *(a2 + 9);
  *(v7 + 80) = *(a2 + 20);
  *(v7 + 72) = v11;
  *&v20 = v20 + 88;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<dmlc::io::FileInfo>::~__split_buffer(&v18);
  return v17;
}

void sub_274E01A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 47) < 0)
  {
    operator delete(*(v7 + 24));
  }

  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<dmlc::io::FileInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(void *a1)
{
  *&result = 0x700000000;
  a1[1] = 0x700000000;
  *a1 = &unk_2883E16B0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0x700000000;
  a1[1] = 0x700000000;
  *a1 = &unk_2883E16B0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0x700000000;
  a1->n128_u64[0] = &unk_2883E16B0;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0x700000000;
  a1->n128_u64[0] = &unk_2883E16B0;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::operator==(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 7)
  {
    return 0;
  }

  v3 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value const>(a2);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v3 + 2);
  if (v5 - v4 != *(v3 + 3) - v6)
  {
    return 0;
  }

  if (v5 != v4)
  {
    v7 = v5 - v4;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v8 = *v6;
      if (fabsf(*v4) == INFINITY)
      {
        if (fabsf(v8) != INFINITY)
        {
          return 0;
        }
      }

      else if (v8 != *v4)
      {
        return 0;
      }

      ++v6;
      ++v4;
      --v7;
    }

    while (v7);
  }

  return 1;
}

uint64_t xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

double xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(void *a1)
{
  *&result = 0x800000000;
  a1[1] = 0x800000000;
  *a1 = &unk_2883E6560;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0x800000000;
  a1[1] = 0x800000000;
  *a1 = &unk_2883E6560;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0x800000000;
  a1->n128_u64[0] = &unk_2883E6560;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0x800000000;
  a1->n128_u64[0] = &unk_2883E6560;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

BOOL xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::operator==(uint64_t a1, _DWORD *lpsrc)
{
  if (lpsrc[3] != 8)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24) - v4;
  v7 = (v3 + 2);
  v6 = v3[2];
  return v5 == *(v7 + 1) - v6 && memcmp(v6, v4, v5) == 0;
}

uint64_t xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

double xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(void *a1)
{
  *&result = 0x900000000;
  a1[1] = 0x900000000;
  *a1 = &unk_2883E65A8;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0x900000000;
  a1[1] = 0x900000000;
  *a1 = &unk_2883E65A8;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0x900000000;
  a1->n128_u64[0] = &unk_2883E65A8;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0x900000000;
  a1->n128_u64[0] = &unk_2883E65A8;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

BOOL xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::operator==(uint64_t a1, _DWORD *lpsrc)
{
  if (lpsrc[3] != 9)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24) - v4;
  v7 = (v3 + 2);
  v6 = v3[2];
  return v5 == *(v7 + 1) - v6 && memcmp(v6, v4, v5) == 0;
}

uint64_t xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

double xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(void *a1)
{
  *&result = 0xA00000000;
  a1[1] = 0xA00000000;
  *a1 = &unk_2883E65F0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0xA00000000;
  a1[1] = 0xA00000000;
  *a1 = &unk_2883E65F0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0xA00000000;
  a1->n128_u64[0] = &unk_2883E65F0;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0xA00000000;
  a1->n128_u64[0] = &unk_2883E65F0;
  *(&a1[1] + 8) = 0uLL;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1] = 0uLL;
  a2[2].n128_u64[0] = 0;
  return result;
}

BOOL xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::operator==(uint64_t a1, _DWORD *lpsrc)
{
  if (lpsrc[3] != 10)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24) - v4;
  v7 = (v3 + 2);
  v6 = v3[2];
  return v5 == *(v7 + 1) - v6 && memcmp(v6, v4, v5) == 0;
}

uint64_t xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

void xgboost::JsonWriter::Visit(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_50;
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 91;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = *(a2 + 24) - *(a2 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v14 >> 3;
    v17 = v16 - 1;
    if (v16 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16;
    }

    do
    {
      v19 = *(*(a2 + 16) + 8 * v15);
      v40 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
      }

      (*(*a1 + 16))(a1, &v40);
      v20 = v40;
      if (v40 && atomic_fetch_add_explicit((v40 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v20 + 8))(v20);
      }

      if (v17 != v15)
      {
        v21 = a1[1];
        v23 = *(v21 + 8);
        v22 = *(v21 + 16);
        if (v23 >= v22)
        {
          v25 = *v21;
          v26 = &v23[-*v21];
          v27 = (v26 + 1);
          if ((v26 + 1) < 0)
          {
            goto LABEL_50;
          }

          v28 = v22 - v25;
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            operator new();
          }

          v30 = &v23[-*v21];
          *v26 = 44;
          v24 = v26 + 1;
          memcpy(0, v25, v30);
          *v21 = 0;
          *(v21 + 8) = v26 + 1;
          *(v21 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v23 = 44;
          v24 = v23 + 1;
        }

        *(v21 + 8) = v24;
      }

      ++v15;
    }

    while (v18 != v15);
  }

  v31 = a1[1];
  v33 = *(v31 + 8);
  v32 = *(v31 + 16);
  if (v33 < v32)
  {
    *v33 = 93;
    v34 = v33 + 1;
    goto LABEL_49;
  }

  v35 = *v31;
  v36 = &v33[-*v31 + 1];
  if (v36 < 0)
  {
LABEL_50:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v37 = v32 - v35;
  if (2 * v37 > v36)
  {
    v36 = 2 * v37;
  }

  if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = v36;
  }

  if (v38)
  {
    operator new();
  }

  v39 = &v33[-*v31];
  *v39 = 93;
  v34 = v39 + 1;
  memcpy(0, v35, v39);
  *v31 = 0;
  *(v31 + 8) = v34;
  *(v31 + 16) = 0;
  if (v35)
  {
    operator delete(v35);
  }

LABEL_49:
  *(v31 + 8) = v34;
}

{
  v3 = a1[1];
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    operator new();
  }

  v14 = a1[1];
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

{
  v3 = a1[1];
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    operator new();
  }

  v14 = a1[1];
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

{
  v3 = a1[1];
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    operator new();
  }

  v14 = a1[1];
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

{
  v3 = a1[1];
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    operator new();
  }

  v14 = a1[1];
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

void sub_274E0267C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E02AB4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E02EE8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E03320(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E03758(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonObject *a2)
{
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_69;
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 123;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 123;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = *(a2 + 2);
  v15 = a2 + 24;
  if (v14 != (a2 + 24))
  {
    v16 = 0;
    v17 = *(a2 + 4) - 1;
    do
    {
      xgboost::JsonString::JsonString(v54, v14 + 2);
      (*(*this + 96))(this, v54);
      v18 = *(this + 1);
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      if (v20 >= v19)
      {
        v22 = *v18;
        v23 = &v20[-*v18];
        v24 = (v23 + 1);
        if ((v23 + 1) < 0)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v25 = v19 - v22;
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          operator new();
        }

        v27 = &v20[-*v18];
        *v23 = 58;
        v21 = v23 + 1;
        memcpy(0, v22, v27);
        *v18 = 0;
        *(v18 + 8) = v23 + 1;
        *(v18 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v20 = 58;
        v21 = v20 + 1;
      }

      *(v18 + 8) = v21;
      v28 = *(v14 + 7);
      v53 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1u, memory_order_relaxed);
      }

      (*(*this + 16))(this, &v53);
      v29 = v53;
      if (v53 && atomic_fetch_add_explicit((v53 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v29 + 8))(v29);
      }

      if (v16 != v17)
      {
        v30 = *(this + 1);
        v32 = *(v30 + 8);
        v31 = *(v30 + 16);
        if (v32 >= v31)
        {
          v34 = *v30;
          v35 = &v32[-*v30];
          v36 = (v35 + 1);
          if ((v35 + 1) < 0)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v37 = v31 - v34;
          if (2 * v37 > v36)
          {
            v36 = 2 * v37;
          }

          if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v38 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            operator new();
          }

          v39 = &v32[-*v30];
          *v35 = 44;
          v33 = v35 + 1;
          memcpy(0, v34, v39);
          *v30 = 0;
          *(v30 + 8) = v35 + 1;
          *(v30 + 16) = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v32 = 44;
          v33 = v32 + 1;
        }

        *(v30 + 8) = v33;
      }

      v54[0] = &unk_2883E6F38;
      if (v55 < 0)
      {
        operator delete(v54[2]);
      }

      v40 = *(v14 + 1);
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
          v41 = *(v14 + 2);
          v42 = *v41 == v14;
          v14 = v41;
        }

        while (!v42);
      }

      ++v16;
      v14 = v41;
    }

    while (v41 != v15);
  }

  v43 = *(this + 1);
  v45 = *(v43 + 8);
  v44 = *(v43 + 16);
  if (v45 < v44)
  {
    *v45 = 125;
    v46 = v45 + 1;
    goto LABEL_66;
  }

  v47 = *v43;
  v48 = &v45[-*v43];
  v49 = (v48 + 1);
  if ((v48 + 1) < 0)
  {
LABEL_69:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v50 = v44 - v47;
  if (2 * v50 > v49)
  {
    v49 = 2 * v50;
  }

  if (v50 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v51 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v51 = v49;
  }

  if (v51)
  {
    operator new();
  }

  v52 = &v45[-*v43];
  *v48 = 125;
  v46 = v48 + 1;
  memcpy(0, v47, v52);
  *v43 = 0;
  *(v43 + 8) = v48 + 1;
  *(v43 + 16) = 0;
  if (v47)
  {
    operator delete(v47);
  }

LABEL_66:
  *(v43 + 8) = v46;
}

void sub_274E03C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::Json::~Json(atomic_uint **this)
{
  v1 = *this;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v1 + 8))(v1);
    }
  }
}

void xgboost::JsonString::~JsonString(void **this)
{
  *this = &unk_2883E6F38;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2883E6F38;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x277C69180);
}

void *xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonNumber *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = xgboost::detail::ToCharsFloatImpl(__src, *(a2 + 4), a2);
  if (&__src[v3] >= &v11)
  {
    v4 = &v11;
  }

  else
  {
    v4 = &__src[v3];
  }

  v5 = *(this + 1);
  begin = v5->__begin_;
  v7 = v5->__end_ - v5->__begin_;
  v8 = v4 - __src;
  if (v7 >= v4 - __src + v7)
  {
    if (v7 > v8 + v7)
    {
      v5->__end_ = &begin[v8 + v7];
    }
  }

  else
  {
    std::vector<char>::__append(v5, v8);
    begin = **(this + 1);
  }

  return memcpy(&begin[v7], __src, v8);
}

void *xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonInteger *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 2);
  if (v3)
  {
    p_src = &__src;
    if (v3 < 0)
    {
      __src = 45;
      p_src = v17;
      v3 = -v3;
    }

    v5 = xgboost::detail::ToCharsUnsignedImpl(p_src, &v18, v3);
    if (v6)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v15);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 73);
      v8 = dmlc::LogMessageFatal::GetEntry(&v15);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Check failed: ret.ec == std::errc()", 35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v15);
    }
  }

  else
  {
    __src = 48;
    v5 = v17;
  }

  v10 = v5 - &__src;
  v11 = *(this + 1);
  begin = v11->__begin_;
  v13 = v11->__end_ - v11->__begin_;
  if (v13 >= v13 + v10)
  {
    if (v13 > v13 + v10)
    {
      v11->__end_ = &begin[v13 + v10];
    }
  }

  else
  {
    std::vector<char>::__append(v11, v10);
    begin = **(this + 1);
  }

  return memcpy(&begin[v13], &__src, v10);
}

std::vector<char> *xgboost::JsonWriter::Visit(uint64_t a1)
{
  result = *(a1 + 8);
  begin = result->__begin_;
  v4 = result->__end_ - result->__begin_;
  if (v4 > 0xFFFFFFFFFFFFFFFBLL)
  {
    result->__end_ = &begin[v4 + 4];
  }

  else
  {
    std::vector<char>::__append(result, 4uLL);
    result = *(a1 + 8);
    begin = result->__begin_;
  }

  begin[v4] = 110;
  result->__begin_[v4 + 1] = 117;
  result->__begin_[v4 + 2] = 108;
  result->__begin_[v4 + 3] = 108;
  return result;
}

void xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonString *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&v19, 0, sizeof(v19));
  std::string::push_back(&v19, 34);
  v3 = 0;
  v4 = (a2 + 16);
  while (1)
  {
    v5 = *(a2 + 39);
    v6 = v5 < 0 ? *(a2 + 3) : *(a2 + 39);
    if (v3 >= v6)
    {
      break;
    }

    v7 = a2 + 16;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = *v4;
    }

    v8 = v7[v3];
    if (v8 <= 11)
    {
      switch(v8)
      {
        case 8:
          v9 = "\\b";
          goto LABEL_34;
        case 9:
          v9 = "\\t";
          goto LABEL_34;
        case 10:
          v9 = "\\n";
          goto LABEL_34;
      }
    }

    else if (v8 > 33)
    {
      v9 = "\";
      if (v8 == 34)
      {
        goto LABEL_34;
      }

      if (v8 == 92)
      {
        if ((v5 & 0x80000000) != 0)
        {
          v10 = *(a2 + 3);
        }

        else
        {
          v10 = *(a2 + 39);
        }

        v9 = "\\\"";
        if (v3 < v10)
        {
          v11 = a2 + 16;
          if ((v5 & 0x80000000) != 0)
          {
            v11 = *v4;
          }

          if (v11[v3 + 1] == 117)
          {
            v9 = "\"";
          }

          else
          {
            v9 = "\\\"";
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v8 == 12)
      {
        v9 = "\\f";
        goto LABEL_34;
      }

      if (v8 == 13)
      {
        v9 = "\\r";
LABEL_34:
        std::string::append(&v19, v9);
        goto LABEL_35;
      }
    }

    if (v8 > 0x1F)
    {
      std::string::push_back(&v19, v8);
    }

    else
    {
      snprintf(__str, 8uLL, "\\u%04x", v8);
      std::string::append(&v19, __str);
    }

LABEL_35:
    ++v3;
  }

  std::string::push_back(&v19, 34);
  v12 = *(this + 1);
  begin = v12->__begin_;
  v14 = v12->__end_ - v12->__begin_;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  if (v14 >= size + v14)
  {
    if (v14 > size + v14)
    {
      v12->__end_ = &begin[size + v14];
    }
  }

  else
  {
    std::vector<char>::__append(v12, size);
    begin = **(this + 1);
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v19.__r_.__value_.__l.__size_;
  }

  memcpy(&begin[v14], v16, v17);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_274E042D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<char> *xgboost::JsonWriter::Visit(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  begin = result->__begin_;
  v5 = result->__end_ - result->__begin_;
  if (*(a2 + 16) == 1)
  {
    if (v5 > 0xFFFFFFFFFFFFFFFBLL)
    {
      result->__end_ = &begin[v5 + 4];
    }

    else
    {
      std::vector<char>::__append(result, 4uLL);
      result = *(a1 + 8);
      begin = result->__begin_;
    }

    begin[v5] = 116;
    v6 = 117;
    v7 = 114;
    v8 = 3;
    v9 = 2;
    v10 = 1;
  }

  else
  {
    if (v5 > 0xFFFFFFFFFFFFFFFALL)
    {
      result->__end_ = &begin[v5 + 5];
    }

    else
    {
      std::vector<char>::__append(result, 5uLL);
      result = *(a1 + 8);
      begin = result->__begin_;
    }

    begin[v5] = 102;
    v6 = 115;
    result->__begin_[v5 + 1] = 97;
    v7 = 108;
    v8 = 4;
    v9 = 3;
    v10 = 2;
  }

  result->__begin_[v5 + v10] = v7;
  result->__begin_[v5 + v9] = v6;
  result->__begin_[v5 + v8] = 101;
  return result;
}

void *xgboost::Value::TypeStr@<X0>(xgboost::Value *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 > 0xA)
  {
    v5 = &str_23;
  }

  else
  {
    v5 = (&off_279EF9A88)[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

uint64_t *xgboost::DummyJsonObject(xgboost *this)
{
  if ((atomic_load_explicit(&qword_280AF7150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF7150))
  {
    operator new();
  }

  return &_MergedGlobals_19;
}

uint64_t *xgboost::Value::operator[](xgboost::Value *a1)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v12);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 188);
  v3 = dmlc::LogMessageFatal::GetEntry(&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Object of type ", 15);
  xgboost::Value::TypeStr(a1, __p);
  if ((v11 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " can not be indexed by string.", 30);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  xgboost::DummyJsonObject(v8);
  return &_MergedGlobals_19;
}

{
  Entry = dmlc::LogMessageFatal::GetEntry(&v12);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 193);
  v3 = dmlc::LogMessageFatal::GetEntry(&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Object of type ", 15);
  xgboost::Value::TypeStr(a1, __p);
  if ((v11 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " can not be indexed by Integer.", 31);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  xgboost::DummyJsonObject(v8);
  return &_MergedGlobals_19;
}

void *xgboost::JsonObject::JsonObject(void *a1, uint64_t a2)
{
  a1[1] = 0x300000000;
  *a1 = &unk_2883E6E50;
  a1[4] = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::swap((a2 + 16), (a1 + 2));
  return a1;
}

{
  a1[1] = 0x300000000;
  *a1 = &unk_2883E6E50;
  a1[4] = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::swap((a2 + 16), (a1 + 2));
  return a1;
}

void *xgboost::JsonObject::JsonObject(void *result, void *a2)
{
  result[1] = 0x300000000;
  result[2] = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  *result = &unk_2883E6E50;
  result[3] = v3;
  v4 = result + 3;
  v5 = a2[2];
  result[4] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    result[2] = v4;
  }

  return result;
}

{
  result[1] = 0x300000000;
  result[2] = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  *result = &unk_2883E6E50;
  result[3] = v3;
  v4 = result + 3;
  v5 = a2[2];
  result[4] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    result[2] = v4;
  }

  return result;
}

uint64_t xgboost::JsonObject::operator==(void *a1, _DWORD *a2)
{
  if (a2[3] != 3)
  {
    return 0;
  }

  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a2);
  if (a1[4] == v3[4])
  {
    v4 = a1[2];
    v5 = a1 + 3;
    if (v4 == v5)
    {
      return 1;
    }

    v6 = v3[2];
    while (1)
    {
      v7 = *(v4 + 55);
      if (v7 >= 0)
      {
        v8 = *(v4 + 55);
      }

      else
      {
        v8 = v4[5];
      }

      v9 = *(v6 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v6[5];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v4 + 4 : v4[4];
      v12 = v10 >= 0 ? v6 + 4 : v6[4];
      if (memcmp(v11, v12, v8))
      {
        break;
      }

      result = (*(*v4[7] + 40))(v4[7], v6[7]);
      if (!result)
      {
        return result;
      }

      v14 = v4[1];
      v15 = v4;
      if (v14)
      {
        do
        {
          v4 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v4 = v15[2];
          v16 = *v4 == v15;
          v15 = v4;
        }

        while (!v16);
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v16 = *v18 == v6;
          v6 = v18;
        }

        while (!v16);
      }

      v6 = v18;
      if (v4 == v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL xgboost::JsonString::operator==(uint64_t a1, xgboost::Value *a2)
{
  if (*(a2 + 3))
  {
    return 0;
  }

  v4 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(a2);
  v5 = *(v4 + 39);
  if (v5 >= 0)
  {
    v6 = *(v4 + 39);
  }

  else
  {
    v6 = v4[3];
  }

  v7 = *(a1 + 39);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 24);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v11 = v4[2];
  v9 = v4 + 2;
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  v14 = *(a1 + 16);
  v13 = (a1 + 16);
  v12 = v14;
  if (v8 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  return memcmp(v9, v15, v6) == 0;
}

double xgboost::JsonArray::JsonArray(void *a1, void *a2)
{
  *&result = 0x400000000;
  a1[1] = 0x400000000;
  *a1 = &unk_2883E6E98;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v3 = a2[2];
  a2[2] = 0;
  a1[2] = v3;
  v4 = a2[3];
  a2[3] = a1[3];
  a1[3] = v4;
  v5 = a2[4];
  a2[4] = a1[4];
  a1[4] = v5;
  return result;
}

{
  *&result = 0x400000000;
  a1[1] = 0x400000000;
  *a1 = &unk_2883E6E98;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v3 = a2[2];
  a2[2] = 0;
  a1[2] = v3;
  v4 = a2[3];
  a2[3] = a1[3];
  a1[3] = v4;
  v5 = a2[4];
  a2[4] = a1[4];
  a1[4] = v5;
  return result;
}

uint64_t xgboost::JsonArray::operator==(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 4)
  {
    return 0;
  }

  v3 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(a2);
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  v6 = v3[2];
  v7 = v3[3];
  if (*(v5 + 8) - v4 != v7 - v6)
  {
    return 0;
  }

  if (v6 == v7)
  {
    return 1;
  }

  v8 = v6 + 8;
  do
  {
    v9 = *v4++;
    result = (*(**(v8 - 8) + 40))(*(v8 - 8), v9);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    v8 += 8;
  }

  while (!v11);
  return result;
}

BOOL xgboost::JsonNumber::operator==(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 1)
  {
    return 0;
  }

  v3 = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(a2) + 4);
  v4 = *(a1 + 16);
  if (fabsf(v4) == INFINITY)
  {
    return fabsf(v3) == INFINITY;
  }

  else
  {
    return v4 == v3;
  }
}

BOOL xgboost::JsonInteger::operator==(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  return v2 == *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(a2) + 2);
}

BOOL xgboost::JsonBoolean::operator==(uint64_t a1, _DWORD *a2)
{
  if (a2[3] != 5)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  return v2 == *(xgboost::Cast<xgboost::JsonBoolean const,xgboost::Value const>(a2) + 16);
}

uint64_t xgboost::JsonReader::Parse(xgboost::JsonReader *this)
{
  v3 = MEMORY[0x277D85DE0];
  while (1)
  {
    v4 = *(this + 3);
    v5 = *(this + 1);
    if (v5 < v4)
    {
      v6 = *(this + 2);
      while (1)
      {
        v7 = *(v6 + v5);
        v8 = v7 > 0x20;
        v9 = (1 << v7) & 0x100002600;
        if (v8 || v9 == 0)
        {
          break;
        }

        *(this + 1) = ++v5;
        if (v4 == v5)
        {
          goto LABEL_29;
        }
      }
    }

    if (v5 == v4)
    {
LABEL_29:
      operator new();
    }

    LODWORD(v5) = *(*(this + 2) + v5);
    if (v5 > 122)
    {
      if (v5 == 255)
      {
        goto LABEL_29;
      }

      if (v5 == 123)
      {
        return (*(*this + 8))(this);
      }
    }

    else
    {
      if (v5 == 45)
      {
        return (*(*this + 24))(this);
      }

      if (v5 == 91)
      {
        return (*(*this + 16))(this);
      }
    }

    v5 = v5;
    if ((v5 & 0x80000000) == 0 && (*(v3 + 4 * v5 + 60) & 0x400) != 0)
    {
      return (*(*this + 24))(this);
    }

    if (v5 > 0x65u)
    {
      break;
    }

    if (v5 == 34)
    {
      return (**this)(this);
    }

    if (v5 == 73 || v5 == 78)
    {
      return (*(*this + 24))(this);
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(&__p, "Unknown construct");
    xgboost::JsonReader::Error(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v5 == 102)
  {
    return (*(*this + 32))(this);
  }

  if (v5 != 110)
  {
    if (v5 == 116)
    {
      return (*(*this + 32))(this);
    }

    goto LABEL_27;
  }

  return (*(*this + 40))(this);
}

void sub_274E05168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonReader::SkipSpaces(void *this)
{
  v1 = this[3];
  v2 = this[1];
  if (v2 < v1)
  {
    v3 = this[2];
    do
    {
      v4 = *(v3 + v2);
      v5 = v4 > 0x20;
      v6 = (1 << v4) & 0x100002600;
      if (v5 || v6 == 0)
      {
        break;
      }

      this[1] = ++v2;
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t xgboost::JsonReader::Error(unint64_t *a1, std::string *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v45);
  v4 = xgboost::StringView::substr((a1 + 2), 0);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    do
    {
      std::ostream::put();
      ++v7;
      --v6;
    }

    while (v6);
  }

  std::to_string(&v43, a1[1]);
  v8 = std::string::insert(&v43, 0, ", around character position: ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  std::string::push_back(a2, 10);
  v12 = a1[1];
  if (!v12)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v43);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 374);
    v14 = dmlc::LogMessageFatal::GetEntry(&v43);
    v15 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (v15 >= 0)
    {
      v17 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = a2->__r_.__value_.__l.__size_;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 3);
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v43);
    v12 = a1[1];
  }

  if (v12 >= 8)
  {
    v23 = v12 - 8;
  }

  else
  {
    v23 = 0;
  }

  v24 = v12 + 8;
  if (v24 >= a1[3])
  {
    v25 = a1[3];
  }

  else
  {
    v25 = v24;
  }

  v26 = xgboost::StringView::substr((a1 + 2), v23);
  v28 = v27;
  memset(&__p, 0, sizeof(__p));
  if (v27)
  {
    v29 = v26;
    do
    {
      v30 = *v29;
      if (*v29)
      {
        if (v30 != 10)
        {
          std::string::push_back(&__p, v30);
          goto LABEL_44;
        }

        v31 = "\\n";
      }

      else
      {
        v31 = "\\0";
      }

      std::string::append(&__p, v31);
LABEL_44:
      ++v29;
      --v28;
    }

    while (v28);
  }

  std::string::append(a2, "    ");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v32, v33);
  std::string::push_back(a2, 10);
  std::string::append(a2, "    ");
  while (v23 < a1[1] - 1)
  {
    std::string::push_back(a2, 126);
    ++v23;
  }

  std::string::push_back(a2, 94);
  v34 = a1[1];
  v35 = v25 - v34;
  if (v25 > v34)
  {
    do
    {
      std::string::push_back(a2, 126);
      --v35;
    }

    while (v35);
  }

  v36 = dmlc::LogMessageFatal::GetEntry(&v43);
  dmlc::LogMessageFatal::Entry::Init(v36, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 407);
  v37 = dmlc::LogMessageFatal::GetEntry(&v43);
  v38 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v38 >= 0)
  {
    v39 = a2;
  }

  else
  {
    v39 = a2->__r_.__value_.__r.__words[0];
  }

  if (v38 >= 0)
  {
    v40 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = a2->__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
  dmlc::LogMessageFatal::~LogMessageFatal(&v43);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v45[0] = *MEMORY[0x277D82818];
  v41 = *(MEMORY[0x277D82818] + 72);
  *(v45 + *(v45[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v45[2] = v41;
  v46 = MEMORY[0x277D82878] + 16;
  if (v48 < 0)
  {
    operator delete(v47[7].__locale_);
  }

  v46 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v47);
  std::iostream::~basic_iostream();
  return MEMORY[0x277C690D0](&v49);
}

void sub_274E05648(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, void *a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  dmlc::LogMessageFatal::~LogMessageFatal(&a10);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](va);
  _Unwind_Resume(a1);
}

unint64_t xgboost::StringView::substr(xgboost::StringView *this, unint64_t a2)
{
  v3 = a2;
  if (*(this + 1) < a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v3, this + 1);
  }

  return *this + v3;
}

void sub_274E05814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::ParseStr(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = a1[1];
  }

  if (v1)
  {
    v3 = 0;
    if (v2 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    while (!v3 || *(v4 + v3) != 34 || *(v4 + v3 - 1) == 92)
    {
      if (v1 == ++v3)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v3 = 0;
  }

  memset(&v5, 0, sizeof(v5));
  std::string::resize(&v5, v3, 0);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_274E058E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonReader::ParseString(xgboost::JsonReader *this)
{
  xgboost::JsonReader::GetConsecutiveChar(this, 34);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  memset(&v11, 0, sizeof(v11));
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v3 = *(this + 1);
        v4 = *(this + 3);
        if (v3 == v4)
        {
          v6 = 255;
          goto LABEL_5;
        }

        v5 = *(this + 2);
        v6 = *(v5 + v3);
        v7 = v3 + 1;
        *(this + 1) = v3 + 1;
        if (v6 == 92)
        {
          break;
        }

        if (v6 == 34)
        {
          memset(&v11, 0, sizeof(v11));
          operator new();
        }

LABEL_5:
        std::string::push_back(&v11, v6);
        if (v6 == 10 || v6 == 255 || v6 == 13)
        {
          xgboost::JsonReader::Expect(this, 34, v6);
        }
      }

      if (v7 == v4)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + v7);
      *(this + 1) = v3 + 2;
      if (v8 <= 113)
      {
        break;
      }

      switch(v8)
      {
        case 'r':
          v9 = "\r";
          goto LABEL_25;
        case 't':
          v9 = "\t";
LABEL_25:
          std::string::append(&v11, v9);
          break;
        case 'u':
          std::string::push_back(&v11, 92);
          std::string::push_back(&v11, 117);
          break;
        default:
          goto LABEL_19;
      }
    }

    switch(v8)
    {
      case '""':
        v9 = "";
        goto LABEL_25;
      case '\\':
        v9 = "\"";
        goto LABEL_25;
      case 'n':
        v9 = "\n";
        goto LABEL_25;
    }

LABEL_19:
    std::string::basic_string[abi:ne200100]<0>(&__p, "Unknown escape");
    xgboost::JsonReader::Error(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_274E05C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  _Unwind_Resume(a1);
}

void xgboost::JsonReader::GetConsecutiveChar(xgboost::JsonReader *this, std::string::value_type a2)
{
  v2 = *(this + 1);
  if (v2 == *(this + 3))
  {
    v3 = 255;
  }

  else
  {
    v3 = *(*(this + 2) + v2);
    *(this + 1) = v2 + 1;
  }

  if (v3 != a2)
  {
    xgboost::JsonReader::Expect(this, a2, v3);
  }
}

void xgboost::JsonReader::Expect(xgboost::JsonReader *this, std::string::value_type a2, int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v16, "Expecting: ");
  std::string::push_back(v6, a2);
  std::string::append(&v16, ", got: ");
  if (!a3)
  {
    v7 = "\\0";
    goto LABEL_5;
  }

  if (a3 == -1)
  {
    v7 = "EOF";
LABEL_5:
    std::string::append(&v16, v7);
    goto LABEL_16;
  }

  *(&v13.__r_.__value_.__s + 23) = 1;
  LOWORD(v13.__r_.__value_.__l.__data_) = a3;
  v8 = std::string::append(&v13, " ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v15 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v15 >= 0)
  {
    v11 = HIBYTE(v15);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v16, v10, v11);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v16;
  }

  xgboost::JsonReader::Error(this, &v12);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_274E05E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonReader::ParseNull(xgboost::JsonReader *this)
{
  *(&v8.__r_.__value_.__s + 23) = 1;
  LOWORD(v8.__r_.__value_.__l.__data_) = xgboost::JsonReader::GetNextNonSpaceChar(this);
  v3 = 3;
  do
  {
    v4 = *(this + 1);
    if (v4 == *(this + 3))
    {
      v5 = -1;
    }

    else
    {
      v5 = *(*(this + 2) + v4);
      *(this + 1) = v4 + 1;
    }

    std::string::push_back(&v8, v5);
    --v3;
  }

  while (v3);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v8.__r_.__value_.__l.__size_ == 4)
    {
      v6 = v8.__r_.__value_.__r.__words[0];
LABEL_12:
      if (LODWORD(v6->__r_.__value_.__l.__data_) == 1819047278)
      {
        goto LABEL_15;
      }
    }
  }

  else if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) == 4)
  {
    v6 = &v8;
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Expecting null value null");
  xgboost::JsonReader::Error(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_15:
  operator new();
}

void sub_274E06040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t xgboost::JsonReader::GetNextNonSpaceChar(xgboost::JsonReader *this)
{
  v1 = *(this + 3);
  v2 = *(this + 1);
  if (v2 < v1)
  {
    v3 = *(this + 2);
    while (1)
    {
      v4 = *(v3 + v2);
      v5 = v4 > 0x20;
      v6 = (1 << v4) & 0x100002600;
      if (v5 || v6 == 0)
      {
        break;
      }

      *(this + 1) = ++v2;
      if (v1 == v2)
      {
        return -1;
      }
    }
  }

  if (v2 == v1)
  {
    return -1;
  }

  else
  {
    v8 = *(*(this + 2) + v2);
    *(this + 1) = v2 + 1;
  }

  return v8;
}

void xgboost::JsonReader::ParseArray(xgboost::JsonReader *this)
{
  memset(v20, 0, 24);
  xgboost::JsonReader::GetConsecutiveChar(this, 91);
  while (1)
  {
    v3 = *(this + 1);
    if (v3 != *(this + 3) && *(*(this + 2) + v3) == 93)
    {
      xgboost::JsonReader::GetConsecutiveChar(this, 93);
      v23 = 0x400000000;
      v22 = &unk_2883E6E98;
      v24 = v20[0];
      v25 = *&v20[1];
      memset(v20, 0, 24);
      operator new();
    }

    xgboost::JsonReader::Parse(this);
    v4 = *(&v20[0] + 1);
    if (*(&v20[0] + 1) >= *&v20[1])
    {
      v7 = (*(&v20[0] + 1) - *&v20[0]) >> 3;
      v8 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
      }

      v9 = *&v20[1] - *&v20[0];
      if ((*&v20[1] - *&v20[0]) >> 2 > v8)
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

      v25 = v20;
      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(v20, v10);
      }

      v11 = (8 * v7);
      v22 = 0;
      v23 = v11;
      *(&v24 + 1) = 0;
      v12 = v21;
      *v11 = v21;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
      }

      *&v24 = v11 + 1;
      v13 = (v11 + *&v20[0] - *(&v20[0] + 1));
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*>(v20, *&v20[0], *(&v20[0] + 1), v13);
      v14 = *&v20[0];
      v15 = *&v20[1];
      *&v20[0] = v13;
      v19 = v24;
      *(v20 + 8) = v24;
      *&v24 = v14;
      *(&v24 + 1) = v15;
      v22 = v14;
      v23 = v14;
      std::__split_buffer<xgboost::Json>::~__split_buffer(&v22);
      v6 = v19;
    }

    else
    {
      v5 = v21;
      **(&v20[0] + 1) = v21;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
      }

      v6 = v4 + 8;
    }

    *(&v20[0] + 1) = v6;
    NextNonSpaceChar = xgboost::JsonReader::GetNextNonSpaceChar(this);
    if (NextNonSpaceChar == 44)
    {
      goto LABEL_23;
    }

    if (NextNonSpaceChar != 93)
    {
      break;
    }

    v17 = 0;
LABEL_24:
    v18 = v21;
    if (v21 && atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v18 + 8))(v18);
    }

    if ((v17 & 1) == 0)
    {
      v23 = 0x400000000;
      v22 = &unk_2883E6E98;
      v24 = v20[0];
      v25 = *&v20[1];
      memset(v20, 0, 24);
      operator new();
    }
  }

  xgboost::JsonReader::Expect(this, 44, NextNonSpaceChar);
LABEL_23:
  v17 = 1;
  goto LABEL_24;
}

void sub_274E06434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = &a11;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void xgboost::JsonArray::~JsonArray(xgboost::JsonArray *this)
{
  *this = &unk_2883E6E98;
  v1 = (this + 16);
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2883E6E98;
  v2 = (this + 16);
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x277C69180](this, 0x10A1C405897D53FLL);
}

void xgboost::JsonReader::ParseObject(xgboost::JsonReader *this@<X0>, uint64_t *a2@<X8>)
{
  xgboost::JsonReader::GetConsecutiveChar(this, 123);
  v31 = 0;
  v32 = 0;
  v30 = &v31;
  v4 = *(this + 3);
  v5 = *(this + 1);
  if (v5 < v4)
  {
    v6 = *(this + 2);
    while (1)
    {
      v7 = *(v6 + v5);
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100002600;
      if (v8 || v9 == 0)
      {
        break;
      }

      *(this + 1) = ++v5;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  if (v5 != v4 && *(*(this + 2) + v5) == 125)
  {
    xgboost::JsonReader::GetConsecutiveChar(this, 125);
    v35 = 0x300000000;
    v34 = &unk_2883E6E50;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    if (v32)
    {
      *(v31 + 16) = &v37;
      v30 = &v31;
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v36 = &v37;
    }

    xgboost::Json::Json(a2, &v34);
  }

  while (1)
  {
LABEL_13:
    v11 = *(this + 3);
    v12 = *(this + 1);
    if (v12 < v11)
    {
      v13 = *(this + 2);
      while (1)
      {
        v14 = *(v13 + v12);
        v8 = v14 > 0x20;
        v15 = (1 << v14) & 0x100002600;
        if (v8 || v15 == 0)
        {
          break;
        }

        *(this + 1) = ++v12;
        if (v11 == v12)
        {
          goto LABEL_25;
        }
      }
    }

    if (v12 == v11 || (v17 = *(*(this + 2) + v12), v17 == 255))
    {
LABEL_25:
      std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, " (", 2);
      LOBYTE(v28) = -1;
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v28, 1);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " vs. ", 5);
      v21 = MEMORY[0x277C68E20](v20, 0xFFFFFFFFLL);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ") ", 2);
      operator new();
    }

    if (v17 != 34)
    {
      xgboost::JsonReader::Expect(this, 34, v17);
    }

    (**this)(&v29, this);
    NextNonSpaceChar = xgboost::JsonReader::GetNextNonSpaceChar(this);
    if (NextNonSpaceChar != 58)
    {
      xgboost::JsonReader::Expect(this, 58, NextNonSpaceChar);
    }

    xgboost::JsonReader::Parse(this);
    v34 = (xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v29) + 16);
    v23 = std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v30, v34, &std::piecewise_construct, &v34, &v33);
    v24 = v23[7];
    v23[7] = v28;
    v28 = v24;
    v25 = xgboost::JsonReader::GetNextNonSpaceChar(this);
    if (v25 == 44)
    {
      goto LABEL_34;
    }

    if (v25 != 125)
    {
      break;
    }

    v26 = 0;
    if (!v24)
    {
      goto LABEL_37;
    }

LABEL_35:
    if (atomic_fetch_add_explicit(v24 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v24 + 8))(v24);
    }

LABEL_37:
    v27 = v29;
    if (v29 && atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v27 + 8))(v27);
    }

    if ((v26 & 1) == 0)
    {
      v35 = 0x300000000;
      v34 = &unk_2883E6E50;
      v36 = v30;
      v37 = v31;
      v38 = v32;
      if (v32)
      {
        *(v31 + 16) = &v37;
        v30 = &v31;
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v36 = &v37;
      }

      xgboost::Json::Json(a2, &v34);
    }
  }

  xgboost::JsonReader::Expect(this, 44, v25);
  v24 = v28;
LABEL_34:
  v26 = 1;
  if (!v24)
  {
    goto LABEL_37;
  }

  goto LABEL_35;
}

void sub_274E06B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v20 + 16, a20);
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&a13, a14);
  _Unwind_Resume(a1);
}

void xgboost::JsonObject::~JsonObject(char **this)
{
  *this = &unk_2883E6E50;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy((this + 2), this[3]);
}

{
  *this = &unk_2883E6E50;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy((this + 2), this[3]);

  JUMPOUT(0x277C69180);
}

void xgboost::JsonReader::ParseNumber(xgboost::JsonReader *this, void x1_0, void x2_0, float *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v5 = (*(this + 2) + v4);
  v6 = *v5;
  switch(v6)
  {
    case '+':
      v7 = 0;
      break;
    case '-':
      v7 = 1;
      break;
    case 'N':
      xgboost::JsonReader::GetConsecutiveChar(this, 78);
      xgboost::JsonReader::GetConsecutiveChar(this, 97);
      xgboost::JsonReader::GetConsecutiveChar(this, 78);
      v28 = 0x100000000;
      v27 = &unk_2883E6FC8;
      v29 = 2143289344;
      operator new();
    default:
      v7 = 0;
      v8 = (*(this + 2) + v4);
LABEL_8:
      if (v6 == 48)
      {
        v11 = *++v8;
        v6 = v11;
      }

      else if (v6 == 73)
      {
        v9 = 0;
        *(this + 1) = (v8 - v5) + v4;
        v30[0] = 0x7974696E69666E49;
        do
        {
          xgboost::JsonReader::GetConsecutiveChar(this, *(v30 + v9++));
        }

        while (v9 != 8);
        v10 = INFINITY;
        if (v7)
        {
          v10 = -INFINITY;
        }

        v25 = 0x100000000;
        v24 = &unk_2883E6FC8;
        v26 = v10;
        operator new();
      }

      if ((v6 - 48) > 9)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          v12 = 10 * v12 + v6 - 48;
          v13 = *++v8;
          v6 = v13;
        }

        while ((v13 - 48) < 0xA);
      }

      if (v6 == 46)
      {
        v15 = *++v8;
        v14 = v15;
        if ((v15 - 48) <= 9)
        {
          do
          {
            v12 = 10 * v12 + (v14 - 48);
            v16 = *++v8;
            v14 = v16;
          }

          while ((v16 - 48) < 0xA);
        }
      }

      else
      {
        v14 = v6;
      }

      if ((v14 | 0x20) == 0x65)
      {
        v17 = v8[1];
        if (v17 == 45 || v17 == 43)
        {
          v19 = v8[2];
          v18 = v8 + 2;
          v17 = v19;
        }

        else
        {
          v18 = v8 + 1;
        }

        if ((v17 - 48) > 9)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "Expecting digit");
          xgboost::JsonReader::Error(this, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          do
          {
            v21 = *++v18;
          }

          while ((v21 - 48) < 0xA);
        }

        v20 = (v18 - v5);
        *(this + 1) += (v18 - v5);
      }

      else
      {
        v20 = (v8 - v5);
        *(this + 1) = v4 + (v8 - v5);
        if (v6 != 46)
        {
          operator new();
        }
      }

      LODWORD(v30[0]) = 0;
      xgboost::detail::FromCharFloatImpl(v5, v20, v30, a2);
      if (v22)
      {
        LODWORD(v30[0]) = strtof(v5, 0);
      }

      operator new();
  }

  v8 = (v5 + 1);
  v6 = v5[1];
  goto LABEL_8;
}

void sub_274E070E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonReader::ParseBoolean(xgboost::JsonReader *this)
{
  NextNonSpaceChar = xgboost::JsonReader::GetNextNonSpaceChar(this);
  std::string::basic_string[abi:ne200100]<0>(&v6, "true");
  std::string::basic_string[abi:ne200100]<0>(&__p, "false");
  if (NextNonSpaceChar == 116)
  {
    xgboost::JsonReader::GetConsecutiveChar(this, 114);
    v4 = 117;
  }

  else
  {
    xgboost::JsonReader::GetConsecutiveChar(this, 97);
    xgboost::JsonReader::GetConsecutiveChar(this, 108);
    v4 = 115;
  }

  xgboost::JsonReader::GetConsecutiveChar(this, v4);
  xgboost::JsonReader::GetConsecutiveChar(this, 101);
  operator new();
}

void sub_274E07264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_274E073F0(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::Json::Dump(atomic_uint **a1, std::string *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  xgboost::Json::Dump(&v6, &v7, a3);
  if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v4 + 8))(v4);
  }

  std::string::resize(a2, v8 - v7, 0);
  v5 = v7;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v8 != v7)
  {
    memmove(a2, v7, v8 - v7);
    v5 = v7;
  }

  if (v5)
  {
    v8 = v5;
    operator delete(v5);
  }
}

void sub_274E0754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Json::Dump(atomic_uint **a1, void *a2, char a3)
{
  a2[1] = *a2;
  if ((a3 & 4) != 0)
  {
    v5 = &unk_2883E72B0;
    v6 = a2;
    v3 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    }
  }

  else
  {
    v5 = &unk_2883E71B0;
    v6 = a2;
    v3 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    }
  }

  result = (*(*v3 + 16))(v3, &v5);
  if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void sub_274E076E8(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Json::Dump(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  (*(*a2 + 16))(a2, &v4);
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_274E07820(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::UBJReader::ParseArray(xgboost::UBJReader *this)
{
  v3 = *(this + 1);
  v4 = *(this + 3);
  if (v3 == v4)
  {
    memset(&v68, 0, sizeof(v68));
  }

  else
  {
    v16 = *(this + 2);
    v17 = *(v16 + v3);
    if (v17 == 36)
    {
      *(this + 1) = v3 + 1;
      if (v3 + 1 == v4)
      {
        v18 = 255;
      }

      else
      {
        v18 = *(v16 + v3 + 1);
        *(this + 1) = v3 + 2;
      }

      xgboost::JsonReader::GetConsecutiveChar(this, 35);
      xgboost::JsonReader::GetConsecutiveChar(this, 76);
      v19 = 0;
      v21 = *(this + 1);
      v20 = *(this + 2);
      v22 = *(v20 + v21);
      v23 = v21 + 8;
      *(this + 1) = v23;
      __p[0] = v22;
      v24 = 7;
      do
      {
        v25 = *(__p + v24);
        *(__p + v24) = *(__p + v19);
        *(__p + v19++) = v25;
        --v24;
      }

      while (v19 != 4);
      v26 = __p[0];
      if (v23 == *(this + 3))
      {
        v17 = 255;
      }

      else
      {
        v17 = *(v20 + v23);
      }

      if (v18 > 99)
      {
        if (v18 == 108)
        {
          xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(__p, __p[0]);
          if (v26 >= 1)
          {
            v60 = v71;
            v62 = *(this + 1);
            v61 = *(this + 2);
            do
            {
              v63 = *(v61 + v62);
              v62 += 4;
              *(this + 1) = v62;
              *v60++ = bswap32(v63);
              --v26;
            }

            while (v26);
          }

          operator new();
        }

        if (v18 == 100)
        {
          xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(__p, __p[0]);
          if (v26 >= 1)
          {
            v30 = v71;
            v32 = *(this + 1);
            v31 = *(this + 2);
            do
            {
              v33 = *(v31 + v32);
              v32 += 4;
              *(this + 1) = v32;
              *v30++ = bswap32(v33);
              --v26;
            }

            while (v26);
          }

          operator new();
        }
      }

      else
      {
        if (v18 == 76)
        {
          xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(__p, __p[0]);
          if (v26 >= 1)
          {
            v52 = 0;
            v53 = v71;
            v55 = *(this + 1);
            v54 = *(this + 2);
            do
            {
              v56 = 0;
              v57 = *(v54 + v55);
              v55 += 8;
              *(this + 1) = v55;
              v68.__r_.__value_.__r.__words[0] = v57;
              v58 = 7;
              do
              {
                v59 = v68.__r_.__value_.__s.__data_[v58];
                v68.__r_.__value_.__s.__data_[v58] = v68.__r_.__value_.__s.__data_[v56];
                v68.__r_.__value_.__s.__data_[v56++] = v59;
                --v58;
              }

              while (v56 != 4);
              *(v53 + 8 * v52++) = v68.__r_.__value_.__r.__words[0];
            }

            while (v52 != v26);
          }

          operator new();
        }

        if (v18 == 85)
        {
          xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(__p, __p[0]);
          if (v26 >= 1)
          {
            for (i = 0; i != v26; ++i)
            {
              v28 = *(this + 1);
              v29 = *(*(this + 2) + v28);
              *(this + 1) = v28 + 1;
              *(v71 + i) = v29;
            }
          }

          operator new();
        }
      }

      Entry = dmlc::LogMessageFatal::GetEntry(&v69);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 742);
      v35 = dmlc::LogMessageFatal::GetEntry(&v69);
      *(&v67.__r_.__value_.__s + 23) = 1;
      LOWORD(v67.__r_.__value_.__l.__data_) = v18;
      v37 = *&v36->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v39 = *&v38->__r_.__value_.__l.__data_;
      *&v71 = *(&v38->__r_.__value_.__l + 2);
      *__p = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if ((SBYTE7(v71) & 0x80u) == 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = __p[0];
      }

      if ((SBYTE7(v71) & 0x80u) == 0)
      {
        v41 = BYTE7(v71);
      }

      else
      {
        v41 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v40, v41);
      if (SBYTE7(v71) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      dmlc::LogMessageFatal::~LogMessageFatal(&v69);
    }

    memset(&v68, 0, sizeof(v68));
    if (v17 == 35)
    {
      v42 = *(this + 1);
      if (v42 != *(this + 3))
      {
        *(this + 1) = v42 + 1;
      }

      xgboost::JsonReader::GetConsecutiveChar(this, 76);
      v43 = 0;
      v44 = *(this + 1);
      v45 = *(*(this + 2) + v44);
      *(this + 1) = v44 + 8;
      __p[0] = v45;
      v46 = 7;
      do
      {
        v47 = *(__p + v46);
        *(__p + v46) = *(__p + v43);
        *(__p + v43++) = v47;
        --v46;
      }

      while (v43 != 4);
      v48 = __p[0];
      v49 = (v68.__r_.__value_.__l.__size_ - v68.__r_.__value_.__r.__words[0]) >> 3;
      if (__p[0] <= v49)
      {
        if (__p[0] < v49)
        {
          std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](&v68, v68.__r_.__value_.__r.__words[0] + 8 * __p[0]);
        }
      }

      else
      {
        if (__p[0] - v49 > ((v68.__r_.__value_.__r.__words[2] - v68.__r_.__value_.__l.__size_) >> 3))
        {
          if (!(__p[0] >> 61))
          {
            v50 = (v68.__r_.__value_.__r.__words[2] - v68.__r_.__value_.__r.__words[0]) >> 2;
            if (v50 <= __p[0])
            {
              v50 = __p[0];
            }

            if (v68.__r_.__value_.__r.__words[2] - v68.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v50;
            }

            v72 = &v68;
            std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(&v68, v51);
          }

          std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
        }

        std::vector<xgboost::Json>::__construct_at_end(&v68, __p[0] - v49);
      }

      if (v48 >= 1)
      {
        for (j = 0; j != v48; ++j)
        {
          xgboost::UBJReader::Parse(this);
          v65 = *(v68.__r_.__value_.__r.__words[0] + 8 * j);
          *(v68.__r_.__value_.__r.__words[0] + 8 * j) = __p[0];
          __p[0] = v65;
          if (v65 && atomic_fetch_add_explicit(v65 + 2, 0xFFFFFFFF, memory_order_release) == 1)
          {
            __dmb(9u);
            (*(*v65 + 8))(v65);
          }
        }
      }

LABEL_19:
      __p[1] = 0x400000000;
      __p[0] = &unk_2883E6E98;
      v71 = 0uLL;
      v72 = 0;
      std::vector<xgboost::Json>::__init_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(&v71, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_, (v68.__r_.__value_.__l.__size_ - v68.__r_.__value_.__r.__words[0]) >> 3);
      operator new();
    }

    if (v17 == 93)
    {
LABEL_18:
      xgboost::JsonReader::GetConsecutiveChar(this, 93);
      goto LABEL_19;
    }
  }

  do
  {
    xgboost::UBJReader::Parse(this);
    size = v68.__r_.__value_.__l.__size_;
    if (v68.__r_.__value_.__l.__size_ >= v68.__r_.__value_.__r.__words[2])
    {
      v6 = (v68.__r_.__value_.__l.__size_ - v68.__r_.__value_.__r.__words[0]) >> 3;
      v7 = v6 + 1;
      if ((v6 + 1) >> 61)
      {
        std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
      }

      v8 = v68.__r_.__value_.__r.__words[2] - v68.__r_.__value_.__r.__words[0];
      if ((v68.__r_.__value_.__r.__words[2] - v68.__r_.__value_.__r.__words[0]) >> 2 > v7)
      {
        v7 = v8 >> 2;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      v72 = &v68;
      if (v9)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(&v68, v9);
      }

      v10 = (8 * v6);
      __p[0] = 0;
      __p[1] = v10;
      *(&v71 + 1) = 0;
      *v10 = 0;
      *(8 * v6) = v67.__r_.__value_.__r.__words[0];
      v67.__r_.__value_.__r.__words[0] = 0;
      *&v71 = 8 * v6 + 8;
      v11 = 8 * v6 + v68.__r_.__value_.__r.__words[0] - v68.__r_.__value_.__l.__size_;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*>(&v68, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_, (v10 + v68.__r_.__value_.__r.__words[0] - v68.__r_.__value_.__l.__size_));
      v12 = v68.__r_.__value_.__r.__words[0];
      v13 = v68.__r_.__value_.__r.__words[2];
      v68.__r_.__value_.__r.__words[0] = v11;
      v66 = v71;
      *&v68.__r_.__value_.__r.__words[1] = v71;
      *&v71 = v12;
      *(&v71 + 1) = v13;
      __p[0] = v12;
      __p[1] = v12;
      std::__split_buffer<xgboost::Json>::~__split_buffer(__p);
      v14 = v67.__r_.__value_.__r.__words[0];
      v68.__r_.__value_.__l.__size_ = v66;
      if (v67.__r_.__value_.__r.__words[0] && atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v14 + 8))(v14);
      }
    }

    else
    {
      *v68.__r_.__value_.__l.__size_ = 0;
      *size = v67.__r_.__value_.__r.__words[0];
      v68.__r_.__value_.__l.__size_ = (size + 1);
    }

    v15 = *(this + 1);
  }

  while (v15 == *(this + 3) || *(*(this + 2) + v15) != 93);
  goto LABEL_18;
}

void sub_274E08158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  std::__split_buffer<xgboost::Json>::~__split_buffer(&__p);
  a12 = &a18;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::UBJReader::Parse(xgboost::UBJReader *this)
{
  v2 = *(this + 1);
  if (v2 == *(this + 3))
  {
LABEL_2:
    operator new();
  }

  while (1)
  {
    v4 = *(this + 2);
    v5 = *(v4 + v2);
    if (v5 == 255)
    {
      goto LABEL_2;
    }

    v6 = v2 + 1;
    *(this + 1) = v2 + 1;
    if (v5 < 72)
    {
      if (v5 != 68)
      {
        if (v5 == 67)
        {
          v17 = *(v4 + v6);
          *(this + 1) = v2 + 2;
          v23 = 0x200000000;
          v22 = &unk_2883E7028;
          v24 = v17;
          operator new();
        }

        if (v5 == 70)
        {
          v47 = 0x500000000;
          v46 = &unk_2883E70E8;
          v48 = 1;
          operator new();
        }

        goto LABEL_15;
      }

      Entry = dmlc::LogMessageFatal::GetEntry(v40);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 852);
      v8 = dmlc::LogMessageFatal::GetEntry(v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "f64 is not supported.", 21);
      dmlc::LogMessageFatal::~LogMessageFatal(v40);
LABEL_14:
      v9 = dmlc::LogMessageFatal::GetEntry(v40);
      dmlc::LogMessageFatal::Entry::Init(v9, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 855);
      v10 = dmlc::LogMessageFatal::GetEntry(v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "High precision number is not supported.", 39);
      dmlc::LogMessageFatal::~LogMessageFatal(v40);
      goto LABEL_15;
    }

    if (v5 <= 72)
    {
      goto LABEL_14;
    }

    if (v5 <= 89)
    {
      if (v5 <= 82)
      {
        if (v5 == 73)
        {
          v19 = *(v4 + v6);
          *(this + 1) = v2 + 3;
          v32 = 0x200000000;
          v31 = &unk_2883E7028;
          v33 = (bswap32(v19) >> 16);
          operator new();
        }

        if (v5 == 76)
        {
          v11 = 0;
          v12 = *(v4 + v6);
          *(this + 1) = v2 + 9;
          v40[0] = v12;
          v13 = 7;
          do
          {
            v14 = *(v40 + v13);
            *(v40 + v13) = *(v40 + v11);
            *(v40 + v11++) = v14;
            --v13;
          }

          while (v11 != 4);
          v26 = 0x200000000;
          v25 = &unk_2883E7028;
          v27 = v40[0];
          operator new();
        }
      }

      else
      {
        switch(v5)
        {
          case 'S':
            xgboost::UBJReader::DecodeStr(&v42, this);
            v40[0] = &unk_2883E6F38;
            v40[1] = 0;
            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v41, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
            }

            else
            {
              v41 = v42;
            }

            operator new();
          case 'T':
            v50 = 0x500000000;
            v49 = &unk_2883E70E8;
            v51 = 1;
            operator new();
          case 'U':
            v15 = *(v4 + v6);
            *(this + 1) = v2 + 2;
            v35 = 0x200000000;
            v34 = &unk_2883E7028;
            v36 = v15;
            operator new();
        }
      }

      goto LABEL_15;
    }

    if (v5 <= 104)
    {
      break;
    }

    switch(v5)
    {
      case 'i':
        v18 = *(v4 + v6);
        *(this + 1) = v2 + 2;
        v38 = 0x200000000;
        v37 = &unk_2883E7028;
        v39 = v18;
        operator new();
      case 'l':
        v20 = *(v4 + v6);
        *(this + 1) = v2 + 5;
        v29 = 0x200000000;
        v28 = &unk_2883E7028;
        v30 = bswap32(v20);
        operator new();
      case '{':
        (*(*this + 8))(this);
        return;
    }

LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(&__p, "Unknown construct");
    xgboost::JsonReader::Error(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 1);
    if (v2 == *(this + 3))
    {
      goto LABEL_2;
    }
  }

  if (v5 == 90)
  {
    v53 = 0x600000000;
    v52 = &unk_2883E7088;
    operator new();
  }

  if (v5 != 91)
  {
    if (v5 == 100)
    {
      v16 = *(v4 + v6);
      *(this + 1) = v2 + 5;
      v44 = 0x100000000;
      v43 = &unk_2883E6FC8;
      v45 = bswap32(v16);
      operator new();
    }

    goto LABEL_15;
  }

  (*(*this + 16))(this);
}

void sub_274E08B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 169) < 0)
  {
    operator delete(*(v40 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *xgboost::UBJReader::DecodeStr@<X0>(std::string *__return_ptr a1@<X8>, xgboost::UBJReader *this@<X0>)
{
  xgboost::JsonReader::GetConsecutiveChar(this, 76);
  v4 = 0;
  v5 = *(this + 1);
  v6 = *(*(this + 2) + v5);
  *(this + 1) = v5 + 8;
  __n = v6;
  v7 = 7;
  do
  {
    v8 = *(&__n + v7);
    *(&__n + v7) = *(&__n + v4);
    *(&__n + v4++) = v8;
    --v7;
  }

  while (v4 != 4);
  v9 = __n;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a1, v9, 0);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1->__r_.__value_.__r.__words[0];
  }

  result = memcpy(v10, (*(this + 2) + *(this + 1)), v9);
  *(this + 1) += v9;
  return result;
}

void sub_274E08CB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::UBJReader::ParseObject(xgboost::UBJReader *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4 == *(this + 3))
  {
    v14 = 0;
    v15 = 0;
    v13 = &v14;
    goto LABEL_4;
  }

  v5 = *(*(this + 2) + v4);
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  if (v5 != 125)
  {
    do
    {
      while (1)
      {
LABEL_4:
        xgboost::UBJReader::DecodeStr(&__p, this);
        xgboost::UBJReader::Parse(this);
        if (!*std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(&v13, &v16, &__p.__r_.__value_.__l.__data_))
        {
          operator new();
        }

        if (v11 && atomic_fetch_add_explicit(v11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          (*(*v11 + 8))(v11);
        }

        v6 = *(this + 1);
        v7 = v6 != *(this + 3) && *(*(this + 2) + v6) == 125;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (v7)
        {
          goto LABEL_16;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
    }

    while (!v7);
  }

LABEL_16:
  xgboost::JsonReader::GetConsecutiveChar(this, 125);
  v8[1] = 0x300000000;
  v8[0] = &unk_2883E6E50;
  v9 = v13;
  v10[0] = v14;
  v10[1] = v15;
  if (v15)
  {
    *(v14 + 16) = v10;
    v13 = &v14;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v9 = v10;
  }

  xgboost::Json::Json(a2, v8);
}

void sub_274E08F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23)
{
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23 + 16, a13);
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonArray *a2)
{
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 91;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  v15 = *(this + 1);
  v23 = 35;
  std::vector<char>::push_back[abi:ne200100](v15, &v23);
  v16 = *(this + 1);
  v22 = 76;
  std::vector<char>::push_back[abi:ne200100](v16, &v22);
  v18 = *(a2 + 2);
  for (i = *(a2 + 3); v18 != i; ++v18)
  {
    v19 = *v18;
    v21 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
    }

    (*(*this + 16))(this, &v21);
    v20 = v21;
    if (v21)
    {
      if (atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v20 + 8))(v20);
      }
    }
  }
}

void sub_274E091E4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::anonymous namespace::WritePrimitive<long long>(uint64_t a1, std::vector<char> *this)
{
  v3 = 0;
  v9 = a1;
  v4 = 7;
  do
  {
    v5 = *(&v9 + v4);
    *(&v9 + v4) = *(&v9 + v3);
    *(&v9 + v3++) = v5;
    --v4;
  }

  while (v3 != 4);
  v6 = v9;
  begin = this->__begin_;
  v8 = this->__end_ - this->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    this->__end_ = &begin[v8 + 8];
  }

  else
  {
    std::vector<char>::__append(this, 8uLL);
    begin = this->__begin_;
  }

  *&begin[v8] = v6;
}

void xgboost::UBJWriter::Visit(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v22 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v21 = 100;
  std::vector<char>::push_back[abi:ne200100](v3, &v21);
  v20 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v20);
  v19 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v19);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if (((v13 - v14) >> 2) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v13 - v14) >> 2;
    }

    do
    {
      *&v3->__begin_[v15] = bswap32(*(*(a2 + 16) + 4 * v17));
      v15 += 4;
      ++v17;
    }

    while (v18 != v17);
  }
}

{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v22 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v21 = 85;
  std::vector<char>::push_back[abi:ne200100](v3, &v21);
  v20 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v20);
  v19 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v19);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if ((v13 - v14) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13 - v14;
    }

    do
    {
      v3->__begin_[v15++] = *(*(a2 + 16) + v17++);
    }

    while (v18 != v17);
  }
}

{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v22 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v21 = 108;
  std::vector<char>::push_back[abi:ne200100](v3, &v21);
  v20 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v20);
  v19 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v19);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if (((v13 - v14) >> 2) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v13 - v14) >> 2;
    }

    do
    {
      *&v3->__begin_[v15] = bswap32(*(*(a2 + 16) + 4 * v17));
      v15 += 4;
      ++v17;
    }

    while (v18 != v17);
  }
}

{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v25 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v25);
  v24 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v24);
  v23 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v23);
  v22 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if (((v13 - v14) >> 3) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v13 - v14) >> 3;
    }

    do
    {
      v19 = 0;
      v26 = *(*(a2 + 16) + 8 * v17);
      v20 = 7;
      do
      {
        v21 = *(&v26 + v20);
        *(&v26 + v20) = *(&v26 + v19);
        *(&v26 + v19++) = v21;
        --v20;
      }

      while (v19 != 4);
      *&v3->__begin_[v15] = v26;
      v15 += 8;
      ++v17;
    }

    while (v17 != v18);
  }
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonObject *a2)
{
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_38;
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 123;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 123;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = *(a2 + 2);
  v15 = a2 + 24;
  if (v14 != v15)
  {
    do
    {
      v16 = v14[7];
      v31 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
      }

      (*(*this + 16))(this, &v31);
      v17 = v31;
      if (v31 && atomic_fetch_add_explicit(v31 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v17 + 8))(v17);
      }

      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != v15);
  }

  v21 = *(this + 1);
  v23 = *(v21 + 8);
  v22 = *(v21 + 16);
  if (v23 < v22)
  {
    *v23 = 125;
    v24 = v23 + 1;
    goto LABEL_37;
  }

  v25 = *v21;
  v26 = &v23[-*v21];
  v27 = (v26 + 1);
  if ((v26 + 1) < 0)
  {
LABEL_38:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v28 = v22 - v25;
  if (2 * v28 > v27)
  {
    v27 = 2 * v28;
  }

  if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = v27;
  }

  if (v29)
  {
    operator new();
  }

  v30 = &v23[-*v21];
  *v26 = 125;
  v24 = v26 + 1;
  memcpy(0, v25, v30);
  *v21 = 0;
  *(v21 + 8) = v26 + 1;
  *(v21 + 16) = 0;
  if (v25)
  {
    operator delete(v25);
  }

LABEL_37:
  *(v21 + 8) = v24;
}

void sub_274E09CBC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::anonymous namespace::EncodeStr(std::vector<char> *a1, const void **a2)
{
  v12 = 76;
  std::vector<char>::push_back[abi:ne200100](a1, &v12);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  begin = a1->__begin_;
  v6 = a1->__end_ - a1->__begin_;
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= v7 + v6)
  {
    if (v6 > v7 + v6)
    {
      a1->__end_ = &begin[v7 + v6];
    }
  }

  else
  {
    std::vector<char>::__append(a1, v7);
    begin = a1->__begin_;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  return memcpy(&begin[v6], v9, v10);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonNumber *a2)
{
  v4 = *(this + 1);
  v9 = 100;
  std::vector<char>::push_back[abi:ne200100](v4, &v9);
  v5 = *(a2 + 4);
  v6 = *(this + 1);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFFBLL)
  {
    v6->__end_ = &begin[v8 + 4];
  }

  else
  {
    std::vector<char>::__append(v6, 4uLL);
    begin = v6->__begin_;
  }

  *&begin[v8] = bswap32(v5);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonInteger *a2)
{
  v3 = *(a2 + 2);
  if (v3 < -127)
  {
    if (v3 > 0xFFFFFFFFFFFF8000)
    {
LABEL_10:
      v12 = *(this + 1);
      v19 = 73;
      std::vector<char>::push_back[abi:ne200100](v12, &v19);
      v13 = *(this + 1);
      begin = v13->__begin_;
      v15 = v13->__end_ - v13->__begin_;
      if (v15 > 0xFFFFFFFFFFFFFFFDLL)
      {
        v13->__end_ = &begin[v15 + 2];
      }

      else
      {
        std::vector<char>::__append(v13, 2uLL);
        begin = v13->__begin_;
      }

      *&begin[v15] = bswap32(v3) >> 16;
      return;
    }

    if (v3 <= 0xFFFFFFFF80000000)
    {
LABEL_15:
      v16 = *(this + 1);
      v17 = 76;
      std::vector<char>::push_back[abi:ne200100](v16, &v17);
      return;
    }
  }

  else
  {
    if (v3 <= 126)
    {
      v4 = *(this + 1);
      v20 = 105;
      std::vector<char>::push_back[abi:ne200100](v4, &v20);
      v5 = *(this + 1);
      v6 = v5->__begin_;
      v7 = v5->__end_ - v5->__begin_;
      if (v7 == -1)
      {
        v5->__end_ = v6;
      }

      else
      {
        std::vector<char>::__append(v5, 1uLL);
        v6 = v5->__begin_;
      }

      v6[v7] = v3;
      return;
    }

    if (v3 <= 0x7FFE)
    {
      goto LABEL_10;
    }

    if (v3 > 0x7FFFFFFE)
    {
      goto LABEL_15;
    }
  }

  v8 = *(this + 1);
  v18 = 108;
  std::vector<char>::push_back[abi:ne200100](v8, &v18);
  v9 = *(this + 1);
  v10 = v9->__begin_;
  v11 = v9->__end_ - v9->__begin_;
  if (v11 > 0xFFFFFFFFFFFFFFFBLL)
  {
    v9->__end_ = &v10[v11 + 4];
  }

  else
  {
    std::vector<char>::__append(v9, 4uLL);
    v10 = v9->__begin_;
  }

  *&v10[v11] = bswap32(v3);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonNull *a2)
{
  v2 = *(this + 1);
  v3 = 90;
  std::vector<char>::push_back[abi:ne200100](v2, &v3);
}

void *xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const void **a2)
{
  v4 = *(this + 1);
  v6 = 83;
  std::vector<char>::push_back[abi:ne200100](v4, &v6);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonBoolean *a2)
{
  v2 = *(this + 1);
  if (*(a2 + 16))
  {
    v3 = 84;
  }

  else
  {
    v3 = 70;
  }

  v4 = v3;
  std::vector<char>::push_back[abi:ne200100](v2, &v4);
}

uint64_t xgboost::JsonArray::operator[](uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (a2 >= ((*(a1 + 24) - v2) >> 3))
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  return v2 + 8 * a2;
}

uint64_t **std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::swap(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = (result + 1);
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t dmlc::io::FileSystem::ListDirectoryRecursive(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  std::deque<dmlc::io::URI>::push_back(v21, a2);
  while (v22.i64[1])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    (*(*a1 + 24))(a1, *(*(&v21[0] + 1) + 8 * (v22.i64[0] / 0x38uLL)) + 72 * (v22.i64[0] % 0x38uLL), &v18);
    v5 = *(*(&v21[0] + 1) + 8 * (v22.i64[0] / 0x38uLL)) + 72 * (v22.i64[0] % 0x38uLL);
    if (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
    }

    if (*(v5 + 47) < 0)
    {
      operator delete(*(v5 + 24));
    }

    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    v22 = vaddq_s64(v22, xmmword_274E207D0);
    if (v22.i64[0] >= 0x70uLL)
    {
      operator delete(**(&v21[0] + 1));
      *(&v21[0] + 1) += 8;
      v22.i64[0] -= 56;
    }

    v6 = v18;
    v7 = v19;
    while (v6 != v7)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v13, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        v13.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v13.__r_.__value_.__l.__data_ = v8;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v9 = *(v6 + 24);
        v14.__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v14.__r_.__value_.__l.__data_ = v9;
      }

      if (*(v6 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v10 = v6[3];
        __p.__r_.__value_.__r.__words[2] = *(v6 + 8);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      v11 = *(v6 + 9);
      v17 = *(v6 + 20);
      v16 = v11;
      if (v17 == 1)
      {
        std::deque<dmlc::io::URI>::push_back(v21, &v13);
      }

      else
      {
        std::vector<dmlc::io::FileInfo>::push_back[abi:ne200100](a3, &v13);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      v6 = (v6 + 88);
    }

    v13.__r_.__value_.__r.__words[0] = &v18;
    std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  return std::deque<dmlc::io::URI>::~deque[abi:ne200100](v21);
}

void dmlc::TemporaryDirectory::RecursiveDelete(uint64_t a1, char *a2)
{
  v2 = a2;
  v52 = *MEMORY[0x277D85DE8];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  dmlc::io::URI::URI(v43, a2);
  Instance = dmlc::io::FileSystem::GetInstance(v43, v4);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  (*(*Instance + 24))(Instance, v43, &v40);
  v6 = v40;
  for (i = v41; v6 != i; v6 = (v6 + 88))
  {
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *v6, *(v6 + 1));
    }

    else
    {
      v8 = *v6;
      v35.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v35.__r_.__value_.__l.__data_ = v8;
    }

    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *(v6 + 3), *(v6 + 4));
    }

    else
    {
      v9 = *(v6 + 24);
      v36.__r_.__value_.__r.__words[2] = *(v6 + 5);
      *&v36.__r_.__value_.__l.__data_ = v9;
    }

    if (*(v6 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v6 + 6), *(v6 + 7));
    }

    else
    {
      v10 = v6[3];
      __p.__r_.__value_.__r.__words[2] = *(v6 + 8);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    v11 = *(v6 + 9);
    v39 = *(v6 + 20);
    v38 = v11;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v13 = lstat(p_p, &v51);
    v49 = 0;
    v50 = v13;
    if (v13)
    {
      dmlc::LogCheckFormat<int,int>(&v50, &v49);
    }

    if ((v51.st_mode & 0xF000) == 0xA000)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v51);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 35);
      v16 = dmlc::LogMessageFatal::GetEntry(&v51);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: !IsSymlink(info.path.name)", 40);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Symlink not supported in TemporaryDirectory", 43);
      dmlc::LogMessageFatal::~LogMessageFatal(&v51);
    }

    if (v39 == 1)
    {
      dmlc::TemporaryDirectory::RecursiveDelete(a1, &__p);
    }

    else
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if (remove(v19, v14))
      {
        dmlc::LogMessage::LogMessage(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 41);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*&v51.st_dev, "Couldn't remove file ", 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "; you may want to remove it manually", 36);
        dmlc::LogMessage::~LogMessage(&v51);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  if (v2[23] >= 0)
  {
    v24 = v2;
  }

  else
  {
    v24 = *v2;
  }

  if (rmdir(v24))
  {
    dmlc::LogMessage::LogMessage(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 56);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*&v51.st_dev, "~TemporaryDirectory(): ", 23);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Could not remove temporary directory ", 37);
    v27 = v2[23];
    if (v27 >= 0)
    {
      v28 = v2;
    }

    else
    {
      v28 = *v2;
    }

    if (v27 >= 0)
    {
      v29 = v2[23];
    }

    else
    {
      v29 = *(v2 + 1);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "; you may want to remove it manually", 36);
  }

  else
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_60;
    }

    dmlc::LogMessage::LogMessage(&v51, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 53);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*&v51.st_dev, "Successfully deleted temporary directory ", 41);
    v32 = v2[23];
    if (v32 >= 0)
    {
      v33 = v2;
    }

    else
    {
      v33 = *v2;
    }

    if (v32 >= 0)
    {
      v34 = v2[23];
    }

    else
    {
      v34 = *(v2 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
  }

  dmlc::LogMessage::~LogMessage(&v51);
LABEL_60:
  *&v51.st_dev = &v40;
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&v51);
  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }
}

void sub_274E0ABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, __int16 a42, char a43, char a44)
{
  a9 = &a27;
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  dmlc::io::FileInfo::~FileInfo(&a30);
  _Unwind_Resume(a1);
}

uint64_t std::deque<dmlc::io::URI>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0x38];
    v7 = *v6 + 72 * (v5 % 0x38);
    v8 = v2[(*(a1 + 40) + v5) / 0x38] + 72 * ((*(a1 + 40) + v5) % 0x38);
    if (v7 != v8)
    {
      do
      {
        if (*(v7 + 71) < 0)
        {
          operator delete(*(v7 + 48));
        }

        if (*(v7 + 47) < 0)
        {
          operator delete(*(v7 + 24));
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        v7 += 72;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v10 = v3;
  }

  *v4 = 0;
  v11 = v10 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 28;
    goto LABEL_21;
  }

  if (v11 == 2)
  {
    v12 = 56;
LABEL_21:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<dmlc::io::URI>::push_back(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 56 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x38;
    v9 = v7 - 56;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v13);
    }

    a1[4] = v9;
    v19 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(a1, &v19);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = (v4[v14 / 0x38] + 72 * (v14 % 0x38));
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v15, *a2, *(a2 + 1));
  }

  else
  {
    v16 = *a2;
    v15->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v15->__r_.__value_.__l.__data_ = v16;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v15 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v17 = *(a2 + 24);
    v15[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v15[1].__r_.__value_.__l.__data_ = v17;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v15 + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v18 = a2[3];
    v15[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&v15[2].__r_.__value_.__l.__data_ = v18;
  }

  ++a1[5];
}

void sub_274E0B34C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t xgboost::gbm::GBTreeModel::Save(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v9 = (*(a1 + 184) - *(a1 + 176)) >> 3;
  v10 = v4;
  if (v4 != v9)
  {
    dmlc::LogCheckFormat<int,int>(&v10, &v9);
  }

  result = (*(*a2 + 8))(a2, a1 + 16, 160);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = xgboost::RegTree::Save(v8, a2);
  }

  if (*(a1 + 232) != *(a1 + 224))
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_274E0B51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTreeModel::Load(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v4 = (**a2)(a2, a1 + 16, 160);
  v9 = 160;
  v10 = v4;
  if (v4 != 160)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, &v9);
  }

  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100]((a1 + 176));
  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100]((a1 + 200));
  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    operator new();
  }

  std::vector<int>::resize((a1 + 224), v5);
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*(a1 + 232) == *(a1 + 224))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 224);
    }

    v8 = (**a2)(a2, v7, 4 * v6);
    v9 = 4 * *(a1 + 16);
    v10 = v8;
    if (v8 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, &v9);
    }
  }
}

void sub_274E0B8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTreeModel::SaveModel(xgboost::gbm::GBTreeModel *this, xgboost::Json *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = (*(this + 23) - *(this + 22)) >> 3;
  LODWORD(__p[0]) = *(this + 4);
  LODWORD(v5) = v3;
  if (LODWORD(__p[0]) != v3)
  {
    dmlc::LogCheckFormat<int,int>(__p, &v5);
  }

  xgboost::ToJson<xgboost::gbm::GBTreeModelParam>((this + 16), &v7);
  std::string::basic_string[abi:ne200100]<0>(__p, "gbtree_model_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v4, &v7);
}

void sub_274E0C0BC(_Unwind_Exception *a1)
{
  std::mutex::~mutex(&v4);
  std::exception_ptr::~exception_ptr(&v3);
  v3.__ptr_ = &v2;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v3);
  _Unwind_Resume(a1);
}

void sub_274E0C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E0C13CLL);
}

void sub_274E0C164(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&__p);
  JUMPOUT(0x274E0C1E0);
}

void sub_274E0C190(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&a33, a34);
  JUMPOUT(0x274E0C200);
}

void xgboost::gbm::GBTreeModel::LoadModel(xgboost::gbm::GBTreeModel *this, const xgboost::Json *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "gbtree_model_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v4);
  v33.__m_.__sig = 0;
  *v33.__m_.__opaque = 0;
  v32.__ptr_ = &v33;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v31.__ptr_ = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v32, v6 + 4, &std::piecewise_construct, &v31, &v30);
      v5 = std::string::operator=((v9 + 7), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  memset(v27, 0, sizeof(v27));
  v13 = xgboost::gbm::GBTreeModelParam::__MANAGER__(v5);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v13, this + 16, v32.__ptr_, &v33, 0, v27, 0);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v32, v33.__m_.__sig);
  v32.__ptr_ = v27;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](this + 22);
  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](this + 25);
  std::string::basic_string[abi:ne200100]<0>(&v32, "trees");
  v14 = (*(**a2 + 24))(*a2, &v32);
  v15 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v14);
  if (v33.__m_.__opaque[7] < 0)
  {
    operator delete(v32.__ptr_);
  }

  std::vector<std::unique_ptr<xgboost::RegTree>>::resize(this + 22, (v15[3] - v15[2]) >> 3);
  if (!*(this + 31))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v32);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree_model.cc", 99);
    v25 = dmlc::LogMessageFatal::GetEntry(&v32);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: ctx_", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v32);
  }

  v17 = v15[2];
  v16 = v15[3];
  v32.__ptr_ = 0;
  v33.__m_.__sig = 850045863;
  memset(v33.__m_.__opaque, 0, sizeof(v33.__m_.__opaque));
  if (v16 != v17)
  {
    v18 = v15[2];
    std::string::basic_string[abi:ne200100]<0>(__p, "id");
    v19 = (*(**v18 + 24))(*v18, __p);
    v20 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*v19) + 2);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < (*(this + 23) - *(this + 22)) >> 3)
    {
      operator new();
    }

    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
  }

  dmlc::OMPException::Rethrow(&v32);
  std::mutex::~mutex(&v33);
  std::exception_ptr::~exception_ptr(&v32);
  std::vector<int>::resize((this + 224), *(this + 4));
  std::string::basic_string[abi:ne200100]<0>(&v32, "tree_info");
  v21 = (*(**a2 + 24))(*a2, &v32);
  v22 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v21);
  if (v33.__m_.__opaque[7] < 0)
  {
    operator delete(v32.__ptr_);
  }

  if (*(this + 4) >= 1)
  {
    v23 = 0;
    do
    {
      *(*(this + 28) + 4 * v23) = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v22[2] + 8 * v23)) + 2);
      ++v23;
    }

    while (v23 < *(this + 4));
  }
}

void sub_274E0C740(_Unwind_Exception *a1)
{
  std::mutex::~mutex(&v3);
  std::exception_ptr::~exception_ptr(&v2);
  _Unwind_Resume(a1);
}

void sub_274E0C79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::data::GradientIndexPageSource::Fetch(xgboost::data::GradientIndexPageSource *this)
{
  if (*(this + 88) == 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_source.h", 107);
    v27 = dmlc::LogMessageFatal::GetEntry(__p);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: !at_end_", 22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
  }

  if (**(this + 14) != 1)
  {
    v12 = *(this + 26);
    if (v12 && (*(this + 160) & 1) == 0)
    {
      xgboost::data::SparsePageSource::operator++(*(this + 18));
      v12 = *(this + 26);
    }

    LODWORD(v31[0]) = *(*(this + 18) + 104);
    if (v12 != LODWORD(v31[0]))
    {
      dmlc::LogCheckFormat<unsigned int,unsigned int>(this + 26, v31);
    }

    (*(**(this + 18) + 40))(&v29);
    operator new();
  }

  v2 = *(this + 16);
  if (v2)
  {
    *(this + 16) = 0;
    (*(*v2 + 24))(v2);
    v3 = *(this + 17);
    v4 = *(this + 27);
    v5 = *v3;
    v6 = v3[1];
    v7 = (v6 - *v3) >> 3;
    if (v4 <= v7)
    {
      if (v4 < v7)
      {
        std::vector<std::future<std::shared_ptr<xgboost::SparsePage>>>::__base_destruct_at_end[abi:ne200100](*(this + 17), v5 + 8 * v4);
      }
    }

    else
    {
      v8 = v4 - v7;
      v9 = v3[2];
      if (v8 > (v9 - v6) >> 3)
      {
        v10 = v9 - v5;
        if (v10 >> 2 > v4)
        {
          v4 = v10 >> 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v4;
        }

        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(v3[1], 8 * v8);
      v3[1] = v6 + 8 * v8;
    }
  }

  v13 = *(this + 27);
  if (v13 >= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v33[0] = v14;
  LODWORD(v31[0]) = 0;
  if (!v13)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v33, v31);
  }

  v15 = *(this + 26);
  v30 = v15;
  if (v33[0])
  {
    v16 = 0;
    do
    {
      v17 = v15 % *(this + 27);
      v30 = v17;
      v18 = **(this + 17);
      if (v17 >= (*(*(this + 17) + 8) - v18) >> 3)
      {
        std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
      }

      if (!*(v18 + 8 * v17))
      {
        v31[0] = ((*(*(this + 14) + 64) - *(*(this + 14) + 56)) >> 3);
        if (v17 >= v31[0])
        {
          dmlc::LogCheckFormat<unsigned long,unsigned long>(&v30, v31);
        }

        operator new();
      }

      ++v16;
      v15 = v17 + 1;
      v30 = v15;
    }

    while (v16 < v33[0]);
  }

  v19 = *(this + 17);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      if (*v20++)
      {
        ++v22;
      }
    }

    while (v20 != v21);
  }

  v31[0] = v22;
  if (v22 != v33[0])
  {
    dmlc::LogCheckFormat<long,unsigned long>(v31, v33);
  }

  std::future<std::shared_ptr<xgboost::GHistIndexMatrix>>::get((**(this + 17) + 8 * *(this + 26)), __p);
  v24 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v25 = *(this + 10);
  *(this + 72) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }
}

void sub_274E0D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E0D6E4);
}

void xgboost::data::GradientIndexPageSource::~GradientIndexPageSource(xgboost::data::GradientIndexPageSource *this)
{
  *this = &unk_2883E73E8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *this = &unk_2883E73E8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<xgboost::CSCPage>>::__on_zero_shared(a1);
}

void sub_274E0D9B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x274E0D9A4);
}

void sub_274E0D9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>>::set_value<std::shared_ptr<xgboost::GHistIndexMatrix>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}::operator()(void *a1, void *a2)
{
  std::chrono::steady_clock::now();
  std::chrono::steady_clock::now();
  std::string::basic_string[abi:ne200100]<0>(__p, "raw");
  xgboost::data::CreatePageFormat<xgboost::GHistIndexMatrix>(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::data::Cache::ShardName(*(a2[1] + 112), v10);
  v3 = *(*(a2[1] + 112) + 56);
  if (*a2 < ((*(*(a2[1] + 112) + 64) - v3) >> 3))
  {
    v9 = *(v3 + 8 * *a2);
    if (v11 >= 0)
    {
      v4 = v10;
    }

    else
    {
      v4 = v10[0];
    }

    v5 = dmlc::SeekStream::CreateForRead(v4, 0);
    (*(*v5 + 32))(v5, v9);
    v6 = (*(*v5 + 40))(v5);
    if (v6 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v9);
    }

    operator new();
  }

  std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
}

void sub_274E0DE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  (*(*v22 + 24))(v22);
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_274E0DF44(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E0DF50);
}

uint64_t xgboost::data::CreatePageFormat<xgboost::GHistIndexMatrix>(uint64_t a1)
{
  dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::Get();
  v2 = dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::Get();
  v3 = v2 + 7;
  v4 = *(v2 + 7);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v2 + 7;
  do
  {
    v6 = std::less<std::string>::operator()[abi:ne200100]((v3 - 1), v4 + 4, a1);
    v7 = v6;
    if (!v6)
    {
      v5 = v4;
    }

    v4 = v4[v7];
  }

  while (v4);
  if (v5 == v3 || std::less<std::string>::operator()[abi:ne200100]((v3 - 1), a1, v5 + 4) || (v8 = v5[7]) == 0)
  {
LABEL_16:
    Entry = dmlc::LogMessageFatal::GetEntry(&v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_writer.h", 60);
    v13 = dmlc::LogMessageFatal::GetEntry(&v18);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown format type ", 20);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    dmlc::LogMessageFatal::~LogMessageFatal(&v18);
    return 0;
  }

  else
  {
    v9 = v8[12];
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v10 = *(*v9 + 48);

    return v10();
  }
}

void std::__shared_ptr_emplace<xgboost::GHistIndexMatrix>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E74B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::GHistIndexMatrix>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::GHistIndexMatrix>::ReadCache(void)::{lambda(void)#1}>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_274E0E1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>::*)(void),std::__async_assoc_state<std::shared_ptr<xgboost::SparsePage>,std::__async_func<xgboost::data::SparsePageSourceImpl<xgboost::SparsePage>::ReadCache(void)::{lambda(void)#1}>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::metric::AFTNLogLikDispatcher::~AFTNLogLikDispatcher(xgboost::metric::AFTNLogLikDispatcher *this)
{
  *this = &unk_2883E7570;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2883E7570;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::metric::AFTNLogLikDispatcher::LoadConfig(xgboost::metric::AFTNLogLikDispatcher *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "aft_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::common::AFTParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274E0E49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::metric::AFTNLogLikDispatcher::SaveConfig(xgboost::metric::AFTNLogLikDispatcher *this, xgboost::Json *a2)
{
  v3 = (*(*this + 48))(this);
  std::string::basic_string[abi:ne200100]<0>(v6, v3);
  v8[0] = &unk_2883E6F38;
  v8[1] = 0;
  *v9 = *v6;
  v10 = v7;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v4, v8);
}

uint64_t xgboost::metric::AFTNLogLikDispatcher::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v8, (a1 + 16), a2);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v4 = *(a1 + 20);
  switch(v4)
  {
    case 2:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  Entry = dmlc::LogMessageFatal::GetEntry(&v9);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 266);
  v6 = dmlc::LogMessageFatal::GetEntry(&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown probability distribution", 32);
  dmlc::LogMessageFatal::~LogMessageFatal(&v9);
  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
}

void sub_274E0E8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::metric::AFTNLogLikDispatcher::Eval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 245);
    v11 = dmlc::LogMessageFatal::GetEntry(&v14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Check failed: metric_", 21);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "AFT metric must be configured first, with distribution type and scale", 69);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
    v8 = *(a1 + 32);
  }

  return (*(*v8 + 40))(v8, a2, a3, a4);
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::NormalDistribution>>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v8, (a1 + 16), a2);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = v3;
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v6 = dmlc::LogMessageFatal::GetEntry(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::NormalDistribution>>::Eval(float *a1, float ***ptr, void *a3, int a4)
{
  v7 = a1;
  v53 = *MEMORY[0x277D85DE8];
  __p = ((*ptr)[1] - **ptr);
  v46 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v46)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v46);
  }

  __p = ((*ptr)[1] - **ptr);
  v46 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v46)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v46);
  }

  v8 = *(a1 + 1);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v51);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v43 = dmlc::LogMessageFatal::GetEntry(&v51);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v51);
    v8 = *(v7 + 1);
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v50 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v50 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v50, &__p);
    }

    v13 = a3[13];
    v12 = a3[14];
    v14 = a3[9];
    v15 = *ptr;
    v51.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v51);
    v45 = a4;
    v51.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v46, 1uLL, &v51);
    v16 = v50;
    v51.__ptr_ = 0;
    v52.__m_.__sig = 850045863;
    memset(v52.__m_.__opaque, 0, sizeof(v52.__m_.__opaque));
    if (v50)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = *v13;
      v20 = *v12;
      v21 = *v15;
      v22 = v7[9];
      v23 = __p;
      v24 = v17;
      v25 = v46;
      do
      {
        v26 = 1.0;
        if (v17 != v18)
        {
          v26 = *v24;
        }

        v27 = *v19;
        v28 = *v19;
        v29 = *v20;
        v30 = *v20;
        v31 = *v21;
        v32 = log(v28);
        v33 = log(v30);
        if (v27 == v29)
        {
          v34 = exp((v32 - v31) / v22 * ((v32 - v31) / v22) * -0.5) / 2.50662827 / (v22 * v28);
        }

        else
        {
          v35 = 1.0;
          if (fabs(v30) != INFINITY)
          {
            v35 = (erf((v33 - v31) / v22 / 1.41421356) + 1.0) * 0.5;
          }

          v36 = 0.0;
          if (v27 > 0.0)
          {
            v36 = (erf((v32 - v31) / v22 / 1.41421356) + 1.0) * 0.5;
          }

          v34 = v35 - v36;
        }

        *v23 = *v23 - log(fmax(v34, 1.0e-12)) * v26;
        ++v21;
        *v25 = v26 + *v25;
        ++v20;
        ++v19;
        ++v24;
        --v16;
      }

      while (v16);
    }

    dmlc::OMPException::Rethrow(&v51);
    std::mutex::~mutex(&v52);
    std::exception_ptr::~exception_ptr(&v51);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v49)
    {
      v37 = __p;
      do
      {
        v38 = *v37++;
        v9 = v9 + v38;
      }

      while (v37 != v49);
    }

    a4 = v45;
    if (v46 != v47)
    {
      v10 = 0.0;
      v39 = v46;
      do
      {
        v40 = *v39++;
        v10 = v10 + v40;
      }

      while (v39 != v47);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
      a1 = __p;
    }

    if (a1)
    {
      v49 = a1;
      operator delete(a1);
    }
  }

  v51.__ptr_ = *&v9;
  *&v52.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1, ptr, a3);
    (*(*Engine + 8))(Engine, &v51, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::LogisticDistribution>>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v8, (a1 + 16), a2);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = v3;
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v6 = dmlc::LogMessageFatal::GetEntry(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::LogisticDistribution>>::Eval(float *a1, float ***ptr, void *a3, int a4)
{
  v7 = a1;
  v57 = *MEMORY[0x277D85DE8];
  __p = ((*ptr)[1] - **ptr);
  v50 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v50)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v50);
  }

  __p = ((*ptr)[1] - **ptr);
  v50 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v50)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v50);
  }

  v8 = *(a1 + 1);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v47 = dmlc::LogMessageFatal::GetEntry(&v55);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v8 = *(v7 + 1);
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v54 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v54 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v54, &__p);
    }

    v13 = a3[13];
    v12 = a3[14];
    v14 = a3[9];
    v15 = *ptr;
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v55);
    v49 = a4;
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v50, 1uLL, &v55);
    v16 = v54;
    v55.__ptr_ = 0;
    v56.__m_.__sig = 850045863;
    memset(v56.__m_.__opaque, 0, sizeof(v56.__m_.__opaque));
    if (v54)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = *v13;
      v20 = *v12;
      v21 = *v15;
      v22 = v7[9];
      v23 = __p;
      v24 = v50;
      v25 = v17;
      do
      {
        v26 = 1.0;
        if (v17 != v18)
        {
          v26 = *v25;
        }

        v27 = *v19;
        v28 = *v19;
        v29 = *v20;
        v30 = *v20;
        v31 = *v21;
        v32 = log(v28);
        v33 = log(v30);
        if (v27 == v29)
        {
          v34 = exp((v32 - v31) / v22);
          v35 = 0.0;
          if (fabs(v34) != INFINITY && fabs(v34 * v34) != INFINITY)
          {
            v35 = v34 / ((v34 + 1.0) * (v34 + 1.0));
          }

          v36 = v35 / (v22 * v28);
        }

        else
        {
          v37 = 1.0;
          if (fabs(v30) != INFINITY)
          {
            v38 = exp((v33 - v31) / v22);
            if (fabs(v38) != INFINITY)
            {
              v37 = v38 / (v38 + 1.0);
            }
          }

          v39 = 0.0;
          if (v27 > 0.0)
          {
            v40 = exp((v32 - v31) / v22);
            v39 = 1.0;
            if (fabs(v40) != INFINITY)
            {
              v39 = v40 / (v40 + 1.0);
            }
          }

          v36 = v37 - v39;
        }

        *v23 = *v23 - log(fmax(v36, 1.0e-12)) * v26;
        ++v21;
        *v24 = v26 + *v24;
        ++v20;
        ++v19;
        ++v25;
        --v16;
      }

      while (v16);
    }

    dmlc::OMPException::Rethrow(&v55);
    std::mutex::~mutex(&v56);
    std::exception_ptr::~exception_ptr(&v55);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v53)
    {
      v41 = __p;
      do
      {
        v42 = *v41++;
        v9 = v9 + v42;
      }

      while (v41 != v53);
    }

    a4 = v49;
    if (v50 != v51)
    {
      v10 = 0.0;
      v43 = v50;
      do
      {
        v44 = *v43++;
        v10 = v10 + v44;
      }

      while (v43 != v51);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
      a1 = __p;
    }

    if (a1)
    {
      v53 = a1;
      operator delete(a1);
    }
  }

  v55.__ptr_ = *&v9;
  *&v56.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1, ptr, a3);
    (*(*Engine + 8))(Engine, &v55, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::ExtremeDistribution>>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v8, (a1 + 16), a2);
  v9 = v8;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  *(a1 + 28) = *(a1 + 16);
  *(a1 + 36) = v3;
  if (!v4)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v6 = dmlc::LogMessageFatal::GetEntry(v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v8);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalAFTNLogLik<xgboost::common::ExtremeDistribution>>::Eval(float *a1, float ***ptr, void *a3, int a4)
{
  v7 = a1;
  v57 = *MEMORY[0x277D85DE8];
  __p = ((*ptr)[1] - **ptr);
  v50 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v50)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v50);
  }

  __p = ((*ptr)[1] - **ptr);
  v50 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v50)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v50);
  }

  v8 = *(a1 + 1);
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v47 = dmlc::LogMessageFatal::GetEntry(&v55);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v8 = *(v7 + 1);
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v54 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v54 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v54, &__p);
    }

    v13 = a3[13];
    v12 = a3[14];
    v14 = a3[9];
    v15 = *ptr;
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v55);
    v49 = a4;
    v55.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v50, 1uLL, &v55);
    v16 = v54;
    v55.__ptr_ = 0;
    v56.__m_.__sig = 850045863;
    memset(v56.__m_.__opaque, 0, sizeof(v56.__m_.__opaque));
    if (v54)
    {
      v17 = *v14;
      v18 = v14[1];
      v19 = *v13;
      v20 = *v12;
      v21 = *v15;
      v22 = v7[9];
      v23 = __p;
      v24 = v50;
      v25 = v17;
      do
      {
        v26 = 1.0;
        if (v17 != v18)
        {
          v26 = *v25;
        }

        v27 = *v19;
        v28 = *v19;
        v29 = *v20;
        v30 = *v20;
        v31 = *v21;
        v32 = log(v28);
        v33 = log(v30);
        if (v27 == v29)
        {
          v34 = exp((v32 - v31) / v22);
          v35 = 0.0;
          if (fabs(v34) != INFINITY)
          {
            v35 = v34 * exp(-v34);
          }

          v36 = v35 / (v22 * v28);
        }

        else
        {
          v37 = 1.0;
          if (fabs(v30) != INFINITY)
          {
            v38 = exp((v33 - v31) / v22);
            v37 = 1.0 - exp(-v38);
          }

          v39 = 0.0;
          if (v27 > 0.0)
          {
            v40 = exp((v32 - v31) / v22);
            v39 = 1.0 - exp(-v40);
          }

          v36 = v37 - v39;
        }

        *v23 = *v23 - log(fmax(v36, 1.0e-12)) * v26;
        ++v21;
        *v24 = v26 + *v24;
        ++v20;
        ++v19;
        ++v25;
        --v16;
      }

      while (v16);
    }

    dmlc::OMPException::Rethrow(&v55);
    std::mutex::~mutex(&v56);
    std::exception_ptr::~exception_ptr(&v55);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v53)
    {
      v41 = __p;
      do
      {
        v42 = *v41++;
        v9 = v9 + v42;
      }

      while (v41 != v53);
    }

    a4 = v49;
    if (v50 != v51)
    {
      v10 = 0.0;
      v43 = v50;
      do
      {
        v44 = *v43++;
        v10 = v10 + v44;
      }

      while (v43 != v51);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
      a1 = __p;
    }

    if (a1)
    {
      v53 = a1;
      operator delete(a1);
    }
  }

  v55.__ptr_ = *&v9;
  *&v56.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1, ptr, a3);
    (*(*Engine + 8))(Engine, &v55, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalIntervalRegressionAccuracy>::Configure(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v4);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 206);
    v2 = dmlc::LogMessageFatal::GetEntry(&v4);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  }
}

void xgboost::metric::EvalEWiseSurvivalBase<xgboost::metric::EvalIntervalRegressionAccuracy>::Eval(void *a1, float ***ptr, void *a3, int a4)
{
  v7 = a1;
  v50 = *MEMORY[0x277D85DE8];
  __p = ((*ptr)[1] - **ptr);
  v43 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (__p != v43)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v43);
  }

  __p = ((*ptr)[1] - **ptr);
  v43 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (__p != v43)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&__p, &v43);
  }

  v8 = a1[1];
  if (!v8)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v48);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/survival_metric.cu", 213);
    v41 = dmlc::LogMessageFatal::GetEntry(&v48);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Check failed: tparam_", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v48);
    v8 = v7[1];
  }

  v9 = 0.0;
  v10 = 0.0;
  if ((*(v8 + 24) & 0x80000000) != 0)
  {
    v11 = a3[14];
    v47 = (*(a3[13] + 8) - *a3[13]) >> 2;
    __p = ((v11[1] - *v11) >> 2);
    if (v47 != __p)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v47, &__p);
    }

    v12 = a3[13];
    v13 = a3[14];
    v14 = a3[9];
    v15 = *ptr;
    v48.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v48);
    v16 = a4;
    v48.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v43, 1uLL, &v48);
    v17 = v47;
    v48.__ptr_ = 0;
    v49.__m_.__sig = 850045863;
    memset(v49.__m_.__opaque, 0, sizeof(v49.__m_.__opaque));
    if (v47)
    {
      v18 = *v14;
      v19 = v14[1];
      v20 = *v12;
      v21 = *v13;
      v22 = *v15;
      v23 = __p;
      v24 = v43;
      v25 = *v14;
      do
      {
        v26 = 1.0;
        if (v18 != v19)
        {
          v26 = *v25;
        }

        v27 = *v20++;
        v28 = v27;
        v29 = *v21++;
        v30 = v29;
        v31 = *v22++;
        v32 = exp(v31);
        if (v32 > v30 || v32 < v28)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = 1.0;
        }

        *v23 = *v23 + v34 * v26;
        *v24 = v26 + *v24;
        ++v25;
        --v17;
      }

      while (v17);
    }

    dmlc::OMPException::Rethrow(&v48);
    std::mutex::~mutex(&v49);
    std::exception_ptr::~exception_ptr(&v48);
    a1 = __p;
    v10 = 0.0;
    v9 = 0.0;
    if (__p != v46)
    {
      v35 = __p;
      do
      {
        v36 = *v35++;
        v9 = v9 + v36;
      }

      while (v35 != v46);
    }

    a4 = v16;
    if (v43 != v44)
    {
      v10 = 0.0;
      v37 = v43;
      do
      {
        v38 = *v37++;
        v10 = v10 + v38;
      }

      while (v37 != v44);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
      a1 = __p;
    }

    if (a1)
    {
      v46 = a1;
      operator delete(a1);
    }
  }

  v48.__ptr_ = *&v9;
  *&v49.__m_.__sig = v10;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(a1, ptr, a3);
    (*(*Engine + 8))(Engine, &v48, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

char *XGBGetLastError()
{
  {
    v2 = dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    _tlv_atexit(XGBAPIErrorEntry::~XGBAPIErrorEntry, v2);
  }

  result = dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void XGBAPISetLastError(const char *a1)
{
  {
    v2 = dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    _tlv_atexit(XGBAPIErrorEntry::~XGBAPIErrorEntry, v2);
  }

  dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<XGBAPIErrorEntry>::Get(void)::inst);

  JUMPOUT(0x277C68BE0);
}

void XGBAPIErrorEntry::~XGBAPIErrorEntry(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<xgboost::data::$_0,std::allocator<xgboost::data::$_0>,xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7860;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7860;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::Read(uint64_t a1, uint64_t **a2, uint64_t (***a3)(void, uint64_t *, uint64_t))
{
  v5 = *a2;
  v17 = 0;
  if ((**a3)(a3, &v17, 8) != 8)
  {
    return 0;
  }

  v6 = v17;
  std::vector<unsigned long>::resize(v5, v17);
  if (v17)
  {
    if ((**a3)(a3, *v5, 8 * v6) != 8 * v6)
    {
      return 0;
    }
  }

  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  LODWORD(v15) = 0;
  v10 = v9 - v8;
  v16 = v10 >> 3;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v15);
  }

  std::vector<xgboost::Entry>::resize(v7, *(v5[1] - 1));
  v11 = *a2[1];
  v12 = a2[1][1];
  if (v12 != v11)
  {
    if (v7[1] == *v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    v17 = (**a3)(a3, v13, v12 - v11);
    v15 = a2[1][1] - *a2[1];
    if (v17 != v15)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, &v15);
    }
  }

  (**a3)(a3, a2 + 2, 8);
  return 1;
}

void sub_274E10F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::data::SparsePageRawFormat<xgboost::SparsePage>::Write(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8 || (v9 = *v8, v10 = a2[1], v9))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_raw_format.cc", 41);
    v21 = dmlc::LogMessageFatal::GetEntry(&v24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Check failed: page.offset.Size() != 0 && offset_vec[0] == 0", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v7 = v5[1];
    v10 = a2[1];
  }

  v23 = (v10[1] - *v10) >> 3;
  v12 = *(v7 - 8);
  v11 = (v7 - 8);
  if (v12 != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v11, &v23);
  }

  v24 = v5[1] - *v5;
  (*(*a3 + 8))(a3, &v24, 8);
  if (v24)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v14 = **a2;
  v13 = (*a2)[1];
  v16 = *a2[1];
  v15 = a2[1][1];
  v17 = v15 - v16;
  if (v15 != v16)
  {
    if (v6[1] == *v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v6;
    }

    (*(*a3 + 8))(a3, v18, v17);
  }

  (*(*a3 + 8))(a3, a2 + 2, 8);
  return ((v13 - v14 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
}

void sub_274E11264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::data::$_1,std::allocator<xgboost::data::$_1>,xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7948;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7948;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::Read(uint64_t a1, uint64_t **a2, uint64_t (***a3)(void, uint64_t *, uint64_t))
{
  v5 = *a2;
  v17 = 0;
  if ((**a3)(a3, &v17, 8) != 8)
  {
    return 0;
  }

  v6 = v17;
  std::vector<unsigned long>::resize(v5, v17);
  if (v17)
  {
    if ((**a3)(a3, *v5, 8 * v6) != 8 * v6)
    {
      return 0;
    }
  }

  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  LODWORD(v15) = 0;
  v10 = v9 - v8;
  v16 = v10 >> 3;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v15);
  }

  std::vector<xgboost::Entry>::resize(v7, *(v5[1] - 1));
  v11 = *a2[1];
  v12 = a2[1][1];
  if (v12 != v11)
  {
    if (v7[1] == *v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    v17 = (**a3)(a3, v13, v12 - v11);
    v15 = a2[1][1] - *a2[1];
    if (v17 != v15)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, &v15);
    }
  }

  (**a3)(a3, a2 + 2, 8);
  return 1;
}

void sub_274E1177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::data::SparsePageRawFormat<xgboost::CSCPage>::Write(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8 || (v9 = *v8, v10 = a2[1], v9))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_raw_format.cc", 41);
    v21 = dmlc::LogMessageFatal::GetEntry(&v24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Check failed: page.offset.Size() != 0 && offset_vec[0] == 0", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v7 = v5[1];
    v10 = a2[1];
  }

  v23 = (v10[1] - *v10) >> 3;
  v12 = *(v7 - 8);
  v11 = (v7 - 8);
  if (v12 != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v11, &v23);
  }

  v24 = v5[1] - *v5;
  (*(*a3 + 8))(a3, &v24, 8);
  if (v24)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v14 = **a2;
  v13 = (*a2)[1];
  v16 = *a2[1];
  v15 = a2[1][1];
  v17 = v15 - v16;
  if (v15 != v16)
  {
    if (v6[1] == *v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v6;
    }

    (*(*a3 + 8))(a3, v18, v17);
  }

  (*(*a3 + 8))(a3, a2 + 2, 8);
  return ((v13 - v14 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
}

void sub_274E11A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::data::$_2,std::allocator<xgboost::data::$_2>,xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7A30;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::~SparsePageRawFormat(void *a1)
{
  *a1 = &unk_2883E7A30;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::Read(uint64_t a1, uint64_t **a2, uint64_t (***a3)(void, uint64_t *, uint64_t))
{
  v5 = *a2;
  v17 = 0;
  if ((**a3)(a3, &v17, 8) != 8)
  {
    return 0;
  }

  v6 = v17;
  std::vector<unsigned long>::resize(v5, v17);
  if (v17)
  {
    if ((**a3)(a3, *v5, 8 * v6) != 8 * v6)
    {
      return 0;
    }
  }

  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  LODWORD(v15) = 0;
  v10 = v9 - v8;
  v16 = v10 >> 3;
  if (!v10)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v15);
  }

  std::vector<xgboost::Entry>::resize(v7, *(v5[1] - 1));
  v11 = *a2[1];
  v12 = a2[1][1];
  if (v12 != v11)
  {
    if (v7[1] == *v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    v17 = (**a3)(a3, v13, v12 - v11);
    v15 = a2[1][1] - *a2[1];
    if (v17 != v15)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v17, &v15);
    }
  }

  (**a3)(a3, a2 + 2, 8);
  return 1;
}

void sub_274E11F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v13);
  }

  _Unwind_Resume(exception_object);
}

unint64_t xgboost::data::SparsePageRawFormat<xgboost::SortedCSCPage>::Write(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7 == v8 || (v9 = *v8, v10 = a2[1], v9))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/sparse_page_raw_format.cc", 41);
    v21 = dmlc::LogMessageFatal::GetEntry(&v24);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Check failed: page.offset.Size() != 0 && offset_vec[0] == 0", 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
    v7 = v5[1];
    v10 = a2[1];
  }

  v23 = (v10[1] - *v10) >> 3;
  v12 = *(v7 - 8);
  v11 = (v7 - 8);
  if (v12 != v23)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v11, &v23);
  }

  v24 = v5[1] - *v5;
  (*(*a3 + 8))(a3, &v24, 8);
  if (v24)
  {
    (*(*a3 + 8))(a3, *v5, v5[1] - *v5);
  }

  v14 = **a2;
  v13 = (*a2)[1];
  v16 = *a2[1];
  v15 = a2[1][1];
  v17 = v15 - v16;
  if (v15 != v16)
  {
    if (v6[1] == *v6)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v6;
    }

    (*(*a3 + 8))(a3, v18, v17);
  }

  (*(*a3 + 8))(a3, a2 + 2, 8);
  return ((v13 - v14 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
}

void sub_274E12224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::RecordIOSplitter::SeekRecordBegin(uint64_t a1, uint64_t (***a2)(void, uint64_t *, uint64_t))
{
  v10 = 0;
  v3 = 0;
  while ((**a2)(a2, (&v10 + 4), 4))
  {
    if (HIDWORD(v10) == -824761590)
    {
      if (!(**a2)(a2, &v10, 4))
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v9);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 16);
        v5 = dmlc::LogMessageFatal::GetEntry(&v9);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: fi->Read(&lrec, sizeof(lrec)) != 0", 48);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "invalid record io format", 24);
        dmlc::LogMessageFatal::~LogMessageFatal(&v9);
      }

      if (!(v10 >> 30))
      {
        return v3;
      }

      v3 += 8;
    }

    else
    {
      v3 += 4;
    }
  }

  return v3;
}

const char *dmlc::io::RecordIOSplitter::FindLastRecordBegin(dmlc::io::RecordIOSplitter *this, const char *a2, const char *a3)
{
  v4 = a2;
  v10 = 0;
  v11 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v11, &v10);
  }

  v10 = 0;
  v11 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v11, &v10);
  }

  if (a2 + 8 > a3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v12);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 32);
    v6 = dmlc::LogMessageFatal::GetEntry(&v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: p >= pbegin + 2", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  }

  v8 = a3 - 8;
  if (a3 - 8 != v4)
  {
    while (*v8 != -824761590 || *(v8 + 1) >> 30)
    {
      v8 -= 4;
      if (v8 == v4)
      {
        return v4;
      }
    }

    return v8;
  }

  return v4;
}

void sub_274E12628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL dmlc::io::RecordIOSplitter::ExtractNextRecord(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v36 = a3[1];
  if (*a3 != v36)
  {
    LOBYTE(v6) = *a3;
    if (v3 + 8 > v36)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v39);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 46);
      v8 = dmlc::LogMessageFatal::GetEntry(&v39);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Check failed: chunk->begin + 2 * sizeof(uint32_t) <= chunk->end", 63);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v39);
      v6 = *a3;
    }

    v37 = 0;
    v38 = v6 & 3;
    if ((v6 & 3) != 0)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v38, &v37);
    }

    v11 = a3[1];
    v37 = 0;
    v38 = v11 & 3;
    if ((v11 & 3) != 0)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v38, &v37);
    }

    v12 = *(*a3 + 4);
    v13 = v12 & 0x1FFFFFFF;
    v14 = *a3 + 8;
    *a2 = v14;
    v15 = v14 + ((v13 + 3) & 0x3FFFFFFC);
    *a3 = v15;
    if (v15 > a3[1])
    {
      v16 = dmlc::LogMessageFatal::GetEntry(&v39);
      dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 57);
      v17 = dmlc::LogMessageFatal::GetEntry(&v39);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: chunk->begin <= chunk->end", 40);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Invalid RecordIO Format", 23);
      dmlc::LogMessageFatal::~LogMessageFatal(&v39);
    }

    v20 = v12 >> 29;
    a2[1] = v13;
    if (v20)
    {
      if (v20 == 1 || (v21 = dmlc::LogMessageFatal::GetEntry(&v39), dmlc::LogMessageFatal::Entry::Init(v21, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 62), v22 = dmlc::LogMessageFatal::GetEntry(&v39), v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Check failed: cflag == 1U", 25), v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 2), std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Invalid RecordIO Format", 23), dmlc::LogMessageFatal::~LogMessageFatal(&v39), v20 != 3))
      {
        v25 = *a3;
        do
        {
          if ((v25 + 2) > a3[1])
          {
            v26 = dmlc::LogMessageFatal::GetEntry(&v39);
            dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 64);
            v27 = dmlc::LogMessageFatal::GetEntry(&v39);
            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Check failed: chunk->begin + 2 * sizeof(uint32_t) <= chunk->end", 63);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v39);
            v25 = *a3;
          }

          if (*v25 != -824761590)
          {
            v29 = dmlc::LogMessageFatal::GetEntry(&v39);
            dmlc::LogMessageFatal::Entry::Init(v29, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/recordio_split.cc", 66);
            v30 = dmlc::LogMessageFatal::GetEntry(&v39);
            v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Check failed: p[0] == RecordIOWriter::kMagic", 44);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ": ", 2);
            dmlc::LogMessageFatal::~LogMessageFatal(&v39);
          }

          v32 = v25[1];
          *(*a2 + a2[1]) = -824761590;
          v33 = a2[1] + 4;
          a2[1] = v33;
          v34 = v32 & 0x1FFFFFFF;
          if ((v32 & 0x1FFFFFFF) != 0)
          {
            memmove((*a2 + v33), (*a3 + 8), v32 & 0x1FFFFFFF);
            a2[1] += v34;
          }

          v25 = (*a3 + ((v34 + 3) & 0x3FFFFFFC) + 8);
          *a3 = v25;
        }

        while (v32 >> 29 != 3);
      }
    }
  }

  return v3 != v36;
}

void sub_274E12AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::io::RecordIOSplitter::~RecordIOSplitter(dmlc::io::RecordIOSplitter *this)
{
  dmlc::io::InputSplitBase::~InputSplitBase(this);

  JUMPOUT(0x277C69180);
}

void xgboost::common::ColumnSampler::ColSample(void ****a2@<X1>, void ****a3@<X8>, float a4@<S0>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (a4 != 1.0)
  {
    v8 = **v5;
    v7 = (*v5)[1];
    LODWORD(v10) = 0;
    v9 = v7 - v8;
    v11 = v9 >> 2;
    if (v9)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN7xgboost16HostDeviceVectorIjEENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    dmlc::LogCheckFormat<unsigned long,int>(&v11, &v10);
  }

  v6 = a2[1];
  *a3 = v5;
  a3[1] = v6;
  *a2 = 0;
  a2[1] = 0;
}

void sub_274E13134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  v20 = a17;
  a17 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a17, v20);
  }

  v21 = *(v18 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

char *std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, unint64_t **a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    v10 = **a3;
    if (v10 > v9)
    {
      v11 = *result;
      if (v10 > *result)
      {
        if (*((*a3)[1] + 4 * v9) > *((*a3)[1] + 4 * v11))
        {
          *result = v9;
          *(a2 - 1) = v11;
        }

        return result;
      }
    }

    goto LABEL_43;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v13 = result + 8;
    if (result + 8 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *a3;
    v16 = result;
    while (1)
    {
      v17 = v13;
      v18 = *v13;
      if (*v15 <= v18)
      {
        break;
      }

      v19 = *v16;
      if (*v15 <= *v16)
      {
        break;
      }

      v20 = v15[1];
      v21 = *(v20 + 4 * v18);
      if (v21 > *(v20 + 4 * v19))
      {
        v22 = v14;
        while (1)
        {
          *&result[v22 + 8] = v19;
          if (!v22)
          {
            break;
          }

          if (*v15 <= v18)
          {
            goto LABEL_43;
          }

          v19 = *&result[v22 - 8];
          if (*v15 <= v19)
          {
            goto LABEL_43;
          }

          v22 -= 8;
          if (v21 <= *(v20 + 4 * v19))
          {
            v23 = &result[v22 + 8];
            goto LABEL_22;
          }
        }

        v23 = result;
LABEL_22:
        *v23 = v18;
      }

      v13 = v17 + 8;
      v14 += 8;
      v16 = v17;
      if (v17 + 8 == a2)
      {
        return result;
      }
    }

LABEL_43:
    std::terminate();
  }

  v25 = a5;
  v26 = a4 >> 1;
  v27 = &result[8 * (a4 >> 1)];
  v28 = a4 >> 1;
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v27, a3, v28, a5);
    v29 = &v25[v26];
    result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v29);
    v30 = &v25[a4];
    v31 = *a3;
    v32 = v29;
    while (v32 != v30)
    {
      v33 = *v32;
      if (*v31 <= *v32 || *v31 <= *v25)
      {
        goto LABEL_43;
      }

      v34 = v31[1];
      v35 = *(v34 + 4 * v33);
      v36 = *(v34 + 4 * *v25);
      if (v35 <= v36)
      {
        v33 = *v25;
      }

      v25 += v35 <= v36;
      v32 += v35 > v36;
      *v8 = v33;
      v8 += 8;
      if (v25 == v29)
      {
        while (v32 != v30)
        {
          v38 = *v32++;
          *v8 = v38;
          v8 += 8;
        }

        return result;
      }
    }

    while (v25 != v29)
    {
      v37 = *v25++;
      *v8 = v37;
      v8 += 8;
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v27, a3, v28, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v25, a6);

    return std::__inplace_merge<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float const,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float const,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v25, a6);
  }

  return result;
}

char *std::__stable_sort_move<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(char *result, char *a2, unint64_t **a3, unint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_10:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      if (v11 > v10 && v11 > *result)
      {
        v12 = (*a3)[1];
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * *result);
        if (v13 <= v14)
        {
          v10 = *result;
        }

        *a5 = v10;
        v5 = a5 + 1;
        if (v13 <= v14)
        {
          v7 = a2 - 8;
        }

        goto LABEL_10;
      }

LABEL_45:
      std::terminate();
    }

    if (a4 > 8)
    {
      v26 = &result[8 * (a4 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(result, v26, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::vector<unsigned long> xgboost::common::ArgSort<unsigned long,xgboost::common::Span<float,18446744073709551615ul>,float,std::greater<void>>(xgboost::common::Span<float,18446744073709551615ul> const&,std::greater<void>)::{lambda(unsigned long const&,unsigned long const&)#1} &,std::__wrap_iter<unsigned long *>>(&v7[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v27 = *a3;
      v28 = &v7[8 * (a4 >> 1)];
      while (v28 != a2)
      {
        v29 = *v28;
        if (*v27 <= *v28 || *v27 <= *v7)
        {
          goto LABEL_45;
        }

        v30 = v27[1];
        v31 = *(v30 + 4 * v29);
        v32 = *(v30 + 4 * *v7);
        if (v31 <= v32)
        {
          v29 = *v7;
        }

        v28 += 8 * (v31 > v32);
        v7 += 8 * (v31 <= v32);
        *v5++ = v29;
        if (v7 == v26)
        {
          while (v28 != a2)
          {
            v34 = *v28;
            v28 += 8;
            *v5++ = v34;
          }

          return result;
        }
      }

      while (v7 != v26)
      {
        v33 = *v7;
        v7 += 8;
        *v5++ = v33;
      }
    }

    else if (result != a2)
    {
      v15 = *a3;
      v16 = result + 8;
      *a5 = *result;
      if (result + 8 != a2)
      {
        v17 = 0;
        v18 = a5;
        while (1)
        {
          v19 = *v16;
          if (*v15 <= *v16)
          {
            goto LABEL_45;
          }

          v20 = *v18;
          if (*v15 <= *v18)
          {
            goto LABEL_45;
          }

          v21 = v18 + 1;
          v22 = v15[1];
          if (*(v22 + 4 * v19) <= *(v22 + 4 * v20))
          {
            *v21 = v19;
          }

          else
          {
            v18[1] = v20;
            v23 = a5;
            if (v18 != a5)
            {
              v24 = v17;
              while (1)
              {
                if (*v15 <= *v16)
                {
                  goto LABEL_45;
                }

                v25 = *(a5 + v24 - 8);
                if (*v15 <= v25)
                {
                  goto LABEL_45;
                }

                if (*(v22 + 4 * *v16) <= *(v22 + 4 * v25))
                {
                  break;
                }

                *(a5 + v24) = v25;
                v24 -= 8;
                if (!v24)
                {
                  v23 = a5;
                  goto LABEL_28;
                }
              }

              v23 = (a5 + v24);
            }

LABEL_28:
            *v23 = *v16;
          }

          v16 += 8;
          v17 += 8;
          v18 = v21;
          if (v16 == a2)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274E13764(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

rabit::engine::AllreduceBase *rabit::engine::AllreduceBase::AllreduceBase(rabit::engine::AllreduceBase *this)
{
  *this = &unk_2883E7B40;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 104) = 0u;
  v2 = (this + 104);
  *(this + 152) = 0u;
  v3 = this + 152;
  *(this + 200) = 0u;
  v4 = this + 200;
  *(this + 142) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 27) = 0;
  *(this + 36) = 1800;
  *(this + 148) = 0;
  MEMORY[0x277C68BE0](this + 176, "NULL");
  *(this + 56) = 9000;
  MEMORY[0x277C68BE0](v3, &unk_274E44C6E);
  *(this + 228) = 0x3E800002332;
  *(this + 34) = 0xFFFFFFFF00000000;
  *(this + 70) = 5;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 16) = xmmword_274E27D80;
  MEMORY[0x277C68BE0](this + 128, "NULL");
  *(this + 7) = 0;
  MEMORY[0x277C68BE0](v4, "worker");
  (*(*this + 136))(this, "rabit_reduce_buffer", "256MB");
  v6 = *(this + 14);
  v5 = *(this + 15);
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v2) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_52;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v53.__end_cap_.__value_ = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v11);
    }

    v53.__first_ = 0;
    v53.__begin_ = (24 * v8);
    v53.__end_ = (24 * v8);
    v53.__end_cap_.__value_ = 0;
    std::string::basic_string[abi:ne200100]<0>((24 * v8), "DMLC_TASK_ID");
    v7 = (24 * v8 + 24);
    v12 = *(this + 13);
    v13 = *(this + 14) - v12;
    v14 = v53.__begin_ - v13;
    memcpy(v53.__begin_ - v13, v12, v13);
    v15 = *(this + 13);
    *(this + 13) = v14;
    *(this + 14) = v7;
    v16 = *(this + 15);
    *(this + 15) = v53.__end_cap_.__value_;
    v53.__end_ = v15;
    v53.__end_cap_.__value_ = v16;
    v53.__first_ = v15;
    v53.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v53);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(*(this + 14), "DMLC_TASK_ID");
    v7 = v6 + 1;
    *(this + 14) = v7;
  }

  *(this + 14) = v7;
  v17 = *(this + 15);
  if (v7 >= v17)
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v2) >> 3);
    if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_52;
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v2) >> 3);
    v21 = 2 * v20;
    if (2 * v20 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v22 = v21;
    }

    v53.__end_cap_.__value_ = v2;
    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v22);
    }

    v53.__first_ = 0;
    v53.__begin_ = (24 * v19);
    v53.__end_ = (24 * v19);
    v53.__end_cap_.__value_ = 0;
    std::string::basic_string[abi:ne200100]<0>((24 * v19), "DMLC_ROLE");
    v18 = v53.__end_ + 1;
    v23 = *(this + 13);
    v24 = *(this + 14) - v23;
    v25 = v53.__begin_ - v24;
    memcpy(v53.__begin_ - v24, v23, v24);
    v26 = *(this + 13);
    *(this + 13) = v25;
    *(this + 14) = v18;
    v27 = *(this + 15);
    *(this + 15) = v53.__end_cap_.__value_;
    v53.__end_ = v26;
    v53.__end_cap_.__value_ = v27;
    v53.__first_ = v26;
    v53.__begin_ = v26;
    std::__split_buffer<std::string>::~__split_buffer(&v53);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "DMLC_ROLE");
    v18 = v7 + 1;
    *(this + 14) = v18;
  }

  *(this + 14) = v18;
  if (v18 >= *(this + 15))
  {
    v28 = std::vector<std::string>::__emplace_back_slow_path<char const(&)[17]>(v2, "DMLC_NUM_ATTEMPT");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "DMLC_NUM_ATTEMPT");
    v28 = v18 + 1;
    *(this + 14) = v28;
  }

  *(this + 14) = v28;
  if (v28 >= *(this + 15))
  {
    v29 = std::vector<std::string>::__emplace_back_slow_path<char const(&)[17]>(v2, "DMLC_TRACKER_URI");
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "DMLC_TRACKER_URI");
    v29 = v28 + 1;
    *(this + 14) = v29;
  }

  *(this + 14) = v29;
  v30 = *(this + 15);
  if (v29 >= v30)
  {
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *v2) >> 3);
    if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_52;
    }

    v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v2) >> 3);
    v34 = 2 * v33;
    if (2 * v33 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    if (v33 >= 0x555555555555555)
    {
      v35 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v35 = v34;
    }

    v53.__end_cap_.__value_ = v2;
    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v35);
    }

    v53.__first_ = 0;
    v53.__begin_ = (24 * v32);
    v53.__end_ = (24 * v32);
    v53.__end_cap_.__value_ = 0;
    std::string::basic_string[abi:ne200100]<0>((24 * v32), "DMLC_TRACKER_PORT");
    v31 = v53.__end_ + 1;
    v36 = *(this + 13);
    v37 = *(this + 14) - v36;
    v38 = v53.__begin_ - v37;
    memcpy(v53.__begin_ - v37, v36, v37);
    v39 = *(this + 13);
    *(this + 13) = v38;
    *(this + 14) = v31;
    v40 = *(this + 15);
    *(this + 15) = v53.__end_cap_.__value_;
    v53.__end_ = v39;
    v53.__end_cap_.__value_ = v40;
    v53.__first_ = v39;
    v53.__begin_ = v39;
    std::__split_buffer<std::string>::~__split_buffer(&v53);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v29, "DMLC_TRACKER_PORT");
    v31 = v29 + 1;
    *(this + 14) = v31;
  }

  *(this + 14) = v31;
  v41 = *(this + 15);
  if (v31 < v41)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "DMLC_WORKER_CONNECT_RETRY");
    v42 = v31 + 1;
    *(this + 14) = v31 + 1;
    goto LABEL_51;
  }

  v43 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v2) >> 3);
  if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_52:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v44 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v2) >> 3);
  v45 = 2 * v44;
  if (2 * v44 <= v43 + 1)
  {
    v45 = v43 + 1;
  }

  if (v44 >= 0x555555555555555)
  {
    v46 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v46 = v45;
  }

  v53.__end_cap_.__value_ = v2;
  if (v46)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v2, v46);
  }

  v53.__first_ = 0;
  v53.__begin_ = (24 * v43);
  v53.__end_ = (24 * v43);
  v53.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v43), "DMLC_WORKER_CONNECT_RETRY");
  v42 = v53.__end_ + 1;
  v47 = *(this + 13);
  v48 = *(this + 14) - v47;
  v49 = v53.__begin_ - v48;
  memcpy(v53.__begin_ - v48, v47, v48);
  v50 = *(this + 13);
  *(this + 13) = v49;
  *(this + 14) = v42;
  v51 = *(this + 15);
  *(this + 15) = v53.__end_cap_.__value_;
  v53.__end_ = v50;
  v53.__end_cap_.__value_ = v51;
  v53.__first_ = v50;
  v53.__begin_ = v50;
  std::__split_buffer<std::string>::~__split_buffer(&v53);
LABEL_51:
  *(this + 14) = v42;
  return this;
}

void sub_274E13D3C(_Unwind_Exception *a1, std::__split_buffer<std::string> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  std::__split_buffer<std::string>::~__split_buffer(&a10);
  if (*(v10 + 223) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 199) < 0)
  {
    operator delete(*(v10 + 176));
  }

  if (*(v10 + 175) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 151) < 0)
  {
    operator delete(*(v10 + 128));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  v15 = *v13;
  if (*v13)
  {
    *(v10 + 72) = v15;
    operator delete(v15);
  }

  std::vector<rabit::engine::AllreduceBase::LinkRecord>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::Init(rabit::engine::AllreduceBase *this, unsigned int a2, const char **a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(this + 13);
  v7 = *(this + 14);
  while (v6 != v7)
  {
    if (*(v6 + 23) < 0)
    {
      v10 = *v6;
      v11 = getenv(*v6);
      if (!v11)
      {
        goto LABEL_9;
      }

      v9 = v11;
    }

    else
    {
      v8 = getenv(v6);
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = v8;
      v10 = v6;
    }

    (*(*this + 136))(this, v10, v9);
LABEL_9:
    v6 += 24;
  }

  if (a2 >= 1)
  {
    v12 = a2;
    do
    {
      if (sscanf(*a3, "%[^=]=%s", &v34, &v32) == 2)
      {
        (*(*this + 136))(this, &v34, &v32);
      }

      ++a3;
      --v12;
    }

    while (v12);
  }

  v14 = getenv("mapred_tip_id");
  if (!v14)
  {
    v14 = getenv("mapreduce_task_id");
  }

  if (*(this + 16) == 1)
  {
    rabit::utils::Check((v14 != 0), "hadoop_mode is set but cannot find mapred_task_id", v13);
  }

  if (v14)
  {
    (*(*this + 136))(this, "rabit_task_id", v14);
    (*(*this + 136))(this, "rabit_hadoop_mode", "1");
  }

  v15 = getenv("mapred_task_id");
  if (v15)
  {
    v16 = strrchr(v15, 95);
    LODWORD(v34.__r_.__value_.__l.__data_) = 0;
    if (v16)
    {
      v17 = v16;
      if (sscanf(v16 + 1, "%d", &v34) == 1)
      {
        (*(*this + 136))(this, "rabit_num_trial", v17 + 1);
      }
    }
  }

  v19 = getenv("mapred_map_tasks");
  if (!v19)
  {
    v19 = getenv("mapreduce_job_maps");
  }

  if (*(this + 16) == 1)
  {
    rabit::utils::Check((v19 != 0), "hadoop_mode is set but cannot find mapred_map_tasks", v18);
  }

  if (v19)
  {
    (*(*this + 136))(this, "rabit_world_size", v19);
  }

  v20 = this + 200;
  v21 = *(this + 223);
  if (v21 < 0)
  {
    if (*(this + 26) != 6)
    {
      goto LABEL_40;
    }

    v20 = *v20;
  }

  else if (v21 != 6)
  {
    goto LABEL_40;
  }

  v22 = *v20;
  v23 = *(v20 + 2);
  if (v22 != 1802661751 || v23 != 29285)
  {
LABEL_40:
    Entry = dmlc::LogMessageFatal::GetEntry(&v34);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc", 107);
    v26 = dmlc::LogMessageFatal::GetEntry(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Rabit Module currently only work with dmlc worker", 49);
    dmlc::LogMessageFatal::~LogMessageFatal(&v34);
  }

  *(this + 68) = -1;
  rabit::utils::Assert((*(this + 5) == *(this + 4)), "can only call Init once", v18);
  memset(&v34, 0, sizeof(v34));
  std::string::resize(&v34, 0x100uLL, 0);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v34;
  }

  else
  {
    v27 = v34.__r_.__value_.__r.__words[0];
  }

  v28 = gethostname(v27, 0x100uLL) != -1;
  rabit::utils::Check(v28, "fail to get host name", v29);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v34;
  }

  else
  {
    v30 = v34.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, v30);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  *(this + 152) = v32;
  *(this + 21) = v33;
  return rabit::engine::AllreduceBase::ReConnectLinks(this, "start");
}

uint64_t rabit::engine::AllreduceBase::ReConnectLinks(rabit::engine::AllreduceBase *this, char *a2)
{
  v318 = *MEMORY[0x277D85DE8];
  v4 = (this + 176);
  v5 = *(this + 199);
  if (v5 < 0)
  {
    if (*(this + 23) != 4)
    {
      goto LABEL_7;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
    goto LABEL_7;
  }

  if (*v4 == 1280070990)
  {
    *(this + 34) = 0x100000000;
    return 1;
  }

LABEL_7:
  v6 = rabit::engine::AllreduceBase::ConnectTracker(this);
  v314 = v6;
  v290 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v7, v8);
  if (*(v290 + 4) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v308, &__p, 276, 2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v308, "task ", 5);
    v10 = *(this + 151);
    v11 = v10 >= 0 ? (this + 128) : *(this + 16);
    v12 = v10 >= 0 ? *(this + 151) : *(this + 17);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " connected to the tracker", 25);
    xgboost::ConsoleLogger::~ConsoleLogger(v308, v14, v15);
    if (SHIBYTE(v307) < 0)
    {
      operator delete(__p);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v308, a2);
  rabit::utils::TCPSocket::SendStr(&v314, v308);
  if (v309 < 0)
  {
    operator delete(v308[0]);
  }

  v16 = 0;
  v306 = 0;
  v307 = 0;
  v304 = 0;
  __p = &v306;
  v303 = 0;
  v17 = &v303 + 4;
  while (1)
  {
    v18 = recv(v6, v17, 4 - v16, 64);
    if (v18 == -1)
    {
      break;
    }

    if (v18)
    {
      v17 += v18;
      v16 += v18;
      if (v16 < 4)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (*__error() != 35)
  {
    v20 = __error();
    v21 = strerror(*v20);
    rabit::utils::Error("Socket %s Error:%s", v22, "RecvAll", v21);
  }

LABEL_25:
  rabit::utils::Assert((v16 == 4), "ReConnectLink failure 4", v19);
  v23 = 0;
  v24 = this + 24;
  v289 = (this + 24);
  while (1)
  {
    v25 = recv(v6, v24, 4 - v23, 64);
    if (v25 == -1)
    {
      break;
    }

    if (v25)
    {
      v24 += v25;
      v23 += v25;
      if (v23 < 4)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (*__error() != 35)
  {
    v27 = __error();
    v28 = strerror(*v27);
    rabit::utils::Error("Socket %s Error:%s", v29, "RecvAll", v28);
  }

LABEL_32:
  rabit::utils::Assert((v23 == 4), "ReConnectLink failure 4", v26);
  v30 = 0;
  v31 = this + 276;
  while (1)
  {
    v32 = recv(v6, v31, 4 - v30, 64);
    if (v32 == -1)
    {
      break;
    }

    if (v32)
    {
      v31 += v32;
      v30 += v32;
      if (v30 < 4)
      {
        continue;
      }
    }

    goto LABEL_39;
  }

  if (*__error() != 35)
  {
    v34 = __error();
    v35 = strerror(*v34);
    rabit::utils::Error("Socket %s Error:%s", v36, "RecvAll", v35);
  }

LABEL_39:
  rabit::utils::Assert((v30 == 4), "ReConnectLink failure 4", v33);
  v38 = *(this + 68);
  v40 = v38 == -1 || HIDWORD(v303) == v38;
  rabit::utils::Assert(v40, "must keep rank to same if the node already have one", v37);
  v41 = HIDWORD(v303);
  v292 = this + 272;
  *(this + 68) = HIDWORD(v303);
  if (v41 == -1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v308);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc", 297);
    v43 = dmlc::LogMessageFatal::GetEntry(v308);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "tracker got overwhelmed and not able to assign correct rank", 59);
    dmlc::LogMessageFatal::~LogMessageFatal(v308);
  }

  xgboost::BaseLogger::BaseLogger(v308);
  v313 = 4;
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v308, "task ", 5);
  v45 = *(this + 151);
  if (v45 >= 0)
  {
    v46 = this + 128;
  }

  else
  {
    v46 = *(this + 16);
  }

  if (v45 >= 0)
  {
    v47 = *(this + 151);
  }

  else
  {
    v47 = *(this + 17);
  }

  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " got new rank ", 14);
  v50 = MEMORY[0x277C68E20](v49, *v292);
  xgboost::ConsoleLogger::~ConsoleLogger(v308, v50, v51);
  v52 = 0;
  v53 = &v303;
  while (1)
  {
    v54 = recv(v6, v53, 4 - v52, 64);
    if (v54 == -1)
    {
      break;
    }

    if (v54)
    {
      v53 = (v53 + v54);
      v52 += v54;
      if (v52 < 4)
      {
        continue;
      }
    }

    goto LABEL_60;
  }

  if (*__error() != 35)
  {
    v56 = __error();
    v57 = strerror(*v56);
    rabit::utils::Error("Socket %s Error:%s", v58, "RecvAll", v57);
  }

LABEL_60:
  rabit::utils::Assert((v52 == 4), "ReConnectLink failure 4", v55);
  v294 = this;
  if (v303 > 0)
  {
    v59 = 0;
    do
    {
      v60 = 0;
      LODWORD(v308[0]) = 0;
      v61 = v308;
      while (1)
      {
        v62 = recv(v6, v61, 4 - v60, 64);
        if (v62 == -1)
        {
          break;
        }

        if (v62)
        {
          v61 = (v61 + v62);
          v60 += v62;
          if (v60 < 4)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      if (*__error() != 35)
      {
        v64 = __error();
        v65 = strerror(*v64);
        rabit::utils::Error("Socket %s Error:%s", v66, "RecvAll", v65);
      }

LABEL_69:
      rabit::utils::Assert((v60 == 4), "ReConnectLink failure 4", v63);
      v67 = v306;
      if (!v306)
      {
LABEL_75:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v68 = v67;
          v69 = *(v67 + 7);
          if (v69 <= SLODWORD(v308[0]))
          {
            break;
          }

          v67 = *v68;
          if (!*v68)
          {
            goto LABEL_75;
          }
        }

        if (v69 >= SLODWORD(v308[0]))
        {
          break;
        }

        v67 = v68[1];
        if (!v67)
        {
          goto LABEL_75;
        }
      }

      *(v68 + 8) = 1;
      ++v59;
    }

    while (v59 < v303);
  }

  v70 = 0;
  v71 = &v304 + 4;
  v72 = v294;
  while (1)
  {
    v73 = recv(v6, v71, 4 - v70, 64);
    if (v73 == -1)
    {
      break;
    }

    if (v73)
    {
      v71 += v73;
      v70 += v73;
      if (v70 < 4)
      {
        continue;
      }
    }

    goto LABEL_84;
  }

  if (*__error() != 35)
  {
    v75 = __error();
    v76 = strerror(*v75);
    rabit::utils::Error("Socket %s Error:%s", v77, "RecvAll", v76);
  }

LABEL_84:
  rabit::utils::Assert((v70 == 4), "ReConnectLink failure 4", v74);
  v78 = 0;
  v79 = &v304;
  while (1)
  {
    v80 = recv(v6, v79, 4 - v78, 64);
    if (v80 == -1)
    {
      break;
    }

    if (v80)
    {
      v79 = (v79 + v80);
      v78 += v80;
      if (v78 < 4)
      {
        continue;
      }
    }

    goto LABEL_91;
  }

  if (*__error() != 35)
  {
    v82 = __error();
    v83 = strerror(*v82);
    rabit::utils::Error("Socket %s Error:%s", v84, "RecvAll", v83);
  }

LABEL_91:
  rabit::utils::Assert((v78 == 4), "ReConnectLink failure 4", v81);
  v86 = socket(2, 1, 0);
  if (v86 == -1)
  {
    v87 = __error();
    v88 = strerror(*v87);
    rabit::utils::Error("Socket %s Error:%s", v89, "Create", v88);
  }

  v291 = v86;
  v90 = *(v294 + 58);
  if (v90 < 1)
  {
LABEL_99:
    v91 = -1;
  }

  else
  {
    v91 = *(v294 + 57);
    while (1)
    {
      rabit::utils::SockAddr::SockAddr(&v316, "0.0.0.0", v91);
      if (!bind(v291, &v316, 0x10u))
      {
        break;
      }

      if (*__error() != 48)
      {
        v92 = __error();
        v93 = strerror(*v92);
        rabit::utils::Error("Socket %s Error:%s", v94, "TryBindHost", v93);
      }

      ++v91;
      if (!--v90)
      {
        goto LABEL_99;
      }
    }
  }

  v302 = v91;
  rabit::utils::Check((v91 != -1), "ReConnectLink fail to bind the ports specified", v85);
  listen(v291, 16);
  v300 = 0;
  v301 = 0;
  v299 = 1;
  do
  {
    *&v316.sa_len = 0;
    *&v316.sa_data[6] = 0;
    v317 = 0;
    v95 = *(v72 + 4);
    v96 = *(v72 + 5);
    if (v95 == v96)
    {
      LODWORD(v113) = 0;
    }

    else
    {
      do
      {
        v97 = *v95;
        if (*v95 != -1)
        {
          LODWORD(v295.__r_.__value_.__l.__data_) = 0;
          *&v315.sa_len = 4;
          if (getsockopt(v97, 0xFFFF, 4103, &v295, &v315.sa_len))
          {
            v98 = __error();
            v99 = strerror(*v98);
            rabit::utils::Error("Socket %s Error:%s", v100, "GetSockError", v99);
          }

          if (LODWORD(v295.__r_.__value_.__l.__data_) == 4 || LODWORD(v295.__r_.__value_.__l.__data_) == 9)
          {
            if (*v95 != -1)
            {
              close(*v95);
              *v95 = -1;
            }
          }

          else
          {
            v102 = v95[1];
            v103 = *&v316.sa_data[6];
            if (*&v316.sa_data[6] >= v317)
            {
              v105 = *&v316.sa_len;
              v106 = *&v316.sa_data[6] - *&v316.sa_len;
              v107 = (*&v316.sa_data[6] - *&v316.sa_len) >> 2;
              v108 = v107 + 1;
              if ((v107 + 1) >> 62)
              {
                std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
              }

              v109 = v317 - *&v316.sa_len;
              if ((v317 - *&v316.sa_len) >> 1 > v108)
              {
                v108 = v109 >> 1;
              }

              v110 = v109 >= 0x7FFFFFFFFFFFFFFCLL;
              v111 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v110)
              {
                v111 = v108;
              }

              if (v111)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v316, v111);
              }

              *(4 * v107) = v102;
              v104 = 4 * v107 + 4;
              memcpy(0, v105, v106);
              v112 = *&v316.sa_len;
              *&v316.sa_len = 0;
              *&v316.sa_data[6] = v104;
              v317 = 0;
              if (v112)
              {
                operator delete(v112);
              }
            }

            else
            {
              **&v316.sa_data[6] = v102;
              v104 = v103 + 4;
            }

            *&v316.sa_data[6] = v104;
          }
        }

        v95 += 16;
      }

      while (v95 != v96);
      v113 = (*&v316.sa_data[6] - *&v316.sa_len) >> 2;
    }

    v114 = 0;
    v298 = v113;
    v115 = &v298;
    while (1)
    {
      v117 = send(v6, v115, 4 - v114, 0);
      if (v117 == -1)
      {
        break;
      }

      v115 = (v115 + v117);
      v114 += v117;
      if (v114 >= 4)
      {
        goto LABEL_132;
      }
    }

    if (*__error() != 35)
    {
      v118 = __error();
      v119 = strerror(*v118);
      rabit::utils::Error("Socket %s Error:%s", v120, "SendAll", v119);
    }

LABEL_132:
    rabit::utils::Assert((v114 == 4), "ReConnectLink failure 5", v116);
    v121 = *&v316.sa_len;
    v122 = *&v316.sa_data[6];
    while (v121 != v122)
    {
      v123 = 0;
      v124 = v121;
      while (1)
      {
        v126 = send(v6, v124, 4 - v123, 0);
        if (v126 == -1)
        {
          break;
        }

        v124 += v126;
        v123 += v126;
        if (v123 >= 4)
        {
          goto LABEL_139;
        }
      }

      if (*__error() != 35)
      {
        v127 = __error();
        v128 = strerror(*v127);
        rabit::utils::Error("Socket %s Error:%s", v129, "SendAll", v128);
      }

LABEL_139:
      rabit::utils::Assert((v123 == 4), "ReConnectLink failure 6", v125);
      v121 += 4;
    }

    v130 = 0;
    v131 = &v301;
    while (1)
    {
      v132 = recv(v6, v131, 4 - v130, 64);
      if (v132 == -1)
      {
        break;
      }

      if (v132)
      {
        v131 = (v131 + v132);
        v130 += v132;
        if (v130 < 4)
        {
          continue;
        }
      }

      goto LABEL_147;
    }

    if (*__error() != 35)
    {
      v134 = __error();
      v135 = strerror(*v134);
      rabit::utils::Error("Socket %s Error:%s", v136, "RecvAll", v135);
    }

LABEL_147:
    rabit::utils::Assert((v130 == 4), "ReConnectLink failure 7", v133);
    v137 = 0;
    v138 = &v300;
    while (1)
    {
      v139 = recv(v6, v138, 4 - v137, 64);
      if (v139 == -1)
      {
        break;
      }

      if (v139)
      {
        v138 = (v138 + v139);
        v137 += v139;
        if (v137 < 4)
        {
          continue;
        }
      }

      goto LABEL_154;
    }

    if (*__error() != 35)
    {
      v141 = __error();
      v142 = strerror(*v141);
      rabit::utils::Error("Socket %s Error:%s", v143, "RecvAll", v142);
    }

LABEL_154:
    rabit::utils::Assert((v137 == 4), "ReConnectLink failure 8", v140);
    v299 = 0;
    v6 = v314;
    if (v301 >= 1)
    {
      for (i = 0; i < v301; ++i)
      {
        v145 = 0;
        LODWORD(v308[0]) = -1;
        v310 = 0u;
        v311 = 0u;
        v312 = 0;
        v296 = 0;
        v297 = 0;
        memset(&v295, 0, sizeof(v295));
        v146 = &v315;
        *&v315.sa_len = 0;
        while (1)
        {
          v147 = recv(v6, v146, 4 - v145, 64);
          if (v147 == -1)
          {
            break;
          }

          if (v147)
          {
            v146 = (v146 + v147);
            v145 += v147;
            if (v145 < 4)
            {
              continue;
            }
          }

          goto LABEL_163;
        }

        if (*__error() != 35)
        {
          v149 = __error();
          v150 = strerror(*v149);
          rabit::utils::Error("Socket %s Error:%s", v151, "RecvAll", v150);
        }

LABEL_163:
        rabit::utils::Assert((v145 == 4), "error during send RecvStr", v148);
        std::string::resize(&v295, *&v315.sa_len, 0);
        v152 = *&v315.sa_len;
        if (*&v315.sa_len)
        {
          v153 = 0;
          if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v154 = &v295;
          }

          else
          {
            v154 = v295.__r_.__value_.__r.__words[0];
          }

          while (1)
          {
            v155 = recv(v6, v154, v152 - v153, 64);
            if (v155 == -1)
            {
              break;
            }

            if (v155)
            {
              v154 = (v154 + v155);
              v153 += v155;
              if (v153 < v152)
              {
                continue;
              }
            }

            goto LABEL_173;
          }

          if (*__error() != 35)
          {
            v157 = __error();
            v158 = strerror(*v157);
            rabit::utils::Error("Socket %s Error:%s", v159, "RecvAll", v158);
          }

LABEL_173:
          size = HIBYTE(v295.__r_.__value_.__r.__words[2]);
          if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v295.__r_.__value_.__l.__size_;
          }

          rabit::utils::Assert((v153 == size), "error during send SendStr", v156);
        }

        v161 = 0;
        v162 = &v297;
        while (1)
        {
          v163 = recv(v6, v162, 4 - v161, 64);
          if (v163 == -1)
          {
            break;
          }

          if (v163)
          {
            v162 = (v162 + v163);
            v161 += v163;
            if (v161 < 4)
            {
              continue;
            }
          }

          goto LABEL_183;
        }

        if (*__error() != 35)
        {
          v165 = __error();
          v166 = strerror(*v165);
          rabit::utils::Error("Socket %s Error:%s", v167, "RecvAll", v166);
        }

LABEL_183:
        rabit::utils::Assert((v161 == 4), "ReConnectLink failure 9", v164);
        v168 = 0;
        v169 = &v296;
        while (1)
        {
          v170 = recv(v6, v169, 4 - v168, 64);
          if (v170 == -1)
          {
            break;
          }

          if (v170)
          {
            v169 = (v169 + v170);
            v168 += v170;
            if (v168 < 4)
            {
              continue;
            }
          }

          goto LABEL_190;
        }

        if (*__error() != 35)
        {
          v172 = __error();
          v173 = strerror(*v172);
          rabit::utils::Error("Socket %s Error:%s", v174, "RecvAll", v173);
        }

LABEL_190:
        rabit::utils::Assert((v168 == 4), "ReConnectLink failure 10", v171);
        LODWORD(v308[0]) = socket(2, 1, 0);
        if (LODWORD(v308[0]) == -1)
        {
          v175 = __error();
          v176 = strerror(*v175);
          rabit::utils::Error("Socket %s Error:%s", v177, "Create", v176);
        }

        if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v178 = &v295;
        }

        else
        {
          v178 = v295.__r_.__value_.__r.__words[0];
        }

        rabit::utils::SockAddr::SockAddr(&v315, v178, v297);
        if (connect(v308[0], &v315, 0x10u))
        {
          ++v299;
          if (LODWORD(v308[0]) == -1)
          {
            v197 = __error();
            v198 = strerror(*v197);
            rabit::utils::Error("Socket %s Error:%s", v199, "Socket::Close double close the socket or close without create", v198);
          }

          close(v308[0]);
          LODWORD(v308[0]) = -1;
        }

        else
        {
          v179 = 0;
          v180 = v292;
          while (1)
          {
            v182 = send(v308[0], v180, 4 - v179, 0);
            if (v182 == -1)
            {
              break;
            }

            v180 += v182;
            v179 += v182;
            if (v179 >= 4)
            {
              goto LABEL_203;
            }
          }

          if (*__error() != 35)
          {
            v183 = __error();
            v184 = strerror(*v183);
            rabit::utils::Error("Socket %s Error:%s", v185, "SendAll", v184);
          }

LABEL_203:
          rabit::utils::Assert((v179 == 4), "ReConnectLink failure 12", v181);
          v186 = 0;
          v187 = v308 + 4;
          while (1)
          {
            v188 = recv(v308[0], v187, 4 - v186, 64);
            if (v188 == -1)
            {
              break;
            }

            if (v188)
            {
              v187 += v188;
              v186 += v188;
              if (v186 < 4)
              {
                continue;
              }
            }

            goto LABEL_210;
          }

          if (*__error() != 35)
          {
            v190 = __error();
            v191 = strerror(*v190);
            rabit::utils::Error("Socket %s Error:%s", v192, "RecvAll", v191);
          }

LABEL_210:
          rabit::utils::Assert((v186 == 4), "ReConnectLink failure 13", v189);
          rabit::utils::Check((v296 == HIDWORD(v308[0])), "ReConnectLink failure, link rank inconsistent", v193);
          v196 = *(v294 + 4);
          v195 = *(v294 + 5);
          if (v196 == v195)
          {
LABEL_213:
            std::vector<rabit::engine::AllreduceBase::LinkRecord>::push_back[abi:ne200100](v294 + 4, v308);
          }

          else
          {
            while (v196[1] != v296)
            {
              v196 += 16;
              if (v196 == v195)
              {
                goto LABEL_213;
              }
            }

            rabit::utils::Assert((*v196 == -1), "Override a link that is active", v194);
            *v196 = v308[0];
          }
        }

        if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v295.__r_.__value_.__l.__data_);
        }

        if (v311)
        {
          *(&v311 + 1) = v311;
          operator delete(v311);
        }
      }
    }

    v200 = 0;
    v201 = &v299;
    v72 = v294;
    while (1)
    {
      v203 = send(v6, v201, 4 - v200, 0);
      if (v203 == -1)
      {
        break;
      }

      v201 = (v201 + v203);
      v200 += v203;
      if (v200 >= 4)
      {
        goto LABEL_226;
      }
    }

    if (*__error() != 35)
    {
      v204 = __error();
      v205 = strerror(*v204);
      rabit::utils::Error("Socket %s Error:%s", v206, "SendAll", v205);
    }

LABEL_226:
    rabit::utils::Assert((v200 == 4), "ReConnectLink failure 14", v202);
    if (*&v316.sa_len)
    {
      *&v316.sa_data[6] = *&v316.sa_len;
      operator delete(*&v316.sa_len);
    }
  }

  while (v299);
  v207 = 0;
  v208 = &v302;
  while (1)
  {
    v210 = send(v6, v208, 4 - v207, 0);
    if (v210 == -1)
    {
      break;
    }

    v208 = (v208 + v210);
    v207 += v210;
    if (v207 >= 4)
    {
      goto LABEL_234;
    }
  }

  if (*__error() != 35)
  {
    v211 = __error();
    v212 = strerror(*v211);
    rabit::utils::Error("Socket %s Error:%s", v213, "SendAll", v212);
  }

LABEL_234:
  rabit::utils::Assert((v207 == 4), "ReConnectLink failure 14", v209);
  if (v6 == -1)
  {
    v214 = __error();
    v215 = strerror(*v214);
    rabit::utils::Error("Socket %s Error:%s", v216, "Socket::Close double close the socket or close without create", v215);
  }

  close(v6);
  v314 = -1;
  if (v300 >= 1)
  {
    for (j = 0; j < v300; ++j)
    {
      LODWORD(v308[0]) = -1;
      v310 = 0u;
      v311 = 0u;
      v312 = 0;
      v218 = accept(v291, 0, 0);
      if (v218 == -1)
      {
        v219 = __error();
        v220 = strerror(*v219);
        rabit::utils::Error("Socket %s Error:%s", v221, "Accept", v220);
      }

      v222 = 0;
      LODWORD(v308[0]) = v218;
      v223 = v292;
      while (1)
      {
        v225 = send(v308[0], v223, 4 - v222, 0);
        if (v225 == -1)
        {
          break;
        }

        v223 += v225;
        v222 += v225;
        if (v222 >= 4)
        {
          goto LABEL_246;
        }
      }

      if (*__error() != 35)
      {
        v226 = __error();
        v227 = strerror(*v226);
        rabit::utils::Error("Socket %s Error:%s", v228, "SendAll", v227);
      }

LABEL_246:
      rabit::utils::Assert((v222 == 4), "ReConnectLink failure 15", v224);
      v229 = 0;
      v230 = v308 + 4;
      while (1)
      {
        v231 = recv(v308[0], v230, 4 - v229, 64);
        if (v231 == -1)
        {
          break;
        }

        if (v231)
        {
          v230 += v231;
          v229 += v231;
          if (v229 < 4)
          {
            continue;
          }
        }

        goto LABEL_253;
      }

      if (*__error() != 35)
      {
        v233 = __error();
        v234 = strerror(*v233);
        rabit::utils::Error("Socket %s Error:%s", v235, "RecvAll", v234);
      }

LABEL_253:
      rabit::utils::Assert((v229 == 4), "ReConnectLink failure 15", v232);
      v72 = v294;
      v238 = *(v294 + 4);
      v237 = *(v294 + 5);
      if (v238 == v237)
      {
LABEL_256:
        std::vector<rabit::engine::AllreduceBase::LinkRecord>::push_back[abi:ne200100](v294 + 4, v308);
      }

      else
      {
        while (v238[1] != HIDWORD(v308[0]))
        {
          v238 += 16;
          if (v238 == v237)
          {
            goto LABEL_256;
          }
        }

        rabit::utils::Assert((*v238 == -1), "Override a link that is active", v236);
        *v238 = v308[0];
      }

      if (v311)
      {
        *(&v311 + 1) = v311;
        operator delete(v311);
      }
    }
  }

  close(v291);
  *(v72 + 5) = -1;
  *(v72 + 9) = *(v72 + 8);
  v240 = *(v72 + 4);
  v241 = *(v72 + 5);
  if (v240 != v241)
  {
    v242 = "ReConnectLink: bad socket";
    v243 = "Socket %s Error:%s";
    v244 = "SetNonBlock-2";
    v293 = *(v72 + 5);
    do
    {
      v245 = *v240;
      if (*v240 == -1)
      {
        v250 = 0;
      }

      else
      {
        *&v316.sa_len = 0;
        LODWORD(v295.__r_.__value_.__l.__data_) = 4;
        if (getsockopt(v245, 0xFFFF, 4103, &v316, &v295))
        {
          v246 = __error();
          v247 = strerror(*v246);
          rabit::utils::Error(v243, v248, "GetSockError", v247);
        }

        v250 = *&v316.sa_len != 9 && *&v316.sa_len != 4;
      }

      rabit::utils::Assert(v250, v242, v239);
      v251 = fcntl(*v240, 3, 0);
      if (v251 == -1)
      {
        v252 = __error();
        v253 = strerror(*v252);
        rabit::utils::Error(v243, v254, "SetNonBlock-1", v253);
      }

      if (fcntl(*v240, 4, v251 | 4u) == -1)
      {
        v255 = __error();
        v256 = strerror(*v255);
        rabit::utils::Error(v243, v257, v244, v256);
      }

      v258 = *v240;
      *&v316.sa_len = 1;
      if (setsockopt(v258, 0xFFFF, 8, &v316, 4u) < 0)
      {
        v259 = __error();
        v260 = strerror(*v259);
        rabit::utils::Error(v243, v261, "SetKeepAlive", v260);
      }

      if (*(v294 + 297) == 1 && *(v290 + 4) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v316, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
        xgboost::ConsoleLogger::ConsoleLogger(v308, &v316, 426, 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v308, "tcp no delay is not implemented on non unix platforms", 53);
        xgboost::ConsoleLogger::~ConsoleLogger(v308, v262, v263);
        if (SHIBYTE(v317) < 0)
        {
          operator delete(*&v316.sa_len);
        }
      }

      v264 = v306;
      for (k = v240[1]; v264; v264 = *v264)
      {
        v266 = *(v264 + 7);
        if (k >= v266)
        {
          if (v266 >= k)
          {
            v267 = *(v294 + 9);
            if (k == *(v294 + 6))
            {
              *(v294 + 5) = &v267[-*(v294 + 8)] >> 3;
            }

            v268 = *(v294 + 10);
            if (v267 >= v268)
            {
              v270 = v243;
              v271 = v242;
              v272 = v244;
              v273 = *(v294 + 8);
              v274 = v267 - v273;
              v275 = (v267 - v273) >> 3;
              v276 = v275 + 1;
              if ((v275 + 1) >> 61)
              {
                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v277 = v268 - v273;
              if (v277 >> 2 > v276)
              {
                v276 = v277 >> 2;
              }

              if (v277 >= 0x7FFFFFFFFFFFFFF8)
              {
                v278 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v278 = v276;
              }

              if (v278)
              {
                if (!(v278 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v279 = (v267 - v273) >> 3;
              v280 = (8 * v275);
              v281 = (8 * v275 - 8 * v279);
              *v280 = v240;
              v269 = v280 + 1;
              memcpy(v281, v273, v274);
              *(v294 + 8) = v281;
              *(v294 + 9) = v269;
              *(v294 + 10) = 0;
              if (v273)
              {
                operator delete(v273);
              }

              v244 = v272;
              v242 = v271;
              v243 = v270;
              v241 = v293;
            }

            else
            {
              *v267 = v240;
              v269 = v267 + 8;
            }

            *(v294 + 9) = v269;
            k = v240[1];
            break;
          }

          ++v264;
        }
      }

      if (k == HIDWORD(v304))
      {
        *(v294 + 11) = v240;
      }

      if (k == v304)
      {
        *(v294 + 12) = v240;
      }

      v240 += 16;
    }

    while (v240 != v241);
  }

  if (*v289 == -1)
  {
    v283 = 1;
    v282 = v294;
  }

  else
  {
    v282 = v294;
    v283 = *(v294 + 5) != -1;
  }

  rabit::utils::Assert(v283, "cannot find parent in the link", v239);
  v285 = HIDWORD(v304) == -1 || *(v282 + 11) != 0;
  rabit::utils::Assert(v285, "cannot find prev ring in the link", v284);
  v287 = v304 == -1 || *(v282 + 12) != 0;
  rabit::utils::Assert(v287, "cannot find next ring in the link", v286);
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(v306);
  return 1;
}

void sub_274E15A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v46 = __cxa_begin_catch(exception_object);
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v47, v48) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&a35, &__p, 446, 1);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a35, "failed in ReconnectLink ", 24);
      v50 = (*(*v46 + 16))(v46);
      v51 = strlen(v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v50, v51);
      xgboost::ConsoleLogger::~ConsoleLogger(&a35, v52, v53);
      if (a34 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x274E15A28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rabit::engine::AllreduceBase::Shutdown(rabit::engine::AllreduceBase *this)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  for (i = (this + 32); v3 != v4; v3 += 16)
  {
    if (*v3 != -1)
    {
      close(*v3);
      *v3 = -1;
    }
  }

  std::vector<rabit::engine::AllreduceBase::LinkRecord>::clear[abi:ne200100](i);
  *(this + 9) = *(this + 8);
  v5 = (this + 176);
  v6 = *(this + 199);
  if ((v6 & 0x80000000) == 0)
  {
    if (v6 != 4)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*v5 == 1280070990)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (*(this + 23) == 4)
  {
    v5 = *v5;
    goto LABEL_10;
  }

LABEL_11:
  v7 = rabit::engine::AllreduceBase::ConnectTracker(this);
  v12[0] = v7;
  std::string::basic_string[abi:ne200100]<0>(__p, "shutdown");
  rabit::utils::TCPSocket::SendStr(v12, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    rabit::utils::Error("Socket %s Error:%s", v10, "Socket::Close double close the socket or close without create", v9);
  }

  close(v7);
  return 1;
}

void sub_274E15EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(exception_object);
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v26, v27) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&a12, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&__p, &a12, 139, 1);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to shutdown due to", 25);
      v29 = (*(*v25 + 16))(v25);
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      xgboost::ConsoleLogger::~ConsoleLogger(&__p, v31, v32);
      if (a17 < 0)
      {
        operator delete(a12);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x274E15E88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t rabit::engine::AllreduceBase::ConnectTracker(rabit::engine::AllreduceBase *this)
{
  v67 = *MEMORY[0x277D85DE8];
  v64 = 65433;
  v2 = socket(2, 1, 0);
  v65 = v2;
  if (v2 == -1)
  {
    v5 = __error();
    v6 = strerror(*v5);
    rabit::utils::Error("Socket %s Error:%s", v7, "Create", v6);
  }

  v8 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v3, v4);
  v9 = 1;
  for (i = 2; ; i += 2)
  {
    v11 = this + 176;
    if (*(this + 199) < 0)
    {
      v11 = *(this + 22);
    }

    rabit::utils::SockAddr::SockAddr(&v66, v11, *(this + 56));
    if (!connect(v2, &v66, 0x10u))
    {
      break;
    }

    v12 = *(v8 + 4);
    if (v9 >= *(this + 70))
    {
      if (v12 >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
        xgboost::ConsoleLogger::ConsoleLogger(&v66, __p, 237, 1);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "Connect to (failed): [", 22);
        v23 = *(this + 199);
        v24 = v23 >= 0 ? (this + 176) : *(this + 22);
        v25 = v23 >= 0 ? *(this + 199) : *(this + 23);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "]\n", 2);
        xgboost::ConsoleLogger::~ConsoleLogger(&v66, v27, v28);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v29 = __error();
      v30 = strerror(*v29);
      rabit::utils::Error("Socket %s Error:%s", v31, "Connect", v30);
    }

    if (v12 >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/allreduce_base.cc");
      xgboost::ConsoleLogger::ConsoleLogger(&v66, __p, 240, 1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "Retry connect to ip(retry time ", 31);
      v14 = MEMORY[0x277C68E20](v13, v9);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "): [", 4);
      v16 = *(this + 199);
      if (v16 >= 0)
      {
        v17 = this + 176;
      }

      else
      {
        v17 = *(this + 22);
      }

      if (v16 >= 0)
      {
        v18 = *(this + 199);
      }

      else
      {
        v18 = *(this + 23);
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]\n", 2);
      xgboost::ConsoleLogger::~ConsoleLogger(&v66, v20, v21);
      if (v63 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sleep(i);
    v9 = (v9 + 1);
  }

  v32 = 0;
  v33 = &v64;
  while (1)
  {
    v35 = send(v2, v33, 4 - v32, 0);
    if (v35 == -1)
    {
      break;
    }

    v33 = (v33 + v35);
    v32 += v35;
    if (v32 >= 4)
    {
      goto LABEL_33;
    }
  }

  if (*__error() != 35)
  {
    v36 = __error();
    v37 = strerror(*v36);
    rabit::utils::Error("Socket %s Error:%s", v38, "SendAll", v37);
  }

LABEL_33:
  rabit::utils::Assert((v32 == 4), "ReConnectLink failure 1", v34);
  v39 = 0;
  v40 = &v64;
  while (1)
  {
    v41 = recv(v2, v40, 4 - v39, 64);
    if (v41 == -1)
    {
      break;
    }

    if (v41)
    {
      v40 = (v40 + v41);
      v39 += v41;
      if (v39 < 4)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  if (*__error() != 35)
  {
    v43 = __error();
    v44 = strerror(*v43);
    rabit::utils::Error("Socket %s Error:%s", v45, "RecvAll", v44);
  }

LABEL_40:
  rabit::utils::Assert((v39 == 4), "ReConnectLink failure 2", v42);
  rabit::utils::Check((v64 == 65433), "sync::Invalid tracker message, init failure", v46);
  v47 = 0;
  v48 = this + 272;
  while (1)
  {
    v50 = send(v2, v48, 4 - v47, 0);
    if (v50 == -1)
    {
      break;
    }

    v48 += v50;
    v47 += v50;
    if (v47 >= 4)
    {
      goto LABEL_45;
    }
  }

  if (*__error() != 35)
  {
    v51 = __error();
    v52 = strerror(*v51);
    rabit::utils::Error("Socket %s Error:%s", v53, "SendAll", v52);
  }

LABEL_45:
  rabit::utils::Assert((v47 == 4), "ReConnectLink failure 3", v49);
  v54 = 0;
  v55 = this + 276;
  while (1)
  {
    v57 = send(v2, v55, 4 - v54, 0);
    if (v57 == -1)
    {
      break;
    }

    v55 += v57;
    v54 += v57;
    if (v54 >= 4)
    {
      goto LABEL_50;
    }
  }

  if (*__error() != 35)
  {
    v58 = __error();
    v59 = strerror(*v58);
    rabit::utils::Error("Socket %s Error:%s", v60, "SendAll", v59);
  }

LABEL_50:
  rabit::utils::Assert((v54 == 4), "ReConnectLink failure 3", v56);
  rabit::utils::TCPSocket::SendStr(&v65, this + 16);
  return v2;
}

void sub_274E164A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void rabit::utils::TCPSocket::SendStr(int *a1, char **a2)
{
  v4 = 0;
  LODWORD(v5) = *(a2 + 23);
  if (v5 < 0)
  {
    v5 = a2[1];
  }

  v23 = v5;
  v6 = &v23;
  while (1)
  {
    v8 = send(*a1, v6, 4 - v4, 0);
    if (v8 == -1)
    {
      break;
    }

    v6 = (v6 + v8);
    v4 += v8;
    if (v4 >= 4)
    {
      goto LABEL_8;
    }
  }

  if (*__error() != 35)
  {
    v9 = __error();
    v10 = strerror(*v9);
    rabit::utils::Error("Socket %s Error:%s", v11, "SendAll", v10);
  }

LABEL_8:
  rabit::utils::Assert((v4 == 4), "error during send SendStr", v7);
  if (v23)
  {
    v13 = *(a2 + 23);
    v14 = v13;
    v15 = a2[1];
    v16 = 0;
    if (v13 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = a2[1];
    }

    if (v17)
    {
      if (v13 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      while (1)
      {
        v19 = send(*a1, v18, &v17[-v16], 0);
        if (v19 == -1)
        {
          break;
        }

        v18 = (v18 + v19);
        v16 += v19;
        if (v16 >= v17)
        {
          goto LABEL_20;
        }
      }

      if (*__error() != 35)
      {
        v20 = __error();
        v21 = strerror(*v20);
        rabit::utils::Error("Socket %s Error:%s", v22, "SendAll", v21);
      }

LABEL_20:
      v13 = *(a2 + 23);
      v15 = a2[1];
      v14 = *(a2 + 23);
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    rabit::utils::Assert((v16 == v13), "error during send SendStr", v12);
  }
}

void rabit::engine::AllreduceBase::TrackerPrint(uint64_t a1, char *a2)
{
  v3 = (a1 + 176);
  v4 = *(a1 + 199);
  if (v4 < 0)
  {
    if (*(a1 + 184) != 4)
    {
      goto LABEL_7;
    }

    v3 = *v3;
  }

  else if (v4 != 4)
  {
    goto LABEL_7;
  }

  if (*v3 == 1280070990)
  {
    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    rabit::utils::Printf(a1, a2, v9);
  }

LABEL_7:
  v5 = rabit::engine::AllreduceBase::ConnectTracker(a1);
  v12 = v5;
  std::string::basic_string[abi:ne200100]<0>(__p, "print");
  rabit::utils::TCPSocket::SendStr(&v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  rabit::utils::TCPSocket::SendStr(&v12, a2);
  if (v5 == -1)
  {
    v6 = __error();
    v7 = strerror(*v6);
    rabit::utils::Error("Socket %s Error:%s", v8, "Socket::Close double close the socket or close without create", v7);
  }

  close(v5);
}

void sub_274E1677C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274E16838(_Unwind_Exception *a1, float a2, __n128 a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  xgboost::ConsoleLogger::~ConsoleLogger(va, a2, a3);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::SetParam(rabit::engine::AllreduceBase *this, const char *__s1, const char *a3)
{
  if (!strcmp(__s1, "rabit_tracker_uri"))
  {
    MEMORY[0x277C68BE0](this + 176, a3);
  }

  if (!strcmp(__s1, "rabit_tracker_port"))
  {
    *(this + 56) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_task_id"))
  {
    MEMORY[0x277C68BE0](this + 128, a3);
  }

  if (!strcmp(__s1, "DMLC_TRACKER_URI"))
  {
    MEMORY[0x277C68BE0](this + 176, a3);
  }

  if (!strcmp(__s1, "DMLC_TRACKER_PORT"))
  {
    *(this + 56) = atoi(a3);
  }

  if (!strcmp(__s1, "DMLC_TASK_ID"))
  {
    MEMORY[0x277C68BE0](this + 128, a3);
  }

  if (!strcmp(__s1, "DMLC_ROLE"))
  {
    MEMORY[0x277C68BE0](this + 200, a3);
  }

  if (!strcmp(__s1, "rabit_world_size"))
  {
    *(this + 69) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_hadoop_mode"))
  {
    v6 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 16) = v6;
  }

  if (!strcmp(__s1, "rabit_tree_reduce_minsize"))
  {
    *(this + 33) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_reduce_ring_mincount"))
  {
    v7 = atoi(a3);
    *(this + 32) = v7;
    rabit::utils::Assert((v7 != 0), "rabit_reduce_ring_mincount should be greater than 0", v8);
  }

  if (!strcmp(__s1, "rabit_reduce_buffer"))
  {
    v19 = 0;
    v18 = 0;
    v9 = sscanf(a3, "%lu%c", &v18, &v19);
    v11 = v18;
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        rabit::utils::Error("invalid format for %s,shhould be {integer}{unit}, unit can be {B, KB, MB, GB}", v10, __s1);
      }

      if (v19 > 0x4Au)
      {
        if (v19 == 77)
        {
          v11 = v18 << 20;
          goto LABEL_34;
        }

        if (v19 == 75)
        {
          v11 = v18 << 10;
          goto LABEL_34;
        }

        goto LABEL_60;
      }

      if (v19 != 66)
      {
        if (v19 == 71)
        {
          v11 = v18 << 30;
          goto LABEL_34;
        }

LABEL_60:
        rabit::utils::Error("invalid format for %s", v10, __s1);
      }
    }

LABEL_34:
    *(this + 30) = (v11 + 7) >> 3;
  }

  if (!strcmp(__s1, "DMLC_WORKER_CONNECT_RETRY"))
  {
    *(this + 70) = atoi(a3);
  }

  if (!strcmp(__s1, "rabit_bootstrap_cache"))
  {
    v12 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 284) = v12;
  }

  if (!strcmp(__s1, "rabit_debug"))
  {
    v13 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 285) = v13;
  }

  if (!strcmp(__s1, "rabit_timeout"))
  {
    v14 = !strcasecmp(a3, "true") || atoi(a3) != 0;
    *(this + 296) = v14;
  }

  if (!strcmp(__s1, "rabit_timeout_sec"))
  {
    v15 = atoi(a3);
    *(this + 36) = v15;
    rabit::utils::Assert((v15 >= 0), "rabit_timeout_sec should be non negative second", v16);
  }

  result = strcmp(__s1, "rabit_enable_tcp_no_delay");
  if (!result)
  {
    result = strcmp(a3, "true");
    *(this + 297) = result == 0;
  }

  return result;
}

rabit::utils::SockAddr *rabit::utils::SockAddr::SockAddr(rabit::utils::SockAddr *this, const char *a2, unsigned int a3)
{
  memset(&v13, 0, sizeof(v13));
  v13.ai_family = 2;
  v13.ai_protocol = 1;
  v12 = 0;
  if (getaddrinfo(a2, 0, &v13, &v12))
  {
    v7 = 1;
  }

  else
  {
    v7 = v12 == 0;
  }

  v8 = !v7;
  rabit::utils::Check(v8, "cannot obtain address of %s", v6, a2);
  rabit::utils::Check((v12->ai_family == 2), "Does not support IPv6", v9);
  v10 = v12;
  memcpy(this, v12->ai_addr, v12->ai_addrlen);
  *(this + 1) = bswap32(a3) >> 16;
  freeaddrinfo(v10);
  return this;
}

uint64_t *std::vector<rabit::engine::AllreduceBase::LinkRecord>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v10 = (v5 - *a1) >> 6;
    if ((v10 + 1) >> 58)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - *a1;
    v12 = v11 >> 5;
    if (v11 >> 5 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v32 = a1;
    if (v13)
    {
      if (!(v13 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = v10 << 6;
    v28 = 0;
    v29 = v14;
    v30 = v10 << 6;
    v31 = 0;
    v15 = a2[1];
    *v14 = *a2;
    *(v14 + 16) = v15;
    v16 = *(a2 + 5);
    *(v14 + 32) = *(a2 + 4);
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    v17 = *(a2 + 6);
    *(v14 + 40) = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(((v10 << 6) + 40), v16, v17, (v17 - v16) >> 3);
    v18 = v30;
    v19 = *a1;
    v20 = a1[1];
    v21 = v29 + *a1 - v20;
    if (v20 != *a1)
    {
      v22 = *a1;
      v23 = v29 + *a1 - v20;
      do
      {
        v24 = *(v22 + 16);
        v25 = *(v22 + 32);
        *v23 = *v22;
        *(v23 + 16) = v24;
        *(v23 + 32) = v25;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        *(v23 + 56) = 0;
        *(v23 + 40) = *(v22 + 40);
        *(v23 + 56) = *(v22 + 56);
        *(v22 + 40) = 0;
        *(v22 + 48) = 0;
        *(v22 + 56) = 0;
        v22 += 64;
        v23 += 64;
      }

      while (v22 != v20);
      do
      {
        v26 = *(v19 + 40);
        if (v26)
        {
          *(v19 + 48) = v26;
          operator delete(v26);
        }

        v19 += 64;
      }

      while (v19 != v20);
      v19 = *a1;
    }

    v9 = v18 + 64;
    *a1 = v21;
    a1[1] = v9;
    v27 = a1[2];
    a1[2] = v31;
    v30 = v19;
    v31 = v27;
    v28 = v19;
    v29 = v19;
    result = std::__split_buffer<rabit::engine::AllreduceBase::LinkRecord>::~__split_buffer(&v28);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v5 + 32) = *(a2 + 4);
    *v5 = v6;
    *(v5 + 16) = v7;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
    *(v5 + 40) = 0;
    result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((v5 + 40), *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
    v9 = v5 + 64;
    a1[1] = v9;
  }

  a1[1] = v9;
  return result;
}

void sub_274E16EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<rabit::engine::AllreduceBase::LinkRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::TryAllreduce(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  if (*(a1 + 256) >= a4)
  {
    return rabit::engine::AllreduceBase::TryAllreduceTree(a1, a2, a3, a4, a5);
  }

  else
  {
    return rabit::engine::AllreduceBase::TryAllreduceRing(a1, a2, a3, a4, a5);
  }
}

uint64_t rabit::engine::AllreduceBase::TryAllreduceRing(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  result = rabit::engine::AllreduceBase::TryReduceScatterRing(a1, a2, a3, a4, a5);
  if (!result)
  {
    v10 = (a4 + *(a1 + 276) - 1) / *(a1 + 276);
    v11 = v10 * *(a1 + 272);
    if (v11 >= a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = v10 * *(a1 + 272);
    }

    v13 = v10 + v11;
    if (v13 >= a4)
    {
      v13 = a4;
    }

    v14 = (v13 * a3);
    v15 = v10 * *(*(a1 + 88) + 4);
    v16 = v10 + v15;
    if (v16 >= a4)
    {
      v16 = a4;
    }

    if (v15 >= a4)
    {
      v15 = a4;
    }

    return rabit::engine::AllreduceBase::TryAllgatherRing(a1, a2, (a4 * a3), (v12 * a3), v14, (v16 - v15) * a3);
  }

  return result;
}

uint64_t rabit::engine::AllreduceBase::TryAllreduceTree(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  v5 = 0;
  if (!a4)
  {
    return v5;
  }

  v7 = *(a1 + 72) - *(a1 + 64);
  if (!v7)
  {
    return v5;
  }

  v8 = v7 >> 3;
  if ((v7 >> 3) <= 0)
  {
    v79 = 0u;
    v80 = 0u;
    v81 = 1065353216;
    goto LABEL_106;
  }

  v10 = 0;
  v11 = (a4 * a3);
  v72 = *(a1 + 264) / a3 * a3;
  v12 = (v7 >> 3) & 0x7FFFFFFF;
  do
  {
    v13 = *(a1 + 64);
    if (v10 != *(a1 + 20))
    {
      rabit::engine::AllreduceBase::LinkRecord::InitBuffer(*(v13 + 8 * v10), a3, a4, *(a1 + 240));
      v13 = *(a1 + 64);
    }

    v14 = *(v13 + 8 * v10);
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    ++v10;
  }

  while (v12 != v10);
  v15 = 0;
  v75 = 0;
  if (v8 == (*(a1 + 20) != -1))
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v79 = 0uLL;
  v80 = 0uLL;
  v81 = 1065353216;
LABEL_12:
  v17 = 0;
  v73 = v15;
  v19 = v15 != v11 && v15 < v16;
  v20 = 1;
  v21 = v72;
  do
  {
    while (1)
    {
      if (v17 == *(a1 + 20))
      {
        if (v11 != v75)
        {
          v82 = **(*(a1 + 64) + 8 * v17);
          v83 = &v82;
          v22 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82, &v83);
          *(v22 + 5) = v82;
          *(v22 + 12) |= 1u;
          v82 = **(*(a1 + 64) + 8 * v17);
          v83 = &v82;
          v23 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82, &v83);
          v20 = 0;
          *(v23 + 5) = v82;
          *(v23 + 12) |= 2u;
        }

        if (v19)
        {
          v82 = **(*(a1 + 64) + 8 * v17);
          v83 = &v82;
          v24 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82, &v83);
          *(v24 + 5) = v82;
          *(v24 + 12) |= 4u;
        }

        break;
      }

      v25 = *(*(a1 + 64) + 8 * v17);
      if (*(v25 + 8) != v11)
      {
        v82 = *v25;
        v83 = &v82;
        v26 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82, &v83);
        *(v26 + 5) = v82;
        *(v26 + 12) |= 1u;
        v25 = *(*(a1 + 64) + 8 * v17);
      }

      v27 = *(v25 + 16);
      if (v27 == v11)
      {
        break;
      }

      if (v27 < v75)
      {
        v82 = *v25;
        v83 = &v82;
        v28 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82, &v83);
        *(v28 + 5) = v82;
        *(v28 + 12) |= 4u;
        v25 = *(*(a1 + 64) + 8 * v17);
      }

      v82 = *v25;
      v83 = &v82;
      v29 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v79, v82, &v83);
      v20 = 0;
      *(v29 + 5) = v82;
      *(v29 + 12) |= 2u;
      if (++v17 == v12)
      {
        goto LABEL_34;
      }
    }

    ++v17;
  }

  while (v17 != v12);
  if (v20)
  {
LABEL_106:
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v79);
    return 0;
  }

LABEL_34:
  rabit::utils::PollHelper::Poll(&v79, *(a1 + 288));
  v31 = 0;
  do
  {
    if (v31 != *(a1 + 20))
    {
      v32 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v79, *(&v79 + 1), **(*(a1 + 64) + 8 * v31));
      if (v32)
      {
        if (v32[3])
        {
          while (1)
          {
            v33 = *(*(a1 + 64) + 8 * v31);
            v34 = *(v33 + 1);
            if (v34 >= v11 || v34 - v16 >= v72)
            {
              break;
            }

            v5 = rabit::engine::AllreduceBase::LinkRecord::ReadToRingBuffer(v33, v73, v11);
            if (v5)
            {
              goto LABEL_117;
            }
          }
        }
      }
    }

    ++v31;
  }

  while (v31 != v12);
  v36 = *(a1 + 20);
  if (v8 > (v36 != -1))
  {
    v37 = 0;
    v38 = 0;
    v39 = v11;
    do
    {
      if (v37 != *(a1 + 20))
      {
        v40 = *(*(a1 + 64) + 8 * v37);
        if (*(v40 + 8) < v39)
        {
          v39 = *(v40 + 8);
        }

        if (v38)
        {
          v41 = v38 == *(v40 + 32);
        }

        else
        {
          v41 = 1;
        }

        rabit::utils::Assert(v41, "buffer size inconsistent", v30);
        v38 = *(*(*(a1 + 64) + 8 * v37) + 32);
      }

      ++v37;
    }

    while (v12 != v37);
    rabit::utils::Assert((v38 != 0), "must assign buffer_size", v30);
    v43 = v39 / a3 * a3;
    if (v43 < v11)
    {
      v43 = v43 / v72 * v72;
    }

    v70 = v8;
    if (v16 < v43)
    {
      do
      {
        v44 = v43;
        v45 = v43 - v16;
        if (v45 >= v38 - v16 % v38)
        {
          v46 = v38 - v16 % v38;
        }

        else
        {
          v46 = v45;
        }

        rabit::utils::Assert((v46 % a3 == 0), "Allreduce: size check", v42);
        v47 = 0;
        do
        {
          if (v47 != *(a1 + 20))
          {
            v48 = *(*(*(a1 + 64) + 8 * v47) + 24);
            v83 = a3;
            a5(v48 + v16 % v38, a2 + v16, v46 / a3, &v83);
          }

          ++v47;
        }

        while (v12 != v47);
        v16 += v46;
        v43 = v44;
      }

      while (v16 < v44);
    }

    v36 = *(a1 + 20);
    v8 = v70;
    v21 = v72;
  }

  v49 = v16;
  v15 = v16;
  if (v36 == -1)
  {
    goto LABEL_96;
  }

  v15 = v73;
  if (v16 > v73)
  {
    v50 = send(**(*(a1 + 64) + 8 * v36), (a2 + v73), v16 - v73, 0);
    if (v50 == -1)
    {
      v51 = *__error();
      if (v51 && v51 != 35)
      {
        if (v51 == 54)
        {
          v5 = 1;
        }

        else
        {
          v5 = 3;
        }

        goto LABEL_115;
      }
    }

    else
    {
      v15 = (v50 + v73);
    }
  }

  v52 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v79, *(&v79 + 1), **(*(a1 + 64) + 8 * *(a1 + 20)));
  if (!v52 || (v52[3] & 1) == 0)
  {
    v49 = v75;
LABEL_96:
    v31 = 0;
    while (1)
    {
      if (v31 != *(a1 + 20))
      {
        v61 = *(*(a1 + 64) + 8 * v31);
        v62 = *(v61 + 16);
        if (v49 > v62)
        {
          v63 = send(*v61, (a2 + v62), &v49[-v62], 0);
          if (v63 == -1)
          {
            v64 = *__error();
            if (v64 && v64 != 35)
            {
              if (v64 == 54)
              {
                v5 = 1;
              }

              else
              {
                v5 = 3;
              }

              goto LABEL_117;
            }
          }

          else
          {
            *(v61 + 16) += v63;
          }
        }
      }

      if (v12 == ++v31)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v79);
        v79 = 0u;
        v80 = 0u;
        v75 = v49;
        v81 = 1065353216;
        goto LABEL_12;
      }
    }
  }

  v71 = v8;
  v53 = (v11 - v75);
  if (v11 <= v75)
  {
    v49 = v75;
    goto LABEL_95;
  }

  v74 = v15;
  if (v21 >= v53)
  {
    v54 = (v11 - v75);
  }

  else
  {
    v54 = v21;
  }

  if (!v54)
  {
LABEL_92:
    v15 = v74;
    v49 = v75;
LABEL_95:
    v8 = v71;
    goto LABEL_96;
  }

  v55 = 0;
  while (1)
  {
    v56 = recv(**(*(a1 + 64) + 8 * *(a1 + 20)), &v75[a2], v11 - v75, 0);
    v58 = v56;
    if (v56 != -1)
    {
      break;
    }

    v60 = *__error();
    if (v60 && v60 != 35)
    {
      if (v60 == 54)
      {
        v5 = 1;
      }

      else
      {
        v5 = 3;
      }

LABEL_115:
      v31 = *(a1 + 20);
      goto LABEL_117;
    }

LABEL_91:
    if (v55 >= v54)
    {
      goto LABEL_92;
    }
  }

  if (v56)
  {
    v75 += v56;
    rabit::utils::Assert((v75 <= v74), "Allreduce: boundary error", v57);
    v55 += v58;
    while (v55 > v54)
    {
      v59 = v53 - v54;
      if (v21 < v53 - v54)
      {
        v59 = v21;
      }

      v54 += v59;
    }

    goto LABEL_91;
  }

  v65 = *(*(a1 + 64) + 8 * *(a1 + 20));
  if (*v65 == -1)
  {
    v66 = __error();
    v67 = strerror(*v66);
    rabit::utils::Error("Socket %s Error:%s", v68, "Socket::Close double close the socket or close without create", v67);
  }

  close(*v65);
  *v65 = -1;
  v31 = *(a1 + 20);
  v5 = 2;
LABEL_117:
  *(a1 + 56) = *(*(a1 + 64) + 8 * v31);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v79);
  return v5;
}

void sub_274E17744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void rabit::engine::AllreduceBase::LinkRecord::InitBuffer(rabit::engine::AllreduceBase::LinkRecord *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a3 * a2 + 7;
  if (a4 >= v6 >> 3)
  {
    v7 = v6 >> 3;
  }

  else
  {
    v7 = a4;
  }

  std::vector<unsigned long>::resize(this + 5, v7);
  v8 = ((*(this + 6) - *(this + 5)) & 0xFFFFFFFFFFFFFFF8) / a2 * a2;
  *(this + 4) = v8;
  rabit::utils::Assert((v8 >= a2), "too large type_nbytes=%lu, buffer_size=%lu", v9, a2, v8);
  if (*(this + 6) == *(this + 5))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 5);
  }

  *(this + 3) = v10;
}

void rabit::utils::PollHelper::Poll(uint64_t *a1, int a2)
{
  v3 = a1[3];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pollfd>>(v3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (a1[2])
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pollfd>>(1uLL);
  }

  v4 = poll(0, 0, 1000 * a2);
  if (v4)
  {
    if (v4 < 0)
    {
      v7 = __error();
      v8 = strerror(*v7);
      rabit::utils::Error("Socket %s Error:%s", v9, "Poll", v8);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/rabit/src/rabit/internal/socket.h", 630);
    v6 = dmlc::LogMessageFatal::GetEntry(&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Poll timeout", 12);
    dmlc::LogMessageFatal::~LogMessageFatal(&v10);
  }
}

void sub_274E17BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a16);
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::LinkRecord::ReadToRingBuffer(rabit::engine::AllreduceBase::LinkRecord *this, uint64_t a2, const char *a3)
{
  rabit::utils::Assert((*(this + 3) != 0), "ReadToRingBuffer: buffer not allocated", a3);
  rabit::utils::Assert((*(this + 1) <= a3), "ReadToRingBuffer: max_size_read check", v6);
  v7 = *(this + 1) - a2;
  rabit::utils::Assert((v7 <= *(this + 4)), "Allreduce: boundary check", v8);
  v9 = *(this + 1);
  v10 = *(this + 4);
  v11 = v9 % v10;
  v12 = &a3[-v9];
  if (v12 >= v10 - v7)
  {
    v12 = (v10 - v7);
  }

  v13 = v10 - v11;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = recv(*this, (*(this + 3) + v11), v14, 0);
  if (v15 == -1)
  {
    v17 = __error();
    result = 0;
    v18 = *v17;
    if (v18 && v18 != 35)
    {
      if (v18 == 54)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v16 = v15;
    if (v15)
    {
      result = 0;
      *(this + 1) += v16;
    }

    else
    {
      if (*this == -1)
      {
        v19 = __error();
        v20 = strerror(*v19);
        rabit::utils::Error("Socket %s Error:%s", v21, "Socket::Close double close the socket or close without create", v20);
      }

      close(*this);
      *this = -1;
      return 2;
    }
  }

  return result;
}

uint64_t rabit::engine::AllreduceBase::TryBroadcast(rabit::engine::AllreduceBase *this, char *a2, const char *a3, int a4)
{
  v4 = 0;
  if (!a3 || *(this + 9) == *(this + 8))
  {
    return v4;
  }

  v7 = a4;
  rabit::utils::Check((*(this + 69) > a4), "Broadcast: root should be smaller than world size", a3);
  v8 = *(this + 9) - *(this + 8);
  if ((v8 >> 3) <= 0)
  {
    v51 = 0u;
    v52 = 0u;
    v53 = 1065353216;
    goto LABEL_60;
  }

  v9 = 0;
  v10 = (v8 >> 3) & 0x7FFFFFFF;
  do
  {
    v11 = *(*(this + 8) + 8 * v9);
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    ++v9;
  }

  while (v10 != v9);
  v12 = *(this + 68);
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  if (v12 == v7)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (v12 == v7)
  {
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 4294967294;
  }

  while (2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == 4294967294)
      {
        v54 = **(*(this + 8) + 8 * v15);
        v55 = &v54;
        v17 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54, &v55);
        *(v17 + 5) = v54;
        *(v17 + 12) |= 1u;
        if (v15 == 4294967294)
        {
          v16 = 0;
          v18 = *(this + 8);
LABEL_17:
          v19 = *(v18 + 8 * v14);
          if (*(v19 + 8) == a3)
          {
            goto LABEL_24;
          }

          v54 = *v19;
          v55 = &v54;
          v20 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54, &v55);
          v16 = 0;
          *(v20 + 5) = v54;
          v21 = *(v20 + 12) | 1;
LABEL_22:
          *(v20 + 12) = v21;
          goto LABEL_24;
        }
      }

      else
      {
        v18 = *(this + 8);
        if (v14 == v15)
        {
          goto LABEL_17;
        }

        v22 = *(v18 + 8 * v15);
        v23 = *(v22 + 16);
        if (v23 == a3)
        {
          goto LABEL_24;
        }

        if (v23 < v13)
        {
          v54 = *v22;
          v55 = &v54;
          v20 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54, &v55);
          v16 = 0;
          *(v20 + 5) = v54;
          v21 = *(v20 + 12) | 4;
          goto LABEL_22;
        }
      }

      v16 = 0;
LABEL_24:
      v54 = **(*(this + 8) + 8 * v15);
      v55 = &v54;
      v24 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v51, v54, &v55);
      *(v24 + 5) = v54;
      *(v24 + 12) |= 2u;
      ++v15;
    }

    while (v10 != v15);
    if (v16)
    {
LABEL_60:
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v51);
      return 0;
    }

    rabit::utils::PollHelper::Poll(&v51, *(this + 36));
    if (v14 == 4294967294)
    {
      v14 = 0;
      v25 = *(this + 8);
      while (1)
      {
        v26 = *(v25 + 8 * v14);
        v27 = *v26;
        v28 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v51, *(&v51 + 1), *v26);
        if (v28 && (v28[3] & 1) != 0)
        {
          v29 = *(v26 + 8);
          if (a3 != v29)
          {
            v30 = recv(v27, &v29[a2], a3 - v29, 0);
            if (v30 == -1)
            {
              v31 = *__error();
              if (v31 && v31 != 35)
              {
                if (v31 == 54)
                {
                  v4 = 1;
                }

                else
                {
                  v4 = 3;
                }

                goto LABEL_71;
              }
            }

            else
            {
              if (!v30)
              {
                v42 = *v26;
                if (*v26 == -1)
                {
                  v43 = __error();
                  v44 = strerror(*v43);
                  rabit::utils::Error("Socket %s Error:%s", v45, "Socket::Close double close the socket or close without create", v44);
                }

LABEL_66:
                close(v42);
                *v26 = -1;
                v4 = 2;
                goto LABEL_71;
              }

              *(v26 + 8) += v30;
            }
          }

          v25 = *(this + 8);
          v13 = *(*(v25 + 8 * v14) + 8);
          if (v13)
          {
            v14 = v14;
            goto LABEL_50;
          }
        }

        if (v10 == ++v14)
        {
          v14 = 4294967294;
          goto LABEL_50;
        }
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      v26 = *(*(this + 8) + 8 * v14);
      v32 = *v26;
      v33 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(v51, *(&v51 + 1), *v26);
      if (v33)
      {
        if (v33[3])
        {
          v34 = *(v26 + 8);
          if (a3 != v34)
          {
            v35 = recv(v32, &v34[a2], a3 - v34, 0);
            if (v35 == -1)
            {
              v36 = *__error();
              if (v36 && v36 != 35)
              {
                if (v36 == 54)
                {
                  v4 = 1;
                }

                else
                {
                  v4 = 3;
                }

                goto LABEL_71;
              }
            }

            else
            {
              if (!v35)
              {
                v42 = *v26;
                if (*v26 == -1)
                {
                  v47 = __error();
                  v48 = strerror(*v47);
                  rabit::utils::Error("Socket %s Error:%s", v49, "Socket::Close double close the socket or close without create", v48);
                }

                goto LABEL_66;
              }

              *(v26 + 8) += v35;
            }
          }

          v13 = *(*(*(this + 8) + 8 * v14) + 8);
        }
      }
    }

LABEL_50:
    v37 = 0;
LABEL_51:
    if (v14 == v37)
    {
      goto LABEL_57;
    }

    v38 = *(*(this + 8) + 8 * v37);
    v39 = *(v38 + 16);
    if (v13 <= v39)
    {
      goto LABEL_57;
    }

    v40 = send(*v38, &a2[v39], &v13[-v39], 0);
    if (v40 != -1)
    {
      *(v38 + 16) += v40;
      goto LABEL_57;
    }

    v41 = *__error();
    if (!v41 || v41 == 35)
    {
LABEL_57:
      if (v10 == ++v37)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v51);
        v51 = 0u;
        v52 = 0u;
        v53 = 1065353216;
        continue;
      }

      goto LABEL_51;
    }

    break;
  }

  if (v41 == 54)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v14 = v37;
LABEL_71:
  *(this + 7) = *(*(this + 8) + 8 * v14);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v51);
  return v4;
}

void sub_274E18244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::TryAllgatherRing(rabit::engine::AllreduceBase *this, void *a2, const char *a3, const char *a4, const char *a5, uint64_t a6)
{
  v11 = *(this + 12);
  v12 = *(this + 68);
  v13 = *(this + 69);
  v33 = *(this + 11);
  if (v11[1] == (v12 + 1) % v13)
  {
    v14 = (v12 == (*(*(this + 11) + 4) + 1) % v13);
  }

  else
  {
    v14 = 0;
  }

  rabit::utils::Assert(v14, "need to assume rank structure", a3, a2);
  v15 = &a3[a4];
  v16 = &a3[a4 - a6];
  while (1)
  {
    v17 = a5;
    memset(v34, 0, sizeof(v34));
    v35 = 1065353216;
    if (v15 == a5)
    {
      if (a4 == v16)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
        return 0;
      }
    }

    else
    {
      v36 = *v11;
      v37 = &v36;
      v18 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v34, v36, &v37);
      *(v18 + 5) = v36;
      *(v18 + 12) |= 1u;
      if (a4 == v16)
      {
        v19 = 1;
        goto LABEL_13;
      }
    }

    if (a4 >= a5)
    {
      v19 = 0;
    }

    else
    {
      v36 = *v33;
      v37 = &v36;
      v20 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v34, v36, &v37);
      v19 = 0;
      *(v20 + 5) = v36;
      *(v20 + 12) |= 4u;
    }

LABEL_13:
    rabit::utils::PollHelper::Poll(v34, *(this + 36));
    a5 = v15;
    if (v15 != v17)
    {
      v21 = *v11;
      v22 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(*&v34[0], *(&v34[0] + 1), *v11);
      if (v22 && (v22[3] & 1) != 0)
      {
        if (&v15[-(v17 / a3 * a3)] <= a3)
        {
          v23 = (v15 - v17);
        }

        else
        {
          v23 = &a3[-(v17 % a3)];
        }

        v24 = recv(v21, (v32 + v17 % a3), v23, 0);
        if (v24 != -1)
        {
          a5 = &v17[v24];
          goto LABEL_24;
        }

        v25 = *__error();
        if (v25)
        {
          a5 = v17;
          if (v25 != 35)
          {
            goto LABEL_40;
          }

          goto LABEL_24;
        }
      }

      a5 = v17;
    }

LABEL_24:
    v26 = a4 >= a5 ? 1 : v19;
    if ((v26 & 1) == 0)
    {
      if (v16 >= a5)
      {
        v27 = a5;
      }

      else
      {
        v27 = v16;
      }

      if (&v27[-(a4 / a3 * a3)] <= a3)
      {
        v28 = (v27 - a4);
      }

      else
      {
        v28 = &a3[-(a4 % a3)];
      }

      v29 = send(*v33, (v32 + a4 % a3), v28, 0);
      if (v29 != -1)
      {
        a4 += v29;
        goto LABEL_38;
      }

      v25 = *__error();
      if (v25)
      {
        if (v25 != 35)
        {
          break;
        }
      }
    }

LABEL_38:
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
  }

  v11 = v33;
LABEL_40:
  v30 = 3;
  if (v25 == 54)
  {
    v30 = 1;
  }

  *(this + 7) = v11;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v34);
  return v30;
}

void sub_274E18514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::AllreduceBase::TryReduceScatterRing(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **))
{
  v7 = a1;
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = *(a1 + 272);
  v11 = *(a1 + 276);
  if (*(v8 + 4) == (v10 + 1) % v11)
  {
    v12 = (v10 == (v9[1] + 1) % v11);
  }

  else
  {
    v12 = 0;
  }

  rabit::utils::Assert(v12, "need to assume rank structure", a3);
  v14 = a4 * a3;
  v15 = (a4 + *(v7 + 276) - 1) / *(v7 + 276);
  v16 = v15 * *(v8 + 4);
  if (v16 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v15 * *(v8 + 4);
  }

  v18 = v17 * a3;
  v19 = v15 + v16;
  if (v19 >= a4)
  {
    v19 = a4;
  }

  v20 = v19 * a3;
  v21 = v15 * *(v7 + 272);
  if (v21 >= a4)
  {
    v21 = a4;
  }

  v22 = v21 * a3;
  v44 = (v18 + v14);
  v45 = v21 * a3 + v14;
  if (v45 > v18 + v14)
  {
    rabit::utils::Assert((v18 <= v22), "write ptr boundary check", v13);
    v45 = v22;
  }

  rabit::engine::AllreduceBase::LinkRecord::InitBuffer(v8, a3, v15, *(v7 + 240));
  *(v8 + 8) = v20;
  v23 = v20;
  v24 = (v18 + v14);
  v42 = v9;
  v43 = v7;
  while (1)
  {
    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    if (v23 == v24)
    {
      if (v18 == v45)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v48);
        return 0;
      }

LABEL_19:
      if (v18 >= v20)
      {
        v26 = 0;
      }

      else
      {
        v50 = *v9;
        v51 = &v50;
        v27 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v48, v50, &v51);
        v26 = 0;
        *(v27 + 5) = v50;
        *(v27 + 12) |= 4u;
      }

      goto LABEL_22;
    }

    v50 = *v8;
    v51 = &v50;
    v25 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v48, v50, &v51);
    *(v25 + 5) = v50;
    *(v25 + 12) |= 1u;
    if (v18 != v45)
    {
      goto LABEL_19;
    }

    v26 = 1;
LABEL_22:
    rabit::utils::PollHelper::Poll(v48, *(v7 + 288));
    if (v23 == v24)
    {
      v23 = v24;
    }

    else
    {
      v28 = std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(*&v48[0], *(&v48[0] + 1), *v8);
      if (v28 && (v28[3] & 1) != 0)
      {
        v40 = rabit::engine::AllreduceBase::LinkRecord::ReadToRingBuffer(v8, v20, v24);
        if (v40)
        {
          v9 = v8;
          goto LABEL_55;
        }

        v23 = *(v8 + 8);
        rabit::utils::Assert((v23 <= v24), "[%d] read_ptr boundary check", v29, *(v7 + 272));
        v30 = v23 / a3 * a3;
        if (v20 < v30)
        {
          v31 = *(v8 + 32);
          do
          {
            v32 = v31 - v20 % v31;
            if (v30 - v20 < v32)
            {
              v32 = v30 - v20;
            }

            if (v14 - v20 % v14 >= v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = v14 - v20 % v14;
            }

            v34 = *(v8 + 24);
            v51 = a3;
            a5(v34 + v20 % v31, a2 + v20 % v14, v33 / a3, &v51);
            v20 += v33;
          }

          while (v20 < v30);
          v9 = v42;
          v7 = v43;
        }

        v24 = v44;
      }
    }

    v35 = v18 >= v20 ? 1 : v26;
    if ((v35 & 1) == 0)
    {
      v36 = v45;
      if (v45 >= v20)
      {
        v36 = v20;
      }

      if (v36 - v18 / v14 * v14 <= v14)
      {
        v37 = v36 - v18;
      }

      else
      {
        v37 = v14 - v18 % v14;
      }

      v38 = send(*v9, (a2 + v18 % v14), v37, 0);
      if (v38 != -1)
      {
        v18 += v38;
        goto LABEL_50;
      }

      v39 = *__error();
      if (v39)
      {
        if (v39 != 35)
        {
          break;
        }
      }
    }

LABEL_50:
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v48);
  }

  if (v39 == 54)
  {
    v40 = 1;
  }

  else
  {
    v40 = 3;
  }

LABEL_55:
  *(v7 + 56) = v9;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v48);
  return v40;
}

void sub_274E188C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void rabit::engine::AllreduceBase::Allgather(rabit::engine::AllreduceBase *this, void *a2, const char *a3, const char *a4, const char *a5, uint64_t a6)
{
  v7 = *(this + 69);
  if (v7 != -1 && v7 != 1)
  {
    v9 = rabit::engine::AllreduceBase::TryAllgatherRing(this, a2, a3, a4, a5, a6) == 0;

    rabit::utils::Assert(v9, "AllgatherRing failed", v10);
  }
}

void rabit::engine::AllreduceBase::Allreduce(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void (*a5)(unint64_t, unint64_t, unint64_t, int **), void (*a6)(uint64_t), uint64_t a7)
{
  if (a6)
  {
    a6(a7);
  }

  v12 = *(a1 + 276);
  if (v12 != -1 && v12 != 1)
  {
    v14 = rabit::engine::AllreduceBase::TryAllreduce(a1, a2, a3, a4, a5) == 0;

    rabit::utils::Assert(v14, "Allreduce failed", v15);
  }
}

void rabit::engine::AllreduceBase::Broadcast(rabit::engine::AllreduceBase *this, char *a2, const char *a3, int a4)
{
  v5 = *(this + 69);
  if (v5 != -1 && v5 != 1)
  {
    v7 = rabit::engine::AllreduceBase::TryBroadcast(this, a2, a3, a4) == 0;

    rabit::utils::Assert(v7, "Broadcast failed", v8);
  }
}

uint64_t rabit::engine::AllreduceBase::GetWorldSize(rabit::engine::AllreduceBase *this)
{
  v1 = *(this + 69);
  if (v1 == -1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

BOOL rabit::engine::AllreduceBase::IsDistributed(rabit::engine::AllreduceBase *this)
{
  v1 = (this + 176);
  v2 = *(this + 199);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 != 4)
    {
      return 1;
    }

    return *v1 != 1280070990;
  }

  if (*(this + 23) == 4)
  {
    v1 = *v1;
    return *v1 != 1280070990;
  }

  return 1;
}

void rabit::engine::AllreduceBase::GetHost(rabit::engine::AllreduceBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 175) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 19), *(this + 20));
  }

  else
  {
    *a2 = *(this + 152);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pollfd>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<int,pollfd>,std::__unordered_map_hasher<int,std::__hash_value_type<int,pollfd>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,pollfd>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,pollfd>>>::find<int>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(*a1);
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__split_buffer<rabit::engine::AllreduceBase::LinkRecord>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *dmlc::io::FileSystem::GetInstance(dmlc::io::FileSystem *this, const dmlc::io::URI *a2)
{
  v3 = *(this + 23);
  if (*(this + 23) < 0)
  {
    v5 = *(this + 1);
    if (v5)
    {
      if (v5 != 7)
      {
        if (v5 != 9)
        {
LABEL_44:
          if (v5 == 5)
          {
            if (**this == 792343411 && *(*this + 4) == 47)
            {
              goto LABEL_69;
            }

            v5 = *(this + 1);
          }

          if (v5 == 8)
          {
            v9 = *this;
            goto LABEL_68;
          }

          if (v5 != 7)
          {
            goto LABEL_73;
          }

LABEL_52:
          if (**this != 1886680168 || *(*this + 3) != 791624304)
          {
            goto LABEL_73;
          }

          goto LABEL_69;
        }

        v4 = *this;
LABEL_10:
        v6 = *v4;
        v7 = *(v4 + 8);
        if (v6 != 0x2F3A736677656976 || v7 != 47)
        {
          if ((v3 & 0x80) == 0)
          {
LABEL_15:
            if (v3 != 5)
            {
              if (v3 != 7)
              {
                v9 = this;
                if (v3 != 8)
                {
LABEL_71:
                  v26 = this;
                  if (v3 == 8)
                  {
LABEL_75:
                    if (*v26 == 0x2F2F3A6572757A61)
                    {
                      Entry = dmlc::LogMessageFatal::GetEntry(__p);
                      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 65);
                      v28 = dmlc::LogMessageFatal::GetEntry(__p);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Please compile with DMLC_USE_AZURE=1 to use Azure", 49);
                      dmlc::LogMessageFatal::~LogMessageFatal(__p);
                    }

                    goto LABEL_77;
                  }

                  goto LABEL_77;
                }

LABEL_68:
                if (*v9 != 0x2F2F3A7370747468)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              goto LABEL_27;
            }

            if (*this != 792343411 || *(this + 4) != 47)
            {
              goto LABEL_77;
            }

LABEL_69:
            v24 = dmlc::LogMessageFatal::GetEntry(__p);
            dmlc::LogMessageFatal::Entry::Init(v24, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 57);
            v25 = dmlc::LogMessageFatal::GetEntry(__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Please compile with DMLC_USE_S3=1 to use S3", 43);
            dmlc::LogMessageFatal::~LogMessageFatal(__p);
            v3 = *(this + 23);
LABEL_70:
            if ((v3 & 0x80) == 0)
            {
              goto LABEL_71;
            }

LABEL_73:
            if (*(this + 1) == 8)
            {
              v26 = *this;
              goto LABEL_75;
            }

LABEL_77:
            v29 = dmlc::LogMessageFatal::GetEntry(&v36);
            dmlc::LogMessageFatal::Entry::Init(v29, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 69);
            v30 = dmlc::LogMessageFatal::GetEntry(&v36);
            std::operator+<char>();
            if ((v35 & 0x80u) == 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = __p[0];
            }

            if ((v35 & 0x80u) == 0)
            {
              v32 = v35;
            }

            else
            {
              v32 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
            if (v35 < 0)
            {
              operator delete(__p[0]);
            }

            dmlc::LogMessageFatal::~LogMessageFatal(&v36);
            return 0;
          }

          goto LABEL_43;
        }

LABEL_42:
        v18 = dmlc::LogMessageFatal::GetEntry(__p);
        dmlc::LogMessageFatal::Entry::Init(v18, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 50);
        v19 = dmlc::LogMessageFatal::GetEntry(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Please compile with DMLC_USE_HDFS=1 to use hdfs", 47);
        dmlc::LogMessageFatal::~LogMessageFatal(__p);
        v3 = *(this + 23);
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_15;
        }

LABEL_43:
        v5 = *(this + 1);
        goto LABEL_44;
      }

      v13 = *this;
      if (**this != 1701603686 || *(*this + 3) != 791624293)
      {
        v15 = *v13;
        v16 = *(v13 + 3);
        if (v15 != 1936090216 || v16 != 791624307)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }
    }
  }

  else if (*(this + 23))
  {
    if (v3 != 7)
    {
      v4 = this;
      if (v3 != 9)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (*this != 1701603686 || *(this + 3) != 791624293)
    {
      if (*this != 1936090216 || *(this + 3) != 791624307)
      {
LABEL_27:
        if (*this != 1886680168 || *(this + 3) != 791624304)
        {
          goto LABEL_77;
        }

        goto LABEL_69;
      }

      goto LABEL_42;
    }
  }

  v22 = &_MergedGlobals_22;
  if ((atomic_load_explicit(algn_280AF71C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(algn_280AF71C8))
  {
    _MergedGlobals_22 = &unk_2883E12E0;
    __cxa_atexit(dmlc::io::LocalFileSystem::~LocalFileSystem, &_MergedGlobals_22, &dword_274CA4000);
    __cxa_guard_release(algn_280AF71C8);
  }

  return v22;
}

void dmlc::InputSplit::Create(dmlc::InputSplit *this, char *a2, const char *a3, uint64_t a4, const char *a5, const char *a6, int a7, uint64_t a8, BOOL a9, BOOL a10)
{
  v35 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, this);
  dmlc::io::URISpec::URISpec(&v30, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v15 = v30.__r_.__value_.__r.__words[0];
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v30;
  }

  else
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if (strcmp(v16, "stdin"))
  {
    if (a3 >= a4)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 97);
      v18 = dmlc::LogMessageFatal::GetEntry(&__p);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Check failed: part < nsplit", 27);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "invalid input parameter for InputSplit::Create", 46);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      v14 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      v15 = v30.__r_.__value_.__r.__words[0];
    }

    if (v14 >= 0)
    {
      v21 = &v30;
    }

    else
    {
      v21 = v15;
    }

    dmlc::io::URI::URI(&__p, v21);
    if (strcmp(a5, "text"))
    {
      if (!strcmp(a5, "indexed_recordio"))
      {
        if (a2)
        {
          std::string::basic_string[abi:ne200100]<0>(&v34, a2);
          dmlc::io::URISpec::URISpec(&v33, &v34, a3, a4);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          operator new();
        }

        v26 = dmlc::LogMessageFatal::GetEntry(&v33);
        dmlc::LogMessageFatal::Entry::Init(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 110);
        v27 = dmlc::LogMessageFatal::GetEntry(&v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "need to pass index file to use IndexedRecordIO", 46);
        dmlc::LogMessageFatal::~LogMessageFatal(&v33);
      }

      else
      {
        if (!strcmp(a5, "recordio"))
        {
          operator new();
        }

        v22 = dmlc::LogMessageFatal::GetEntry(&v33);
        dmlc::LogMessageFatal::Entry::Init(v22, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io.cc", 117);
        v23 = dmlc::LogMessageFatal::GetEntry(&v33);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "unknown input split type ", 25);
        v25 = strlen(a5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, a5, v25);
        dmlc::LogMessageFatal::~LogMessageFatal(&v33);
      }

      v28 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v28 = v31;
      }

      if (v28)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_274E1A080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  v32 = *(v28 + 27);
  if (v32)
  {
    *(v28 + 28) = v32;
    operator delete(v32);
  }

  v33 = *v29;
  if (*v29)
  {
    *(v28 + 25) = v33;
    operator delete(v33);
  }

  dmlc::io::InputSplitBase::~InputSplitBase(v28);
  MEMORY[0x277C69180](v28, 0x10B3C408F76FF71);
  dmlc::io::URISpec::~URISpec(&a28);
  dmlc::io::FileInfo::~FileInfo(&a10);
  dmlc::io::URISpec::~URISpec(&a19);
  _Unwind_Resume(a1);
}

void sub_274E1A2A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274E1A29CLL);
}

void sub_274E1A2C4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E1A294);
}

uint64_t dmlc::Stream::Create(dmlc::Stream *this, const char *a2, const char *a3)
{
  dmlc::io::URI::URI(v9, this);
  Instance = dmlc::io::FileSystem::GetInstance(v9, v5);
  v7 = (*(*Instance + 40))(Instance, v9, a2, a3);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v7;
}

void sub_274E1A38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::io::FileInfo::~FileInfo(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::SeekStream::CreateForRead(dmlc::SeekStream *this, const char *a2)
{
  dmlc::io::URI::URI(v7, this);
  Instance = dmlc::io::FileSystem::GetInstance(v7, v3);
  v5 = (*(*Instance + 48))(Instance, v7, a2);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v5;
}

void sub_274E1A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  dmlc::io::FileInfo::~FileInfo(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::SingleFileSplit::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = *(this + 72);
  if (v2 <= a2)
  {
    v2 = a2;
  }

  *(this + 72) = v2;
  return this;
}

off_t dmlc::io::SingleFileSplit::GetTotalSize(FILE **this)
{
  v1 = fileno(this[1]);
  fstat(v1, &v3);
  return v3.st_size;
}

BOOL dmlc::io::SingleFileSplit::NextRecord(std::string *this, unsigned __int8 **a2)
{
  size = this[3].__r_.__value_.__l.__size_;
  v5 = this[3].__r_.__value_.__r.__words[2];
  if (size == v5)
  {
    result = dmlc::io::SingleFileSplit::LoadChunk(this);
    if (!result)
    {
      return result;
    }

    size = this[3].__r_.__value_.__l.__size_;
    v5 = this[3].__r_.__value_.__r.__words[2];
  }

  v7 = size;
  if (size == v5)
  {
    goto LABEL_18;
  }

  v7 = size;
  while (1)
  {
    v8 = *v7;
    if (v8 == 10 || v8 == 13)
    {
      break;
    }

    if (++v7 == v5)
    {
      v7 = v5;
      break;
    }
  }

LABEL_18:
  while (v7 != v5)
  {
    v10 = *v7;
    if (v10 != 13 && v10 != 10)
    {
      goto LABEL_20;
    }

    ++v7;
  }

  v7 = v5;
LABEL_20:
  *a2 = size;
  a2[1] = (v7 - size);
  this[3].__r_.__value_.__l.__size_ = v7;
  return 1;
}

BOOL dmlc::io::SingleFileSplit::NextChunk(std::string *this, std::string::size_type *a2)
{
  size = this[3].__r_.__value_.__l.__size_;
  v4 = this[3].__r_.__value_.__r.__words[2];
  if (size == v4)
  {
    result = dmlc::io::SingleFileSplit::LoadChunk(this);
    if (!result)
    {
      return result;
    }

    size = this[3].__r_.__value_.__l.__size_;
    v4 = this[3].__r_.__value_.__r.__words[2];
  }

  *a2 = size;
  a2[1] = v4 - size;
  this[3].__r_.__value_.__l.__size_ = v4;
  return 1;
}

void dmlc::io::SingleFileSplit::~SingleFileSplit(dmlc::io::SingleFileSplit *this)
{
  dmlc::io::SingleFileSplit::~SingleFileSplit(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E7C08;
  if ((*(this + 16) & 1) == 0)
  {
    fclose(*(this + 1));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t dmlc::io::SingleFileSplit::ResetPartition(dmlc::io::SingleFileSplit *this, int a2, int a3)
{
  if (a2 || a3 != 1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/single_file_split.h", 70);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: part_index == 0 && num_parts == 1", 47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  return (*(*this + 16))(this);
}

void dmlc::io::SingleFileSplit::Write(dmlc::io::SingleFileSplit *this, const void *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/single_file_split.h", 74);
  v3 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "InputSplit do not support write", 31);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
}

BOOL dmlc::io::SingleFileSplit::LoadChunk(std::string *this)
{
  v2 = this + 2;
  size = SHIBYTE(this[2].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this[2].__r_.__value_.__l.__size_;
  }

  data = this[3].__r_.__value_.__l.__data_;
  if (size < data)
  {
    std::string::resize(this + 2, data, 0);
  }

  v5 = &this[1];
  while (1)
  {
    v6 = SHIBYTE(this[2].__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v8 = this[2].__r_.__value_.__l.__size_;
      v7 = v8 ? this[2].__r_.__value_.__r.__words[0] : 0;
    }

    else
    {
      v7 = *(&this[2].__r_.__value_.__s + 23) ? v2 : 0;
      v8 = SHIBYTE(this[2].__r_.__value_.__r.__words[2]);
    }

    v9 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = this[1].__r_.__value_.__l.__size_;
      if (v8 <= v9)
      {
        goto LABEL_44;
      }

      if (!v9)
      {
LABEL_23:
        v11 = 0;
        goto LABEL_25;
      }

      v10 = *v5;
    }

    else
    {
      if (v8 <= v9)
      {
        goto LABEL_44;
      }

      v10 = this + 1;
      if (!*(&this[1].__r_.__value_.__s + 23))
      {
        goto LABEL_23;
      }
    }

    memcpy(v7, v10, v9);
    v11 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]) < 0 ? this[1].__r_.__value_.__l.__size_ : HIBYTE(this[1].__r_.__value_.__r.__words[2]);
LABEL_25:
    std::string::resize(this + 1, 0, 0);
    v12 = (*(this->__r_.__value_.__r.__words[0] + 72))(this, v7 + v11, v8 - v11);
    v13 = v12 + v11;
    if (!(v12 + v11))
    {
      return v13 != 0;
    }

    if (v13 != v8)
    {
      break;
    }

    v14 = v8;
    while (1)
    {
      v15 = v14 - 1;
      if (v14 == 1)
      {
        break;
      }

      v16 = v7->__r_.__value_.__s.__data_[v14 - 1];
      v17 = v16 == 13 || v16 == 10;
      v14 = v15;
      if (v17)
      {
        v18 = (&v7->__r_.__value_.__l.__data_ + v15 + 1);
        goto LABEL_36;
      }
    }

    v18 = v7;
LABEL_36:
    v19 = v18 - v7;
    std::string::resize(this + 1, v8 - v19, 0);
    v20 = SHIBYTE(this[1].__r_.__value_.__r.__words[2]);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v20 = this[1].__r_.__value_.__l.__size_;
      if (v20)
      {
        v21 = *v5;
        goto LABEL_41;
      }
    }

    else if (*(&this[1].__r_.__value_.__s + 23))
    {
      v21 = this + 1;
LABEL_41:
      memcpy(v21, v18, v20);
    }

    if (v19)
    {
      goto LABEL_49;
    }

    LOBYTE(v6) = *(&this[2].__r_.__value_.__s + 23);
LABEL_44:
    if ((v6 & 0x80) != 0)
    {
      v6 = this[2].__r_.__value_.__l.__size_;
    }

    else
    {
      v6 = v6;
    }

    std::string::resize(v2, 2 * v6, 0);
  }

  v19 = v12 + v11;
LABEL_49:
  if (SHIBYTE(this[2].__r_.__value_.__r.__words[2]) < 0)
  {
    if (this[2].__r_.__value_.__l.__size_)
    {
      v22 = this[2].__r_.__value_.__l.__data_;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (*(&this[2].__r_.__value_.__s + 23))
  {
    v22 = v2;
  }

  else
  {
    v22 = 0;
  }

  this[3].__r_.__value_.__l.__size_ = v22;
  this[3].__r_.__value_.__r.__words[2] = &v22[v19];
  return v13 != 0;
}

dmlc::io::InputSplitBase *dmlc::io::InputSplitBase::InputSplitBase(dmlc::io::InputSplitBase *this)
{
  *this = &unk_2883E6680;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 4) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 5) = 0u;
  std::vector<unsigned int>::vector[abi:ne200100](this + 16, 0x200001uLL);
  *(this + 152) = xmmword_274E27DF0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  return this;
}

void sub_274E1AA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v4;
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = *v5;
  if (*v5)
  {
    *(v3 + 24) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, (a1 + 24));
  atomic_store(0, (a1 + 28));
  atomic_store(0, (a1 + 40));
  std::mutex::lock((a1 + 120));
  v6.__ptr_ = 0;
  std::exception_ptr::operator=((a1 + 392), &v6);
  std::exception_ptr::~exception_ptr(&v6);
  std::mutex::unlock((a1 + 120));
  v6.__ptr_ = a1;
  std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__value_func[abi:ne200100](&v7, a2);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a3);
  operator new();
}

void sub_274E1AC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::thread a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  std::thread::~thread(&a10);
  MEMORY[0x277C69180](v15, 0xA1C40BD48D6D6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16 + 40);
  std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100](v16 + 8);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::ThreadedInputSplit::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = a2 >> 2;
  if (a2 >> 2 <= *(this + 8))
  {
    v2 = *(this + 8);
  }

  *(this + 8) = v2;
  return this;
}

void dmlc::io::ThreadedInputSplit::BeforeFirst(dmlc::io::ThreadedInputSplit *this)
{
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::BeforeFirst(this + 32);
  if (*(this + 54))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 32);
    std::mutex::lock((this + 88));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(this + 47, this + 54);
    *(this + 54) = 0;
    if (*(this + 55))
    {
      explicit = atomic_load_explicit(this + 72, memory_order_acquire);
      std::mutex::unlock((this + 88));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((this + 224));
      }
    }

    else
    {
      std::mutex::unlock((this + 88));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 32);
  }
}

uint64_t dmlc::io::ThreadedInputSplit::NextRecord(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 432))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432));
    if (!v4)
    {
      return 0;
    }
  }

  do
  {
    v5 = (*(**(a1 + 24) + 80))(*(a1 + 24), a2, *(a1 + 432));
    if (v5)
    {
      break;
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
    std::mutex::lock((a1 + 88));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 376), (a1 + 432));
    *(a1 + 432) = 0;
    if (*(a1 + 220))
    {
      explicit = atomic_load_explicit((a1 + 72), memory_order_acquire);
      std::mutex::unlock((a1 + 88));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 224));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 88));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432));
  }

  while ((v7 & 1) != 0);
  return v5;
}

void dmlc::io::ThreadedInputSplit::NextChunk(uint64_t a1, void *a2)
{
  if (*(a1 + 432) || (dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432)), v4))
  {
    while (1)
    {
      v5 = *(a1 + 432);
      v7 = *v5;
      v6 = v5[1];
      if (*v5 != v6)
      {
        break;
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
      std::mutex::lock((a1 + 88));
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 376), (a1 + 432));
      *(a1 + 432) = 0;
      if (*(a1 + 220))
      {
        explicit = atomic_load_explicit((a1 + 72), memory_order_acquire);
        std::mutex::unlock((a1 + 88));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((a1 + 224));
        }
      }

      else
      {
        std::mutex::unlock((a1 + 88));
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1 + 32);
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1 + 32, (a1 + 432));
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    *a2 = v7;
    a2[1] = v6 - v7;
    *v5 = v6;
  }
}

void dmlc::io::ThreadedInputSplit::~ThreadedInputSplit(dmlc::io::ThreadedInputSplit *this)
{
  dmlc::io::ThreadedInputSplit::~ThreadedInputSplit(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E7C88;
  v2 = this + 32;
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(this + 32);
  v3 = *(this + 54);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      *(v3 + 24) = v4;
      operator delete(v4);
    }

    MEMORY[0x277C69180](v3, 0x10C40512A2CE0);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 56))(v5);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(v2);
}

uint64_t dmlc::io::ThreadedInputSplit::ResetPartition(dmlc::io::ThreadedInputSplit *this)
{
  (*(**(this + 3) + 64))(*(this + 3));
  v2 = *(*this + 16);

  return v2(this);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::BeforeFirst(uint64_t a1)
{
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
  __lk.__m_ = (a1 + 56);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*(a1 + 288))
  {
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
  }

  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    atomic_store(1u, (a1 + 24));
    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 217);
      v3 = dmlc::LogMessageFatal::GetEntry(&v10);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    if (atomic_load_explicit((a1 + 28), memory_order_acquire))
    {
      v5 = dmlc::LogMessageFatal::GetEntry(&v10);
      dmlc::LogMessageFatal::Entry::Init(v5, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 221);
      v6 = dmlc::LogMessageFatal::GetEntry(&v10);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: !producer_sig_processed_.load(std::memory_order_acquire)", 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v10);
    }

    while ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 1) == 0)
    {
      std::condition_variable::wait((a1 + 240), &__lk);
    }

    atomic_store(0, (a1 + 28));
    if (*(a1 + 188))
    {
      v8 = atomic_load((a1 + 40));
      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    if (!__lk.__owns_)
    {
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v9)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_274E1B2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(uint64_t a1)
{
  if (*(a1 + 288))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
    std::mutex::lock((a1 + 56));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((a1 + 344), (a1 + 288));
    *(a1 + 288) = 0;
    if (*(a1 + 188))
    {
      explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
      std::mutex::unlock((a1 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((a1 + 192));
      }
    }

    else
    {
      std::mutex::unlock((a1 + 56));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(a1, (a1 + 288));
}

uint64_t dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Value(uint64_t a1)
{
  result = *(a1 + 288);
  if (!result)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 203);
    v4 = dmlc::LogMessageFatal::GetEntry(&v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: out_data_ != NULL", 31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Calling Value at beginning or end?", 34);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    return *(a1 + 288);
  }

  return result;
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(uint64_t a1)
{
  v4.__ptr_ = 0;
  std::mutex::lock((a1 + 120));
  if (*(a1 + 392))
  {
    std::exception_ptr::operator=(&v4, (a1 + 392));
  }

  std::mutex::unlock((a1 + 120));
  if (v4.__ptr_)
  {
    std::exception_ptr::exception_ptr(&v3, &v4);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }

  else
  {
    std::exception_ptr::~exception_ptr(&v4);
  }
}

void sub_274E1B50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::exception_ptr a14, std::exception_ptr a15)
{
  std::exception_ptr::~exception_ptr(&a14);
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a13);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 500);
    v19 = dmlc::LogMessageFatal::GetEntry(&a13);
    v20 = (*(*v17 + 16))(v17);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    dmlc::LogMessageFatal::~LogMessageFatal(&a13);
    __cxa_end_catch();
    JUMPOUT(0x274E1B4DCLL);
  }

  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<dmlc::data::RowBlockContainer<unsigned int,float> **,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> **>>::emplace_back<dmlc::data::RowBlockContainer<unsigned int,float> **&>(a1, &v14);
    v4 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

void sub_274E1BA30(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(uint64_t a1, void *a2)
{
  v2 = (a1 + 24);
  if (atomic_load_explicit((a1 + 24), memory_order_acquire) != 2)
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
    __lk.__m_ = (a1 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 56));
    if (atomic_load_explicit(v2, memory_order_acquire))
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v16);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 446);
      v6 = dmlc::LogMessageFatal::GetEntry(&v16);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: producer_sig_.load(std::memory_order_acquire) == kProduce", 71);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Make sure you call BeforeFirst not inconcurrent with Next!", 58);
      dmlc::LogMessageFatal::~LogMessageFatal(&v16);
    }

    v9 = *(a1 + 184);
    *(a1 + 184) = v9 + 1;
    v10 = *(a1 + 336);
    if (!v10)
    {
      while ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        std::condition_variable::wait((a1 + 240), &__lk);
        v10 = *(a1 + 336);
        if (v10)
        {
          v9 = *(a1 + 184) - 1;
          goto LABEL_14;
        }
      }

      v10 = *(a1 + 336);
      --*(a1 + 184);
      if (v10)
      {
        goto LABEL_15;
      }

      if ((atomic_load_explicit((a1 + 40), memory_order_acquire) & 1) == 0)
      {
        v11 = dmlc::LogMessageFatal::GetEntry(&v16);
        dmlc::LogMessageFatal::Entry::Init(v11, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 465);
        v12 = dmlc::LogMessageFatal::GetEntry(&v16);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Check failed: produce_end_.load(std::memory_order_acquire)", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v16);
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
        __lk.__owns_ = 0;
        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_14:
    *(a1 + 184) = v9;
LABEL_15:
    v14 = *(a1 + 328);
    *a2 = *(*(*(a1 + 304) + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
    *(a1 + 328) = v14 + 1;
    *(a1 + 336) = v10 - 1;
    if (v14 + 1 >= 0x400)
    {
      operator delete(**(a1 + 304));
      *(a1 + 304) += 8;
      *(a1 + 328) -= 512;
    }

    if (*(a1 + 188))
    {
      v15 = atomic_load_explicit((a1 + 40), memory_order_acquire) ^ 1;
    }

    else
    {
      v15 = 0;
    }

    if (!__lk.__owns_)
    {
LABEL_27:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
      __break(1u);
      return;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v15)
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(a1);
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_274E1BCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, std::mutex *a14, char a15)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  if (a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>(const void **a1)
{
  v19 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v19;
  v5 = v19[1];
  v6 = (v5 + 328);
  while (1)
  {
    v21 = 0;
    __lk.__m_ = (v5 + 56);
    __lk.__owns_ = 1;
    std::mutex::lock((v5 + 56));
    ++*(v5 + 188);
    while (!atomic_load_explicit((v5 + 24), memory_order_acquire))
    {
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 && (*(v5 + 336) < *(v5 + 48) || *(v5 + 384)))
      {
        break;
      }

      std::condition_variable::wait((v5 + 192), &__lk);
    }

    --*(v5 + 188);
    explicit = atomic_load_explicit((v5 + 24), memory_order_acquire);
    if (!explicit)
    {
      v13 = *(v5 + 384);
      if (v13 && (v14 = *(v5 + 352), v15 = *(v5 + 376), v21 = (*(v14 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF], ++v15, *(v5 + 376) = v15, *(v5 + 384) = v13 - 1, v15 >= 0x400))
      {
        operator delete(*v14);
        v12 = 0;
        *(v5 + 352) += 8;
        *(v5 + 376) -= 512;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (atomic_load_explicit((v5 + 24), memory_order_acquire) != 1)
    {
      v12 = 1;
      atomic_store(1u, (v5 + 28));
      atomic_store(1u, (v5 + 40));
      if (!__lk.__owns_)
      {
        break;
      }

      goto LABEL_22;
    }

    v8 = v4[9];
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8);
    if (*(v5 + 336))
    {
      v9 = v6->i64[0];
      do
      {
        while (1)
        {
          std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v5 + 344), (*(*(v5 + 304) + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)));
          v10 = vaddq_s64(*v6, xmmword_274E207D0);
          *v6 = v10;
          v9 = v10.i64[0];
          if (v10.i64[0] < 0x400uLL)
          {
            break;
          }

          operator delete(**(v5 + 304));
          *(v5 + 304) += 8;
          v11 = *(v5 + 336);
          v9 = *(v5 + 328) - 512;
          *(v5 + 328) = v9;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      while (v10.i64[1]);
    }

LABEL_16:
    atomic_store(0, (v5 + 40));
    atomic_store(1u, (v5 + 28));
    atomic_store(0, (v5 + 24));
    if (!__lk.__owns_)
    {
      break;
    }

    v12 = 2;
LABEL_22:
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::condition_variable::notify_all((v5 + 240));
LABEL_24:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!explicit)
    {
      v16 = v4[5];
      v22 = &v21;
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      atomic_store((*(*v16 + 48))(v16, &v22) ^ 1, (v5 + 40));
      std::mutex::lock((v5 + 56));
      v17 = (v5 + 296);
      if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || (v17 = (v5 + 344), v21))
      {
        std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(v17, &v21);
      }

      v18 = *(v5 + 184);
      std::mutex::unlock((v5 + 56));
      if (v18)
      {
        std::condition_variable::notify_all((v5 + 240));
      }

      v12 = 0;
    }

    if (v12 == 1)
    {
      std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v19);
      return;
    }
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
}

void sub_274E1C110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, std::exception_ptr a12, char a13)
{
  std::mutex::unlock(v15);
  if (a2 != 1)
  {
    std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::mutex::lock((v16 + 120));
  if (!*(v16 + 392))
  {
    std::current_exception();
    std::exception_ptr::operator=((v16 + 392), &a12);
    std::exception_ptr::~exception_ptr(&a12);
  }

  std::mutex::unlock((v16 + 120));
  a12.__ptr_ = v15;
  a13 = 1;
  std::mutex::lock(v15);
  if (atomic_load_explicit((v16 + 24), memory_order_acquire) == 1)
  {
    while (*(v16 + 336))
    {
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(v14, (*(*(v16 + 304) + ((*(v16 + 328) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v16 + 328) & 0x1FFLL)));
      *v17 = vaddq_s64(*v17, a9);
      std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::__maybe_remove_front_spare[abi:ne200100](v13);
    }

    atomic_store(1u, (v16 + 40));
    atomic_store(1u, (v16 + 28));
    std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12);
  }

  else if (atomic_load_explicit((v16 + 24), memory_order_acquire) || (atomic_store(1u, (v16 + 40)), v20 = *(v16 + 184), std::unique_lock<std::mutex>::unlock[abi:ne200100](&a12), !v20))
  {
LABEL_12:
    if (a13 == 1)
    {
      std::mutex::unlock(a12.__ptr_);
    }

    __cxa_end_catch();
    JUMPOUT(0x274E1C0C0);
  }

  std::condition_variable::notify_all((v16 + 240));
  goto LABEL_12;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(std::function<BOOL ()(dmlc::io::InputSplitBase::Chunk**)>,std::function<void ()(void)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((v2 + 6));
    std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100]((v2 + 2));
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x277C69180](v3, 0x1020C40EDC32A07);
  }

  return a1;
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7D58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::operator()(uint64_t a1, void **a2)
{
  if (!**a2)
  {
    operator new();
  }

  v2 = *(**(*(a1 + 8) + 24) + 104);

  return v2();
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7DE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1},std::allocator<dmlc::io::ThreadedInputSplit::ThreadedInputSplit(dmlc::io::InputSplitBase *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(uint64_t a1)
{
  *a1 = &unk_2883E7CF8;
  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(a1);
  std::exception_ptr::~exception_ptr((a1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](a1 + 296);
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_274E1C70C(_Unwind_Exception *a1)
{
  std::exception_ptr::~exception_ptr((v1 + 392));
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 344);
  std::deque<dmlc::data::RowBlockContainer<unsigned int,float> *,std::allocator<dmlc::data::RowBlockContainer<unsigned int,float> *>>::~deque[abi:ne200100](v1 + 296);
  std::condition_variable::~condition_variable((v1 + 240));
  std::condition_variable::~condition_variable((v1 + 192));
  std::mutex::~mutex((v1 + 120));
  std::mutex::~mutex((v1 + 56));
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(uint64_t a1)
{
  if (*(a1 + 32))
  {
    std::mutex::lock((a1 + 56));
    atomic_store(2u, (a1 + 24));
    if (*(a1 + 188))
    {
      std::condition_variable::notify_one((a1 + 192));
    }

    std::mutex::unlock((a1 + 56));
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = *(a1 + 376);
    do
    {
      v5 = *(*(*(a1 + 352) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          *(v5 + 24) = v6;
          operator delete(v6);
        }

        MEMORY[0x277C69180](v5, 0x10C40512A2CE0);
        v4 = *(a1 + 376);
        v3 = *(a1 + 384);
      }

      --v3;
      *(a1 + 376) = ++v4;
      *(a1 + 384) = v3;
      if (v4 >= 0x400)
      {
        operator delete(**(a1 + 352));
        *(a1 + 352) += 8;
        v3 = *(a1 + 384);
        v4 = *(a1 + 376) - 512;
        *(a1 + 376) = v4;
      }
    }

    while (v3);
  }

  v7 = *(a1 + 336);
  if (v7)
  {
    v8 = *(a1 + 328);
    do
    {
      v9 = *(*(*(a1 + 304) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10)
        {
          *(v9 + 24) = v10;
          operator delete(v10);
        }

        MEMORY[0x277C69180](v9, 0x10C40512A2CE0);
        v8 = *(a1 + 328);
        v7 = *(a1 + 336);
      }

      --v7;
      *(a1 + 328) = ++v8;
      *(a1 + 336) = v7;
      if (v8 >= 0x400)
      {
        operator delete(**(a1 + 304));
        *(a1 + 304) += 8;
        v7 = *(a1 + 336);
        v8 = *(a1 + 328) - 512;
        *(a1 + 328) = v8;
      }
    }

    while (v7);
  }

  if (*(a1 + 8))
  {
    v11 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v12 = *(a1 + 288);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      *(v12 + 24) = v13;
      operator delete(v13);
    }

    MEMORY[0x277C69180](v12, 0x10C40512A2CE0);
    *(a1 + 288) = 0;
  }
}

uint64_t dmlc::io::CachedInputSplit::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = a2 >> 2;
  if (a2 >> 2 <= *(this + 8))
  {
    v2 = *(this + 8);
  }

  *(this + 8) = v2;
  return this;
}

void dmlc::io::CachedInputSplit::BeforeFirst(dmlc::io::CachedInputSplit *this)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  if (v2)
  {
    v3 = (this + 64);
    if (*(this + 8))
    {
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(*(this + 9));
      std::mutex::lock((v2 + 56));
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v2 + 344), this + 8);
      *v3 = 0;
      if (*(v2 + 188))
      {
        explicit = atomic_load_explicit((v2 + 40), memory_order_acquire);
        std::mutex::unlock((v2 + 56));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((v2 + 192));
        }
      }

      else
      {
        std::mutex::unlock((v2 + 56));
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v2);
      v2 = *(this + 9);
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v2, this + 8);
    v5 = *(this + 9);
    if (v6)
    {
      do
      {
        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
        std::mutex::lock((v5 + 56));
        std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v5 + 344), this + 8);
        *v3 = 0;
        if (*(v5 + 188))
        {
          v7 = atomic_load_explicit((v5 + 40), memory_order_acquire);
          std::mutex::unlock((v5 + 56));
          if ((v7 & 1) == 0)
          {
            std::condition_variable::notify_one((v5 + 192));
          }
        }

        else
        {
          std::mutex::unlock((v5 + 56));
        }

        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
        dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(*(this + 9), this + 8);
        v5 = *(this + 9);
      }

      while ((v8 & 1) != 0);
    }

    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v9 = *(this + 5);
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    *(this + 9) = 0;
    *(this + 5) = 0;
    v10 = (this + 16);
    if (*(this + 39) < 0)
    {
      v10 = *v10;
    }

    v11 = dmlc::SeekStream::CreateForRead(v10, 1);
    *(this + 6) = v11;
    if (v11)
    {
      v18[0] = &unk_2883E7ED8;
      v18[1] = this;
      v18[3] = v18;
      v17[0] = &unk_2883E7F58;
      v17[1] = this;
      v17[3] = v17;
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Init(this + 80, v18, v17);
    }

    Entry = dmlc::LogMessageFatal::GetEntry(v18);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 78);
    v13 = dmlc::LogMessageFatal::GetEntry(v18);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: this->InitCachedIter()", 36);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Failed to initialize CachedIter", 31);
    dmlc::LogMessageFatal::~LogMessageFatal(v18);
  }

  else
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::BeforeFirst(this + 80);
  }

  if (*(this + 8))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 80);
    std::mutex::lock((this + 136));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back(this + 53, this + 8);
    *(this + 8) = 0;
    if (*(this + 67))
    {
      v16 = atomic_load_explicit(this + 120, memory_order_acquire);
      std::mutex::unlock((this + 136));
      if ((v16 & 1) == 0)
      {
        std::condition_variable::notify_one((this + 272));
      }
    }

    else
    {
      std::mutex::unlock((this + 136));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(this + 80);
  }
}

void sub_274E1CD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t dmlc::io::CachedInputSplit::NextRecord(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 64);
  if (*(a1 + 72))
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v5 = a1 + 80;
  }

  if (!*(a1 + 64))
  {
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v5, v4);
    if (!v6)
    {
      return 0;
    }
  }

  do
  {
    v7 = (*(**(a1 + 56) + 80))(*(a1 + 56), a2, *(a1 + 64));
    if (v7)
    {
      break;
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
    std::mutex::lock((v5 + 56));
    std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v5 + 344), v4);
    *v4 = 0;
    if (*(v5 + 188))
    {
      explicit = atomic_load_explicit((v5 + 40), memory_order_acquire);
      std::mutex::unlock((v5 + 56));
      if ((explicit & 1) == 0)
      {
        std::condition_variable::notify_one((v5 + 192));
      }
    }

    else
    {
      std::mutex::unlock((v5 + 56));
    }

    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v5);
    dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v5, v4);
  }

  while ((v9 & 1) != 0);
  return v7;
}

void dmlc::io::CachedInputSplit::NextChunk(uint64_t a1, void *a2)
{
  v3 = (a1 + 64);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = a1 + 80;
  }

  if (*(a1 + 64) || (dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v4, v3), v5))
  {
    while (1)
    {
      v6 = *v3;
      v8 = **v3;
      v7 = (*v3)[1];
      if (v8 != v7)
      {
        break;
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v4);
      std::mutex::lock((v4 + 56));
      std::deque<dmlc::io::InputSplitBase::Chunk *>::push_back((v4 + 344), v3);
      *v3 = 0;
      if (*(v4 + 188))
      {
        explicit = atomic_load_explicit((v4 + 40), memory_order_acquire);
        std::mutex::unlock((v4 + 56));
        if ((explicit & 1) == 0)
        {
          std::condition_variable::notify_one((v4 + 192));
        }
      }

      else
      {
        std::mutex::unlock((v4 + 56));
      }

      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::ThrowExceptionIfSet(v4);
      dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Next(v4, v3);
      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    *a2 = v8;
    a2[1] = v7 - v8;
    *v6 = v7;
  }
}

void dmlc::io::CachedInputSplit::~CachedInputSplit(dmlc::io::CachedInputSplit *this)
{
  dmlc::io::CachedInputSplit::~CachedInputSplit(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E7E68;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::Destroy(this + 80);
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      *(v4 + 24) = v5;
      operator delete(v5);
    }

    MEMORY[0x277C69180](v4, 0x10C40512A2CE0);
  }

  v6 = *(this + 7);
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::~ThreadedIter(this + 80);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void dmlc::io::CachedInputSplit::ResetPartition(dmlc::io::CachedInputSplit *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 88);
  v2 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "ResetPartition is not supported in CachedInputSplit", 51);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7ED8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  if (!v3)
  {
    operator new();
  }

  v30 = 0;
  v4 = (***(v2 + 48))(*(v2 + 48), &v30, 8);
  v5 = v4;
  if (v4)
  {
    if (v4 != 8)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v29);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 178);
      v7 = dmlc::LogMessageFatal::GetEntry(&v29);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Check failed: nread == sizeof(size)", 35);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ": ", 2);
      v10 = *(v2 + 39);
      if (v10 >= 0)
      {
        v11 = v2 + 16;
      }

      else
      {
        v11 = *(v2 + 16);
      }

      if (v10 >= 0)
      {
        v12 = *(v2 + 39);
      }

      else
      {
        v12 = *(v2 + 24);
      }

      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " has invalid cache file format", 30);
      dmlc::LogMessageFatal::~LogMessageFatal(&v29);
    }

    std::vector<float>::resize((v3 + 16), (v30 >> 3) + 1);
    if (*(v3 + 24) == *(v3 + 16))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v3 + 16);
    }

    v15 = v14 + v30;
    *v3 = v14;
    *(v3 + 8) = v15;
    if ((***(v2 + 48))() != v30)
    {
      v16 = dmlc::LogMessageFatal::GetEntry(&v28);
      dmlc::LogMessageFatal::Entry::Init(v16, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/cached_input_split.h", 183);
      v17 = dmlc::LogMessageFatal::GetEntry(&v28);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: fi_->Read(p->begin, size) == size", 47);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
      v22 = *(v2 + 16);
      v21 = v2 + 16;
      v20 = v22;
      v23 = *(v21 + 23);
      if (v23 >= 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = v20;
      }

      if (v23 >= 0)
      {
        v25 = *(v21 + 23);
      }

      else
      {
        v25 = *(v21 + 8);
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v24, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " has invalid cache file format", 30);
      dmlc::LogMessageFatal::~LogMessageFatal(&v28);
    }
  }

  return v5 != 0;
}

void sub_274E1D394(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x277C69180](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7F58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1},std::allocator<dmlc::io::CachedInputSplit::InitCachedIter(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void dmlc::ThreadedIter<dmlc::io::InputSplitBase::Chunk>::NotImplemented()
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v2);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/threadediter.h", 237);
  v1 = dmlc::LogMessageFatal::GetEntry(&v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BeforeFirst is not supported", 28);
  dmlc::LogMessageFatal::~LogMessageFatal(&v2);
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E7FD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::operator()(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = **a2;
  if (!v3)
  {
    operator new();
  }

  v4 = (*(**(v2 + 56) + 96))(*(v2 + 56), v3);
  if (v4)
  {
    v6 = v3[1] - *v3;
    (*(**(v2 + 40) + 8))(*(v2 + 40), &v6, 8);
    (*(**(v2 + 40) + 8))(*(v2 + 40), *v3, v6);
  }

  return v4;
}

uint64_t std::__function::__func<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1},std::allocator<dmlc::io::CachedInputSplit::InitPreprocIter(void)::{lambda(dmlc::io::InputSplitBase::Chunk **)#1}>,BOOL ()(dmlc::io::InputSplitBase::Chunk **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E8058;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_274E1D9EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::Registry<xgboost::ObjFunctionReg>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::ObjFunction * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t xgboost::ObjFunction::Create(uint64_t **a1, uint64_t a2)
{
  dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  dmlc::Registry<xgboost::ObjFunctionReg>::Get();
  v4 = qword_280AF7210;
  if (!qword_280AF7210)
  {
    goto LABEL_43;
  }

  v5 = *(a1 + 23);
  v6 = v5 >= 0 ? *(a1 + 23) : a1[1];
  v7 = v5 >= 0 ? a1 : *a1;
  v8 = &qword_280AF7210;
  do
  {
    v9 = *(v4 + 55);
    if (v9 >= 0)
    {
      v10 = *(v4 + 55);
    }

    else
    {
      v10 = *(v4 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v4 + 32);
    }

    else
    {
      v11 = *(v4 + 32);
    }

    if (v6 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = memcmp(v11, v7, v12);
    v14 = v10 < v6;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v8 = v4;
    }

    v4 = *(v4 + v16);
  }

  while (v4);
  if (v8 == &qword_280AF7210)
  {
    goto LABEL_43;
  }

  v17 = *(v8 + 55);
  if (v17 >= 0)
  {
    v18 = *(v8 + 55);
  }

  else
  {
    v18 = v8[5];
  }

  if (v17 >= 0)
  {
    v19 = v8 + 4;
  }

  else
  {
    v19 = v8[4];
  }

  if (v18 >= v6)
  {
    v20 = v6;
  }

  else
  {
    v20 = v18;
  }

  v21 = memcmp(v7, v19, v20);
  v22 = v6 < v18;
  if (v21)
  {
    v22 = v21 < 0;
  }

  if (v22 || (v23 = v8[7]) == 0)
  {
LABEL_43:
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v47);
    dmlc::Registry<xgboost::ObjFunctionReg>::Get();
    v26 = qword_280AF71F0;
    v27 = unk_280AF71F8;
    if (qword_280AF71F0 != unk_280AF71F8)
    {
      goto LABEL_61;
    }

    while (1)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v46);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/objective.cc", 26);
      v29 = dmlc::LogMessageFatal::GetEntry(&v46);
      v31 = *(a1 + 23);
      if (v31 >= 0)
      {
        v32 = a1;
      }

      else
      {
        v32 = *a1;
      }

      if (v31 >= 0)
      {
        v33 = *(a1 + 23);
      }

      else
      {
        v33 = a1[1];
      }

      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
      a1 = &v49;
      std::stringbuf::str();
      if ((v45 & 0x80u) == 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = __p[0];
      }

      if ((v45 & 0x80u) == 0)
      {
        v37 = v45;
      }

      else
      {
        v37 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      dmlc::LogMessageFatal::~LogMessageFatal(&v46);
      v47[0] = *MEMORY[0x277D82818];
      v38 = *(MEMORY[0x277D82818] + 72);
      *(v47 + *(v47[0] - 24)) = *(MEMORY[0x277D82818] + 64);
      v48 = v38;
      v49 = MEMORY[0x277D82878] + 16;
      if (v51 < 0)
      {
        operator delete(v50[7].__locale_);
      }

      v49 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v50);
      std::iostream::~basic_iostream();
      MEMORY[0x277C690D0](&v52);
      __break(1u);
      do
      {
LABEL_61:
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Objective candidate: ", 21);
        v40 = *(*v26 + 23);
        if (v40 >= 0)
        {
          v41 = *v26;
        }

        else
        {
          v41 = **v26;
        }

        if (v40 >= 0)
        {
          v42 = *(*v26 + 23);
        }

        else
        {
          v42 = (*v26)[1];
        }

        v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v41, v42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "\n", 1);
        ++v26;
      }

      while (v26 != v27);
    }
  }

  v24 = *(v23 + 96);
  if (!v24)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v24 + 48))(v24);
  *(result + 8) = a2;
  return result;
}

void sub_274E1DED8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (SHIBYTE(a15) < 0)
  {
    operator delete(a13);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((&a16 + 7));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](va);
  _Unwind_Resume(a1);
}

void xgboost::SparsePage::Push<xgboost::data::CSCAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::CSRAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::FileAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::ArrayAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::DenseAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::CSRArrayAdapterBatch>()
{
    ;
  }
}

void xgboost::SparsePage::Push<xgboost::data::DataTableAdapterBatch>()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::Copy()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::Resize()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::FeatureType>::operator=()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::Entry>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<double>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<double>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::Copy()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::Extend()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<float>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<float>::operator=()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned char>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned char>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<int>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<int>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::Copy()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned int>::operator=()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned long>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned long>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned long long>::HostDeviceVector()
{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

void xgboost::HostDeviceVector<unsigned long long>::~HostDeviceVector()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::CSCAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::CSRAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::FileAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::ArrayAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::DenseAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::CSRArrayAdapter>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::IteratorAdapter<void *,int ()(void *,int (*)(void *,XGBoostBatchCSR),void *),XGBoostBatchCSR>>()
{
    ;
  }
}

void xgboost::data::SimpleDMatrix::SimpleDMatrix<xgboost::data::DataTableAdapter>()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::ExpandTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::UpdateTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitSampling()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::BuildHistogram()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitData()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitRoot()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::Builder()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::ExpandTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::UpdateTree()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitSampling()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::BuildHistogram()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitData()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitRoot()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::Builder()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::LoadBalance()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::PushRowPage()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::CalcColumnSize()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::GatherSketchInfo()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::MakeCuts()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::AllReduce()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::SketchContainerImpl()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::LoadBalance()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::CalcColumnSize()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::GatherSketchInfo()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::MakeCuts()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::AllReduce()
{
    ;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::SketchContainerImpl()
{
    ;
  }
}

void xgboost::DMatrix::Create<xgboost::data::CSCAdapter>()
{
    ;
  }
}

void xgboost::DMatrix::Create<xgboost::data::FileAdapter>()
{
    ;
  }
}

void xgboost::DMatrix::Create<xgboost::data::DenseAdapter>()
{
    ;
  }
}

void xgboost::RegTree::LoadCategoricalSplit<false>()
{
    ;
  }
}

void xgboost::RegTree::LoadCategoricalSplit<true>()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::UpdatePredictionCache()
{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::UpdatePredictionCache()
{
    ;
  }
}

void xgboost::common::GHistBuilder<double>::BuildHist<false>()
{
    ;
  }
}

void xgboost::common::GHistBuilder<double>::BuildHist<true>()
{
    ;
  }
}

void xgboost::common::GHistBuilder<float>::BuildHist<false>()
{
    ;
  }
}

void xgboost::common::GHistBuilder<float>::BuildHist<true>()
{
    ;
  }
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7858]();
}

{
  return MEMORY[0x2821F7870]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}