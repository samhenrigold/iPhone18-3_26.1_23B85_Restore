void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F2CFEC40;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_1B5124DFC(_Unwind_Exception *a1)
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
  a1->__locale_ = &unk_1F2CFEC40;
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
  a1->__locale_ = &unk_1F2CFEC40;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
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
  a1->__locale_ = &unk_1F2CFEC88;
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
  a1->__locale_ = &unk_1F2CFEC88;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
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

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
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
  a1->__locale_ = &unk_1F2CFED18;
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
  a1->__locale_ = &unk_1F2CFED18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
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
  a1->__locale_ = &unk_1F2CFED60;
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
  a1->__locale_ = &unk_1F2CFED60;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1B8C85350);
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

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1B8C85350);
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

void sub_1B5125B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_80;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_57;
  }

  v111 = *current;
  v6 = current[1];
  v112 = current[1];
  if (this->__icase_)
  {
    v111 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v112 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    negate = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
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
    while (v111 != *(p_second - 1) || v112 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_p = &__p;
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v113);
    v13 = this->__ranges_.__begin_;
    v14 = v110;
    v15 = this->__ranges_.__end_ - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = &v13->second.__r_.__value_.__r.__words[2] + 7;
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v85 = 0;
    goto LABEL_197;
  }

  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v113, &__p);
  v86 = this->__equivalences_.__begin_;
  v87 = v110;
  v88 = this->__equivalences_.__end_ - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      size = HIBYTE(v86->__r_.__value_.__r.__words[2]);
      v96 = size;
      if ((size & 0x80u) != 0)
      {
        size = v86->__r_.__value_.__l.__size_;
      }

      if (v90 == size)
      {
        v97 = v96 >= 0 ? v86 : v86->__r_.__value_.__r.__words[0];
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      ++v86;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v100 = tab[v111];
      if (((v100 & mask) != 0 || v111 == 95 && (mask & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((tab[v112] & mask) != 0 || (mask & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      neg_mask = this->__neg_mask_;
      if ((v100 & neg_mask) != 0 || v111 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_214:
        negate = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v112] & neg_mask) == 0)
      {
        negate = 1;
        if (v112 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    negate = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  negate = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = *a2->__current_;
  v111 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v111 = v38;
  }

  v39 = this->__chars_.__begin_;
  v40 = this->__chars_.__end_ - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    end = this->__neg_chars_.__end_;
    v45 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v46 = !v45 || v45 == end;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      negate = 1;
      goto LABEL_80;
    }
  }

  v50 = this->__ranges_.__begin_;
  v51 = this->__ranges_.__end_;
  if (v50 != v51)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v112);
      v50 = this->__ranges_.__begin_;
      v51 = this->__ranges_.__end_;
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = negate;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = &v50->second.__r_.__value_.__r.__words[2] + 7;
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          negate = v102;
          goto LABEL_128;
        }
      }

      negate = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_157;
  }

  v72 = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v112, &__p);
  v73 = this->__equivalences_.__begin_;
  v74 = this->__equivalences_.__end_ - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = v73->__r_.__value_.__l.__size_;
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : v73->__r_.__value_.__r.__words[0];
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    ++v73;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  negate = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = this->__mask_;
  if ((v111 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v111] & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  negate |= v84;
LABEL_80:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v49 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v49 = -995;
  }

  a2->__do_ = v49;
  a2->__node_ = first;
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

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
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

void sub_1B512658C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
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

void sub_1B5126720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
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

void sub_1B5126848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x1B8C84790](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
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
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_1B5126C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, &v11[v10], __p);
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

  return v7 + 2;
}

void sub_1B5126DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this, uint64_t a5)
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
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
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
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
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
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
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

    std::regex_traits<char>::transform<char *>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v3, &v3[v32]);
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
  MEMORY[0x1B8C84790](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
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

void sub_1B51278E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
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
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::wstring, std::wstring>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

  JUMPOUT(0x1B8C85350);
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

  JUMPOUT(0x1B8C85350);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
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
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1B8C84790](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1B8C85350);
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

  JUMPOUT(0x1B8C85350);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F2CFEF28;
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

  JUMPOUT(0x1B8C85350);
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
  MEMORY[0x1B8C84790](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = (v6 + 2);
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
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

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
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

  JUMPOUT(0x1B8C85350);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
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
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, (v9 + 1), a3);
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
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
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

void sub_1B5129120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const wchar_t *> *this, unsigned int a5)
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

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::wssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const wchar_t *>> *a3, uint64_t *a4, char a5)
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

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
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
            std::allocator<std::__state<char>>::destroy[abi:ne200100](&v59, v41);
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

void sub_1B51299AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::deque<std::__state<char>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *a2, const __int32 *a3, uint64_t *a4, int a5, char a6)
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
  v18 = a3 - a2;
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
        v53 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
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
          std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v53 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
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
  *(v35 + 8) = &a2[v14];
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

void sub_1B5129E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
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
  ++a1[5];
  return result;
}

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
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
  result = vaddq_s64(a1[2], xmmword_1B5AE1340);
  a1[2] = result;
  return result;
}

void std::deque<std::__state<char>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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

void sub_1B512A2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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

void std::deque<std::__state<char>>::__add_front_capacity(const void **a1)
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
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x2A)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = (v5 + 42);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(a1, v10);
}

void sub_1B512A5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v7);
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

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

char *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 = (v5 + 24);
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 = (v5 + 24);
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12;
        v12 += 2;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::wssub_match> *this, std::vector<std::wssub_match>::size_type __sz)
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

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::wssub_match> *this, std::vector<std::wssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v11 -= 24;
      }

      while (v11);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    v12 = 24 * __n;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v15 = this->__end_;
    v16 = (24 * v6 + this->__begin_ - v15);
    if (v15 != this->__begin_)
    {
      v17 = (24 * v6 + this->__begin_ - v15);
      do
      {
        v18 = begin->std::pair<std::__wrap_iter<const wchar_t *>, std::__wrap_iter<const wchar_t *>>;
        *(v17 + 2) = *&begin->matched;
        *v17 = v18;
        v17 += 24;
        ++begin;
      }

      while (begin != v15);
      begin = this->__begin_;
    }

    this->__begin_ = v16;
    this->__end_ = (24 * v6 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(std::regex_traits<char> *a1, uint64_t **a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(v5, v7, v7 + v6);
}

void sub_1B512AC50(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    operator new();
  }

  while (v7 != a3 && *v7 == 124)
  {
    v8 = a1->__end_;
    v9 = v7 + 1;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, v7 + 1, a3);
    if (v9 == v7)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v8);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v10)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, _BYTE *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  while (1)
  {
    v11 = v8 == a3 ? v8 : v8 + 1;
    if (v11 == a3)
    {
      break;
    }

    v9 = memchr(v11, 10, a3 - v11);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = a3;
    }

    v10 = a1->__end_;
    if (v8 == v11)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v11, v8);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, _BYTE *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  while (1)
  {
    v11 = v8 == a3 ? v8 : v8 + 1;
    if (v11 == a3)
    {
      break;
    }

    v9 = memchr(v11, 10, a3 - v11);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = a3;
    }

    v10 = a1->__end_;
    if (v8 == v11)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v11, v8);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          marked_count = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 1, this->__marked_count_);
          this->__marked_count_ += marked_count;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

          goto LABEL_27;
        }

        if (v7 == 61)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          v9 = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 0, this->__marked_count_);
          this->__marked_count_ += v9;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

LABEL_27:
          v3 = v8 + 1;
          std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v14.__traits_.__loc_);
          return v3;
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v11 = a2[1];
    if (v11 == 66)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 98)
      {
        return v3;
      }

      v12 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          operator new();
        }

        if (v6 - 42 >= 2)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
        }

LABEL_28:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      v8 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v8 == 63 && a2[2] == 58)
        {
          ++this->__open_count_;
          v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, a2 + 3, a3);
          if (v9 != a3 && *v9 == 41)
          {
            --this->__open_count_;
            return v9 + 1;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
          marked_count = this->__marked_count_;
          ++this->__open_count_;
          v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, v8, a3);
          if (v11 != a3)
          {
            v12 = v11;
            if (*v11 == 41)
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
              --this->__open_count_;
              return v12 + 1;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_28;
      }
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v11, v23, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
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
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
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

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          v8 = 12;
          goto LABEL_69;
        }

        v9 = this;
        v8 = 12;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v8 = 10;
          goto LABEL_69;
        }

        v9 = this;
        v8 = 10;
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_72;
          }

          if (*v4 < 65)
          {
            goto LABEL_72;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_72;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
            goto LABEL_67;
          }

          goto LABEL_69;
        }

        if (v5 == 95)
        {
          goto LABEL_72;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v8 = *a2;
        if (this)
        {
LABEL_67:
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
        return ++v4;
      }

      if (!this)
      {
        v8 = 0;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 0;
    }

LABEL_68:
    std::string::operator=(v9, v8);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        v8 = 13;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 13;
    }

    else
    {
      if (v5 != 116)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v8 = 9;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 9;
    }

    goto LABEL_68;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_41;
      }

      goto LABEL_64;
    }

    if (!this)
    {
      v8 = 11;
      goto LABEL_69;
    }

    v9 = this;
    v8 = 11;
    goto LABEL_68;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_72;
  }

  v4 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_72;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_72;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
LABEL_72:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
  {
    v15 |= 0x20u;
    if ((v15 - 97) < 6)
    {
      v16 = -87;
      goto LABEL_51;
    }

    goto LABEL_72;
  }

LABEL_51:
  v17 = v16 + v15 + 16 * (v14 + v6 + v13);
  if (this)
  {
    std::string::operator=(this, v17);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
  }

  v4 += 3;
  return v4;
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
  memset(&v23, 0, sizeof(v23));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, &v23);
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, &v23);
        }

        else
        {
          v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, &v23, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v23, v12);
    ++v4;
  }

LABEL_16:
  if (v4 != a3)
  {
    v13 = *v4;
    if (v13 != 93)
    {
      v15 = v4 + 1;
      if (v4 + 1 != a3 && v13 == 45 && *v15 != 93)
      {
        memset(&v22, 0, sizeof(v22));
        v4 += 2;
        if (v15 + 1 != a3 && *v15 == 91 && *v4 == 46)
        {
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v15 + 2, a3, &v22);
LABEL_55:
          v4 = v16;
          goto LABEL_56;
        }

        if ((v11 | 0x40) == 0x40)
        {
          LODWORD(v15) = *v15;
          if (v15 == 92)
          {
            if (v11)
            {
              v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4, a3, &v22);
            }

            else
            {
              v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3, &v22, v6);
            }

            goto LABEL_55;
          }
        }

        else
        {
          LOBYTE(v15) = *v15;
        }

        std::string::operator=(&v22, v15);
LABEL_56:
        v21 = v23;
        memset(&v23, 0, sizeof(v23));
        __p = v22;
        memset(&v22, 0, sizeof(v22));
        std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v21, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_)
    {
      if (v23.__r_.__value_.__l.__size_ != 1)
      {
        v14 = v23.__r_.__value_.__r.__words[0];
LABEL_40:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
        goto LABEL_41;
      }

      v14 = v23.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v23.__r_.__value_.__s + 23))
  {
    v14 = &v23;
    if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_40;
    }

LABEL_25:
    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v14->__r_.__value_.__s.__data_[0]);
  }

LABEL_41:
  v17 = 1;
LABEL_42:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    return v4;
  }

  return v6;
}

void sub_1B512C47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v8, &v19);
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
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, &v11[v10], __p);
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

void sub_1B512C684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
  v10 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v8, *(a1 + 24) & 1);
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
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v8, &v13);
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

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
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
    operator new();
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

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
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
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
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

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v18, a2, a3, a4, __m);
  memset(&v17.__match_.__prefix_, 0, 17);
  memset(&v17.__match_.__suffix_, 0, 17);
  v17.__match_.__ready_ = 0;
  v17.__match_.__position_start_.__i_ = 0;
  memset(&v17.__match_, 0, 41);
  memset(&v17, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v18.__match_.__prefix_.first.__i_;
        v15 = v18.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v18.__match_, a1, a5, &a5[v11], v6);
      v13 = v18.__match_.__suffix_.first.__i_;
      v12 = v18.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v18);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (v17.__match_.__matches_.__begin_)
  {
    v17.__match_.__matches_.__end_ = v17.__match_.__matches_.__begin_;
    operator delete(v17.__match_.__matches_.__begin_);
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_1B512D6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

std::string *std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = a1 + 3;
            }

            v36 = *v35;
            v37 = v35[1];
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = a1 + 3;
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = v22[1];
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_1B512DBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  this->__flags_ = __m;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_1B512DCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_1B512DE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::RegexReplacementRule>::__emplace_back_slow_path<std::string &>(void *a1, __int32 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) <= 0x2E8BA2E8BA2E8BALL)
  {
    if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v5 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v5 = v3;
    }

    v7 = a1;
    if (v5)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>>(a1, v5);
    }

    v6 = (88 * v2);
    quasar::RegexReplacementRule::RegexReplacementRule((88 * v2), a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1B512DF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::RegexReplacementRule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>(uint64_t a1, std::locale *a2, std::locale *a3, std::locale *this)
{
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v7 = a1;
    v8 = a2;
    do
    {
      std::locale::locale(v4, v8);
      *&v4[1].__locale_ = *&v8[1].__locale_;
      *&v4[3].__locale_ = *&v8[3].__locale_;
      *&v4[5].__locale_ = *&v8[5].__locale_;
      v8[5].__locale_ = 0;
      v8[6].__locale_ = 0;
      v4[7].__locale_ = v8[7].__locale_;
      v9 = *&v8[8].__locale_;
      v4[10].__locale_ = v8[10].__locale_;
      *&v4[8].__locale_ = v9;
      v8[9].__locale_ = 0;
      v8[10].__locale_ = 0;
      v8[8].__locale_ = 0;
      v8 += 11;
      v4 = v14 + 11;
      v14 += 11;
    }

    while (v8 != a3);
    v12 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(v7, v6);
      v6 += 11;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::RegexReplacementRule>,quasar::RegexReplacementRule*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 11;
      std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::RegexReplacementRule>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::RegexReplacementRule>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::RegexReplacementRule>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    std::allocator_traits<std::allocator<quasar::RegexReplacementRule>>::destroy[abi:ne200100]<quasar::RegexReplacementRule,0>(v5, (v4 - 88));
  }
}

void kaldi::concatenateNbest(float **a1@<X0>, float **a2@<X1>, int a3@<W2>, float **a4@<X8>)
{
  v4 = a2;
  v42 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  v33 = a1[1];
  if (*a1 == v33)
  {
    if (a4 != a2)
    {
      std::vector<std::pair<float,std::vector<int>>>::__assign_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(a4, *a2, a2[1], (a2[1] - *a2) >> 5);
    }
  }

  else
  {
    __p = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      v6 = *v4;
      v7 = v4[1];
      if (*v4 != v7)
      {
        v8 = v5 + 2;
        v9 = v6 + 2;
        do
        {
          v10 = *v5 + *v6;
          v11 = v40;
          if (v40 >= v41)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((v40 - __p) >> 3);
            v14 = v13 + 1;
            if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v41 - __p) >> 3) > v14)
            {
              v14 = 0x5555555555555556 * ((v41 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v41 - __p) >> 3) >= 0x555555555555555)
            {
              v15 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>>>(&__p, v15);
            }

            v16 = 8 * ((v40 - __p) >> 3);
            *v16 = v10;
            *(v16 + 8) = v8;
            *(v16 + 16) = v9;
            v12 = 24 * v13 + 24;
            v17 = (v16 - (v40 - __p));
            memcpy(v17, __p, v40 - __p);
            v18 = __p;
            __p = v17;
            v40 = v12;
            v41 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v40 = v10;
            v12 = (v11 + 6);
            *(v11 + 1) = v8;
            *(v11 + 2) = v9;
          }

          v40 = v12;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(__p, v12, &v37, 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 3));
          v6 += 8;
          v9 += 8;
        }

        while (v6 != v7);
      }

      v5 += 8;
      v4 = a2;
    }

    while (v5 != v33);
    v20 = __p;
    v19 = v40;
    v21 = __p == v40 || a3 < 1;
    if (!v21)
    {
      v22 = 1;
      do
      {
        v23 = *v20;
        v38 = *(v20 + 2);
        v37 = v23;
        if (v19 - v20 >= 25)
        {
          v24 = *v20;
          v26 = *(v20 + 1);
          v25 = *(v20 + 2);
          std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(v20, &v34, 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3));
          if (v19 - 6 == v27)
          {
            *v27 = v24;
            *(v27 + 8) = v26;
            *(v27 + 16) = v25;
          }

          else
          {
            *v27 = *(v19 - 6);
            *(v27 + 8) = *(v19 - 2);
            *(v27 + 16) = *(v19 - 1);
            *(v19 - 6) = v24;
            *(v19 - 2) = v26;
            *(v19 - 1) = v25;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>> &,std::__wrap_iter<std::pair<float,std::pair<std::vector<int> const*,std::vector<int> const*>>*>>(v20, v27 + 24, &v34, 0xAAAAAAAAAAAAAAABLL * ((v27 + 24 - v20) >> 3));
          }
        }

        v40 -= 6;
        __dst = 0;
        v36 = 0;
        v34 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v34, **(&v37 + 1), *(*(&v37 + 1) + 8), (*(*(&v37 + 1) + 8) - **(&v37 + 1)) >> 2);
        std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v34, __dst, *v38, v38[1], (v38[1] - *v38) >> 2);
        v28 = a4[1];
        if (v28 >= a4[2])
        {
          v29 = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(a4, &v37, &v34);
        }

        else
        {
          std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<float &,std::vector<int>&>(a4, &v37, &v34);
          v29 = v28 + 8;
        }

        a4[1] = v29;
        if (v34)
        {
          __dst = v34;
          operator delete(v34);
        }

        v20 = __p;
        v19 = v40;
        if (__p == v40)
        {
          break;
        }

        v21 = v22++ < a3;
      }

      while (v21);
    }

    if (v20)
    {
      v40 = v20;
      operator delete(v20);
    }
  }
}

uint64_t kaldi::rescore@<X0>(kaldi::quasar::CEDecoder **a1@<X0>, uint64_t a2@<X1>, std::string::size_type *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, const void **a6@<X8>, float a7@<S0>)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Rescoring: receive a prompt of size ", 36);
    MEMORY[0x1B8C84C30](v14, (*(a2 + 8) - *a2) >> 2);
    kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
  }

  kaldi::quasar::CEDecoder::ResetStates(*a1);
  v103 = kaldi::quasar::CEDecoder::BeamSize(*a1);
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = (a5 + 8);
    do
    {
      v17 = v15[5];
      v18 = v15[6];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = (*(*v17 + 16))(v17);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v107 = 0;
      v108 = 0;
      v109 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v107, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v21 = v15[2];
      v20 = v15[3];
      while (v21 != v20)
      {
        v22 = *v16;
        if (!*v16)
        {
          goto LABEL_18;
        }

        v23 = *v21;
        v24 = v16;
        do
        {
          if (*(v22 + 28) >= v23)
          {
            v24 = v22;
          }

          v22 = *(v22 + 8 * (*(v22 + 28) < v23));
        }

        while (v22);
        if (v24 == v16 || *(v24 + 7) > v23)
        {
LABEL_18:
          std::vector<int>::push_back[abi:ne200100](&v107, v21);
        }

        ++v21;
      }

      LODWORD(__p[0]) = kaldi::quasar::CEDecoder::EndOfTranscript(*a1);
      std::vector<int>::push_back[abi:ne200100](&v107, __p);
      *__p = v19;
      memset(&__p[1], 0, 24);
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p[1], v107, v108, (v108 - v107) >> 2);
      std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](a6, __p);
      if (__p[1])
      {
        __p[2] = __p[1];
        operator delete(__p[1]);
      }

      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      v15 = *v15;
    }

    while (v15);
  }

  v25 = v103;
  if (quasar::gLogLevel > 4)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    memset(__p, 0, sizeof(__p));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v26 = MEMORY[0x1B8C84C30](__p, (a6[1] - *a6) >> 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " nbest are extracted", 20);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v27 = *a6;
  v28 = a6[1];
  if (v103 < ((v28 - *a6) >> 5))
  {
    v101 = a1;
    v102 = a3;
    if (quasar::gLogLevel >= 4)
    {
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      memset(__p, 0, sizeof(__p));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Shrinking nbest from ", 21);
      v30 = MEMORY[0x1B8C84C30](v29, (a6[1] - *a6) >> 5);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " to ", 4);
      MEMORY[0x1B8C84C00](v31, v103);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      v27 = *a6;
      v28 = a6[1];
    }

    if (v103)
    {
      v32 = &v27[8 * v103];
      if (v103 >= 2)
      {
        v33 = (v103 - 2) >> 1;
        v34 = &v27[8 * v33];
        v35 = v33 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::rescore(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::unordered_map<std::vector<int>,std::shared_ptr<void>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::shared_ptr<void>>>> const&,int,std::function<int ()(int)>,float,float,std::set<int> const&)::$_2 &,std::__wrap_iter<std::pair<float,std::vector<int>> *>>(v27, v103, v34);
          v34 -= 32;
          --v35;
        }

        while (v35);
      }

      if (v32 != v28)
      {
        v36 = &v27[8 * v103];
        do
        {
          v37 = *v36;
          if (*v36 > *v27)
          {
            *v36 = *v27;
            *v27 = v37;
            v38 = *(v36 + 1);
            *(v36 + 1) = *(v27 + 1);
            *(v27 + 1) = v38;
            v39 = *(v36 + 2);
            *(v36 + 2) = *(v27 + 2);
            *(v27 + 2) = v39;
            v40 = *(v36 + 3);
            *(v36 + 3) = *(v27 + 3);
            *(v27 + 3) = v40;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::rescore(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::unordered_map<std::vector<int>,std::shared_ptr<void>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,std::allocator<std::pair<std::vector<int> const,std::shared_ptr<void>>>> const&,int,std::function<int ()(int)>,float,float,std::set<int> const&)::$_2 &,std::__wrap_iter<std::pair<float,std::vector<int>> *>>(v27, v103, v27);
          }

          v36 += 8;
        }

        while (v36 != v28);
      }

      if (v103 >= 2)
      {
        v41 = v103;
        do
        {
          v42 = 0;
          v43 = *v27;
          v44 = *(v27 + 1);
          v104 = *(v27 + 1);
          *(v27 + 2) = 0;
          *(v27 + 3) = 0;
          v45 = v27;
          *(v27 + 1) = 0;
          do
          {
            v46 = v45;
            v45 += 8 * v42 + 8;
            v47 = 2 * v42;
            v42 = (2 * v42) | 1;
            v48 = v47 + 2;
            if (v48 < v41 && *v45 > *(v45 + 8))
            {
              v45 += 8;
              v42 = v48;
            }

            v49 = v45 + 2;
            *v46 = *v45;
            std::vector<int>::__move_assign((v46 + 2), (v45 + 2));
          }

          while (v42 <= ((v41 - 2) >> 1));
          if (v45 == v32 - 8)
          {
            *v45 = v43;
            v61 = *(v45 + 1);
            if (v61)
            {
              *(v45 + 2) = v61;
              operator delete(v61);
              *(v45 + 2) = 0;
              *(v45 + 3) = 0;
            }

            *v49 = v44;
          }

          else
          {
            *v45 = *(v32 - 8);
            std::vector<int>::__move_assign((v45 + 2), (v32 - 6));
            *(v32 - 8) = v43;
            v50 = *(v32 - 3);
            if (v50)
            {
              *(v32 - 2) = v50;
              operator delete(v50);
            }

            *(v32 - 3) = v44;
            *(v32 - 1) = v104;
            v51 = ((v45 + 8) - v27) >> 5;
            v52 = v51 < 2;
            v53 = v51 - 2;
            if (v52)
            {
              goto LABEL_61;
            }

            v54 = v53 >> 1;
            v55 = &v27[8 * (v53 >> 1)];
            v56 = *v45;
            if (*v55 <= *v45)
            {
              goto LABEL_61;
            }

            v57 = *(v45 + 1);
            v104 = *(v45 + 1);
            *v49 = 0;
            *(v45 + 2) = 0;
            *(v45 + 3) = 0;
            v58 = *v55;
            do
            {
              v59 = v45;
              v45 = v55;
              *v59 = v58;
              std::vector<int>::__move_assign((v59 + 2), (v55 + 2));
              if (!v54)
              {
                break;
              }

              v54 = (v54 - 1) >> 1;
              v55 = &v27[8 * v54];
              v58 = *v55;
            }

            while (*v55 > v56);
            *v45 = v56;
            v60 = *(v45 + 1);
            if (v60)
            {
              *(v45 + 2) = v60;
              operator delete(v60);
              *(v45 + 2) = 0;
              *(v45 + 3) = 0;
            }

            *(v45 + 1) = v57;
          }

          *(v45 + 1) = v104;
LABEL_61:
          v32 -= 8;
          v52 = v41-- <= 2;
        }

        while (!v52);
      }
    }

    std::vector<std::pair<float,std::vector<int>>>::resize(a6, v103);
    v27 = *a6;
    v28 = a6[1];
    a1 = v101;
    a3 = v102;
    v25 = v103;
  }

  if (v27 == v28)
  {
    v66 = -1;
  }

  else
  {
    v62 = a1;
    v63 = 0;
    v64 = quasar::gLogLevel;
    do
    {
      if (v63 <= ((*(v27 + 2) - *(v27 + 1)) >> 2))
      {
        v63 = (*(v27 + 2) - *(v27 + 1)) >> 2;
      }

      if (v64 >= 5)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        memset(__p, 0, sizeof(__p));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "preAED-amCost", 13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " = ", 3);
        std::ostream::operator<<();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        v64 = quasar::gLogLevel;
      }

      v27 += 8;
    }

    while (v27 != v28);
    v66 = v63 - 1;
    a1 = v62;
    v25 = v103;
  }

  memset(&__p[1], 0, 33);
  __p[0] = &unk_1F2D0EE38;
  kaldi::CuMatrix<float>::CuMatrix(&v107, v25, 1, 1, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v105, v25, 1, 1, 0, 0);
  if (v25 >= 1)
  {
    v68 = 0;
    v69 = v105[1];
    v70 = v106;
    v67 = vdupq_n_s64(v25 - 1);
    v71 = 3 * v106;
    v72 = 16 * v106;
    v73 = xmmword_1B5AE0050;
    v74 = xmmword_1B5AE0060;
    v75 = vdupq_n_s64(4uLL);
    v76 = 2 * v106;
    do
    {
      v77 = vmovn_s64(vcgeq_u64(v67, v74));
      if (vuzp1_s16(v77, *v67.i8).u8[0])
      {
        *v69 = v68;
      }

      if (vuzp1_s16(v77, *&v67).i8[2])
      {
        v69[v70] = (v68 + 1);
      }

      if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, *&v73))).i32[1])
      {
        v69[v76] = (v68 + 2);
        v69[v71] = (v68 + 3);
      }

      v68 += 4;
      v73 = vaddq_s64(v73, v75);
      v74 = vaddq_s64(v74, v75);
      v69 = (v69 + v72);
    }

    while (((v25 + 3) & 0xFFFFFFFC) != v68);
  }

  v78 = *a2;
  if (*(a2 + 8) - *a2 == 4)
  {
    v79 = 0;
  }

  else
  {
    v80 = 0;
    do
    {
      *v67.i32 = v78[v80];
      kaldi::CuMatrixBase<float>::Set(&v107, *v67.i8);
      kaldi::quasar::CEDecoder::Compute(*a1, &v107, v105, a3, 0, 0, __p);
      ++v80;
      v78 = *a2;
      v81 = *(a2 + 8) - *a2;
    }

    while ((v81 >> 2) - 1 > v80);
    v79 = (v81 >> 2) - 1;
  }

  v82 = *a6;
  v83 = a6[1];
  if (v79 >= v66)
  {
    v91 = (v83 - v82) >> 5;
  }

  else
  {
    v84 = v79;
    do
    {
      if (v83 != v82)
      {
        v85 = 0;
        v86 = (v83 - v82) >> 5;
        v87 = v108;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        v88 = v82 + 4;
        v89 = 4 * v110;
        do
        {
          v90 = *(v88 - 1);
          if (v84 < (*v88 - v90) >> 2)
          {
            *v87 = *(v90 + 4 * v84);
          }

          ++v85;
          v88 += 4;
          v87 = (v87 + v89);
        }

        while (v86 != v85);
      }

      kaldi::quasar::CEDecoder::Compute(*a1, &v107, v105, a3, 0, 0, __p);
      v82 = *a6;
      v83 = a6[1];
      ++v84;
      v91 = (v83 - *a6) >> 5;
      if (v83 != *a6)
      {
        v92 = 0;
        v93 = __p[1];
        if (v91 <= 1)
        {
          v94 = 1;
        }

        else
        {
          v94 = (v83 - *a6) >> 5;
        }

        v95 = 4 * SLODWORD(__p[3]);
        v96 = *a6;
        do
        {
          v97 = *(v96 + 1);
          if (v84 < (*(v96 + 2) - v97) >> 2)
          {
            *v96 = *v96 + (a7 * v93[*(v97 + 4 * v84)]);
          }

          ++v92;
          v96 += 8;
          v93 = (v93 + v95);
        }

        while (v94 != v92);
      }
    }

    while (v66 != v84);
  }

  v98 = 126 - 2 * __clz(v91);
  if (v83 == v82)
  {
    v99 = 0;
  }

  else
  {
    v99 = v98;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(v82, v83, v99, 1);
  kaldi::CuMatrix<float>::~CuMatrix(v105);
  kaldi::CuMatrix<float>::~CuMatrix(&v107);
  return kaldi::CuMatrix<float>::~CuMatrix(__p);
}

const void **std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<float,std::vector<int>>>>(result, v10);
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 8) = 0;
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = 32 * v7 + 32;
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
    result = std::__split_buffer<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 3) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = (v4 + 32);
  }

  v3[1] = v6;
  return result;
}

void std::vector<std::pair<float,std::vector<int>>>::resize(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 3);
        if (v7)
        {
          *(v3 - 2) = v7;
          operator delete(v7);
        }

        v3 -= 32;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::pair<float,std::vector<int>>>::__append(a1, v5);
  }
}

void kaldi::decode(kaldi::quasar::CEDecoder **a1@<X0>, uint64_t a2@<X1>, std::string::size_type *a3@<X2>, kaldi::CTCLabelScorer **a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, float a9@<S0>, int a10, char a11)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v104);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "receive a prompt of size ", 25);
    MEMORY[0x1B8C84C30](v16, (*(a2 + 8) - *a2) >> 2);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v104);
  }

  kaldi::quasar::CEDecoder::ResetStates(*a1);
  v17 = *a4;
  if (*a4)
  {
    v18 = (*(**a3 + 184))(*a3, 1);
    kaldi::CTCLabelScorer::ResetStates(v17, v18);
  }

  v19 = kaldi::quasar::CEDecoder::BeamSize(*a1);
  LODWORD(v104) = -947920896;
  v106 = 0;
  v107 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  std::vector<std::pair<float,std::vector<int>>>::vector[abi:ne200100](&v130, v19, &v104);
  if (__p)
  {
    v106 = __p;
    operator delete(__p);
  }

  *v130 = 0;
  v128 = 0u;
  v127 = 0u;
  v126 = &unk_1F2D0EE38;
  v129 = 0;
  v124 = 0u;
  v123 = 0u;
  v122 = &unk_1F2D0EE38;
  v125 = 0;
  v120 = 0u;
  v119 = 0u;
  v118 = &unk_1F2D0EE38;
  v121 = 0;
  kaldi::CuMatrix<float>::CuMatrix(v116, v19, 1, 1, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(&v113, v19, 1, 1, 0, 0);
  if (v19 >= 1)
  {
    v21 = 0;
    v22 = v114;
    v23 = v115;
    v20 = vdupq_n_s64(v19 - 1);
    v24 = 3 * v115;
    v25 = 16 * v115;
    v26 = xmmword_1B5AE0050;
    v27 = xmmword_1B5AE0060;
    v28 = vdupq_n_s64(4uLL);
    v29 = 2 * v115;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v20, v27));
      if (vuzp1_s16(v30, *v20.i8).u8[0])
      {
        *v22 = v21;
      }

      if (vuzp1_s16(v30, *&v20).i8[2])
      {
        v22[v23] = (v21 + 1);
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v26))).i32[1])
      {
        v22[v29] = (v21 + 2);
        v22[v24] = (v21 + 3);
      }

      v21 += 4;
      v26 = vaddq_s64(v26, v28);
      v27 = vaddq_s64(v27, v28);
      v22 = (v22 + v25);
    }

    while (((v19 + 3) & 0xFFFFFFFC) != v21);
  }

  v31 = *a2;
  if (*(a2 + 8) - *a2 != 4)
  {
    v32 = 0;
    do
    {
      *v20.i32 = v31[v32];
      kaldi::CuMatrixBase<float>::Set(v116, *v20.i8);
      kaldi::quasar::CEDecoder::Compute(*a1, v116, &v113, a3, &v126, &v122, &v118);
      ++v32;
      v31 = *a2;
    }

    while (((*(a2 + 8) - *a2) >> 2) - 1 > v32);
  }

  v92 = a2;
  v111 = 0uLL;
  v112 = 0;
  a8[1] = 0;
  a8[2] = 0;
  *a8 = 0;
  v33 = a8;
  if (a10 >= 1)
  {
    v97 = 0;
    v94 = a3;
    v95 = a6;
    do
    {
      if (v19 <= (a8[1] - *a8) >> 5)
      {
        break;
      }

      if (a11)
      {
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a8);
      }

      if (v19 >= 1)
      {
        v34 = 0;
        v35 = (*(&v130 + 1) - v130) >> 5;
        v36 = v116[1];
        v37 = (v130 + 16);
        v38 = 4 * v117;
        do
        {
          if (v35 <= v34)
          {
            *(v37 - 4) = -947920896;
          }

          else
          {
            *v36 = *(*v37 - 4);
          }

          ++v34;
          v37 += 4;
          v36 = (v36 + v38);
        }

        while (v19 != v34);
      }

      kaldi::quasar::CEDecoder::Compute(*a1, v116, &v113, a3, &v126, &v122, &v118);
      if (*a4)
      {
        kaldi::CTCLabelScorer::Compute(*a4, v116, &v113, &v126, &v122, &v118);
      }

      __src = 0;
      v109 = 0;
      v110 = 0;
      if (v19 < 1)
      {
        v39 = 0;
        v52 = 0;
      }

      else
      {
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = 0;
          do
          {
            v42 = (*(v130 + 32 * v40) + *(v127 + 4 * v40 * v128 + 4 * v41)) - a9;
            v43 = v123 + 4 * v40 * v124;
            if (v39 >= v110)
            {
              v44 = __src;
              v45 = v39 - __src;
              v46 = 0xAAAAAAAAAAAAAAABLL * ((v39 - __src) >> 2);
              v47 = v46 + 1;
              if (v46 + 1 > 0x1555555555555555)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v110 - __src) >> 2) > v47)
              {
                v47 = 0x5555555555555556 * ((v110 - __src) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v110 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v48 = 0x1555555555555555;
              }

              else
              {
                v48 = v47;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(&__src, v48);
              }

              v49 = 12 * v46;
              *v49 = v40;
              *(v49 + 4) = v42;
              *(v49 + 8) = *(v43 + 4 * v41);
              v39 = 12 * v46 + 12;
              v50 = (v49 - v45);
              memcpy((v49 - v45), v44, v45);
              v51 = __src;
              __src = v50;
              v109 = v39;
              v110 = 0;
              if (v51)
              {
                operator delete(v51);
              }

              a8 = v33;
            }

            else
            {
              *v39 = v40;
              *(v39 + 4) = v42;
              *(v39 + 8) = *(v43 + 4 * v41);
              v39 += 12;
            }

            v109 = v39;
            ++v41;
          }

          while (v19 != v41);
          ++v40;
        }

        while (v40 != v19);
        v52 = __src;
      }

      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v39 - v52) >> 2));
      if (v39 == v52)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      std::__introsort<std::_ClassicAlgPolicy,kaldi::decode(std::shared_ptr<kaldi::quasar::CEDecoder>,std::vector<int> const&,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf> const&,std::shared_ptr<kaldi::CTCLabelScorer>,int,std::function<std::string ()(std::vector<std::pair<float,std::vector<int>>>)>,std::function<float ()(std::pair<float,std::vector<int>> const&)>,std::function<void ()(std::vector<int> const&)>,int,BOOL,float)::$_1 &,std::tuple<int,float,int> *,false>(v52, v39, v54, 1);
      v55 = __src;
      v56 = v109;
      a6 = v95;
      if (__src != v109)
      {
        while (1)
        {
          v57 = *v55;
          LODWORD(v102) = v55[2];
          v101 = v57;
          __p = 0;
          v106 = 0;
          v104 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v104, *(v130 + 32 * v57 + 8), *(v130 + 32 * v57 + 16), (*(v130 + 32 * v57 + 16) - *(v130 + 32 * v57 + 8)) >> 2);
          std::vector<int>::push_back[abi:ne200100](&v104, &v102);
          v58 = v102;
          if (v58 == kaldi::quasar::CEDecoder::EndOfTranscript(*a1))
          {
            if (*(&v101 + 1) > -65504.0)
            {
              v59 = a8[1];
              if (v59 >= a8[2])
              {
                v60 = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(a8, &v101 + 1, &v104);
              }

              else
              {
                std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<float &,std::vector<int>&>(a8, &v101 + 1, &v104);
                v60 = (v59 + 32);
              }

              a8[1] = v60;
              v63 = *(v95 + 24);
              if (!v63)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              *(a8[1] - 32) = (*(*v63 + 48))(*(v95 + 24), v60 - 32);
            }
          }

          else
          {
            v61 = *(&v111 + 1);
            v114[(v115 * ((*(&v111 + 1) - v111) >> 5))] = v101;
            if (v61 >= v112)
            {
              v62 = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<float &,std::vector<int>&>(&v111, &v101 + 1, &v104);
            }

            else
            {
              *v61 = HIDWORD(v101);
              *(v61 + 16) = 0;
              *(v61 + 24) = 0;
              *(v61 + 8) = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v61 + 8), v104, __p, (__p - v104) >> 2);
              v62 = (v61 + 32);
            }

            *(&v111 + 1) = v62;
          }

          if (v19 == (*(&v111 + 1) - v111) >> 5 || v19 == (a8[1] - *a8) >> 5)
          {
            break;
          }

          if (v104)
          {
            __p = v104;
            operator delete(v104);
          }

          v55 += 3;
          if (v55 == v56)
          {
            goto LABEL_75;
          }
        }

        if (v104)
        {
          __p = v104;
          operator delete(v104);
        }
      }

LABEL_75:
      v64 = a8[1];
      v65 = 126 - 2 * __clz((v64 - *a8) >> 5);
      if (v64 == *a8)
      {
        v66 = 0;
      }

      else
      {
        v66 = v65;
      }

      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(*a8, v64, v66, 1);
      a3 = v94;
      if (*(&v111 + 1) != v111)
      {
        v67 = *(a7 + 24);
        if (!v67)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v67 + 48))(v67, v111 + 8);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&v104, 3);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "pending info  (", 15);
          v69 = MEMORY[0x1B8C84C00](v68, v97);
          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "/", 1);
          v71 = MEMORY[0x1B8C84C30](v70, v97 + ((v92[1] - *v92) >> 2));
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ") : ", 4);
          memset(v100, 0, sizeof(v100));
          std::vector<std::pair<float,std::vector<int>>>::__init_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(v100, v111, *(&v111 + 1), (*(&v111 + 1) - v111) >> 5);
          v73 = *(a5 + 24);
          if (!v73)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v73 + 48))(&v101);
          if ((v103 & 0x80u) == 0)
          {
            v74 = &v101;
          }

          else
          {
            v74 = v101;
          }

          if ((v103 & 0x80u) == 0)
          {
            v75 = v103;
          }

          else
          {
            v75 = v102;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v74, v75);
          if (v103 < 0)
          {
            operator delete(v101);
          }

          v132[0] = v100;
          std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](v132);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v104);
        }
      }

      if (a8[1] != *a8 && kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v104, 3);
        v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v104, "finished info (", 15);
        v77 = MEMORY[0x1B8C84C00](v76, v97);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "/", 1);
        v79 = MEMORY[0x1B8C84C30](v78, v97 + ((v92[1] - *v92) >> 2));
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ") : ", 4);
        memset(v99, 0, sizeof(v99));
        std::vector<std::pair<float,std::vector<int>>>::__init_with_size[abi:ne200100]<std::pair<float,std::vector<int>>*,std::pair<float,std::vector<int>>*>(v99, *a8, a8[1], (a8[1] - *a8) >> 5);
        v81 = *(a5 + 24);
        if (!v81)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v81 + 48))(&v101);
        if ((v103 & 0x80u) == 0)
        {
          v82 = &v101;
        }

        else
        {
          v82 = v101;
        }

        if ((v103 & 0x80u) == 0)
        {
          v83 = v103;
        }

        else
        {
          v83 = v102;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v82, v83);
        if (v103 < 0)
        {
          operator delete(v101);
        }

        v132[0] = v99;
        std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](v132);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v104);
      }

      std::vector<std::pair<float,std::vector<int>>>::__vdeallocate(&v130);
      v130 = v111;
      v131 = v112;
      v112 = 0;
      v111 = 0uLL;
      if (__src)
      {
        v109 = __src;
        operator delete(__src);
      }

      ++v97;
    }

    while (v97 != a10);
  }

  if (v19 <= 0)
  {
    v85 = a8[1];
  }

  else
  {
    v84 = 0;
    v85 = a8[1];
    do
    {
      if (v19 <= (v85 - *a8) >> 5)
      {
        break;
      }

      std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](a8, v130 + v84);
      v86 = *(a6 + 24);
      if (!v86)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v87 = (*(*v86 + 48))(v86, a8[1] - 32);
      v85 = a8[1];
      *(v85 - 8) = v87;
      v84 += 32;
    }

    while (32 * v19 != v84);
  }

  v88 = 126 - 2 * __clz((v85 - *a8) >> 5);
  if (v85 == *a8)
  {
    v89 = 0;
  }

  else
  {
    v89 = v88;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZN5kaldi7rescoreENS_10shared_ptrINS2_6quasar9CEDecoderEEERKNS_6vectorIiNS_9allocatorIiEEEERKNS_10unique_ptrINS4_22ComputeEngineBufferItfENS_14default_deleteISE_EEEERKNS_13unordered_mapISA_NS3_IvEENS2_12VectorHasherIiEENS_8equal_toISA_EENS8_INS_4pairISB_SL_EEEEEEiNS_8functionIFiiEEEffRKNS_3setIiNS_4lessIiEES9_EEENK3__0clERNS7_INSQ_IfSA_EENS8_IS16_EEEEEUlRKT_RKT0_E_PS16_Lb0EEEvT1_S1J_S1D_NS_15iterator_traitsIS1J_E15difference_typeEb(*a8, v85, v89, 1);
  v90 = *(a7 + 24);
  if (!v90)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v90 + 48))(v90, *a8 + 8);
  v104 = &v111;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&v104);
  kaldi::CuMatrix<float>::~CuMatrix(&v113);
  kaldi::CuMatrix<float>::~CuMatrix(v116);
  kaldi::CuMatrix<float>::~CuMatrix(&v118);
  kaldi::CuMatrix<float>::~CuMatrix(&v122);
  kaldi::CuMatrix<float>::~CuMatrix(&v126);
  v104 = &v130;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&v104);
}

void sub_1B512FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29)
{
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x220]);
  kaldi::CuMatrix<float>::~CuMatrix(&STACK[0x250]);
  kaldi::CuMatrix<float>::~CuMatrix(v29 - 256);
  kaldi::CuMatrix<float>::~CuMatrix(v29 - 208);
  a29 = (v29 - 160);
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<float,std::vector<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<float,std::vector<int>>>::__emplace_back_slow_path<std::pair<float,std::vector<int>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::pair<float,std::vector<int>>>::__construct_one_at_end[abi:ne200100]<std::pair<float,std::vector<int>> const&>(a1, a2);
    result = (v3 + 32);
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::EncoderCacheView::~EncoderCacheView(quasar::EncoderCacheView *this)
{
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F2CFF078;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::FirstPassEncoderCacheView::FirstPassEncoderCacheView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, quasar::SpeechRequestData **a5, BOOL a6)
{
  *a1 = &unk_1F2CFF0B8;
  a1[1] = 0;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  v7 = (a2 + 856);
  a1[6] = v7;
  quasar::EndPointer::createEndPointer((a2 + 1016), v7, *(a2 + 432), *(a2 + 1160));
}

void sub_1B5130264(_Unwind_Exception *a1)
{
  std::deque<kaldi::Vector<float>>::~deque[abi:ne200100](v3);
  v5 = v1[7];
  v1[7] = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::FirstPassEncoderCacheView::updateDecoderChainOutput(uint64_t this)
{
  v1 = *(this + 64);
  v2 = **(this + 40);
  v3 = **(this + 32);
  *(v3 + 592) = v1 - *(v2 + 8);
  *(v3 + 596) = *(v2 + 20);
  *(v3 + 598) = 1;
  LODWORD(v2) = *(this + 84);
  *(v3 + 1116) = v2 * *(this + 72);
  *(v3 + 1120) = v2 * v1;
  if (*(this + 68) == 1)
  {
    *(v3 + 596) = 256;
    *(v3 + 598) = 0;
  }

  return this;
}

uint64_t quasar::FirstPassEncoderCacheView::advance(quasar::FirstPassEncoderCacheView *this)
{
  v2 = *(this + 3);
  v3 = *(v2 + 16);
  v4 = *v2;
  result = (*(*v3 + 8))(v3, (*(this + 16) - 1));
  if (result)
  {
LABEL_77:
    result = *(this + 1);
    *(this + 1) = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  v6 = 0;
  while ((v6 & 1) == 0 && (*(this + 68) & 1) == 0)
  {
    SilencePosterior = kaldi::OnlineFeatureMatrix::GetSilencePosterior(v4, *(this + 16));
    v8 = *(this + 6);
    if ((*(this + 69) & 1) == 0)
    {
      if (SilencePosterior >= *(v8 + 312))
      {
        v42 = *(this + 22);
        if (v42 >= 1)
        {
          if (*(this + 17) == v42)
          {
            std::deque<kaldi::Vector<float>>::pop_front(this + 6);
          }

          kaldi::OnlineFeatureMatrix::GetFrame(__p, v4, *(this + 16));
          std::deque<kaldi::Vector<float>>::emplace_back<kaldi::SubVector<float>>(this + 12, __p);
        }

        v6 = 0;
        goto LABEL_73;
      }

      *(this + 69) = 1;
      v9 = *(this + 17);
      *(this + 18) = *(this + 16) - v9;
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *(this + 42);
          v12 = *(this + 19) + 4 * (v11 * v10);
          v13 = *(this + 43) - v11 * v10;
          v14 = *(this + 22);
          LODWORD(__p[0].__r_.__value_.__r.__words[2]) = *(this + 40);
          HIDWORD(__p[0].__r_.__value_.__r.__words[2]) = 1;
          __p[1].__r_.__value_.__r.__words[0] = __PAIR64__(v13, v11);
          __p[1].__r_.__value_.__l.__size_ = v14;
          __p[0].__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
          __p[0].__r_.__value_.__l.__size_ = v12;
          kaldi::CuMatrixBase<float>::CopyRowsFromVec(__p, (*(*(this + 13) + 8 * (*(this + 16) / 0xAAuLL)) + 24 * (*(this + 16) % 0xAAuLL)));
          ++v10;
          __p[0].__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
          memset(&__p[0].__r_.__value_.__r.__words[1], 0, 32);
          quasar::Bitmap::~Bitmap(__p);
          std::deque<kaldi::Vector<float>>::pop_front(this + 6);
        }

        while (*(this + 17));
        v8 = *(this + 6);
      }
    }

    if (SilencePosterior <= *(v8 + 140))
    {
      v15 = 0;
    }

    else
    {
      v15 = *(this + 20) + 1;
    }

    v16 = *(this + 16) - *(this + 18);
    v17 = *(this + 21);
    *(this + 20) = v15;
    if (quasar::SpeechRequestData::isUtteranceDetectionEnabled(**(this + 5)) && *(this + 69) == 1)
    {
      v18 = *(this + 7);
      memset(__p, 0, 24);
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v19 = (**v18)(0.0, 0.0, SilencePosterior);
      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      v80 = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
      if (v19)
      {
        goto LABEL_25;
      }
    }

    v20 = *(*(this + 6) + 308);
    if (v20 >= 1 && v16 * v17 > v20)
    {
LABEL_25:
      if (quasar::gLogLevel >= 4)
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        memset(__p, 0, sizeof(__p));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Utterance starting: ", 20);
        v24 = MEMORY[0x1B8C84C10](v23, *(**(this + 5) + 12));
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " start decoding: ", 17);
        v26 = MEMORY[0x1B8C84C10](v25, (*(**(this + 5) + 12) + (*(this + 18) - *(**(this + 5) + 8)) * *(this + 21)));
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "  detector force triggered because maximum number of frames is reached: ", 72);
        v28 = MEMORY[0x1B8C84C10](v27, (*(**(this + 5) + 12) + *(this + 21) * v16));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " or the utterance detection ep is triggered: ", 45);
        std::ostream::operator<<();
        quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      }

      *(this + 68) = 1;
      v22 = *(this + 16);
      *(this + 19) = v22;
    }

    else
    {
      v22 = *(this + 16);
    }

    v29 = v16 % *(*(this + 2) + 596);
    v30 = *(this + 40);
    v31 = *(this + 42);
    v32 = *(this + 43);
    __p[0].__r_.__value_.__l.__size_ = *(this + 19) + 4 * v31 * v29;
    v33 = *(this + 22);
    __p[0].__r_.__value_.__r.__words[2] = v30 | 0x100000000;
    LODWORD(__p[1].__r_.__value_.__l.__data_) = v31;
    HIDWORD(__p[1].__r_.__value_.__r.__words[0]) = v32 - v31 * v29;
    __p[1].__r_.__value_.__l.__size_ = v33;
    __p[0].__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
    kaldi::OnlineFeatureMatrix::GetFrame(&v80, v4, v22);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(__p, &v80);
    v34 = v29 + 1;
    __p[0].__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
    memset(&__p[0].__r_.__value_.__r.__words[1], 0, 32);
    quasar::Bitmap::~Bitmap(__p);
    if ((*(this + 68) & 1) != 0 || v34 == *(*(this + 2) + 596) || (*(*v3 + 8))(v3, *(this + 16)))
    {
      if (kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Running encoder after reading frame ", 36);
        v36 = MEMORY[0x1B8C84C00](v35, *(this + 16));
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " start frame: ", 14);
        MEMORY[0x1B8C84C00](v37, *(this + 18));
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
      }

      v38 = *(this + 2);
      v39 = *(v38 + 808);
      if (v39)
      {
        if (v40)
        {
          v41 = *(v38 + 816);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            v38 = *(this + 2);
          }
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }

      if (*(v38 + 1177) == 1)
      {
        v43 = *(v38 + 1184);
        if (v34 % v43)
        {
          v43 = v34 % v43;
        }

        v44 = *(v38 + 1180) + v34 - v43;
        if (*(v38 + 596) >= v44)
        {
          v45 = v44;
        }

        else
        {
          v45 = *(v38 + 596);
        }
      }

      else
      {
        v45 = *(v38 + 596);
      }

      kaldi::quasar::InputShapeTemplate::InputShapeTemplate(&v63);
      if (*(*(this + 2) + 1177) == 1)
      {
        Config = kaldi::quasar::CEInferenceNet::GetConfig(v40);
        kaldi::quasar::InputShapeTemplate::InputShapeTemplate(__p, (Config + 328));
        v63 = __p[0].__r_.__value_.__r.__words[0];
        v64 = __p[0].__r_.__value_.__r.__words[1];
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "R,C");
        kaldi::quasar::InputShapeTemplate::InputShapeTemplate(&v80, __p);
        v63 = v80;
        v64 = v81;
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      kaldi::quasar::InputShapeTemplate::Get(&v63, v45, v4[6], &v80);
      ComputeEngine = kaldi::quasar::CEInferenceNet::GetComputeEngine(v40);
      v48 = *(this + 19);
      v49 = *(this + 22);
      LODWORD(__p[0].__r_.__value_.__r.__words[2]) = *(this + 40);
      HIDWORD(__p[0].__r_.__value_.__r.__words[2]) = v45;
      __p[1].__r_.__value_.__r.__words[0] = *(this + 21);
      __p[1].__r_.__value_.__l.__size_ = v49;
      __p[0].__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
      __p[0].__r_.__value_.__l.__size_ = v48;
      v50 = *(this + 25);
      *(this + 25) = 0;
      v61 = v50;
      kaldi::quasar::CreateBufferFromMatrix(ComputeEngine, __p, &v80, &v61, &v62);
      v51 = v62;
      v62 = 0;
      v52 = *(this + 25);
      *(this + 25) = v51;
      if (v52)
      {
        (*(*v52 + 8))(v52);
        v53 = v62;
        v62 = 0;
        if (v53)
        {
          (*(*v53 + 8))(v53);
        }
      }

      v54 = v61;
      v61 = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      __p[0].__r_.__value_.__r.__words[0] = &unk_1F2CFA908;
      memset(&__p[0].__r_.__value_.__r.__words[1], 0, 32);
      quasar::Bitmap::~Bitmap(__p);
      kaldi::quasar::CEInferenceNet::Feedforward(v40, this + 25, this + 26, 0);
      kaldi::CuMatrixBase<float>::SetZero(this + 144);
      v55 = *kaldi::quasar::CEDecoder::Engine(*(*(this + 2) + 824));
      kaldi::quasar::ComputeEngineBufferItf::GetShape(&__p[0].__r_.__value_.__l.__data_, *(this + 26));
      (*(*v55 + 64))(&v62, v55, __p);
      v56 = v62;
      v62 = 0;
      v57 = *(this + 1);
      *(this + 1) = v56;
      if (v57)
      {
        (*(*v57 + 8))(v57);
        v58 = v62;
        v62 = 0;
        if (v58)
        {
          (*(*v58 + 8))(v58);
        }
      }

      if (__p[0].__r_.__value_.__r.__words[0])
      {
        __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      for (i = 0; kaldi::quasar::ComputeEngineBufferItf::GetSize(*(this + 1)) > i; ++i)
      {
        v60 = *(this + 1);
        (*(**(this + 26) + 112))(*(this + 26), i);
        (*(*v60 + 104))(v60, i);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

LABEL_73:
    ++*(this + 16);
    result = (*(*v3 + 8))(v3);
    if (result)
    {
      break;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_77;
  }

  return result;
}

void sub_1B5130CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 128);
  if (v24)
  {
    *(v22 - 120) = v24;
    operator delete(v24);
  }

  *(v22 - 128) = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v22 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::deque<kaldi::Vector<float>>::pop_front(int64x2_t *a1)
{
  kaldi::Vector<float>::Destroy(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0xAAuLL)) + 24 * (a1[2].i64[0] % 0xAAuLL));
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);

  return std::deque<kaldi::Vector<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<kaldi::Vector<float>>::emplace_back<kaldi::SubVector<float>>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<kaldi::Vector<float>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  kaldi::Vector<float>::Resize(v8, *(a2 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v8, a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t quasar::SecondPassEncoderCacheView::SecondPassEncoderCacheView(uint64_t a1, uint64_t a2, kaldi::OnlineFeatureMatrix **a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *a1 = &unk_1F2CFF0F8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2 + 824;
  kaldi::OnlineFeatureMatrix::GetAllAedFeat(*a3);
  kaldi::CuMatrix<float>::CuMatrix<float>();
  *(a1 + 72) = 0;
  *(a1 + 80) = *(a2 + 596);
  *(a1 + 84) = *(a2 + 1177);
  if (quasar::gLogLevel >= 4)
  {
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
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "AED states (", 12);
    v13 = MEMORY[0x1B8C84C00](v12, *(a1 + 44));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
    v15 = MEMORY[0x1B8C84C00](v14, *(a1 + 40));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ")", 1);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v25);
  }

  *(a1 + 76) = a6;
  if (a7 < 0)
  {
    v17 = *(a1 + 44);
    goto LABEL_7;
  }

  v16 = a7 + a6;
  v17 = *(a1 + 44);
  if (a7 + a6 >= v17)
  {
LABEL_7:
    v16 = v17;
  }

  if (v16 >= *(*a4 + 592))
  {
    v16 = *(*a4 + 592);
  }

  *(a1 + 72) = v16;
  v18 = *(a1 + 80);
  if (v18 > kaldi::quasar::CEDecoder::MaxEncoderSize(**(a1 + 16)))
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Shrinking the decodingWindowSize from ", 38);
      v20 = MEMORY[0x1B8C84C00](v19, *(a1 + 80));
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " to ", 4);
      v22 = kaldi::quasar::CEDecoder::MaxEncoderSize(**(a1 + 16));
      v23 = MEMORY[0x1B8C84C00](v21, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " because that's the maximum size that the model can handle", 58);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v25);
    }

    *(a1 + 80) = kaldi::quasar::CEDecoder::MaxEncoderSize(**(a1 + 16));
  }

  return a1;
}

void sub_1B51311C0(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix((v1 + 3));
  v4 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SecondPassEncoderCacheView::advance(quasar::SecondPassEncoderCacheView *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(this + 18);
  v2 = *(this + 19);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if ((v5 < 0) ^ v4 | (v5 == 0))
  {
    result = *(this + 1);
    *(this + 1) = 0;
    if (result)
    {
      v20 = *(*result + 8);

      return v20();
    }
  }

  else
  {
    v6 = *(this + 20);
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
    if (!*(this + 21))
    {
      v8 = kaldi::quasar::CEDecoder::MaxEncoderSize(**(this + 2));
    }

    kaldi::CuMatrix<float>::CuMatrix(v26, v8, *(this + 10), 0, 0, 0);
    *&v24 = v26[1];
    *(&v24 + 1) = __PAIR64__(v7, v27);
    v25 = v29;
    __p = &unk_1F2CFA908;
    v9 = *(this + 12);
    v10 = v9 * *(this + 19);
    v11 = *(this + 4) + 4 * v10;
    v12 = *(this + 13) - v10;
    v13 = *(this + 7);
    DWORD2(v31) = *(this + 10);
    HIDWORD(v31) = v7;
    *&v32 = __PAIR64__(v12, v9);
    *(&v32 + 1) = v13;
    v30 = &unk_1F2CFA908;
    *&v31 = v11;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&__p, &v30, 111);
    v30 = &unk_1F2CFA908;
    v31 = 0u;
    v32 = 0u;
    quasar::Bitmap::~Bitmap(&v30);
    __p = &unk_1F2CFA908;
    v24 = 0u;
    v25 = 0u;
    quasar::Bitmap::~Bitmap(&__p);
    v14 = kaldi::quasar::CEDecoder::Engine(**(this + 2));
    v30 = 1;
    *&v31 = v28;
    *(&v31 + 1) = v27;
    v24 = 0uLL;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v30, &v32, 3uLL);
    v21 = 0;
    kaldi::quasar::CreateBufferFromMatrix(v14, v26, &__p, &v21, &v22);
    v15 = v22;
    v22 = 0;
    v16 = *(this + 1);
    *(this + 1) = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v21;
    v21 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (__p)
    {
      *&v24 = __p;
      operator delete(__p);
    }

    result = kaldi::CuMatrix<float>::~CuMatrix(v26);
    *(this + 19) += *(this + 20);
  }

  return result;
}