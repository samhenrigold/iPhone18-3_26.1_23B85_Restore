void sub_2982A58F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x2AAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(96 * a2);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      v8 = *(v6 + 80);
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v5);
      v5 += 12;
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v13 = &end[__n];
      v14 = 24 * __n;
      do
      {
        v15 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v15;
        ++end;
        v14 -= 24;
      }

      while (v14);
      end = v13;
    }

    this->__end_ = end;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v9 = v8 + __n;
    if (v8 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v11);
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v8];
    v17 = (v16 + 24 * __n);
    v18 = 24 * __n;
    v19 = v16;
    do
    {
      v20 = __x->std::pair<const char *, const char *>;
      v19[1].first = *&__x->matched;
      *v19 = v20;
      v19 = (v19 + 24);
      v18 -= 24;
    }

    while (v18);
    v21 = &v12[24 * v11];
    begin = this->__begin_;
    v23 = this->__end_;
    v24 = (v16 + this->__begin_ - v23);
    if (v23 != this->__begin_)
    {
      v25 = v24;
      do
      {
        v26 = begin->std::pair<const char *, const char *>;
        *&v25->matched = *&begin->matched;
        v25->std::pair<const char *, const char *> = v26;
        ++v25;
        ++begin;
      }

      while (begin != v23);
      begin = this->__begin_;
    }

    this->__begin_ = v24;
    this->__end_ = v17;
    this->__end_cap_.__value_ = v21;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = value - this->__begin_;
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
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * __n);
    v14 = &v12[16 * __n];
    v15 = this->__end_ - this->__begin_;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], this->__begin_, v15);
    begin = this->__begin_;
    this->__begin_ = v16;
    this->__end_ = v14;
    this->__end_cap_.__value_ = v13;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v8;
      v7 += 24;
      a2 = (a2 + 24);
    }

    v6[1] = v7;
  }

  return result;
}

void sub_2982A5DE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_2982A5E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_21;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = v5;
        v5 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v5, a3, v7);
      }

      while (v8 != v5);
    }

    if (v8 == a3)
    {
      goto LABEL_21;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    v2 = operator new(0x18uLL);
    v3 = this->__marked_count_ + 1;
    this->__marked_count_ = v3;
    end = this->__end_;
    first = end->__first_;
    v2->__vftable = &unk_2A1EB4100;
    v2[1].__vftable = first;
    LODWORD(v2[2].__vftable) = v3;
    end->__first_ = v2;
    this->__end_ = this->__end_->__first_;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    v4 = operator new(0x18uLL);
    end = this->__end_;
    first = end->__first_;
    v4->__vftable = &unk_2A1EB4148;
    v4[1].__vftable = first;
    LODWORD(v4[2].__vftable) = a2;
    end->__first_ = v4;
    this->__end_ = this->__end_->__first_;
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 11);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 3);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a3 != a2)
  {
    v4 = *a2;
    v5 = v4 - 48;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return ++v3;
    }

    if ((v4 - 49) > 8)
    {
      return v3;
    }

    if (++v3 == a3)
    {
      v3 = a3;
    }

    else
    {
      while (1)
      {
        v6 = *v3;
        if ((v6 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_16;
        }

        ++v3;
        v5 = v6 + 10 * v5 - 48;
        if (v3 == a3)
        {
          v3 = a3;
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_16;
      }
    }

    if (v5 <= a1->__marked_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
      return v3;
    }

LABEL_16:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
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

          v17 = 12;
          goto LABEL_92;
        }

        v8 = 12;
        goto LABEL_77;
      }

      if (v5 == 110)
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

          v17 = 10;
          goto LABEL_92;
        }

        v8 = 10;
        goto LABEL_77;
      }
    }

    else
    {
      switch(v5)
      {
        case '0':
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

            *a4 = 0;
            return ++v4;
          }

          v8 = 0;
          goto LABEL_77;
        case 'c':
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          if (*v4 < 65)
          {
            goto LABEL_95;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_95;
          }

          v8 = v7 & 0x1F;
LABEL_74:
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

            *a4 = v8;
            *(a4 + 1) = 0;
            return ++v4;
          }

          goto LABEL_77;
        case '_':
          goto LABEL_95;
      }
    }

    goto LABEL_72;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
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

        v17 = 13;
        goto LABEL_92;
      }

      v8 = 13;
      goto LABEL_77;
    }

    if (v5 == 116)
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

        v17 = 9;
        goto LABEL_92;
      }

      v8 = 9;
LABEL_77:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      return ++v4;
    }

LABEL_72:
    v8 = v5;
    if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_74;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_45;
      }

      goto LABEL_72;
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

      v17 = 11;
LABEL_92:
      *a4 = v17;
      return ++v4;
    }

    v8 = 11;
    goto LABEL_77;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v9 = a2[1];
  if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
  {
    goto LABEL_95;
  }

  v4 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_95;
  }

  v10 = *v4;
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v11 = -87;
  }

  v6 = 16 * (v11 + v10);
LABEL_45:
  if (v4 + 1 == a3)
  {
    goto LABEL_95;
  }

  v12 = v4[1];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v13 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_95;
  }

  v14 = v4[2];
  v15 = -48;
  if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
  {
    goto LABEL_55;
  }

  v14 |= 0x20u;
  if ((v14 - 97) >= 6)
  {
LABEL_95:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = -87;
LABEL_55:
  v16 = v15 + v14 + 16 * (v13 + v6 + v12);
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

    *a4 = v16;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
  }

  v4 += 3;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  v2 = __c;
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](v8, this, v2, this->__end_->__first_);
LABEL_6:
    this->__end_->__first_ = v8;
    goto LABEL_7;
  }

  if ((flags & 8) != 0)
  {
    v8 = operator new(0x30uLL);
    first = this->__end_->__first_;
    *v8 = &unk_2A1EB3F50;
    *(v8 + 1) = first;
    std::locale::locale(v8 + 2, &this->__traits_.__loc_);
    *(v8 + 24) = *&this->__traits_.__ct_;
    v8[40] = v2;
    goto LABEL_6;
  }

  v5 = operator new(0x18uLL);
  end = this->__end_;
  v7 = end->__first_;
  v5->__vftable = &unk_2A1EB3F98;
  v5[1].__vftable = v7;
  LOBYTE(v5[2].__vftable) = v2;
  end->__first_ = v5;
LABEL_7:
  this->__end_ = this->__end_->__first_;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 4);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1EB3FE0;
LABEL_6:
    v8->__locale_ = v10;
    std::locale::locale(v8 + 2, &this->__traits_.__loc_);
    *&v9[3].__locale_ = *&this->__traits_.__ct_;
    LODWORD(v9[5].__locale_) = __i;
    this->__end_->__first_ = v9;
    goto LABEL_7;
  }

  if ((flags & 8) != 0)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1EB4028;
    goto LABEL_6;
  }

  v5 = operator new(0x18uLL);
  end = this->__end_;
  first = end->__first_;
  v5->__vftable = &unk_2A1EB4070;
  v5[1].__vftable = first;
  LODWORD(v5[2].__vftable) = __i;
  end->__first_ = v5;
LABEL_7:
  this->__end_ = this->__end_->__first_;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1EB3F08;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_2982A6C2C(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F08;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F08;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3F50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
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

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
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

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3FE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3FE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB4028;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB4028;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

std::__bracket_expression<char, std::regex_traits<char>> *__cdecl std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(std::basic_regex<char> *this, BOOL __negate)
{
  v4 = operator new(0xB0uLL);
  std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v4, this, this->__end_->__first_, __negate, this->__flags_ & 1, (this->__flags_ & 8) != 0);
  this->__end_->__first_ = v4;
  this->__end_ = v4;
  return v4;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_2982A78BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v1 = std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete(v1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v18 = 0;
    negate = this->__negate_;
    goto LABEL_54;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_31;
  }

  v72 = *current;
  v6 = current[1];
  v73 = current[1];
  if (this->__icase_)
  {
    v72 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v73 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v72, &__p, &v74);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    negate = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v72 != *(p_second - 1) || v73 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v74);
    v12 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12[v13], &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v13].second) >= 1)
      {
        ++v14;
        v12 = this->__ranges_.__begin_;
        ++v13;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v74, &__p);
  v36 = this->__equivalences_.__begin_;
  v37 = v71;
  v38 = this->__equivalences_.__end_ - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      size = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      v45 = size;
      if ((size & 0x80u) != 0)
      {
        size = v36->__r_.__value_.__l.__size_;
      }

      if (v40 == size)
      {
        v46 = v45 >= 0 ? v36 : v36->__r_.__value_.__r.__words[0];
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      ++v36;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v65 = tab[v72];
      if (((v65 & mask) != 0 || v72 == 95 && (mask & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((tab[v73] & mask) != 0 || (mask & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      neg_mask = this->__neg_mask_;
      if ((v65 & neg_mask) != 0 || v72 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_147:
        negate = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v73] & neg_mask) == 0)
      {
        negate = 1;
        if (v73 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    negate = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  negate = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = *a2->__current_;
  v72 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v21) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v21);
    v72 = v21;
  }

  v22 = this->__chars_.__begin_;
  v23 = this->__chars_.__end_ - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = this->__neg_mask_;
  if (v25 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v21 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v21] & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    end = this->__neg_chars_.__end_;
    v28 = memchr(this->__neg_chars_.__begin_, v21, end - this->__neg_chars_.__begin_);
    v29 = !v28 || v28 == end;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      negate = 1;
      goto LABEL_54;
    }
  }

  v33 = this->__ranges_.__begin_;
  v34 = this->__ranges_.__end_;
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v73);
    v33 = this->__ranges_.__begin_;
    v34 = this->__ranges_.__end_;
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v33[v47], &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v47].second) >= 1)
    {
      ++v48;
      v33 = this->__ranges_.__begin_;
      ++v47;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    negate = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_119:
      v61 = this->__mask_;
      if ((v72 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v72] & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      negate |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v73, &__p);
    v51 = this->__equivalences_.__begin_;
    v52 = this->__equivalences_.__end_ - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v51->__r_.__value_.__l.__size_;
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : v51->__r_.__value_.__r.__words[0];
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        ++v51;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      negate = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v32 = -993;
  }

  else
  {
    a2->__current_ += v18;
    first = this->__first_;
    v32 = -995;
  }

  a2->__do_ = v32;
  a2->__node_ = first;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<char>::transform<char *>(uint64_t a1, void *a2, uint64_t a3)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982A8294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, a2, a4, a4 - a2);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
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
  *a3 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a3 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
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

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v11;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v9 = *(a3 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a3 = 0;
      *(a3 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a3 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a3, &__s);
    goto LABEL_9;
  }

  **a3 = 0;
  *(a3 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2982A8460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982A8688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
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

    v12[v8] = *a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 5);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v29 = 0uLL;
  v30 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, &v29);
        v9 = HIBYTE(v30);
        v10 = *(&v29 + 1);
        break;
      case ':':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_47;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (!v10)
  {
    if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
    {
      v15 = *v4;
      if (v15 == 92)
      {
        if (v14)
        {
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, &v29);
        }

        else
        {
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, &v29, v6);
        }

        v4 = v16;
        goto LABEL_27;
      }
    }

    else
    {
      LOBYTE(v15) = *v4;
    }

    if ((v9 & 0x80) != 0)
    {
      v17 = v29;
      *(&v29 + 1) = 1;
    }

    else
    {
      HIBYTE(v30) = 1;
      v17 = &v29;
    }

    *v17 = v15;
    *(v17 + 1) = 0;
    ++v4;
  }

LABEL_27:
  if (v4 != a3)
  {
    v18 = *v4;
    if (v18 != 93)
    {
      v20 = v4 + 1;
      if (v4 + 1 != a3 && v18 == 45 && *v20 != 93)
      {
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        v4 += 2;
        if (v20 + 1 != a3 && *v20 == 91 && *v4 == 46)
        {
          v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v20 + 2, a3, v27);
LABEL_59:
          v4 = v21;
          goto LABEL_60;
        }

        if ((v14 | 0x40) == 0x40)
        {
          LODWORD(v20) = *v20;
          if (v20 == 92)
          {
            if (v14)
            {
              v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4, a3, v27);
            }

            else
            {
              v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3, v27, v6);
            }

            goto LABEL_59;
          }
        }

        else
        {
          LOBYTE(v20) = *v20;
        }

        HIBYTE(v28) = 1;
        LOWORD(v27[0]) = v20;
LABEL_60:
        *v25 = v29;
        v26 = v30;
        v30 = 0;
        v29 = 0uLL;
        *__p = *v27;
        v24 = v28;
        v27[0] = 0;
        v27[1] = 0;
        v28 = 0;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, v25, __p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27[0]);
        }

        goto LABEL_46;
      }
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    if (*(&v29 + 1))
    {
      if (*(&v29 + 1) != 1)
      {
        v19 = v29;
LABEL_45:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, *v19, v19[1]);
        goto LABEL_46;
      }

      v19 = v29;
      goto LABEL_36;
    }
  }

  else if (HIBYTE(v30))
  {
    v19 = &v29;
    if (HIBYTE(v30) != 1)
    {
      goto LABEL_45;
    }

LABEL_36:
    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, *v19);
  }

LABEL_46:
  v13 = 1;
LABEL_47:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_2982A8B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v22 = 23869;
  LOBYTE(__p[0]) = 0;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v22, &v23);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v8, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_7;
    }

LABEL_27:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_27;
  }

  v11 = v19;
LABEL_7:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, v11 + v10, __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v9 + 2;
}

void sub_2982A8D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  strcpy(v12, ":]");
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, v12, &v12[2]);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  v10 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v10;
  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = 23854;
  v16[1] = 0;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v8, &v13);
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

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return (a2 + 1);
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
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
        return (a2 + 1);
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return (a2 + 1);
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
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
      return (a2 + 1);
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return (a2 + 1);
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
  return (a2 + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
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

          v11 = 12;
          goto LABEL_77;
        }

        v5 = 12;
        goto LABEL_61;
      }

      if (v5 == 110)
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

          v11 = 10;
          goto LABEL_77;
        }

        v5 = 10;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v5)
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

            v11 = 13;
            goto LABEL_77;
          }

          v5 = 13;
          goto LABEL_61;
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

            v11 = 9;
            goto LABEL_77;
          }

          v5 = 9;
          goto LABEL_61;
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

            v11 = 11;
            goto LABEL_77;
          }

          v5 = 11;
          goto LABEL_61;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
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

    goto LABEL_61;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
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

        v11 = 7;
        goto LABEL_77;
      }

      v5 = 7;
LABEL_61:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
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

        v11 = 8;
LABEL_77:
        *a4 = v11;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_61;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_82;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v7 & 0xF8) != 0x30)
    {
      goto LABEL_51;
    }

    v6 = *v7 + 8 * v6 - 48;
    if (a2 + 2 != a3)
    {
      v8 = a2[2];
      v9 = v8 & 0xF8;
      v10 = v8 + 8 * v6 - 48;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = v10;
      }

      goto LABEL_51;
    }
  }

  v7 = a3;
LABEL_51:
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

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
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
  MEMORY[0x29C286940](exception, 1);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
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

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
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
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
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

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2982A9A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982A9BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18.__end_cap_.__value_ = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  begin = v7 + v2;
  v18.__first_ = v7;
  v18.__begin_ = begin;
  value = &v7[v6];
  v18.__end_ = begin;
  v18.__end_cap_.__value_ = value;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v18.__begin_;
    end = v18.__end_;
    value = v18.__end_cap_.__value_;
  }

  else
  {
    v10 = *a2;
    begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v10;
    end = v7 + v2;
  }

  v12 = end + 1;
  v13 = *(a1 + 8) - *a1;
  v14 = begin - v13;
  memcpy(begin - v13, *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = value;
  v18.__end_ = v15;
  v18.__end_cap_.__value_ = v16;
  v18.__first_ = v15;
  v18.__begin_ = v15;
  std::__split_buffer<std::string>::~__split_buffer(&v18);
  return v12;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 2);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

uint64_t std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(uint64_t a1, void *a2, uint64_t a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_2982A9F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v7);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v22.__end_cap_.__value_ = a1;
    if (v12)
    {
      v13 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[48 * v9];
    v15 = &v13[48 * v12];
    v16 = *a2;
    *(v14 + 2) = *(a2 + 2);
    *v14 = v16;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v17 = *(a2 + 24);
    *(v14 + 5) = *(a2 + 5);
    *(v14 + 24) = v17;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v14 + 48;
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(&v14[-v18], *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v8;
    v21 = *(a1 + 16);
    *(a1 + 16) = v15;
    v22.__end_ = v20;
    v22.__end_cap_.__value_ = v21;
    v22.__first_ = v20;
    v22.__begin_ = v20;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v22);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v8 = (v4 + 48);
  }

  *(a1 + 8) = v8;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, void *a2, uint64_t a3)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982AA1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x29C286940](exception, 9);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[2 * v10];
    v12 = &v11[2 * v7];
    *v12 = *a2;
    v6 = v12 + 2;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
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

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
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

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
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
  v8 = __mexp_end;
  v9 = __mexp_begin;
  v14 = operator new(0x10uLL);
  end = this->__end_;
  first = end->__first_;
  v14[1] = first;
  end->__first_ = 0;
  v17 = operator new(0x38uLL);
  loop_count = this->__loop_count_;
  *(v17 + 1) = __s->__first_;
  *(v17 + 2) = v14;
  *v17 = &unk_2A1EB4190;
  *(v17 + 3) = __min;
  *(v17 + 4) = __max;
  *(v17 + 10) = loop_count;
  *(v17 + 11) = v9;
  *(v17 + 12) = v8;
  *(v17 + 52) = __greedy;
  __s->__first_ = 0;
  v19 = operator new(0x10uLL);
  v19->__vftable = &unk_2A1EB4220;
  v19[1].__vftable = v17;
  this->__end_->__first_ = v19;
  this->__end_ = *(v17 + 2);
  __s->__first_ = v17;
  this->__loop_count_ = loop_count + 1;
}

void sub_2982AA6DC(_Unwind_Exception *a1)
{
  v3 = std::__owns_two_states<char>::~__owns_two_states(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          if (++a2 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 8);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 7);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete(v1);
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
  v1 = std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete(v1);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2A1EB41F0;
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
  v1 = std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete(v1);
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

uint64_t std::basic_regex<char,std::regex_traits<char>>::__parse_RE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 15);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = a2[1];
  if (v8 == 40)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    marked_count = a1->__marked_count_;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_expression<std::__wrap_iter<char const*>>(a1, v9, v3);
    if (v12 != v3)
    {
      if (v12 + 1 == v3 || *v12 != 92)
      {
        goto LABEL_23;
      }

      if (v12[1] == 41)
      {
        v3 = v12 + 2;
      }

      else
      {
        v3 = v12;
      }
    }

    if (v3 != v12)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
      return v3;
    }

LABEL_23:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v3 = a2 + 2;
  if (!std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8))
  {
    return v7;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    v13 = a3;
    if (a2 + 1 != a3 && v11 == 92)
    {
      v14 = a2[1] == 123 ? a2 + 2 : a2;
      if (v14 != a2)
      {
        v24 = 0;
        v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(this, v14, a3, &v24);
        if (v15 == v14)
        {
          goto LABEL_34;
        }

        if (v15 != v13)
        {
          v16 = *v15;
          if (v16 == 44)
          {
            v23 = -1;
            v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(this, v15 + 1, v13, &v23);
            if (v17 != v13)
            {
              if (v17 + 1 == v13 || *v17 != 92)
              {
                goto LABEL_33;
              }

              if (v17[1] == 125)
              {
                v13 = v17 + 2;
              }

              else
              {
                v13 = v17;
              }
            }

            if (v13 != v17)
            {
              v19 = v23;
              v18 = v24;
              if (v23 == -1)
              {
                v20 = v8;
                v21 = v7;
                v22 = this;
                v19 = -1;
                goto LABEL_32;
              }

              if (v23 >= v24)
              {
                v20 = v8;
                v21 = v7;
                v22 = this;
LABEL_32:
                std::basic_regex<char,std::regex_traits<char>>::__push_loop(v22, v18, v19, __s, v20, v21, 1);
                return v13;
              }

LABEL_34:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
            }
          }

          else if (v15 + 1 != v13 && v16 == 92)
          {
            v13 = v15[1] == 125 ? v15 + 2 : v15;
            if (v15 != v13)
            {
              v18 = v24;
              v20 = v8;
              v21 = v7;
              v22 = this;
              v19 = v24;
              goto LABEL_32;
            }
          }
        }

LABEL_33:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
      }
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<std::__wrap_iter<char const*>>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    v8 = operator new(0x10uLL);
    end = a1->__end_;
    first = end->__first_;
    v8->__vftable = &unk_2A1EB42F8;
    v8[1].__vftable = first;
    end->__first_ = v8;
    a1->__end_ = a1->__end_->__first_;
    return ++v6;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if ((a2 + 1 != a3 || v4 != 36) && ((v4 - 46) > 0x2E || ((1 << (v4 - 46)) & 0x600000000001) == 0))
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v3 = a2 + 1;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v4 = *v3;
      if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
        return v3 + 1;
      }
    }
  }

  return a2;
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

void std::__match_any<char>::~__match_any(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, (v9 + 1), a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return a2;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    v8 = operator new(0x10uLL);
    end = a1->__end_;
    first = end->__first_;
    v8->__vftable = &unk_2A1EB42F8;
    v8[1].__vftable = first;
    end->__first_ = v8;
    a1->__end_ = a1->__end_->__first_;
    return v6 + 1;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
    v5 = (locale_low - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (a1->__open_count_)
      {
        return v3;
      }

      locale = 41;
    }

    else
    {
LABEL_8:
      if ((locale_low - 123) < 2)
      {
        return v3;
      }

      locale = this->__traits_.__loc_.__locale_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale);
    return (v3 + 1);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      if ((*(a1 + 24) & 0x1F0) == 0x40)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
      }

      else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
      {
        v3 += 2;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(char *__f, char *__l, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = a5;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, __f, __l, &__p, a5 | 0x1040);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(a3, __f, __l, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_2982AB734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const char *> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0))
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v11 = __f + 1;
    if (v11 != __l)
    {
      v12 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        v13 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v13)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
      }

      while (++v11 != __l);
    }

    v12 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80, 0))
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v12;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  begin = a1->__begin_;
  if (a1->__end_ == a1->__begin_)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12 * 24);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      begin[v12].first.__i_ = (v14 + *v19);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12 * 24);
      }

      a1->__begin_[v12].second.__i_ = (v14 + v20[1]);
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12 * 24);
      }

      v22 = *(v21 + 16);
      begin = a1->__begin_;
      end = a1->__end_;
      a1->__begin_[v12].matched = v22;
      ++v13;
      ++v12;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
  }

  a1[1].__begin_ = a3;
  a1[1].__end_ = a3;
  LOBYTE(a1[1].__end_cap_.__value_) = 0;
  v24 = (v14 + a4[6]);
  a1[2].__begin_ = v24;
  a1[2].__end_ = (v14 + a4[7]);
  LOBYTE(a1[2].__end_cap_.__value_) = *(a4 + 64);
  a1[3].__begin_ = (v14 + a4[9]);
  a1[3].__end_ = (v14 + a4[10]);
  LOBYTE(a1[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[4].__end_ = v24;
  }

  LOBYTE(a1[4].__begin_) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  std::deque<std::__state<char>>::push_back(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        std::deque<std::__state<char>>::push_front(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        std::deque<std::__state<char>>::pop_back(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      std::deque<std::__state<char>>::pop_back(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      std::deque<std::__state<char>>::push_back(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  std::deque<std::__state<char>>::~deque[abi:ne200100](&v59);
  return v49;
}

void sub_2982ABFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::deque<std::__state<char>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  *v49 = 0;
  memset(&v49[8], 0, 32);
  v50 = 0u;
  memset(v51, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v53 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v53;
  *(v53 - 2) = v6;
  v18 = (a3 - a2);
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v53 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53 - 12);
        v53 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = &v24[-*(v17 - 11)];
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v49 = *v22;
        *&v49[16] = v27;
        if (v49 != v22)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v49[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v51, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v51[3] + 5) = *(v17 - 11);
        v51[3] = v28;
        v14 = v26;
      }

      v29 = v53;
      if (v14 == v18)
      {
        v30 = v52;
        while (v29 != v30)
        {
          v29 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
      }

      else
      {
        v34 = v53 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53 - 12);
        v53 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v53;
  }

  while (v52 != v53);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = &v14[a2];
  *(v35 + 16) = 1;
  if (v50 != *&v49[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *&v49[32]) >> 3);
    v37 = (*&v49[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (*&v49[32])
  {
    *&v50 = *&v49[32];
    operator delete(*&v49[32]);
  }

  *v49 = &v52;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v49);
  return v41;
}

void sub_2982AC48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(void **a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[4] + a1[5];
  if (v6 == v7)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[4] + a1[5];
  }

  v8 = *&v5[8 * (v7 / 0x2A)] + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  a1[5] = a1[5] + 1;
  return result;
}

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_2982C42F0);
  a1[2] = result;
  return result;
}

void std::deque<std::__state<char>>::__add_back_capacity(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x2A;
  v4 = (v2 - 42);
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v20);
      return;
    }

    *&v20 = operator new(0xFC0uLL);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0xFC0uLL);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_front<std::__state<char> *&>(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_2982AC8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void **a1, void *a2)
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
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
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
  }

  *v4 = *a2;
  a1[2] = a1[2] + 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(void **a1, void *a2)
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

      v10 = 2 * v9;
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v9);
      v5 = &v11[(v10 + 6) & 0xFFFFFFFFFFFFFFF8];
      v13 = a1[1];
      v14 = v5;
      v15 = (a1[2] - v13);
      if (v15)
      {
        v14 = &v15[v5];
        v16 = v5;
        do
        {
          v17 = *v13++;
          *v16 = v17;
          v16 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = *a1;
      *a1 = v11;
      a1[1] = v5;
      a1[2] = v14;
      a1[3] = &v11[8 * v12];
      if (v18)
      {
        operator delete(v18);
        v5 = a1[1];
      }
    }

    else
    {
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
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(void **a1, void *a2)
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
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1[4], v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
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
  }

  *v4 = *a2;
  a1[2] = a1[2] + 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_front<std::__state<char> *&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
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

      v10 = 2 * v9;
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(*(a1 + 32), v9);
      v5 = &v11[(v10 + 6) & 0xFFFFFFFFFFFFFFF8];
      v13 = *(a1 + 8);
      v14 = v5;
      v15 = *(a1 + 16) - v13;
      if (v15)
      {
        v14 = &v5[v15];
        v16 = v5;
        do
        {
          v17 = *v13++;
          *v16 = v17;
          v16 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = *a1;
      *a1 = v11;
      *(a1 + 8) = v5;
      *(a1 + 16) = v14;
      *(a1 + 24) = &v11[8 * v12];
      if (v18)
      {
        operator delete(v18);
        v5 = *(a1 + 8);
      }
    }

    else
    {
      v8 = (((v7 - v6) >> 3) + 1) / 2;
      v5 = &v4[8 * v8];
      if (v6 != v4)
      {
        memmove(&v4[8 * v8], v4, v6 - v4);
        v6 = *(a1 + 16);
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = &v6[8 * v8];
    }
  }

  else
  {
    v5 = *(a1 + 8);
  }

  *(v5 - 1) = *a2;
  *(a1 + 8) -= 8;
}

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
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

void std::deque<std::__state<char>>::__add_front_capacity(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v2) >> 3) - 1;
  }

  v6 = a1[4];
  if ((v5 - (a1[5] + v6)) < 0x2A)
  {
    v7 = a1[3];
    v8 = *a1;
    v9 = v7 - *a1;
    if (v4 >= v9)
    {
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >> 2;
      }

      v25 = a1;
      v22 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v10);
      v23 = v22;
      *&v24 = v22;
      *(&v24 + 1) = &v22[8 * v11];
      v21 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v22, &v21);
      v13 = a1[1];
      v12 = a1[2];
      if (v13 != v12)
      {
        do
        {
          std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v22, v13);
          v13 += 8;
          v12 = a1[2];
        }

        while (v13 != v12);
        v13 = a1[1];
      }

      v14 = *a1;
      v15 = v23;
      *a1 = v22;
      a1[1] = v15;
      v22 = v14;
      v23 = v13;
      v16 = a1[3];
      v17 = v24;
      *(a1 + 1) = v24;
      *&v24 = v12;
      *(&v24 + 1) = v16;
      if (v17 - v15 == 8)
      {
        v18 = 21;
      }

      else
      {
        v18 = a1[4] + 42;
      }

      a1[4] = v18;
      if (v12 != v13)
      {
        *&v24 = &v12[(v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8];
      }

      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      if (v2 == v8)
      {
        v22 = operator new(0xFC0uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v22);
        v19 = a1[2];
        v22 = *(v19 - 8);
        a1[2] = v19 - 8;
      }

      else
      {
        v22 = operator new(0xFC0uLL);
      }

      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v22);
      if (a1[2] - a1[1] == 8)
      {
        v20 = 21;
      }

      else
      {
        v20 = a1[4] + 42;
      }

      a1[4] = v20;
    }
  }

  else
  {
    a1[4] = v6 + 42;
    v22 = *(v3 - 8);
    a1[2] = v3 - 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v22);
  }
}

void sub_2982ACFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

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
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(uint64_t a1)
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

char *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - result) >> 3) >= a4)
  {
    v15 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - result) >> 3) >= a4)
    {
      while (v6 != a3)
      {
        *result = *v6;
        result[16] = *(v6 + 16);
        v6 = (v6 + 24);
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v16 = (a2 + v15 - result);
      if (v15 != result)
      {
        do
        {
          *result = *v6;
          result[16] = *(v6 + 16);
          v6 = (v6 + 24);
          result += 24;
        }

        while (v6 != v16);
      }

      if (v16 == a3)
      {
        v17 = v15;
      }

      else
      {
        v17 = v15;
        do
        {
          v18 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v18;
          v15 += 24;
          v16 = (v16 + 24);
          v17 += 24;
        }

        while (v16 != a3);
      }

      a1[1] = v17;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    result = std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v12);
    v13 = a1[1];
    while (v6 != a3)
    {
      v14 = *v6;
      *(v13 + 16) = *(v6 + 2);
      *v13 = v14;
      v13 += 24;
      v6 = (v6 + 24);
    }

    a1[1] = v13;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (a4 <= (v8 - result) >> 4)
  {
    v14 = a1[1];
    if (a4 <= (v14 - result) >> 4)
    {
      while (v6 != a3)
      {
        v20 = *v6;
        v21 = v6[1];
        v6 += 2;
        *result = v20;
        *(result + 1) = v21;
        result += 16;
      }

      a1[1] = result;
    }

    else
    {
      v15 = (a2 + v14 - result);
      if (v14 != result)
      {
        do
        {
          v16 = *v6;
          v17 = v6[1];
          v6 += 2;
          *result = v16;
          *(result + 1) = v17;
          result += 16;
        }

        while (v6 != v15);
      }

      if (v15 == a3)
      {
        v18 = v14;
      }

      else
      {
        v18 = v14;
        do
        {
          v19 = *v15;
          v15 += 2;
          *v14 = v19;
          v14 += 16;
          v18 += 16;
        }

        while (v15 != a3);
      }

      a1[1] = v18;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v11);
    v12 = a1[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 2;
      *v12 = v13;
      v12 += 16;
    }

    a1[1] = v12;
  }

  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __sz)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
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
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v6];
    v14 = &v13[24 * __n];
    v15 = 24 * __n;
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v15 -= 24;
    }

    while (v15);
    v17 = &v10[24 * v9];
    begin = this->__begin_;
    v19 = this->__end_;
    v20 = &v13[(this->__begin_ - v19)];
    if (v19 != this->__begin_)
    {
      v21 = v20;
      do
      {
        v22 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *&v21->matched = *&begin->matched;
        v21->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v22;
        ++v21;
        ++begin;
      }

      while (begin != v19);
      begin = this->__begin_;
    }

    this->__begin_ = v20;
    this->__end_ = v14;
    this->__end_cap_.__value_ = v17;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t ErrnoToBBUReturn(int a1)
{
  if (a1 == 35)
  {
    return 13;
  }

  else
  {
    return 3;
  }
}

uint64_t VinyleUICCPerformOperationWithLink(uint64_t a1, eUICC::Pairing *a2, const __CFDictionary *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5[1];
  v8[0] = *a5;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = VinyleUICCPerformOperationWithLinkAndLogSync(a1, a2, a3, a4, v8, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v6;
}

void sub_2982AD6C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinyleUICCPerformOperationWithLinkAndLogSync(uint64_t a1, eUICC::Pairing *a2, const __CFDictionary *a3, int a4, uint64_t *a5, uint64_t (*a6)(void, const char *, ...))
{
  v11 = VinylLogRegisterSync(a6);
  gBBULogMaskGet(v11, v12);
  _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "Vinyl Operation: %d, lastOperation: %d\n", a1, a4);
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v13 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(&v33);
    v14 = v33;
    v33 = 0uLL;
    v15 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      if (*(&v33 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
      }
    }

    v13 = xmmword_2A13A8CA0;
  }

  v16 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v17 = BBUCapabilities::supportsVinylRestore(v13);
  v19 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v19 & 1) == 0)
  {
    gBBULogMaskGet(v17, v18);
    _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "unsupported device\n");
    goto LABEL_27;
  }

  if (a3)
  {
    ctu::cf::dict_adapter::dict_adapter(&v33, a3);
    Bool = ctu::cf::map_adapter::getBool(&v33, @"UpdateBaseband");
    if ((Bool & 1) == 0)
    {
      gBBULogMaskGet(Bool, v21);
      _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "updateBaseband false\n");
      VinylLogRegisterSync(0);
      MEMORY[0x29C286020](&v33);
      return 0;
    }

    MEMORY[0x29C286020](&v33);
  }

  if (a1 >= 9)
  {
    updated = VinyleUICCPerformOperationWithLinkAndLogSync_cold_1(a1, &v33, &v34);
    v23 = v33;
    v26 = v34;
    goto LABEL_21;
  }

  v22 = a5[1];
  v31 = *a5;
  v32 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = VinylController::create(&v31, 1);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (!v23)
  {
LABEL_27:
    VinylLogRegisterSync(0);
    return 0;
  }

  updated = VinylController::performNonUpdateOperation(v23, a1, a2, a3);
  v26 = updated;
LABEL_21:
  if (a4 == 1)
  {
    updated = VinylControllerObjDestroy(v23);
  }

  if (v26 == 107)
  {
    ctu::cf::dict_adapter::dict_adapter(&v33, a3);
    v27 = ctu::cf::map_adapter::getBool(&v33, @"BasebandEnableProvisioning");
    v28 = ctu::cf::map_adapter::getBool(&v33, @"VinylSkipProvisioning");
    if (v28 & 1 | ((v27 & 1) == 0))
    {
      gBBULogMaskGet(v28, v29);
      _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "Failed to GetEID but it is fine because BB Provisioning not enabled or it is enabled but Vinyl Provisioning Skipped\n");
      v26 = 0;
    }

    else
    {
      v26 = 107;
    }

    updated = MEMORY[0x29C286020](&v33);
  }

  if (v26)
  {
    if (v26 != 9)
    {
      gBBULogMaskGet(updated, v25);
      _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "something is wrong.. : %d\n", v26);
      BBUpdaterCommon::collectCoreDump(a2, 0, 0, v26 == 14);
    }
  }

  VinylLogRegisterSync(0);
  return VinylControllerMapBBUReturnToVinylResult(v26);
}

void sub_2982ADA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x29C286020](va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t gBBULogMaskGet(uint64_t a1, uint64_t a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  return gBBULogMaskGet(void)::sBBULogMask;
}

void *___Z14gBBULogMaskGetv_block_invoke()
{
  result = operator new(8uLL);
  *result = sLogInternalMask;
  gBBULogMaskGet(void)::sBBULogMask = result;
  return result;
}

void BBULogSetMask(uint64_t result, uint64_t a2)
{
  v2 = result;
  sLogInternalMask = result;
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  *gBBULogMaskGet(void)::sBBULogMask = v2;
}

void BBULogSetExtraVerbosity(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if (v2 >= 7 && (*gBBULogMaskGet(void)::sBBULogMask & 0x40) != 0)
  {

    MEMORY[0x2A1C6F018](12);
  }
}

uint64_t _BBULogv(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, va_list a6)
{
  if (gLockGet(void)::once != -1)
  {
    _BBULogv();
  }

  v12 = gLockGet(void)::_gLock;
  BBUpdaterCommon::BBUMutex::lock(gLockGet(void)::_gLock);
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  if (*sLogBufferGet(void)::sLogBuffer || ((sLogInternalMask >> a1) & 1) != 0)
  {
    vsnprintf(gTempLogBuffer, 0x400uLL, a5, a6);
    gettimeofday(&v49, 0);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v44);
    v13 = MEMORY[0x29C286A50](&v44, LODWORD(v49.tv_sec));
    LOBYTE(v41.__locale_) = 46;
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v41, 1);
    v15 = v14;
    v16 = *v14;
    *(v14 + *(*v14 - 24) + 24) = 3;
    v17 = v14 + *(v16 - 24);
    if (*(v17 + 36) == -1)
    {
      std::ios_base::getloc((v14 + *(v16 - 24)));
      v18 = std::locale::use_facet(&v41, MEMORY[0x29EDC93D0]);
      v19 = (v18->__vftable[2].~facet_0)(v18, 32);
      std::locale::~locale(&v41);
      *(v17 + 36) = v19;
    }

    *(v17 + 36) = 48;
    v20 = MEMORY[0x29C286A50](v15, v49.tv_usec / 0x3E8uLL);
    *(v20 + *(*v20 - 24) + 24) = 1;
    LOBYTE(v41.__locale_) = 91;
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v41, 1);
    v22 = MEMORY[0x29C286A50](v21, a1);
    LOBYTE(v41.__locale_) = 46;
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v41, 1);
    v24 = MEMORY[0x29C286A50](v23, a2);
    LOBYTE(v41.__locale_) = 93;
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v41, 1);
    v26 = strlen(a3);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, a3, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "::", 2);
    v29 = strlen(a4);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, a4, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
    v32 = strlen(gTempLogBuffer);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, gTempLogBuffer, v32);
    std::ostringstream::str[abi:ne200100](&v44, &v41);
    if (sLogBufferGet(void)::once != -1)
    {
      _BBULogv();
    }

    if (*sLogBufferGet(void)::sLogBuffer)
    {
      if ((v43 & 0x80u) == 0)
      {
        locale = &v41;
      }

      else
      {
        locale = v41.__locale_;
      }

      if ((v43 & 0x80u) == 0)
      {
        v34 = v43;
      }

      else
      {
        v34 = v42;
      }

      (*(**sLogBufferGet(void)::sLogBuffer + 24))(*sLogBufferGet(void)::sLogBuffer, locale, v34);
    }

    if ((sLogInternalMask >> a1))
    {
      if (gVinylLogSyncFunc)
      {
        v35 = &v41;
        if ((v43 & 0x80u) != 0)
        {
          v35 = v41.__locale_;
        }

        gVinylLogSyncFunc(2, "%s", v35);
      }

      else
      {
        Stream = _BBULogGetStream(a1);
        if ((v43 & 0x80u) == 0)
        {
          v37 = &v41;
        }

        else
        {
          v37 = v41.__locale_;
        }

        fputs(v37, Stream);
        fflush(Stream);
        v38 = MEMORY[0x29EDCA620];
        if (Stream != *MEMORY[0x29EDCA620])
        {
          if ((v43 & 0x80u) == 0)
          {
            v39 = &v41;
          }

          else
          {
            v39 = v41.__locale_;
          }

          fputs(v39, *MEMORY[0x29EDCA620]);
          fflush(*v38);
        }
      }
    }

    if (v43 < 0)
    {
      operator delete(v41.__locale_);
    }

    v44 = *MEMORY[0x29EDC9538];
    *(&v44 + *(v44 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v45 = MEMORY[0x29EDC9570] + 16;
    if (v47 < 0)
    {
      operator delete(v46[7].__locale_);
    }

    v45 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v46);
    std::ostream::~ostream();
    MEMORY[0x29C286CA0](&v48);
  }

  return BBUpdaterCommon::BBUMutex::unlock(v12);
}

void sub_2982AE0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  BBUpdaterCommon::BBUMutex::unlock(v16);
  _Unwind_Resume(a1);
}

void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  v6 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a2, v5, v6);
LABEL_10:
  *(a2 + v6) = 0;
  return result;
}

uint64_t _BBULogGetStream(int a1)
{
  if (a1 > 8)
  {
    if (a1 > 13)
    {
      if (a1 == 14)
      {
        if (gLogStreamsGet(void)::once != -1)
        {
          _BBULogGetStream();
        }

        v1 = 56;
        goto LABEL_31;
      }

      if (a1 == 17)
      {
        if (gLogStreamsGet(void)::once != -1)
        {
          _BBULogGetStream();
        }

        v1 = 16;
        goto LABEL_31;
      }
    }

    else if (a1 == 9 || a1 == 13)
    {
      if (gLogStreamsGet(void)::once != -1)
      {
        _BBULogGetStream();
      }

      v1 = 48;
      goto LABEL_31;
    }

LABEL_28:
    if (gLogStreamsGet(void)::once != -1)
    {
      _BBULogGetStream();
    }

    v1 = 8;
    goto LABEL_31;
  }

  if ((a1 - 5) < 3)
  {
    if (gLogStreamsGet(void)::once != -1)
    {
      _BBULogGetStream();
    }

    v1 = 40;
    goto LABEL_31;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (gLogStreamsGet(void)::once != -1)
      {
        _BBULogGetStream();
      }

      v1 = 32;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (gLogStreamsGet(void)::once != -1)
  {
    _BBULogGetStream();
  }

  v1 = 24;
LABEL_31:
  v2 = *(gLogStreamsGet(void)::sLogStreams + v1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return *MEMORY[0x29EDCA620];
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C286CA0](a1 + 112);
  return a1;
}

uint64_t _BBULogPlain(int a1, const char *a2, ...)
{
  va_start(va, a2);
  if (gLockGet(void)::once != -1)
  {
    _BBULogv();
  }

  v4 = gLockGet(void)::_gLock;
  BBUpdaterCommon::BBUMutex::lock(gLockGet(void)::_gLock);
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  if (*sLogBufferGet(void)::sLogBuffer || ((sLogInternalMask >> a1) & 1) != 0)
  {
    va_copy(&v20[19], va);
    vsnprintf(gTempLogBuffer, 0x400uLL, a2, va);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    if (a1 == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "!!! ", 4);
    }

    v5 = strlen(gTempLogBuffer);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, gTempLogBuffer, v5);
    std::ostringstream::str[abi:ne200100](&v16, __p);
    if (sLogBufferGet(void)::once != -1)
    {
      _BBULogv();
    }

    if (*sLogBufferGet(void)::sLogBuffer)
    {
      if ((v15 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v7 = v15;
      }

      else
      {
        v7 = __p[1];
      }

      (*(**sLogBufferGet(void)::sLogBuffer + 24))(*sLogBufferGet(void)::sLogBuffer, v6, v7);
    }

    if ((sLogInternalMask >> a1))
    {
      if (gVinylLogSyncFunc)
      {
        v8 = __p;
        if ((v15 & 0x80u) != 0)
        {
          v8 = __p[0];
        }

        gVinylLogSyncFunc(2, "%s", v8);
      }

      else
      {
        Stream = _BBULogGetStream(a1);
        if ((v15 & 0x80u) == 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        fputs(v10, Stream);
        fflush(Stream);
        v11 = MEMORY[0x29EDCA620];
        if (Stream != *MEMORY[0x29EDCA620])
        {
          if ((v15 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          fputs(v12, *MEMORY[0x29EDCA620]);
          fflush(*v11);
        }
      }
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x29EDC9538];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v17 = MEMORY[0x29EDC9570] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x29C286CA0](v20);
  }

  return BBUpdaterCommon::BBUMutex::unlock(v4);
}

void sub_2982AE7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  BBUpdaterCommon::BBUMutex::unlock(v16);
  _Unwind_Resume(a1);
}

uint64_t _BBULogBinary(uint64_t result, uint64_t a2, const char *a3, const char *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v43 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    v7 = a7;
    v11 = a2;
    v12 = result;
    v13 = 0;
    v33 = a2 >= 0 && a6 > 0x3E80;
    if (v33)
    {
      v14 = a6 - 224;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0xFFFFFFFFLL;
    if (a2 >= 0 && a6 > 0x3E80)
    {
      v15 = 112;
    }

    v39 = v15;
    v34 = v15 + v14;
    v36 = result;
    v37 = a2;
    do
    {
      if (v13 == v39)
      {
        _BBULog(v12, v11, a3, a4, " -- middle of buffer snipped -- \n");
        v13 = v34;
      }

      v41 = 0u;
      memset(v42, 0, sizeof(v42));
      v40 = 0u;
      v16 = a6 - v13;
      if (a6 == v13)
      {
        *(v42 + 15) = 538976288;
        *&v17 = 0x2020202020202020;
        *(&v17 + 1) = 0x2020202020202020;
        v41 = v17;
        v42[0] = v17;
        v18 = 51;
        v40 = v17;
      }

      else
      {
        v19 = a3;
        v20 = a4;
        if (v16 >= 0x10)
        {
          v16 = 16;
        }

        v21 = (a5 + v13);
        if (v16 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v16;
        }

        v23 = (54 - 3 * v22) - 3;
        v24 = (a5 + v13);
        v25 = v22;
        v26 = &v40 + 1;
        do
        {
          v27 = *v24++;
          v28 = a0123456789abcd_1[v27 & 0xF];
          *(v26 - 1) = a0123456789abcd_1[v27 >> 4];
          *v26 = v28;
          v26[1] = 32;
          v26 += 3;
          v23 += 3;
          --v25;
        }

        while (v25);
        memset(v26 - 1, 32, 3 * (17 - v22));
        v29 = &v40;
        v30 = 0;
        do
        {
          v32 = *v21++;
          v31 = v32;
          if ((v32 - 32) >= 0x5F)
          {
            v31 = 46;
          }

          *(v29 + v23) = v31;
          v29 = (v29 + 1);
          --v30;
          --v22;
        }

        while (v22);
        v18 = v23 - v30;
        a4 = v20;
        a3 = v19;
        v12 = v36;
        v11 = v37;
        v7 = a7;
      }

      strcpy(&v40 + v18, "\r\n");
      result = _BBULog(v12, v11, a3, a4, "%c%04zx  %s", v7, v13, &v40);
      v13 += 16;
    }

    while (v13 < a6);
    if (v33)
    {
      return _BBULog(v12, v11, a3, a4, "(snipped)\n");
    }
  }

  return result;
}

uint64_t _BBULogTracer::_BBULogTracer(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, char *__format, ...)
{
  va_start(va, __format);
  v14 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if (((*gBBULogMaskGet(void)::sBBULogMask >> a2) & 1) == 0)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if ((a3 & 0x80000000) != 0 || gBBULogVerbosity >= a3)
  {
LABEL_6:
    vsnprintf(__str, 0x100uLL, __format, va);
    _BBULog(a2, a3, a4, a5, "ENTER: %s\n", __str);
  }

  return a1;
}

void _BBULogTracer::~_BBULogTracer(const char **this, uint64_t a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  v3 = *this;
  if (((*gBBULogMaskGet(void)::sBBULogMask >> v3) & 1) == 0)
  {
    v4 = *(this + 1);
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = *(this + 1);
  if (gBBULogVerbosity >= v4 || (v4 & 0x80000000) != 0)
  {
LABEL_8:
    _BBULog(v3, v4, this[1], this[2], "EXIT:\n");
  }
}

void BBUFDRLogHandler(uint64_t result, const char *a2)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBULog", "", "Dump: %s\n", a2);
  }
}

void BBULogParseDebugArgs(CFDictionaryRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    HIBYTE(v19) = 0;
    LOBYTE(__p[0]) = 0;
    ctu::cf::dict_adapter::dict_adapter(v17, v1);
    Value = CFDictionaryGetValue(*a1, @"BasebandUpdater");
    ctu::cf::dict_adapter::dict_adapter(v16, Value);
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    v19 = v15;
    *__p = *v14;
    v4 = HIBYTE(v15);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v4 = v14[1];
    }

    if (v4)
    {
      v14[0] = 0;
      v14[1] = 0;
      v15 = 0;
      BBUpdaterCommon::BBUStringToArgv(__p, v14);
      v5 = MEMORY[0x29EDCA660];
      v6 = MEMORY[0x29EDCA650];
      *MEMORY[0x29EDCA658] = 1;
      *v5 = 1;
      do
      {
        while (1)
        {
          while (1)
          {
            v7 = getopt_long(((v14[1] - v14[0]) >> 3) - 1, v14[0], "hl:C:v:x:t:r:p:e:c:w:i:s:fUFD:nHSqPV", &BBULogParseDebugArgs(ctu::cf::CFSharedRef<__CFDictionary const>)::long_options, 0);
            if (v7 <= 117)
            {
              break;
            }

            if (v7 == 118)
            {
              v13 = 0;
              v12 = strtoul(*v6, &v13, 0);
              if (!*v13)
              {
                gBBULogVerbosity = v12;
              }
            }

            else if (v7 == 120)
            {
              v13 = 0;
              v8 = strtoul(*v6, &v13, 0);
              if (!*v13)
              {
                BBULogSetExtraVerbosity(v8, v9);
              }
            }
          }

          if (v7 != 108)
          {
            break;
          }

          v13 = 0;
          v10 = strtoul(*v6, &v13, 0);
          if (!*v13)
          {
            v11 = v10;
            sLogInternalMask = v10;
            if (gBBULogMaskGet(void)::once != -1)
            {
              BBULogParseDebugArgs();
            }

            *gBBULogMaskGet(void)::sBBULogMask = v11;
          }
        }
      }

      while (v7 != -1);
      if (v14[0])
      {
        v14[1] = v14[0];
        operator delete(v14[0]);
      }
    }

    MEMORY[0x29C286020](v16);
    MEMORY[0x29C286020](v17);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2982AEED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C286020](&a13, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C286020](&a15);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t BBULogRegisterDelegates(void)
{
  TelephonyUtilDebugRegisterDelegate();
  v0 = BBUFSDebugRegisterDelegate(&BBULogRegisterRemoteFSDelegate(void)::delegate);
  result = BBUpdaterCommon::inRestoreOS(v0);
  if (result)
  {
    ETLDebugRegisterDelegate();

    return MEMORY[0x2A1C6DB38](BBULogRegisterKTLDelegate(void)::delegate);
  }

  return result;
}

void BBULogRegisterLogBuffer(uint64_t *a1)
{
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  v2 = sLogBufferGet(void)::sLogBuffer;
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void BBULogUnregisterLogBuffer(uint64_t a1)
{
  if (sLogBufferGet(void)::once != -1)
  {
    _BBULogv();
  }

  if (*sLogBufferGet(void)::sLogBuffer)
  {
    v1 = sLogBufferGet(void)::sLogBuffer;
    v2 = *(sLogBufferGet(void)::sLogBuffer + 8);
    *sLogBufferGet(void)::sLogBuffer = 0;
    *(v1 + 8) = 0;
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

pthread_mutex_t *___ZL8gLockGetv_block_invoke()
{
  v0 = operator new(0x40uLL);
  result = BBUpdaterCommon::BBUMutex::BBUMutex(v0, "logging");
  gLockGet(void)::_gLock = v0;
  return result;
}

void *___ZL13sLogBufferGetv_block_invoke()
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  sLogBufferGet(void)::sLogBuffer = result;
  return result;
}

FILE *___ZL14gLogStreamsGetv_block_invoke()
{
  v0 = operator new(0x48uLL);
  v1 = MEMORY[0x29EDCA620];
  v2 = *MEMORY[0x29EDCA620];
  *v0 = *MEMORY[0x29EDCA620];
  v0[1] = v2;
  v0[2] = v2;
  v0[6] = v2;
  v0[7] = v2;
  v0[5] = v2;
  result = fopen("/dev/null", "w");
  v0[8] = result;
  v4 = *MEMORY[0x29EDCA610];
  v0[3] = *v1;
  v0[4] = v4;
  gLogStreamsGet(void)::sLogStreams = v0;
  return result;
}

void BBULogPrintDelegate(int a1, const char *a2, const char *a3, va_list a4)
{
  v10 = *MEMORY[0x29EDCA608];
  gettimeofday(&v8, 0);
  vsnprintf(__str, 0x100uLL, a3, a4);
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if (((*gBBULogMaskGet(void)::sBBULogMask >> a1) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(a1, "%u.%03u: %s: %s", LODWORD(v8.tv_sec), v8.tv_usec / 0x3E8u, a2, __str);
  }
}

void BBULogTelephonyUtilPrintBinaryDelegate(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(6, v5, a3, a4);
}

void BBULogPrintBinaryDelegate(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (a4 < 0x801)
  {
    v8 = a4;
  }

  else
  {
    HIBYTE(v12) = 9;
    LOBYTE(v11) = 41;
    __p = *"(snipped)";
    v8 = 2048;
  }

  gettimeofday(&v9, 0);
  if (gBBULogMaskGet(void)::once != -1)
  {
    gBBULogMaskGet();
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & (1 << a1)) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(a1, "%u.%03u: %s: %u%s\n", LODWORD(v9.tv_sec), v9.tv_usec / 0x3E8u, a2, a4, &__p);
    if (gBBULogMaskGet(void)::once != -1)
    {
      BBULogParseDebugArgs();
    }
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & (1 << a1)) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogBinary(a1, 0, "BBULog", "", a3, v8, 32);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void sub_2982AF45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBULogETLPrintBinaryDelegate(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(7, v5, a3, a4);
}

void BBULogKTLPrintBinaryDelegate(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(8, v5, a3, a4);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void *_params_get_der_key(int a1, int a2)
{
  switch(a1)
  {
    case 1:
      v2 = &der_key_access_groups;
      goto LABEL_29;
    case 2:
      v2 = &der_key_external_data;
      goto LABEL_29;
    case 3:
      v2 = &der_key_acm_handle;
      goto LABEL_29;
    case 4:
      v2 = &der_key_salt;
      goto LABEL_29;
    case 5:
      v2 = &der_key_data;
      goto LABEL_29;
    case 6:
      v2 = &der_key_ecdh_seed;
      goto LABEL_29;
    case 7:
      v2 = &der_key_ecdh_iv;
      goto LABEL_29;
    case 8:
      v3 = &der_key_raw_output;
      goto LABEL_27;
    case 9:
      v3 = &der_key_options;
      goto LABEL_27;
    case 10:
      v2 = &der_key_shared_info;
      goto LABEL_29;
    case 11:
      v2 = &der_key_shared_info2;
      goto LABEL_29;
    case 12:
      v2 = &der_key_transcode_shared_info;
      goto LABEL_29;
    case 13:
      v2 = &der_key_transcode_shared_info2;
      goto LABEL_29;
    case 14:
      v2 = &der_key_transcode_ecdh_seed;
      goto LABEL_29;
    case 15:
      v2 = &der_key_persona_uuid;
      goto LABEL_29;
    case 16:
      v3 = &der_key_sub_key_type;
      goto LABEL_27;
    case 17:
      v2 = &der_key_system_key_client_seed;
      goto LABEL_29;
    case 18:
      v3 = &der_key_system_key_options;
      goto LABEL_27;
    case 19:
      v4 = der_key_system_key_no_img4;
      v5 = a2 == 3;
      goto LABEL_30;
    case 20:
      v3 = &der_key_remote_session_signing_key_type;
      goto LABEL_27;
    case 21:
      v2 = &der_key_remote_session_signing_key_certificate;
      goto LABEL_29;
    case 22:
      v3 = &der_key_gid_ref_key_options;
      goto LABEL_27;
    case 23:
      v3 = &der_key_pka_flags;
      goto LABEL_27;
    case 24:
      v2 = &der_key_volume_uuid;
      goto LABEL_29;
    case 25:
      v2 = &der_key_seed;
LABEL_29:
      v4 = *v2;
      v5 = a2 == 2;
      goto LABEL_30;
    case 26:
      v3 = &der_key_test_flags;
LABEL_27:
      v4 = *v3;
      v5 = a2 == 1;
LABEL_30:
      if (v5)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t aks_decrypt(uint64_t a1, char *a2, rsize_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 3758097122;
  v16 = 0;
  v8 = 3758097090;
  if (!a2 || !a3 || der_get_sizeof(a2, &a2[a3]) != a3)
  {
    return v8;
  }

  v8 = aks_ref_key_create_with_blob();
  if (!v8)
  {
    v8 = aks_ref_key_decrypt(v16, a4, a5, a2, a3, a6, a7);
    aks_ref_key_free(&v16);
  }

  if (v8 <= -536870175)
  {
    if (v8 != -536870212)
    {
      if (v8 == -536870194)
      {
        return v7;
      }

      return v8;
    }

    return 3758097084;
  }

  if (v8 != -536870174 && v8 != -536363000)
  {
    if (v8 != -536362999)
    {
      return v8;
    }

    return 3758097084;
  }

  return v7;
}

uint64_t aks_delete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 3758097122;
  v10 = 0;
  v6 = 3758097090;
  if (!a2 || !a3 || der_get_sizeof(a2, a2 + a3) != a3)
  {
    return v6;
  }

  v6 = aks_ref_key_create_with_blob();
  if (!v6)
  {
    v6 = aks_ref_key_delete(v10, a4, a5);
    aks_ref_key_free(&v10);
  }

  if (v6 <= -536870175)
  {
    if (v6 != -536870212)
    {
      if (v6 == -536870194)
      {
        return v5;
      }

      return v6;
    }

    return 3758097084;
  }

  if (v6 != -536870174 && v6 != -536363000)
  {
    if (v6 != -536362999)
    {
      return v6;
    }

    return 3758097084;
  }

  return v5;
}

uint64_t decode_ref_key_with_result(uint64_t a1, uint64_t a2, rsize_t *a3, void *a4, void **a5, void *a6)
{
  v16[0] = a1;
  v16[1] = a1 + a2;
  v15 = 0;
  __n_4 = 0;
  __n = 0;
  __s = 0;
  if (a1 && a3 && a4 && a5 && a6 && ccder_blob_decode_range() && der_utils_decode_implicit_raw_octet_string_alloc(v16, 4, &__s, &__n))
  {
    if (der_utils_decode_implicit_raw_octet_string_alloc(v16, 4, &__n_4, &v15))
    {
      v10 = 0;
      *a3 = __n_4;
      *a4 = v15;
      *a5 = __s;
      *a6 = __n;
      return v10;
    }

    decode_ref_key_with_result_cold_1(__n_4, &v15, &__n_4);
  }

  v10 = 3758097084;
  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  return v10;
}

uint64_t aks_ref_key_get_version(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  result = der_dict_find_value(der_key_version, &v2, &v3);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t aks_ref_key_verify_sig(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v23[2] = *MEMORY[0x29EDCA608];
  v23[0] = a6;
  v23[1] = a6 + a7;
  v22 = 0;
  v21 = 0;
  der_utils_decode_implicit_raw_octet_string(v23, 4, &v22, &v21);
  if ((v10 & 1) == 0)
  {
    v21 = a6;
    v22 = v7;
  }

  v11 = 3758097090;
  type = aks_ref_key_get_type(a1);
  if ((type - 4) < 2)
  {
    v19 = 0;
    goto LABEL_8;
  }

  if ((type - 7) < 2)
  {
    v13 = MEMORY[0x29C286FC0]();
    v19 = 0;
    if (v13)
    {
LABEL_9:
      MEMORY[0x2A1C7C4A8]();
      v15 = &v18[-v14];
      bzero(&v18[-v14], v14);
      v20 = 0;
      public_key = aks_ref_key_get_public_key(a1, &v20);
      if (public_key && !MEMORY[0x29C286FE0](v13, v20, public_key, v15) && !ccec_verify())
      {
        if ((v19 & 1) == 0)
        {
          return 3758604294;
        }

        return 0;
      }

      return v11;
    }

LABEL_8:
    v13 = MEMORY[0x29C286FB0]();
    goto LABEL_9;
  }

  if (type == 3)
  {
    v20 = 0;
    if (aks_ref_key_get_public_key(a1, &v20))
    {
      if (v20 == 32 && v21 && v22 == 64)
      {
        ccsha512_di();
        if (cced25519_verify())
        {
          return 3758604294;
        }

        return 0;
      }
    }
  }

  return v11;
}

uint64_t aks_ref_key_get_type(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  result = der_dict_find_value(der_key_type, &v2, &v3);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t aks_ref_key_get_public_key(void *a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v16 = 0;
  if (!a1[4])
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  if (der_dict_find_value(der_key_public_key, &v14, &v15))
  {
    v13[0] = v14;
    v13[1] = v14 + v15;
    der_utils_decode_implicit_raw_octet_string(v13, 4, &v17, &v16);
  }

  type = aks_ref_key_get_type(a1);
  if ((type - 7) < 2)
  {
    v5 = MEMORY[0x29C286FC0]();
    goto LABEL_9;
  }

  if ((type - 4) <= 1)
  {
    v5 = MEMORY[0x29C286FB0]();
LABEL_9:
    if (v5)
    {
      v7 = firebloom_cp_prime_bitlen(v5);
      if (v17 == (v7 + 7) >> 3)
      {
        if (v16 && !a1[8])
        {
          MEMORY[0x2A1C7C4A8]();
          bzero(&v13[-1] - v8, v8);
          ccec_compact_import_pub();
          v9 = (2 * firebloom_cp_prime_size()) | 1;
          v10 = calloc(v9, 1uLL);
          a1[8] = v10;
          a1[9] = v9;
          if (v10)
          {
            ccec_export_pub();
          }

          cc_clear();
        }

        v11 = a1[9];
        v16 = a1[8];
        v17 = v11;
      }
    }
  }

  *a2 = v17;
  return v16;
}

uint64_t aks_ref_key_get_blob(uint64_t *a1, void *a2)
{
  result = *a1;
  *a2 = a1[1];
  return result;
}

uint64_t aks_ref_key_get_uuid(uint64_t a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  if (!*(a1 + 32))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  value = der_dict_find_value(der_key_uuid, &v6, &v7);
  result = 0;
  if (value)
  {
    v5[0] = v6;
    v5[1] = v6 + v7;
    der_utils_decode_implicit_raw_octet_string(v5, 4, &v9, &v8);
    *a2 = v9;
    return v8;
  }

  return result;
}

uint64_t aks_ref_key_get_raw_key_class(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  result = der_dict_find_value(der_key_keybag_class, &v2, &v3);
  if (result)
  {
    return der_get_number();
  }

  return result;
}

uint64_t aks_ref_key_get_options(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  value = der_dict_find_value(der_key_options, &v3, &v4);
  result = 0;
  if (value)
  {
    return der_get_number();
  }

  return result;
}

void aks_dealloc(void *a1, rsize_t __n)
{
  memset_s(a1, __n, 0, __n);

  free(a1);
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return memset_s(v0, 8uLL, 0, 8uLL);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return encode_list_add_der();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return _get_merged_params();
}

uint64_t OUTLINED_FUNCTION_6(void *a1)
{

  return memset_s(a1, 8uLL, 0, 8uLL);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return _aks_operation();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);

  return encode_list_dict(v4, va, va1);
}

uint64_t OUTLINED_FUNCTION_12(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_13(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2)
{

  return encode_list_add_der();
}

void OUTLINED_FUNCTION_19(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 40) = v3;
  *(v2 + 16) = a1 + a2;
}

uint64_t OUTLINED_FUNCTION_22(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a10 = v18;
  *v20 = a17;
  *v19 = a18;
}

void *OUTLINED_FUNCTION_28()
{

  return calloc(8uLL, 1uLL);
}

uint64_t OUTLINED_FUNCTION_29(void *a1)
{

  return memset_s(a1, 0x50uLL, 0, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2)
{

  return encode_list_add_der();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);

  return encode_list_dict(v8, va, va1);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, rsize_t a19, uint64_t a20, uint64_t a21)
{
  v23 = a21;
  v24 = *(v21 - 88);

  return decode_ref_key_with_result(v23, v24, &a19, &a20, &a17, &a18);
}

uint64_t OUTLINED_FUNCTION_40()
{
  v3 = *v1;

  return encode_list_remove_key(v0, v3);
}

void OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  *a10 = a11;
  *v13 = a12;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return _get_merged_params();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return encode_list_merge_dict(v0);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return encode_list_add_der();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return _aks_operation();
}

uint64_t OUTLINED_FUNCTION_57(int a1, void *__s, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, rsize_t __smax)
{

  return memset_s(__s, __smax, 0, __smax);
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1, uint64_t a2)
{

  return encode_list_add_number(v2, a2, v3);
}

void *OUTLINED_FUNCTION_59()
{

  return calloc(0x50uLL, 1uLL);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

uint64_t aks_delete_xart_leak(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  aks_delete_xart_leak_cold_1();
  return 3758097084;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x29EDCA608];
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return _iterate_path_cold_1(result, a2, a3);
    }
  }

  return result;
}

char *aks_dump_path(char *result, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    bzero(v8, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v8);
    if (result)
    {
      v6[0] = MEMORY[0x29EDCA5F8];
      v6[1] = 0x40000000;
      v6[2] = __aks_dump_path_block_invoke;
      v6[3] = &__block_descriptor_tmp_8;
      v7 = a2;
      v4[0] = MEMORY[0x29EDCA5F8];
      v4[1] = 0x40000000;
      v4[2] = __aks_dump_path_block_invoke_2;
      v4[3] = &__block_descriptor_tmp_128;
      v5 = a2;
      return _iterate_path(v8, v6, v4);
    }
  }

  return result;
}

uint64_t __aks_dump_path_block_invoke(uint64_t a1, uint64_t a2)
{
  path_class = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || path_class == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), path_class);
  }

  return 1;
}

uint64_t aks_fs_supports_enhanced_apfs()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = IORegistryEntryFromPath(*MEMORY[0x29EDBB118], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x29EDB8ED8], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((_aks_check_apfs_shared_datavolume_bootarg_init & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      _aks_check_apfs_shared_datavolume_bootarg_value = 1;
    }

    _aks_check_apfs_shared_datavolume_bootarg_init = 1;
  }

  v4 = _aks_check_apfs_shared_datavolume_bootarg_value;
  fprintf(*MEMORY[0x29EDCA620], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, _aks_check_apfs_shared_datavolume_bootarg_value, "");
  return v3 | v4;
}

void aks_fs_status_with_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    v6 = a2 + 16;
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 16));
      if (stat(__str, &v7))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        _get_path_class(__str);
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 48;
      --a3;
    }

    while (a3);
  }
}

uint64_t aks_show_allowlist()
{
  puts("shared allow list:");
  v0 = &byte_29EE8F000;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_29EE8F6C0;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void aks_gather_stats(const char *a1, char a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    bzero(&v13, 0x878uLL);
    bzero(v12, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v12))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 0x40000000;
      v11[2] = __aks_gather_stats_block_invoke_2;
      v11[3] = &__block_descriptor_tmp_141;
      v11[4] = v4;
      _iterate_path(v12, &__block_literal_global_1, v11);
      if (!statfs(v12, &v13))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", class_names[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }
}

uint64_t aks_kext_set_options(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  aks_kext_set_options_cold_1();
  return 3758097084;
}

uint64_t aks_internal_state()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_internal_state_cold_1();
  return 3758097084;
}

uint64_t aks_run_internal_test(unsigned int a1)
{
  input[1] = *MEMORY[0x29EDCA608];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_run_internal_test_cold_1();
    return 3758097084;
  }
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t get_akstest_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_156);
  return get_akstest_client_connection_connection;
}

void __get_akstest_client_connection_block_invoke()
{
  if (!get_akstest_client_connection_connection)
  {
    get_akstest_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t akstest_new_ek(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  return v11;
}

uint64_t akstest_check_class(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a3;
  return IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
}

uint64_t akstest_last_user(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  return v9;
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x29EDBB118];
  v4 = IORegistryEntryFromPath(*MEMORY[0x29EDBB118], path);
  v5 = MEMORY[0x29EDCA6B0];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x29EDCA6B0], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_1_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_3_0(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t OUTLINED_FUNCTION_7_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v14 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = der_equal(*(*(a5 + 24) + v10), *(*(a5 + 24) + v10) + *(*(*(a5 + 24) + v10) + 1) + 2, a1, a1 + a2);
      if (v12)
      {
        break;
      }

      ++v11;
      v10 += 40;
      if (v11 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v15 = (*(a5 + 24) + v10);
    if (v15[1])
    {
      v13 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v15[1] = a3;
      v15[2] = a3 + a4;
      v15[3] = a3;
      v15[4] = a3 + a4;
      v13 = 1;
    }

LABEL_10:
    v14 = v13 | !v12;
  }

  return v14 & 1;
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1, a1 + a2);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t encode_list_remove_key(void **a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      v7 = v6 + v2[2];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6, v7))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t encode_list_get_data(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  key = _encode_list_find_key(a1, a2);
  if (!key)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = key[1] + key[2];
      v15[0] = key[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (der_utils_decode_implicit_raw_octet_string_copy(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t encode_list_get_number(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_number();
  }

  return v5;
}

uint64_t encode_list_get_BOOL(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_BOOL();
  }

  return v5;
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v10 = *MEMORY[0x29EDCA608];
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!encode_list_remove_key(a5, v7) && !encode_list_add_der())
    {
      return 1;
    }
  }

  else
  {
    _merge_dict_cb_cold_1();
  }

  _merge_dict_cb_cold_2();
  return 0;
}

uint64_t der_utils_decode_fv_data(__int128 *a1, int a2, void **a3)
{
  v6 = *a3;
  v5 = a3[1];
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    a3[1] = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_partial(__int128 *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = *a1;
  v5 = ccder_blob_decode_range();
  if (v5)
  {
    *a1 = v7;
  }

  return v5;
}

uint64_t se_derivation_request_serialization_len(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_3_1(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_1(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v4 = 0;
  v6 = 0;

  return encode_list_dict(va2, va, va1);
}

uint64_t OUTLINED_FUNCTION_20_0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return ccder_sizeof();
}

void *OUTLINED_FUNCTION_26_0()
{

  return calloc(0x18uLL, 1uLL);
}

void *OUTLINED_FUNCTION_27_0(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_33_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11)
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return der_dict_iterate();
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = a1 + 1;
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 = (v3 + a3);
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      return v3 + v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}