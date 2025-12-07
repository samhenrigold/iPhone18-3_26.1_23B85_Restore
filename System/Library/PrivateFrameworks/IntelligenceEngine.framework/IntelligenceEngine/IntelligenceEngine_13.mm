uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28671B498;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_254D38910(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28671B498;
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
  a1->__locale_ = &unk_28671B498;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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
  a1->__locale_ = &unk_28671B4E0;
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
  a1->__locale_ = &unk_28671B4E0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
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
  a1->__locale_ = &unk_28671B570;
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
  a1->__locale_ = &unk_28671B570;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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
  a1->__locale_ = &unk_28671B5B8;
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
  a1->__locale_ = &unk_28671B5B8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x259C29D90);
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

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
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

  JUMPOUT(0x259C29D90);
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

void sub_254D39638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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

  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&a10);
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

  JUMPOUT(0x259C29D90);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_82;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_57;
  }

  v113 = *current;
  v6 = current[1];
  v114 = current[1];
  if (this->__icase_)
  {
    v113 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v114 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v113, &__p, &v115);
  if ((v112 & 0x80000000) == 0)
  {
    if (v112)
    {
      goto LABEL_8;
    }

LABEL_57:
    negate = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v111;
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
    while (v113 != *(p_second - 1) || v114 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_217;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_p = &__p;
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v113, &v115);
    v13 = this->__ranges_.__begin_;
    v14 = v112;
    v15 = this->__ranges_.__end_ - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v107 = v112;
      if (v112 >= 0)
      {
        v17 = v112;
      }

      else
      {
        v17 = v111;
      }

      if (v112 < 0)
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
          goto LABEL_166;
        }
      }

      v34 = 5;
LABEL_166:
      v14 = v107;
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
      v87 = 1;
      goto LABEL_197;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v87 = 0;
    goto LABEL_199;
  }

  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v113, &__p, &v115);
  v88 = this->__equivalences_.__begin_;
  v89 = v112;
  v90 = this->__equivalences_.__end_ - v88;
  if (v90)
  {
    v91 = 0xAAAAAAAAAAAAAAABLL * (v90 >> 3);
    if (v112 >= 0)
    {
      v92 = v112;
    }

    else
    {
      v92 = v111;
    }

    if (v112 >= 0)
    {
      v93 = &__p;
    }

    else
    {
      v93 = __p;
    }

    if (v91 <= 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = 0xAAAAAAAAAAAAAAABLL * (v90 >> 3);
    }

    v95 = 1;
    v96 = 1;
    while (1)
    {
      size = HIBYTE(v88->__r_.__value_.__r.__words[2]);
      v98 = size;
      if ((size & 0x80u) != 0)
      {
        size = v88->__r_.__value_.__l.__size_;
      }

      if (v92 == size)
      {
        v99 = v98 >= 0 ? v88 : v88->__r_.__value_.__r.__words[0];
        if (!memcmp(v93, v99, v92))
        {
          break;
        }
      }

      v96 = v95++ < v91;
      ++v88;
      if (!--v94)
      {
        goto LABEL_194;
      }
    }

    v87 = 1;
    v34 = 5;
    if (v89 < 0)
    {
LABEL_195:
      operator delete(__p);
    }
  }

  else
  {
    v96 = 0;
LABEL_194:
    v34 = 0;
    v87 = 0;
    if (v89 < 0)
    {
      goto LABEL_195;
    }
  }

  if (!v96)
  {
LABEL_199:
    if (v113 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v102 = tab[v113];
      if (((v102 & mask) != 0 || v113 == 95 && (mask & 0x80) != 0) && (v114 & 0x8000000000000000) == 0 && ((tab[v114] & mask) != 0 || (mask & 0x80) != 0 && v114 == 95))
      {
        goto LABEL_217;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v102) != 0 || v113 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_216:
        negate = v87;
LABEL_218:
        v35 = 2;
        goto LABEL_82;
      }
    }

    if ((v114 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v114] & neg_mask) == 0)
      {
        negate = 1;
        if (v114 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_218;
        }
      }

      goto LABEL_216;
    }

LABEL_217:
    negate = 1;
    goto LABEL_218;
  }

LABEL_197:
  v35 = 2;
  negate = v87;
  if (v34)
  {
    goto LABEL_82;
  }

LABEL_58:
  v38 = *a2->__current_;
  v113 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v113 = v38;
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
        goto LABEL_81;
      }
    }

    while (--v40);
  }

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v44 = (v42 >> 7) & 1;
      v43 = v38 == 95 ? v44 : 0;
    }

    else
    {
      v43 = 1;
    }

    end = this->__neg_chars_.__end_;
    v46 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v47 = !v46 || v46 == end;
    v48 = !v47;
    if ((v43 & 1) == 0 && !v48)
    {
LABEL_81:
      negate = 1;
      goto LABEL_82;
    }
  }

  v51 = this->__ranges_.__begin_;
  v52 = this->__ranges_.__end_;
  if (v51 != v52)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&this->__traits_, &v113, &v114);
      v51 = this->__ranges_.__begin_;
      v52 = this->__ranges_.__end_;
      v53 = v112;
    }

    else
    {
      v53 = 1;
      v112 = 1;
      LOWORD(__p) = v38;
    }

    v54 = v52 - v51;
    if (v54)
    {
      v108 = v35;
      v104 = negate;
      v105 = v53;
      v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4);
      if ((v53 & 0x80u) == 0)
      {
        v56 = v53;
      }

      else
      {
        v56 = v111;
      }

      if ((v53 & 0x80u) == 0)
      {
        v57 = &__p;
      }

      else
      {
        v57 = __p;
      }

      if (v55 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4);
      }

      v59 = &v51->second.__r_.__value_.__r.__words[2] + 7;
      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = *(v59 - 24);
        if (v62 >= 0)
        {
          v63 = *(v59 - 24);
        }

        else
        {
          v63 = *(v59 - 39);
        }

        if (v62 >= 0)
        {
          v64 = (v59 - 47);
        }

        else
        {
          v64 = *(v59 - 47);
        }

        if (v63 >= v56)
        {
          v65 = v56;
        }

        else
        {
          v65 = v63;
        }

        v66 = memcmp(v57, v64, v65);
        v67 = v56 >= v63;
        if (v66)
        {
          v67 = v66 >= 0;
        }

        if (v67)
        {
          v68 = *v59;
          if (v68 >= 0)
          {
            v69 = *v59;
          }

          else
          {
            v69 = *(v59 - 15);
          }

          if (v68 >= 0)
          {
            v70 = (v59 - 23);
          }

          else
          {
            v70 = *(v59 - 23);
          }

          if (v56 >= v69)
          {
            v71 = v69;
          }

          else
          {
            v71 = v56;
          }

          v72 = memcmp(v70, v57, v71);
          v73 = v69 >= v56;
          if (v72)
          {
            v73 = v72 >= 0;
          }

          if (v73)
          {
            break;
          }
        }

        v61 = v60++ < v55;
        v59 += 48;
        if (!--v58)
        {
          negate = v104;
          goto LABEL_130;
        }
      }

      negate = 1;
LABEL_130:
      v35 = v108;
      if ((v105 & 0x80) == 0)
      {
LABEL_132:
        if (v61)
        {
          goto LABEL_82;
        }

        goto LABEL_133;
      }
    }

    else
    {
      v61 = 0;
      if ((v53 & 0x80) == 0)
      {
        goto LABEL_132;
      }
    }

    operator delete(__p);
    goto LABEL_132;
  }

LABEL_133:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_159;
  }

  v74 = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v113, &__p, &v114);
  v75 = this->__equivalences_.__begin_;
  v76 = this->__equivalences_.__end_ - v75;
  if (!v76)
  {
    v81 = 0;
    if ((v112 & 0x80) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_157;
  }

  v106 = v112;
  v109 = v35;
  v77 = 0xAAAAAAAAAAAAAAABLL * (v76 >> 3);
  if (v112 >= 0)
  {
    v78 = v112;
  }

  else
  {
    v78 = v111;
  }

  if (v112 < 0)
  {
    v74 = __p;
  }

  if (v77 <= 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = 0xAAAAAAAAAAAAAAABLL * (v76 >> 3);
  }

  v80 = 1;
  v81 = 1;
  while (1)
  {
    v82 = HIBYTE(v75->__r_.__value_.__r.__words[2]);
    v83 = v82;
    if ((v82 & 0x80u) != 0)
    {
      v82 = v75->__r_.__value_.__l.__size_;
    }

    if (v78 == v82)
    {
      v84 = v83 >= 0 ? v75 : v75->__r_.__value_.__r.__words[0];
      if (!memcmp(v74, v84, v78))
      {
        break;
      }
    }

    v81 = v80++ < v77;
    ++v75;
    if (!--v79)
    {
      goto LABEL_156;
    }
  }

  negate = 1;
LABEL_156:
  v35 = v109;
  if (v106 < 0)
  {
LABEL_157:
    operator delete(__p);
  }

LABEL_158:
  if (v81)
  {
    goto LABEL_82;
  }

LABEL_159:
  v85 = this->__mask_;
  if ((v113 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v113] & v85) != 0)
  {
    goto LABEL_81;
  }

  v86 = (v85 >> 7) & 1;
  if (v113 != 95)
  {
    LOBYTE(v86) = 0;
  }

  negate |= v86;
LABEL_82:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v50 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v50 = -995;
  }

  a2->__do_ = v50;
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
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v7);
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
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, a2, a3, a3 - a2);
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

void sub_254D3A0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, _BYTE *a4@<X2>)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__s, a2, a4, a4 - a2);
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

void sub_254D3A25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>, _BYTE *a4@<X2>)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, a2, a4, a4 - a2);
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
  v8 = *(a3 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a3 = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254D3A384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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
  MEMORY[0x259C29980](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

void sub_254D3A83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, &v19, v7);
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
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, __p, &v11[v10]);
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

void sub_254D3AA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, &v12, v6);
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
  MEMORY[0x259C29980](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, a2, a3, a3 - a2);
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

void sub_254D3B5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::TestParseError>>(a1, v12);
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
  MEMORY[0x259C29980](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
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
    std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100](v4, i - 48);
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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
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
  MEMORY[0x259C29980](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x259C29980](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x259C29D90);
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

  JUMPOUT(0x259C29D90);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28671B780;
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

  JUMPOUT(0x259C29D90);
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
  MEMORY[0x259C29980](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

  JUMPOUT(0x259C29D90);
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

void sub_254D3D408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
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
          std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
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

void sub_254D3D8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
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
  result = vaddq_s64(a1[2], xmmword_254E1F4C0);
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<YAML::Token *>::emplace_back<YAML::Token *&>(a1, &v9);
}

void sub_254D3DD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v9);
  }

  a1[4] = (v5 + 42);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  std::__split_buffer<YAML::Token *>::emplace_front<YAML::Token *>(a1, v10);
}

void sub_254D3E014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
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

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
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

    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

void sub_254D3E554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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
        v18 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
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

std::string *std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(std::vector<std::string> *a1, std::vector<std::string>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<std::string>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = (v7 + 8 * v19);
        v21 = v5;
        do
        {
          std::string::operator=(v21, v7);
          v7 = (v7 + 24);
          ++v21;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::string>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18, v7);
            v7 = (v7 + 24);
            ++v18;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v34.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v34.__first_ = 0;
      v34.__begin_ = v22;
      v34.__end_ = v22;
      v34.__end_cap_.__value_ = 0;
      v23 = &v22[a5];
      v24 = 24 * a5;
      do
      {
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v22, *v7, *(v7 + 1));
        }

        else
        {
          v25 = *v7;
          v22->__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&v22->__r_.__value_.__l.__data_ = v25;
        }

        ++v22;
        v7 = (v7 + 24);
        v24 -= 24;
      }

      while (v24);
      v26 = v34.__begin_;
      memcpy(v23, v5, a1->__end_ - v5);
      v27 = a1->__begin_;
      v28 = (v23 + a1->__end_ - v5);
      a1->__end_ = v5;
      v29 = v5 - v27;
      v30 = (v26 - (v5 - v27));
      memcpy(v30, v27, v29);
      v31 = a1->__begin_;
      a1->__begin_ = v30;
      a1->__end_ = v28;
      v32 = a1->__end_cap_.__value_;
      a1->__end_cap_.__value_ = v34.__end_cap_.__value_;
      v34.__end_ = v31;
      v34.__end_cap_.__value_ = v32;
      v34.__first_ = v31;
      v34.__begin_ = v31;
      std::__split_buffer<std::string>::~__split_buffer(&v34);
      return v26;
    }
  }

  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v5 = __from_s + end - __to;
  if (v5 >= __from_e)
  {
    v7 = this->__end_;
  }

  else
  {
    v6 = __from_s + end - __to;
    v7 = this->__end_;
    do
    {
      v8 = *v6;
      v7->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v7->__r_.__value_.__l.__data_ = v8;
      ++v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 += 24;
    }

    while (v6 < __from_e);
  }

  this->__end_ = v7;
  if (end != __to)
  {
    v9 = 0;
    v10 = (__to - end);
    do
    {
      v11 = &v9[end - 24];
      if (v9[end - 1] < 0)
      {
        operator delete(*v11);
      }

      v12 = &v5[(v9 - 24)];
      v13 = *v12;
      *&v9[end - 8] = *(v12 + 2);
      *v11 = v13;
      v9[v5 - 1] = 0;
      *v12 = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }
}

void YAML::Scanner::Scanner(uint64_t a1, void *a2)
{
  YAML::Stream::Stream(a1, a2);
}

{
  YAML::Stream::Stream(a1, a2);
}

void YAML::Scanner::~Scanner(YAML::Scanner *this)
{
  std::deque<YAML::CollectionType::value>::~deque[abi:ne200100](this + 34);
  v2 = (this + 248);
  std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::deque<YAML::Scanner::IndentMarker *>::~deque[abi:ne200100](this + 25);
  std::deque<YAML::Scanner::SimpleKey>::~deque[abi:ne200100](this + 19);
  std::deque<YAML::Token>::~deque[abi:ne200100](this + 96);
  YAML::Stream::~Stream(this);
}

void YAML::Scanner::EnsureTokensInQueue(int64x2_t *this)
{
  while (1)
  {
    while (1)
    {
      if (!this[8].i64[1])
      {
        goto LABEL_4;
      }

      v2 = *(*(this[6].i64[1] + 8 * (this[8].i64[0] / 0x33uLL)) + 80 * (this[8].i64[0] % 0x33uLL));
      if (v2 != 1)
      {
        break;
      }

      std::deque<YAML::Token>::pop_front(this + 6);
    }

    if (!v2)
    {
      return;
    }

LABEL_4:
    if (this[9].i8[1])
    {
      break;
    }

    YAML::Scanner::ScanNextToken(this);
  }
}

void YAML::Scanner::pop(int64x2_t *this)
{
  YAML::Scanner::EnsureTokensInQueue(this);
  if (this[8].i64[1])
  {

    std::deque<YAML::Token>::pop_front(this + 6);
  }
}

unint64_t YAML::Scanner::peek(int64x2_t *this)
{
  YAML::Scanner::EnsureTokensInQueue(this);
  if (!this[8].i64[1])
  {
    __assert_rtn("peek", "scanner.cpp", 37, "!m_tokens.empty()");
  }

  return *(this[6].i64[1] + 8 * (this[8].i64[0] / 0x33uLL)) + 80 * (this[8].i64[0] % 0x33uLL);
}

void YAML::Scanner::ScanNextToken(YAML::Scanner *this)
{
  if (*(this + 145))
  {
    return;
  }

  if ((*(this + 144) & 1) == 0)
  {

    YAML::Scanner::StartStream(this);
  }

  YAML::Scanner::ScanToNextToken(this);
  YAML::Scanner::PopIndentToHere(this);
  AheadTo = YAML::Stream::operator BOOL(this);
  if (AheadTo)
  {
    if (*(this + 4))
    {
      goto LABEL_5;
    }

    if (!*(this + 8) || *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) != 37)
    {
      v4 = YAML::Exp::DocStart(AheadTo);
      *&v15 = 0;
      *(&v15 + 1) = this;
      if (*(this + 8) || (AheadTo = YAML::Stream::_ReadAheadTo(this, 0), (AheadTo & 1) != 0))
      {
        AheadTo = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v4, &v15);
        if ((AheadTo & 0x80000000) == 0)
        {
          YAML::Scanner::ScanDocStart(this);
          return;
        }
      }

      if (!*(this + 4))
      {
        v7 = YAML::Exp::DocEnd(AheadTo);
        *&v15 = 0;
        *(&v15 + 1) = this;
        if (*(this + 8) || (AheadTo = YAML::Stream::_ReadAheadTo(this, 0), (AheadTo & 1) != 0))
        {
          AheadTo = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v7, &v15);
          if ((AheadTo & 0x80000000) == 0)
          {
            YAML::Scanner::ScanDocEnd(this);
            return;
          }
        }
      }

LABEL_5:
      if (*(this + 8))
      {
        v3 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
        if (v3 <= 0x5C)
        {
          if (v3 == 44)
          {
            YAML::Scanner::ScanFlowEntry(this);
            return;
          }

          if (v3 == 91)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3 == 93 || v3 == 125)
          {
            YAML::Scanner::ScanFlowEnd(this);
            return;
          }

          if (v3 == 123)
          {
LABEL_10:
            YAML::Scanner::ScanFlowStart(this);
            return;
          }
        }
      }

      YAML::Exp::BlockEntry(AheadTo);
      v5 = YAML::RegEx::Matches(qword_280AF4530, this);
      if (v5)
      {
        YAML::Scanner::ScanBlockEntry(this);
        return;
      }

      if (*(this + 39))
      {
        YAML::Exp::KeyInFlow(v5);
        v6 = qword_280AF4570;
      }

      else
      {
        YAML::Exp::Key(v5);
        v6 = qword_280AF4550;
      }

      if (YAML::RegEx::Matches(v6, this))
      {
        YAML::Scanner::ScanKey(this);
        return;
      }

      ValueRegex = YAML::Scanner::GetValueRegex(this);
      v9 = YAML::RegEx::Matches(ValueRegex, this);
      if (v9)
      {
        YAML::Scanner::ScanValue(this);
        return;
      }

      if (!*(this + 8))
      {
        if (!*(this + 39))
        {
LABEL_56:
          v11 = YAML::Exp::PlainScalar(v9);
          goto LABEL_57;
        }

LABEL_50:
        v11 = YAML::Exp::PlainScalarInFlow(v9);
LABEL_57:
        if (!YAML::RegEx::Matches(v11, this))
        {
          exception = __cxa_allocate_exception(0x38uLL);
          v14 = *(this + 4);
          v16 = *(this + 1);
          v17 = v14;
          std::string::basic_string[abi:ne200100]<0>(&v15, "unknown token");
          YAML::Exception::Exception(exception, &v16, &v15);
          *exception = &unk_28671C278;
        }

        YAML::Scanner::ScanPlainScalar(this);
        return;
      }

      v10 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
      if (v10 == 33)
      {
        YAML::Scanner::ScanTag(this);
        return;
      }

      if (v10 == 42 || v10 == 38)
      {
        YAML::Scanner::ScanAnchorOrAlias(this);
        return;
      }

      v12 = *(this + 39);
      if (v12)
      {
        if (v10 != 39 && v10 != 34)
        {
          goto LABEL_55;
        }

LABEL_62:
        YAML::Scanner::ScanQuotedScalar(this);
        return;
      }

      if (*(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) > 0x3Du)
      {
        if (v10 == 124 || v10 == 62)
        {
          YAML::Scanner::ScanBlockScalar(this);
          return;
        }
      }

      else if (v10 == 34 || v10 == 39)
      {
        goto LABEL_62;
      }

LABEL_55:
      if (!v12)
      {
        goto LABEL_56;
      }

      goto LABEL_50;
    }

    YAML::Scanner::ScanDirective(this);
  }

  else
  {

    YAML::Scanner::EndStream(this);
  }
}

void sub_254D3F28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void YAML::Scanner::StartStream(YAML::Scanner *this)
{
  *(this + 144) = 1;
  *(this + 146) = 1;
  operator new();
}

void sub_254D3F364(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x259C29D90](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::Scanner::ScanToNextToken(YAML::Scanner *this)
{
  while (1)
  {
    while (YAML::Stream::operator BOOL(this))
    {
      if (!*(this + 8))
      {
        break;
      }

      v2 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
      if (v2 != 32 && v2 != 9)
      {
        break;
      }

      if (!*(this + 39))
      {
        {
          YAML::Exp::Tab(void)::e = 1;
          word_27F753994 = 9;
          qword_27F7539A0 = 0;
          unk_27F7539A8 = 0;
          qword_27F753998 = 0;
          __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Tab(void)::e, &dword_254C81000);
        }

        v12 = 0;
        v13[0] = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::Tab(void)::e, &v12) & 0x80000000) == 0)
        {
          *(this + 146) = 0;
        }
      }

      YAML::Stream::get(this);
    }

    {
      YAML::Exp::Comment(void)::e = 1;
      word_27F7539BC = 35;
      qword_27F7539C8 = 0;
      unk_27F7539D0 = 0;
      qword_27F7539C0 = 0;
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Comment(void)::e, &dword_254C81000);
    }

    LODWORD(v12) = YAML::Exp::Comment(void)::e;
    WORD2(v12) = word_27F7539BC;
    memset(v13, 0, sizeof(v13));
    std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(v13, qword_27F7539C0, qword_27F7539C8, (qword_27F7539C8 - qword_27F7539C0) >> 5);
    v14[0] = 0;
    v14[1] = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v4 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&v12, v14);
      v14[0] = v13;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v14);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = YAML::Stream::operator BOOL(this);
        if (v5)
        {
          do
          {
            v6 = YAML::Exp::Break(v5);
            v12 = 0;
            v13[0] = this;
            if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
            {
              v5 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v6, &v12);
              if ((v5 & 0x80000000) == 0)
              {
                break;
              }
            }

            YAML::Stream::get(this);
            v5 = YAML::Stream::operator BOOL(this);
          }

          while ((v5 & 1) != 0);
        }
      }
    }

    else
    {
      v14[0] = v13;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v14);
    }

    v7 = YAML::Exp::Break(v5);
    v12 = 0;
    v13[0] = this;
    if (!*(this + 8))
    {
      result = YAML::Stream::_ReadAheadTo(this, 0);
      if ((result & 1) == 0)
      {
        break;
      }
    }

    result = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v7, &v12);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v9 = YAML::Exp::Break(result);
    v12 = 0;
    v13[0] = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v10 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v9, &v12);
      if (v10 >= 1)
      {
        v11 = v10;
        do
        {
          YAML::Stream::get(this);
          --v11;
        }

        while (v11);
      }
    }

    YAML::Scanner::InvalidateSimpleKey(this);
    if (!*(this + 39))
    {
      *(this + 146) = 1;
    }
  }

  return result;
}

void sub_254D3F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::PopIndentToHere(uint64_t this)
{
  if (!*(this + 312))
  {
    v7[4] = v1;
    v7[5] = v2;
    v4 = *(this + 240);
    if (v4)
    {
      while (1)
      {
        v5 = *(*(*(this + 208) + (((v4 + *(this + 232) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 232) - 1) & 0x1FF));
        v6 = *(this + 16);
        if (*v5 < v6)
        {
          goto LABEL_12;
        }

        if (*v5 == v6)
        {
          if (v5[1] != 1)
          {
            goto LABEL_12;
          }

          YAML::Exp::BlockEntry(this);
          v7[0] = 0;
          v7[1] = this;
          if ((*(this + 64) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(qword_280AF4530, v7) & 0x80000000) == 0)
          {
            break;
          }
        }

        YAML::Scanner::PopIndent(this);
        v4 = *(this + 240);
        if (!v4)
        {
          return;
        }
      }

      while (1)
      {
        v4 = *(this + 240);
        if (!v4)
        {
          break;
        }

LABEL_12:
        if (*(*(*(*(this + 208) + (((v4 + *(this + 232) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 232) - 1) & 0x1FF)) + 8) != 1)
        {
          return;
        }

        YAML::Scanner::PopIndent(this);
      }
    }
  }
}

void YAML::Scanner::EndStream(YAML::Scanner *this)
{
  if (*(this + 4) >= 1)
  {
    *(this + 4) = 0;
  }

  YAML::Scanner::PopAllIndents(this);
  while (1)
  {
    v2 = *(this + 24);
    if (!v2)
    {
      break;
    }

    *(this + 24) = v2 - 1;
    std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
  }

  *(this + 145) = 1;
}

void *YAML::Exp::DocStart(YAML::Exp *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "---");
    v2 = YAML::RegEx::RegEx(v11, __p, 6);
    v3 = YAML::Exp::BlankOrBreak(v2);
    v4 = 0;
    v5 = 0;
    memset(v6, 0, sizeof(v6));
    YAML::operator|(&v7, v3, &v4);
    YAML::operator+(YAML::Exp::DocStart(void)::e, v11, &v7);
    v13 = &v8;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v13 = v6;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v7 = &v12;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(YAML::RegEx::~RegEx, YAML::Exp::DocStart(void)::e, &dword_254C81000);
  }

  return YAML::Exp::DocStart(void)::e;
}

void sub_254D3F944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v24 - 40) = v23 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  *(v24 - 40) = v22;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  a13 = v24 - 64;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL YAML::RegEx::Matches(YAML::RegEx *this, const YAML::Stream *a2)
{
  v4[0] = 0;
  v4[1] = a2;
  if (*(a2 + 8))
  {
    return YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(this, v4) >= 0;
  }

  result = YAML::Stream::_ReadAheadTo(a2, 0);
  if (result)
  {
    return YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(this, v4) >= 0;
  }

  return result;
}

void *YAML::Exp::DocEnd(YAML::Exp *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "...");
    v2 = YAML::RegEx::RegEx(v11, __p, 6);
    v3 = YAML::Exp::BlankOrBreak(v2);
    v4 = 0;
    v5 = 0;
    memset(v6, 0, sizeof(v6));
    YAML::operator|(&v7, v3, &v4);
    YAML::operator+(YAML::Exp::DocEnd(void)::e, v11, &v7);
    v13 = &v8;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v13 = v6;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
    v7 = &v12;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(YAML::RegEx::~RegEx, YAML::Exp::DocEnd(void)::e, &dword_254C81000);
  }

  return YAML::Exp::DocEnd(void)::e;
}

void sub_254D3FB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v24 - 40) = v23 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  *(v24 - 40) = v22;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v24 - 40));
  a13 = v24 - 64;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void YAML::Exp::BlockEntry(YAML::Exp *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_13, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&_MergedGlobals_13);
    if (v1)
    {
      v8 = 1;
      v9 = 45;
      memset(v10, 0, sizeof(v10));
      v2 = YAML::Exp::BlankOrBreak(v1);
      v3 = 0;
      v4 = 0;
      memset(v5, 0, sizeof(v5));
      YAML::operator|(&v6, v2, &v3);
      YAML::operator+(qword_280AF4530, &v8, &v6);
      v11 = &v7;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
      v11 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v11);
      v6 = v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      __cxa_atexit(YAML::RegEx::~RegEx, qword_280AF4530, &dword_254C81000);
      __cxa_guard_release(&_MergedGlobals_13);
    }
  }
}

void sub_254D3FCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v13 - 40) = v12 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  *(v13 - 40) = v11;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  __cxa_guard_abort(&_MergedGlobals_13);
  _Unwind_Resume(a1);
}

void YAML::Exp::Key(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4508, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_280AF4508);
    if (v1)
    {
      v3 = 1;
      v4 = 63;
      memset(v5, 0, sizeof(v5));
      v2 = YAML::Exp::BlankOrBreak(v1);
      YAML::operator+(qword_280AF4550, &v3, v2);
      v6 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      __cxa_atexit(YAML::RegEx::~RegEx, qword_280AF4550, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4508);
    }
  }
}

void sub_254D3FDC0(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  __cxa_guard_abort(&qword_280AF4508);
  _Unwind_Resume(a1);
}

void YAML::Exp::KeyInFlow(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4510, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_280AF4510);
    if (v1)
    {
      v3 = 1;
      v4 = 63;
      memset(v5, 0, sizeof(v5));
      v2 = YAML::Exp::BlankOrBreak(v1);
      YAML::operator+(qword_280AF4570, &v3, v2);
      v6 = v5;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      __cxa_atexit(YAML::RegEx::~RegEx, qword_280AF4570, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4510);
    }
  }
}

void sub_254D3FE9C(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  __cxa_guard_abort(&qword_280AF4510);
  _Unwind_Resume(a1);
}

int *YAML::Scanner::GetValueRegex(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    if (*(this + 147) == 1)
    {
      v1 = &dword_280AF45B0;
      if ((atomic_load_explicit(&qword_280AF4520, memory_order_acquire) & 1) == 0)
      {
        v2 = &qword_280AF4520;
        if (__cxa_guard_acquire(&qword_280AF4520))
        {
          dword_280AF45B0 = 1;
          v1 = &dword_280AF45B0;
          word_280AF45B4 = 58;
          qword_280AF45C0 = 0;
          unk_280AF45C8 = 0;
          qword_280AF45B8 = 0;
LABEL_15:
          __cxa_atexit(YAML::RegEx::~RegEx, v1, &dword_254C81000);
          __cxa_guard_release(v2);
        }
      }
    }

    else
    {
      v1 = qword_280AF45D0;
      if ((atomic_load_explicit(&qword_280AF4528, memory_order_acquire) & 1) == 0)
      {
        v6 = __cxa_guard_acquire(&qword_280AF4528);
        if (v6)
        {
          v15 = 1;
          v16 = 58;
          v18 = 0;
          v19 = 0;
          v17 = 0;
          v7 = YAML::Exp::BlankOrBreak(v6);
          std::string::basic_string[abi:ne200100]<0>(__p, ",}");
          YAML::RegEx::RegEx(&v10, __p, 3);
          YAML::operator|(&v13, v7, &v10);
          YAML::operator+(qword_280AF45D0, &v15, &v13);
          v20 = v14;
          std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
          v20 = v12;
          std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
          if (v9 < 0)
          {
            operator delete(__p[0]);
          }

          v13 = &v17;
          std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
          v2 = &qword_280AF4528;
          v1 = qword_280AF45D0;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v1 = qword_280AF4590;
    if ((atomic_load_explicit(&qword_280AF4518, memory_order_acquire) & 1) == 0)
    {
      v3 = __cxa_guard_acquire(&qword_280AF4518);
      if (v3)
      {
        v15 = 1;
        v16 = 58;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v4 = YAML::Exp::BlankOrBreak(v3);
        v10 = 0;
        v11 = 0;
        memset(v12, 0, sizeof(v12));
        YAML::operator|(&v13, v4, &v10);
        YAML::operator+(qword_280AF4590, &v15, &v13);
        __p[0] = v14;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v12;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](__p);
        v13 = &v17;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v13);
        v2 = &qword_280AF4518;
        v1 = qword_280AF4590;
        goto LABEL_15;
      }
    }
  }

  return v1;
}

void sub_254D4010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 40) = v19 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  *(v20 - 40) = &a16;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a19);
  __cxa_guard_abort(&qword_280AF4528);
  _Unwind_Resume(a1);
}

void *YAML::Exp::PlainScalar(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::BlankOrBreak(v2);
      YAML::RegEx::RegEx(v19, v17, 3);
      YAML::operator|(&v21, v3, v19);
      std::string::basic_string[abi:ne200100]<0>(__p, "-?:");
      v4 = YAML::RegEx::RegEx(v13, __p, 3);
      v5 = YAML::Exp::BlankOrBreak(v4);
      v6 = 0;
      v7 = 0;
      memset(v8, 0, sizeof(v8));
      YAML::operator|(&v9, v5, &v6);
      YAML::operator+(&v15, v13, &v9);
      YAML::operator|(&v23, &v21, &v15);
      YAML::operator!(&v23, YAML::Exp::PlainScalar(void)::e);
      v25 = &v24;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = &v16;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = &v10;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v25 = v8;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v25);
      v9 = &v14;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v9);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = &v22;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v15);
      v15 = &v20;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v15);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, YAML::Exp::PlainScalar(void)::e, &dword_254C81000);
    }
  }

  return YAML::Exp::PlainScalar(void)::e;
}

void sub_254D403A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  *(v39 - 40) = v38 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  *(v39 - 40) = &a29;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  *(v39 - 40) = &a15;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  *(v39 - 40) = v37;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v39 - 40));
  a14 = &a25;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a28 = v39 - 96;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = v39 - 128;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a28);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void *YAML::Exp::PlainScalarInFlow(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::BlankOrBreak(v2);
      YAML::RegEx::RegEx(v14, v12, 3);
      YAML::operator|(&v16, v3, v14);
      std::string::basic_string[abi:ne200100]<0>(__p, "-:");
      v4 = YAML::RegEx::RegEx(v8, __p, 3);
      v5 = YAML::Exp::Blank(v4);
      YAML::operator+(&v10, v8, v5);
      YAML::operator|(&v18, &v16, &v10);
      YAML::operator!(&v18, YAML::Exp::PlainScalarInFlow(void)::e);
      v20 = &v19;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
      v20 = &v11;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
      v20 = &v9;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v20);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = &v17;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v10);
      v10 = &v15;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v10);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, YAML::Exp::PlainScalarInFlow(void)::e, &dword_254C81000);
    }
  }

  return YAML::Exp::PlainScalarInFlow(void)::e;
}

void sub_254D40640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31)
{
  *(v32 - 40) = v31 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  *(v32 - 40) = &a21;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  *(v32 - 40) = &a17;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a20 = (v32 - 96);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = &a31;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void *YAML::ParserException::ParserException(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  result = YAML::Exception::Exception(a1, a2, a3);
  *result = &unk_28671C278;
  return result;
}

void YAML::ptr_vector<YAML::Scanner::IndentMarker>::push_back(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

void YAML::Scanner::PopAllIndents(YAML::Scanner *this)
{
  if (!*(this + 39))
  {
    while (1)
    {
      v2 = *(this + 30);
      if (!v2 || *(*(*(*(this + 26) + (((v2 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v2 + *(this + 29) - 1) & 0x1FF)) + 4) == 2)
      {
        break;
      }

      YAML::Scanner::PopIndent(this);
    }
  }
}

unint64_t YAML::Scanner::PushToken(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  LODWORD(v7) = 0;
  DWORD1(v7) = a2;
  *(&v7 + 1) = v3;
  v8 = v4;
  *__p = 0u;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  std::deque<YAML::Token>::push_back((a1 + 96), &v7);
  v12 = v10 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (SBYTE7(v10[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 136) + *(a1 + 128) - 1;
  return *(*(a1 + 104) + 8 * (v5 / 0x33)) + 80 * (v5 % 0x33);
}

void sub_254D4098C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Scanner::GetStartTokenFor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 4;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      __assert_rtn("GetStartTokenFor", "scanner.cpp", 279, "false");
    }

    __assert_rtn("GetStartTokenFor", "scanner.cpp", 282, "false");
  }

  return 3;
}

uint64_t YAML::Scanner::PushIndentTo(void *a1, int a2, int a3)
{
  if (!a1[39])
  {
    operator new();
  }

  return 0;
}

void YAML::Scanner::PopIndent(YAML::Scanner *this)
{
  v3 = *(this + 26);
  v2 = *(this + 27);
  v4 = ((v2 - v3) << 6) - 1;
  if (v2 == v3)
  {
    v4 = 0;
  }

  v5 = *(this + 30) - 1;
  v6 = v5 + *(this + 29);
  v7 = *(*(v3 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF));
  *(this + 30) = v5;
  if (v4 - v6 >= 0x400)
  {
    operator delete(*(v2 - 8));
    *(this + 27) -= 8;
  }

  if (*(v7 + 8))
  {

    YAML::Scanner::InvalidateSimpleKey(this);
  }

  else
  {
    v8 = *(v7 + 4);
    if (v8)
    {
      if (v8 != 1)
      {
        return;
      }

      v9 = *(this + 1);
      v10 = *(this + 4);
      *&v13 = 0x500000000;
      *(&v13 + 1) = v9;
      v14 = v10;
      *__p = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      std::deque<YAML::Token>::push_back(this + 12, &v13);
    }

    else
    {
      v11 = *(this + 1);
      v12 = *(this + 4);
      *&v13 = 0x600000000;
      *(&v13 + 1) = v11;
      v14 = v12;
      *__p = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      std::deque<YAML::Token>::push_back(this + 12, &v13);
    }

    v19 = &v16 + 1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_254D40CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Scanner::GetTopIndent(YAML::Scanner *this)
{
  v1 = *(this + 30);
  if (v1)
  {
    return **(*(*(this + 26) + (((v1 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v1 + *(this + 29) - 1) & 0x1FF));
  }

  else
  {
    return 0;
  }
}

void YAML::Scanner::ThrowParserException(void *a1, __int128 *a2)
{
  v6 = -1;
  v7 = -1;
  if (a1[17])
  {
    v3 = *(a1[13] + 8 * (a1[16] / 0x33uLL)) + 80 * (a1[16] % 0x33uLL);
    v4 = *(v3 + 16);
    v6 = *(v3 + 8);
    v7 = v4;
  }

  exception = __cxa_allocate_exception(0x38uLL);
  YAML::ParserException::ParserException(exception, &v6, a2);
}

uint64_t std::deque<YAML::Scanner::IndentMarker *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
}

uint64_t std::deque<YAML::Scanner::SimpleKey>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<YAML::CollectionType::value *>::~__split_buffer(a1);
}

uint64_t std::deque<YAML::Token>::~deque[abi:ne200100](uint64_t a1)
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
    v6 = &v3[v5 / 0x33];
    v7 = *v6 + 80 * (v5 % 0x33);
    v8 = v3[(*(a1 + 40) + v5) / 0x33] + 80 * ((*(a1 + 40) + v5) % 0x33);
    if (v7 != v8)
    {
      do
      {
        std::allocator<YAML::Token>::destroy[abi:ne200100](a1, v7);
        v7 += 80;
        if (v7 - *v6 == 4080)
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
    v12 = 25;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 51;
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

void std::allocator<YAML::Token>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }
}

void std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<YAML::Scanner::IndentMarker>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x259C29D90](result, 0x1020C406E52F545);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::deque<YAML::Token>::pop_front(int64x2_t *a1)
{
  std::allocator<YAML::Token>::destroy[abi:ne200100](a1, *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x33uLL)) + 80 * (a1[2].i64[0] % 0x33uLL));
  a1[2] = vaddq_s64(a1[2], xmmword_254E1F970);

  return std::deque<YAML::Token>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<YAML::Token>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x33)
  {
    a2 = 1;
  }

  if (v2 < 0x66)
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
    *(a1 + 32) -= 51;
  }

  return v4 ^ 1u;
}

void std::deque<YAML::Scanner::IndentMarker *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<YAML::Scanner::IndentMarker *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<YAML::Scanner::IndentMarker *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::IndentMarker **>>(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<YAML::Scanner::IndentMarker **>::emplace_back<YAML::Scanner::IndentMarker **&>(a1, &v9);
}

void sub_254D41740(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<YAML::Scanner::IndentMarker **>::emplace_back<YAML::Scanner::IndentMarker **&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::IndentMarker **>>(v11);
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

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::IndentMarker **>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __cxx_global_array_dtor_2()
{
  v0 = &byte_280AF5737;
  v1 = -480;
  v2 = &byte_280AF5737;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void sub_254D41D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  if (v20 != v21)
  {
  }

  if (a14 != v17)
  {
  }

  _Unwind_Resume(a1);
}

void sub_254D420B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

IETestResults *ConvertTestResults(const siri::intelligence::TestSuite *a1, const siri::intelligence::TestResults *a2)
{
  v33 = objc_opt_new();
  v35 = objc_opt_new();
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<siri::intelligence::TestParseError>::__init_with_size[abi:ne200100]<siri::intelligence::TestParseError*,siri::intelligence::TestParseError*>(&v46, *(a1 + 3), *(a1 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 4) - *(a1 + 3)) >> 4));
  v4 = v46;
  for (i = v47; v4 != i; v4 += 48)
  {
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *v4, *(v4 + 8));
    }

    else
    {
      v6 = *v4;
      v38.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v38.__r_.__value_.__l.__data_ = v6;
    }

    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      v7 = *(v4 + 24);
      __p.__r_.__value_.__r.__words[2] = *(v4 + 40);
      *&__p.__r_.__value_.__l.__data_ = v7;
    }

    v8 = objc_opt_new();
    v9 = MEMORY[0x277CCACA8];
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = v38;
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v45;
    }

    else
    {
      v10 = v45.__r_.__value_.__r.__words[0];
    }

    v11 = [v9 stringWithUTF8String:v10];
    [v8 setFlowId:v11];

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    v12 = MEMORY[0x277CCACA8];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v45 = __p;
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v45;
    }

    else
    {
      v13 = v45.__r_.__value_.__r.__words[0];
    }

    v14 = [v12 stringWithUTF8String:v13];
    [v8 setError:v14];

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    [v35 addObject:v8];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v38.__r_.__value_.__r.__words[0] = &v46;
  std::vector<siri::intelligence::TestParseError>::__destroy_vector::operator()[abi:ne200100](&v38);
  v15 = objc_opt_new();
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<siri::intelligence::TestResult>::__init_with_size[abi:ne200100]<siri::intelligence::TestResult*,siri::intelligence::TestResult*>(&v46, *(a2 + 1), *(a2 + 2), 0xD37A6F4DE9BD37A7 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  v16 = v46;
  for (j = v47; v16 != j; v16 = (v16 + 184))
  {
    siri::intelligence::TestCase::TestCase(&v38, v16);
    siri::intelligence::TestResult::GetDescriptions(&v45, v16);
    size = v45.__r_.__value_.__l.__size_;
    for (k = v45.__r_.__value_.__r.__words[0]; k != size; k += 24)
    {
      if (*(k + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *k, *(k + 8));
      }

      else
      {
        v19 = *k;
        v37.__r_.__value_.__r.__words[2] = *(k + 16);
        *&v37.__r_.__value_.__l.__data_ = v19;
      }

      v20 = objc_opt_new();
      v21 = v20;
      v22 = (*(v16 + 38) - 1);
      if (v22 < 3)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      [v20 setStatus:v23];
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v37;
      }

      else
      {
        v24 = v37.__r_.__value_.__r.__words[0];
      }

      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
      [v21 setSummary:v25];

      v26 = MEMORY[0x277CCACA8];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = __p;
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v36;
      }

      else
      {
        v27 = v36.__r_.__value_.__r.__words[0];
      }

      v28 = [v26 stringWithUTF8String:v27];
      [v21 setFlowId:v28];

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      v29 = MEMORY[0x277CCACA8];
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v40;
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v36;
      }

      else
      {
        v30 = v36.__r_.__value_.__r.__words[0];
      }

      v31 = [v29 stringWithUTF8String:v30];
      [v21 setTestName:v31];

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      [v15 addObject:v21];

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }

    v37.__r_.__value_.__r.__words[0] = &v45;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
    v45.__r_.__value_.__r.__words[0] = &v44;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
    v45.__r_.__value_.__r.__words[0] = &v43;
    std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v45);
    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v38.__r_.__value_.__r.__words[0] = &v46;
  std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](&v38);
  [v33 setParseErrors:v35];
  [v33 setResults:v15];

  return v33;
}

void sub_254D42924(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  _Unwind_Resume(a1);
}

IETestResults *MakeEmptyTestResults(void)
{
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  [v0 setParseErrors:v1];

  v2 = objc_opt_new();
  [v0 setResults:v2];

  return v0;
}

void sub_254D42A4C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_254D42DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_254D43208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_254D43548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_254D43770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_254D43920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_254D43A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254D43B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254D43BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_254D43D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_254D43EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::TestResult>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<siri::intelligence::TestResult>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<siri::intelligence::TestResult>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = v3 - 3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      v5 = v3 - 7;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      v5 = v3 - 10;
      std::vector<protobuf::FlowTest_Step>::__destroy_vector::operator()[abi:ne200100](&v5);
      if (*(v3 - 89) < 0)
      {
        operator delete(*(v3 - 14));
      }

      if (*(v3 - 113) < 0)
      {
        operator delete(*(v3 - 17));
      }

      if (*(v3 - 137) < 0)
      {
        operator delete(*(v3 - 20));
      }

      v4 = v3 - 23;
      if (*(v3 - 161) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 23;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_254D441D0(_Unwind_Exception *exception_object)
{
  v4 = v1[10];
  if (v4)
  {
    v1[11] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[8] = v5;
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    v1[5] = v6;
    operator delete(v6);
  }

  v7 = v1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<YAML::detail::node *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void YAML::NodeBuilder::~NodeBuilder(YAML::NodeBuilder *this)
{
  *this = &unk_28671B8D0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

{
  YAML::NodeBuilder::~NodeBuilder(this);

  JUMPOUT(0x259C29D90);
}

void YAML::NodeBuilder::Root(YAML::NodeBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = v4;
      *(a2 + 40) = v3;
      *(a2 + 48) = v2;
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = v4;
      *(a2 + 40) = 0;
      *(a2 + 48) = v2;
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
  }
}

void YAML::NodeBuilder::Pop(YAML::NodeBuilder *this)
{
  v2 = *(this + 4);
  v1 = *(this + 5);
  if (v2 == v1)
  {
    __assert_rtn("Pop", "nodebuilder.cpp", 100, "!m_stack.empty()");
  }

  if (v1 - v2 == 8)
  {
    *(this + 3) = *v2;
    *(this + 5) = v1 - 8;
    return;
  }

  v6 = *(v1 - 1);
  v4 = v1 - 8;
  v5 = v6;
  *(this + 5) = v4;
  v7 = *(v4 - 1);
  v8 = **v7;
  if (*v8 != 1)
  {
    goto LABEL_32;
  }

  v9 = *(v8 + 4);
  if (v9 != 4)
  {
    if (v9 == 3)
    {
      v10 = *(this + 1);
      v11 = *(this + 2);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v7;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v12;
        v19 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v19 = 0;
      }

      v18 = v10;
      YAML::detail::node_data::push_back(v8, v5);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      YAML::detail::node::add_dependency(v5, v7);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      return;
    }

LABEL_32:
    __assert_rtn("Pop", "nodebuilder.cpp", 124, "false");
  }

  v13 = *(this + 11);
  if (*(this + 10) == v13)
  {
    __assert_rtn("Pop", "nodebuilder.cpp", 115, "!m_keys.empty()");
  }

  if (*(v13 - 8) == 1)
  {
    v14 = *(v13 - 16);
    v15 = *(this + 1);
    v16 = *(this + 2);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v7;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v17;
      v19 = v16;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v19 = 0;
    }

    v18 = v15;
    YAML::detail::node_data::insert(v8, v14, v5, &v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    YAML::detail::node::add_dependency(v14, v7);
    YAML::detail::node::add_dependency(v5, v7);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    *(this + 11) -= 16;
  }

  else
  {
    *(v13 - 8) = 1;
  }
}

void sub_254D44718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void YAML::NodeBuilder::OnAlias(YAML::NodeBuilder *a1, uint64_t a2, uint64_t a3)
{
  YAML::NodeBuilder::Push(a1, *(*(a1 + 7) + 8 * a3));

  YAML::NodeBuilder::Pop(a1);
}

void YAML::NodeBuilder::Push(YAML::NodeBuilder *this, YAML::detail::node *a2)
{
  v6 = *(this + 4);
  v5 = *(this + 5);
  v4 = this + 32;
  if (v6 != v5 && (v7 = ***(v5 - 8), *v7 == 1) && *(v7 + 16) == 4)
  {
    v8 = *(this + 11) - *(this + 10);
    v9 = *(this + 13);
    v22 = a2;
    std::vector<YAML::detail::node *>::push_back[abi:ne200100](v4, &v22);
    if (v9 > v8 >> 4)
    {
      v11 = *(this + 11);
      v10 = *(this + 12);
      if (v11 >= v10)
      {
        v13 = *(this + 10);
        v14 = v11 - v13;
        v15 = (v11 - v13) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
        }

        v17 = v10 - v13;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v15;
        v20 = 16 * v15;
        *v20 = a2;
        *(v20 + 8) = 0;
        v12 = 16 * v15 + 16;
        v21 = (v20 - 16 * v19);
        memcpy(v21, v13, v14);
        *(this + 10) = v21;
        *(this + 11) = v12;
        *(this + 12) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v11 = a2;
        *(v11 + 8) = 0;
        v12 = v11 + 16;
      }

      *(this + 11) = v12;
    }
  }

  else
  {
    v22 = a2;
    std::vector<YAML::detail::node *>::push_back[abi:ne200100](v4, &v22);
  }
}

void YAML::NodeBuilder::OnMapEnd(YAML::NodeBuilder *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    __assert_rtn("OnMapEnd", "nodebuilder.cpp", 76, "m_mapDepth > 0");
  }

  *(this + 13) = v2 - 1;

  YAML::NodeBuilder::Pop(this);
}

void YAML::NodeBuilder::RegisterAnchor(YAML::NodeBuilder *this, uint64_t a2, YAML::detail::node *a3)
{
  if (a2)
  {
    v4 = *(this + 7);
    v5 = *(this + 8);
    v3 = this + 56;
    if (a2 != (v5 - v4) >> 3)
    {
      __assert_rtn("RegisterAnchor", "nodebuilder.cpp", 131, "anchor == m_anchors.size()");
    }

    v6 = a3;
    std::vector<YAML::detail::node *>::push_back[abi:ne200100](v3, &v6);
  }
}

void YAML::detail::node::add_dependency(YAML::detail::node *this, YAML::detail::node *a2)
{
  if (***this == 1)
  {

    YAML::detail::node::mark_defined(a2);
  }

  else
  {
    v2 = *(this + 3);
    if (!v2)
    {
LABEL_11:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = v2[4];
        if (v4 <= a2)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      if (v4 >= a2)
      {
        break;
      }

      v2 = v3[1];
      if (!v2)
      {
        goto LABEL_11;
      }
    }
  }
}

siri::intelligence::Variable *siri::intelligence::Variable::Variable(siri::intelligence::Variable *this)
{
  *(this + 1) = 0;
  *this = &unk_28671B958;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 4, siri::intelligence::TYPE_UNKNOWN);
  *(this + 7) = 0;
  *(this + 32) = 0;
  return this;
}

void sub_254D44D04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Variable::Variable(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *a1 = &unk_28671B958;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::string::operator=((a1 + 8), a2);
  std::string::operator=((a1 + 32), a3);
  *(a1 + 56) = 0;
  return a1;
}

void sub_254D44DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Variable::~Variable(void **this)
{
  *this = &unk_28671B958;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::Variable::GetKey(siri::intelligence::Variable *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *a2 = *(this + 8);
  }
}

void siri::intelligence::Variable::GetType(siri::intelligence::Variable *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *a2 = *(this + 32);
  }
}

void siri::intelligence::Variable::GetFullKey(siri::intelligence::Variable *this@<X0>, uint64_t a2@<X8>)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *a2 = *(this + 8);
    *(a2 + 16) = *(this + 3);
  }

  for (i = *(this + 7); i; i = *(i + 56))
  {
    v5 = *(i + 31);
    if (v5 < 0)
    {
      if (!*(i + 16))
      {
        return;
      }
    }

    else if (!*(i + 31))
    {
      return;
    }

    if (v5 >= 0)
    {
      v6 = *(i + 31);
    }

    else
    {
      v6 = *(i + 16);
    }

    std::string::basic_string[abi:ne200100](&v16, v6 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v16;
    }

    else
    {
      v7 = v16.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(i + 31) >= 0)
      {
        v8 = (i + 8);
      }

      else
      {
        v8 = *(i + 8);
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 46;
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::string::append(&v16, v10, v11);
    v13 = v12->__r_.__value_.__r.__words[0];
    v17[0] = v12->__r_.__value_.__l.__size_;
    *(v17 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v15 = v17[0];
    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 15) = *(v17 + 7);
    *(a2 + 23) = v14;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D45078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D451A4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void siri::intelligence::Variable::FromProtobuf(uint64_t a1@<X0>, _DWORD *a2@<X1>, std::string **a3@<X8>)
{
  v5 = a2[4];
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  if ((v5 & 0x10) != 0)
  {
    v12 = 0uLL;
    v13 = 0;
    v10 = 0uLL;
    v11 = 0;
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v10, (a2 + 24));
    if (DWORD2(v10))
    {
      if (v11)
      {
        v8 = (v11 + 8);
      }

      else
      {
        v8 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v12, *v8++);
        if (v11)
        {
          v9 = v11 + 8;
        }

        else
        {
          v9 = 0;
        }
      }

      while (v8 != (v9 + 8 * SDWORD2(v10)));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v10);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  if (a2[20] >= 1)
  {
    v12 = 0uLL;
    v13 = 0;
    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::RepeatedPtrField(&v10, (a2 + 18));
    if (DWORD2(v10))
    {
      if (v11)
      {
        v6 = (v11 + 8);
      }

      else
      {
        v6 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v12, *v6++);
        if (v11)
        {
          v7 = v11 + 8;
        }

        else
        {
          v7 = 0;
        }
      }

      while (v6 != (v7 + 8 * SDWORD2(v10)));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v10);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,std::string const&,std::vector<protobuf::Intelligence_KeyValueParameter> &,0>(&v10, a1, &v12);
  }

  if (a2[14] >= 1)
  {
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableArray,std::allocator<siri::intelligence::VariableArray>,std::string const&,0>();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_254D455C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<protobuf::Intelligence_KeyValueParameter>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](uint64_t a1, const protobuf::Intelligence_KeyValueParameter *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<protobuf::Intelligence_KeyValueParameter>::__emplace_back_slow_path<protobuf::Intelligence_KeyValueParameter const&>(a1, a2);
  }

  else
  {
    protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(*(a1 + 8), a2);
    result = v3 + 192;
    *(a1 + 8) = v3 + 192;
  }

  *(a1 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<siri::intelligence::Variable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671B9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void std::vector<protobuf::Intelligence_KeyValueParameter>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1, a2);
  return a1;
}

uint64_t std::vector<protobuf::Intelligence_KeyValueParameter>::__emplace_back_slow_path<protobuf::Intelligence_KeyValueParameter const&>(protobuf::Intelligence_KeyValueParameter **a1, const protobuf::Intelligence_KeyValueParameter *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>>(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter((192 * v2), a2);
  v15 = 192 * v2 + 192;
  v7 = a1[1];
  v8 = (192 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>,protobuf::Intelligence_KeyValueParameter*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<protobuf::Intelligence_KeyValueParameter>::~__split_buffer(&v13);
  return v12;
}

void sub_254D459B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<protobuf::Intelligence_KeyValueParameter>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<protobuf::Intelligence_KeyValueParameter>,protobuf::Intelligence_KeyValueParameter*>(uint64_t a1, protobuf::Intelligence_KeyValueParameter *a2, protobuf::Intelligence_KeyValueParameter *a3, protobuf::Intelligence_KeyValueParameter *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(a4, v7);
      v7 = (v7 + 192);
      a4 = (v8 + 192);
    }

    while (v7 != a3);
    v9 = v6;
    v10 = v6;
    do
    {
      v11 = *v10;
      v10 = (v10 + 192);
      (*v11)(v6);
      v9 = (v9 + 192);
      v6 = v10;
    }

    while (v10 != a3);
  }
}

protobuf::Intelligence_KeyValueParameter *protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(protobuf::Intelligence_KeyValueParameter *a1, protobuf::Intelligence_KeyValueParameter *a2)
{
  protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(a1);
  if (a1 != a2)
  {
    protobuf::Intelligence_KeyValueParameter::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t std::__split_buffer<protobuf::Intelligence_KeyValueParameter>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 192);
    *(a1 + 16) = i - 192;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__shared_ptr_emplace<siri::intelligence::VariableDictionary>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,std::allocator<siri::intelligence::VariableDictionary>,0>(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671B030;
  std::allocator<siri::intelligence::VariableDictionary>::construct[abi:ne200100]<siri::intelligence::VariableDictionary,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &>(&v5, a1 + 3, a2, a3);
  return a1;
}

void std::allocator<siri::intelligence::VariableDictionary>::construct[abi:ne200100]<siri::intelligence::VariableDictionary,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &>(int a1, void *a2, char *__s, uint64_t *a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  siri::intelligence::VariableDictionary::VariableDictionary(a2, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254D45CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D45D44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_254D45E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Loader::LoadFile(uint64_t *a1)
{
  siri::intelligence::GetFormatForFilename(a1);

  siri::intelligence::Loader::LoadFile();
}

void *_ZNSt3__120__shared_ptr_emplaceIN8protobuf12IntelligenceENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28671BA30;
  protobuf::Intelligence::Intelligence((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<protobuf::Intelligence>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28671BA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void siri::intelligence::Validator::Validate(siri::intelligence::ValidationData *a3@<X8>, uint64_t x2_0@<X2>)
{
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  std::vector<siri::intelligence::ValidationResult>::__init_with_size[abi:ne200100]<siri::intelligence::ValidationResult*,siri::intelligence::ValidationResult*>(a3, *x2_0, *(x2_0 + 8), (*(x2_0 + 8) - *x2_0) >> 6);
  std::set<std::string>::set[abi:ne200100](a3 + 3, (x2_0 + 24));
  _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_254D47D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  google::protobuf::internal::LogMessage::~LogMessage((v23 - 144));
  siri::intelligence::ValidationData::~ValidationData(&a23);
  std::__tree<std::string>::destroy((a14 + 3), a14[4]);
  a23 = a14;
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void siri::intelligence::ValidateAll(siri::intelligence *this, const protobuf::Intelligence *a2, siri::intelligence::ValidationData *a3, siri::intelligence::ValidationResults *a4)
{
  if ((*(this + 4) & 2) != 0)
  {
    v6 = *(this + 67);
    if (!v6)
    {
      google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 22110);
      v7 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || start_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v745, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
      v6 = *(this + 67);
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &protobuf::_Intelligence_Start_default_instance_;
    }

    if (*(v8 + 8) >= 1)
    {
      if (v8[2])
      {
        v9 = std::string::basic_string[abi:ne200100]<0>(&__p, "start definition contains both responseIds and an activityId");
        v10 = v8[1];
        if (v10)
        {
          v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v9);
          v11 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v745, "");
        siri::intelligence::GetLineNumFromUnknownField(v11, &v745, -1);
      }

      v12 = 0;
      do
      {
        v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v8 + 3), v12);
        if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v13))
        {
          v14 = std::operator+<char>();
          v15 = v8[1];
          if (v15)
          {
            v16 = (v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v14);
            v16 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v745, "responseIds");
          siri::intelligence::GetLineNumFromUnknownField(v16, &v745, v12);
        }

        ++v12;
      }

      while (v12 < *(v8 + 8));
    }

    if (v8[2])
    {
      v17 = v8[6];
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        __p.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&__p.__r_.__value_.__l.__data_ = v18;
      }

      if ((a2 + 200) == std::__tree<std::string>::find<std::string>(a2 + 192, &__p.__r_.__value_.__l.__data_))
      {
        v19 = std::operator+<char>();
        v20 = v8[1];
        if (v20)
        {
          v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v19);
          v21 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "activityId");
        siri::intelligence::GetLineNumFromUnknownField(v21, &v744, -1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(this + 62) >= 1)
  {
    siri::intelligence::Utils::VersionLessThan(a2, siri::intelligence::sIntentRenameChange);
  }

  v22 = this;
  if (*(this + 8) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(v22 + 24, v23);
      if ((*(v24 + 16) & 1) == 0)
      {
        v25 = v24;
        v26 = std::string::basic_string[abi:ne200100]<0>(&__p, "Meta element has no name");
        v27 = *(v25 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v26);
          v28 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v745, "");
        siri::intelligence::GetLineNumFromUnknownField(v28, &v745, -1);
      }

      ++v23;
      v22 = this;
    }

    while (v23 < *(this + 8));
  }

  v29 = v22;
  if (*(v22 + 14) >= 1)
  {
    for (i = 0; i < *(this + 14); ++i)
    {
      v31 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(v29 + 48, i);
      std::string::basic_string[abi:ne200100]<0>(&__p, "dialog response ");
      v32 = *(v31 + 16);
      if (v32)
      {
        std::operator+<char>();
        v33 = std::string::append(&v744, "' ");
        v34 = *&v33->__r_.__value_.__l.__data_;
        v745.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v745.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v745;
        }

        else
        {
          v35 = v745.__r_.__value_.__r.__words[0];
        }

        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v745.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v35, size);
        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        v32 = *(v31 + 16);
      }

      if ((v32 & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v37 = __p.__r_.__value_.__l.__size_;
        }

        v38 = std::string::basic_string[abi:ne200100](&v745, v37 + 21);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v745;
        }

        else
        {
          v39 = v745.__r_.__value_.__r.__words[0];
        }

        if (v37)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v38 = memmove(v39, p_p, v37);
        }

        strcpy(v39 + v37, "does not define an id");
        v41 = *(v31 + 8);
        if (v41)
        {
          v42 = (v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v38);
          v42 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v42, &v744, -1);
      }

      if ((siri::intelligence::IsValidId(*(v31 + 120)) & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v43 = __p.__r_.__value_.__l.__size_;
        }

        v44 = std::string::basic_string[abi:ne200100](&v745, v43 + 32);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v745;
        }

        else
        {
          v45 = v745.__r_.__value_.__r.__words[0];
        }

        if (v43)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &__p;
          }

          else
          {
            v46 = __p.__r_.__value_.__r.__words[0];
          }

          v44 = memmove(v45, v46, v43);
        }

        strcpy(v45 + v43, "has invalid characters in the ID");
        v47 = *(v31 + 8);
        if (v47)
        {
          v48 = (v47 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v44);
          v48 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "id");
        siri::intelligence::GetLineNumFromUnknownField(v48, &v744, -1);
      }

      v49 = *(v31 + 120);
      if (*(v31 + 80) == 1)
      {
        v50 = *(*(v31 + 88) + 8);
        v51 = *(v49 + 8);
        v52 = *(v49 + 23);
        v53 = *(v50 + 23);
        if (v53 >= 0)
        {
          v54 = *(v50 + 23);
        }

        else
        {
          v54 = *(v50 + 8);
        }

        if (v52 >= 0)
        {
          v51 = *(v49 + 23);
        }

        if (v54 == v51)
        {
          v55 = v53 >= 0 ? *(*(v31 + 88) + 8) : *v50;
          v56 = v52 >= 0 ? *(v31 + 120) : *v49;
          if (!memcmp(v55, v56, v54))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v57 = __p.__r_.__value_.__l.__size_;
            }

            v58 = std::string::basic_string[abi:ne200100](&v745, v57 + 42);
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v745;
            }

            else
            {
              v59 = v745.__r_.__value_.__r.__words[0];
            }

            if (v57)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v60 = &__p;
              }

              else
              {
                v60 = __p.__r_.__value_.__r.__words[0];
              }

              v58 = memmove(v59, v60, v57);
            }

            strcpy(v59 + v57, "has a single next id that refers to itself");
            v61 = *(v31 + 8);
            if (v61)
            {
              v62 = (v61 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v58);
              v62 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v744, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v62, &v744, 0);
          }
        }
      }

      v63 = std::__tree<std::string>::find<std::string>(a2 + 240, v49);
      if ((a2 + 248) == v63)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = __p.__r_.__value_.__l.__size_;
        }

        v65 = std::string::basic_string[abi:ne200100](&v745, v64 + 12);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v745;
        }

        else
        {
          v66 = v745.__r_.__value_.__r.__words[0];
        }

        if (v64)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &__p;
          }

          else
          {
            v67 = __p.__r_.__value_.__r.__words[0];
          }

          v65 = memmove(v66, v67, v64);
        }

        strcpy(v66 + v64, "is not used.");
        v68 = *(v31 + 8);
        if (v68)
        {
          v69 = (v68 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v65);
          v69 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v69, &v744, -1);
      }

      if (*(v31 + 80) >= 1)
      {
        v70 = 0;
        do
        {
          v71 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v31 + 72, v70);
          v63 = std::__tree<std::string>::find<std::string>(a2 + 72, v71);
          if ((a2 + 80) == v63)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v72 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v72 + 29);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v73 = &v744;
            }

            else
            {
              v73 = v744.__r_.__value_.__r.__words[0];
            }

            if (v72)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v74 = &__p;
              }

              else
              {
                v74 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v73, v74, v72);
            }

            strcpy(v73 + v72, "refers to undefined next id: ");
            v75 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v31 + 72, v70);
            v76 = *(v75 + 23);
            if (v76 >= 0)
            {
              v77 = v75;
            }

            else
            {
              v77 = *v75;
            }

            if (v76 >= 0)
            {
              v78 = *(v75 + 23);
            }

            else
            {
              v78 = *(v75 + 8);
            }

            v79 = std::string::append(&v744, v77, v78);
            v745 = *v79;
            v79->__r_.__value_.__l.__size_ = 0;
            v79->__r_.__value_.__r.__words[2] = 0;
            v79->__r_.__value_.__r.__words[0] = 0;
            v80 = *(v31 + 8);
            if (v80)
            {
              v81 = (v80 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v79);
              v81 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v81, &v743, v70);
          }

          ++v70;
        }

        while (v70 < *(v31 + 80));
      }

      v82 = *(v31 + 216);
      if ((*(v82 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v82 + 8))
        {
          goto LABEL_179;
        }
      }

      else if (!*(v82 + 23))
      {
        goto LABEL_179;
      }

      v63 = std::__tree<std::string>::find<std::string>(a2 + 96, v82);
      if ((a2 + 104) == v63)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v83 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v744, v83 + 33);
        if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v744;
        }

        else
        {
          v84 = v744.__r_.__value_.__r.__words[0];
        }

        if (v83)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = &__p;
          }

          else
          {
            v85 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v84, v85, v83);
        }

        strcpy(v84 + v83, "refers to undefined input group: ");
        v86 = *(v31 + 216);
        v87 = *(v86 + 23);
        if (v87 >= 0)
        {
          v88 = *(v31 + 216);
        }

        else
        {
          v88 = *v86;
        }

        if (v87 >= 0)
        {
          v89 = *(v86 + 23);
        }

        else
        {
          v89 = *(v86 + 8);
        }

        v90 = std::string::append(&v744, v88, v89);
        v745 = *v90;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        v91 = *(v31 + 8);
        if (v91)
        {
          v92 = (v91 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v90);
          v92 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v743, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v92, &v743, -1);
      }

LABEL_179:
      v93 = *(v31 + 208);
      if ((*(v93 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v93 + 8))
        {
          goto LABEL_204;
        }
      }

      else if (!*(v93 + 23))
      {
        goto LABEL_204;
      }

      v63 = std::__tree<std::string>::find<std::string>(a2 + 168, v93);
      if ((a2 + 176) == v63)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v94 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v94 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v744, v94 + 31);
        if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &v744;
        }

        else
        {
          v95 = v744.__r_.__value_.__r.__words[0];
        }

        if (v94)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v96 = &__p;
          }

          else
          {
            v96 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v95, v96, v94);
        }

        strcpy(v95 + v94, "refers to undefined condition: ");
        v97 = *(v31 + 208);
        v98 = *(v97 + 23);
        if (v98 >= 0)
        {
          v99 = *(v31 + 208);
        }

        else
        {
          v99 = *v97;
        }

        if (v98 >= 0)
        {
          v100 = *(v97 + 23);
        }

        else
        {
          v100 = *(v97 + 8);
        }

        v101 = std::string::append(&v744, v99, v100);
        v745 = *v101;
        v101->__r_.__value_.__l.__size_ = 0;
        v101->__r_.__value_.__r.__words[2] = 0;
        v101->__r_.__value_.__r.__words[0] = 0;
        v102 = *(v31 + 8);
        if (v102)
        {
          v103 = (v102 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v101);
          v103 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v743, "conditionId");
        siri::intelligence::GetLineNumFromUnknownField(v103, &v743, -1);
      }

LABEL_204:
      v104 = *(v31 + 16);
      if (*(v31 + 80) >= 1 && (v104 & 0x1000) != 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v105 = __p.__r_.__value_.__l.__size_;
        }

        v106 = std::string::basic_string[abi:ne200100](&v745, v105 + 38);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = &v745;
        }

        else
        {
          v107 = v745.__r_.__value_.__r.__words[0];
        }

        if (v105)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v108 = &__p;
          }

          else
          {
            v108 = __p.__r_.__value_.__r.__words[0];
          }

          v106 = memmove(v107, v108, v105);
        }

        strcpy(v107 + v105, "contains both nextIds and inputGroupId");
        v109 = *(v31 + 8);
        if (v109)
        {
          v110 = (v109 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v106);
          v110 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v110, &v744, -1);
      }

      if ((v104 & 0x80) != 0)
      {
        v111 = *(v31 + 8);
        if (v111)
        {
          v112 = (v111 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v63);
          v112 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v745, "text");
        siri::intelligence::GetLineNumFromUnknownField(v112, &v745, -1);
      }

      if (*(v31 + 32) >= 1 && (v104 & 0x200) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v113 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v113 = __p.__r_.__value_.__l.__size_;
        }

        v114 = std::string::basic_string[abi:ne200100](&v745, v113 + 36);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v115 = &v745;
        }

        else
        {
          v115 = v745.__r_.__value_.__r.__words[0];
        }

        if (v113)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v116 = &__p;
          }

          else
          {
            v116 = __p.__r_.__value_.__r.__words[0];
          }

          v114 = memmove(v115, v116, v113);
        }

        strcpy(v115 + v113, "defines CAT parameters but no CAT ID");
        v117 = *(v31 + 8);
        if (v117)
        {
          v118 = (v117 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v114);
          v118 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "catParameters");
        siri::intelligence::GetLineNumFromUnknownField(v118, &v744, -1);
      }

      if (*(v31 + 56) >= 1 && (v104 & 0x400) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v119 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v119 = __p.__r_.__value_.__l.__size_;
        }

        v120 = std::string::basic_string[abi:ne200100](&v745, v119 + 44);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v121 = &v745;
        }

        else
        {
          v121 = v745.__r_.__value_.__r.__words[0];
        }

        if (v119)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v122 = &__p;
          }

          else
          {
            v122 = __p.__r_.__value_.__r.__words[0];
          }

          v120 = memmove(v121, v122, v119);
        }

        strcpy(v121 + v119, "defines Pattern parameters but no Pattern ID");
        v123 = *(v31 + 8);
        if (v123)
        {
          v124 = (v123 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v120);
          v124 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "patternParameters");
        siri::intelligence::GetLineNumFromUnknownField(v124, &v744, -1);
      }

      if ((v104 & 0x200) != 0)
      {
        v125 = *(v31 + 192);
        std::string::basic_string[abi:ne200100]<0>(&v745, "#");
        if (siri::intelligence::StringContains(v125, &v745))
        {
          v126 = *(a2 + 47);
          if (v126 < 0)
          {
            v126 = *(a2 + 4);
          }

          v127 = v126 != 0;
        }

        else
        {
          v127 = 0;
        }

        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
          if (!v127)
          {
            goto LABEL_268;
          }
        }

        else if (!v127)
        {
          goto LABEL_268;
        }

        if (siri::intelligence::DirExists(a2 + 6))
        {
          siri::intelligence::FindPathForCatId(a2 + 48, *(v31 + 192));
        }
      }

LABEL_268:
      if ((*(v31 + 17) & 4) != 0)
      {
        v128 = *(v31 + 200);
        std::string::basic_string[abi:ne200100]<0>(&v745, "#");
        if (siri::intelligence::StringContains(v128, &v745))
        {
          v129 = *(a2 + 47);
          if (v129 < 0)
          {
            v129 = *(a2 + 4);
          }

          v130 = v129 != 0;
        }

        else
        {
          v130 = 0;
        }

        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
          if (v130)
          {
LABEL_278:
            if (siri::intelligence::DirExists(a2 + 6))
            {
              siri::intelligence::FindFileForPatternId(*(v31 + 200), &v745);
              if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = SHIBYTE(v745.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v131 = v745.__r_.__value_.__l.__size_;
              }

              if ((SHIBYTE(v745.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                operator delete(v745.__r_.__value_.__l.__data_);
                if (!v131)
                {
LABEL_286:
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v132 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v132 = __p.__r_.__value_.__l.__size_;
                  }

                  std::string::basic_string[abi:ne200100](&v744, v132 + 42);
                  if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v133 = &v744;
                  }

                  else
                  {
                    v133 = v744.__r_.__value_.__r.__words[0];
                  }

                  if (v132)
                  {
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v134 = &__p;
                    }

                    else
                    {
                      v134 = __p.__r_.__value_.__r.__words[0];
                    }

                    memmove(v133, v134, v132);
                  }

                  strcpy(v133 + v132, "defines a Pattern ID that does not exist: ");
                  v135 = *(v31 + 200);
                  v136 = *(v135 + 23);
                  if (v136 >= 0)
                  {
                    v137 = *(v31 + 200);
                  }

                  else
                  {
                    v137 = *v135;
                  }

                  if (v136 >= 0)
                  {
                    v138 = *(v135 + 23);
                  }

                  else
                  {
                    v138 = *(v135 + 8);
                  }

                  v139 = std::string::append(&v744, v137, v138);
                  v745 = *v139;
                  v139->__r_.__value_.__l.__size_ = 0;
                  v139->__r_.__value_.__r.__words[2] = 0;
                  v139->__r_.__value_.__r.__words[0] = 0;
                  v140 = *(v31 + 8);
                  if (v140)
                  {
                    v141 = (v140 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  else
                  {
                    google::protobuf::internal::InitProtobufDefaults(v139);
                    v141 = &google::protobuf::internal::fixed_address_empty_string;
                  }

                  std::string::basic_string[abi:ne200100]<0>(&v743, "patternId");
                  siri::intelligence::GetLineNumFromUnknownField(v141, &v743, -1);
                }
              }

              else if (!v131)
              {
                goto LABEL_286;
              }
            }
          }
        }

        else if (v130)
        {
          goto LABEL_278;
        }
      }

      v29 = this;
      if (*(v31 + 32) >= 1)
      {
        v142 = 0;
        do
        {
          v143 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v31 + 24, v142);
          siri::intelligence::ValidateKeyValueParameter(&__p, v143, a2, a3);
          ++v142;
        }

        while (v142 < *(v31 + 32));
      }

      if (*(v31 + 104) >= 1)
      {
        v144 = 0;
        do
        {
          v145 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v31 + 96, v144);
          siri::intelligence::ValidateKeyValueParameter(&__p, v145, a2, a3);
          ++v144;
        }

        while (v144 < *(v31 + 104));
      }

      if (*(v31 + 56) >= 1)
      {
        v146 = 0;
        do
        {
          v147 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v31 + 48, v146);
          siri::intelligence::ValidateKeyValueParameter(&__p, v147, a2, a3);
          ++v146;
        }

        while (v146 < *(v31 + 56));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v148 = v29;
  if (*(v29 + 20) >= 1)
  {
    v149 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(v29 + 72, 0);
    std::string::basic_string[abi:ne200100]<0>(&__p, "behavior response ");
    v150 = *(v149 + 16);
    if (v150)
    {
      std::operator+<char>();
      v151 = std::string::append(&v744, "' ");
      v152 = *&v151->__r_.__value_.__l.__data_;
      v745.__r_.__value_.__r.__words[2] = v151->__r_.__value_.__r.__words[2];
      *&v745.__r_.__value_.__l.__data_ = v152;
      v151->__r_.__value_.__l.__size_ = 0;
      v151->__r_.__value_.__r.__words[2] = 0;
      v151->__r_.__value_.__r.__words[0] = 0;
      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v153 = &v745;
      }

      else
      {
        v153 = v745.__r_.__value_.__r.__words[0];
      }

      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v154 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v154 = v745.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v153, v154);
      if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v745.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v744.__r_.__value_.__l.__data_);
      }

      v150 = *(v149 + 16);
    }

    if ((v150 & 1) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v155 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v155 = __p.__r_.__value_.__l.__size_;
      }

      v156 = std::string::basic_string[abi:ne200100](&v745, v155 + 21);
      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v157 = &v745;
      }

      else
      {
        v157 = v745.__r_.__value_.__r.__words[0];
      }

      if (v155)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v158 = &__p;
        }

        else
        {
          v158 = __p.__r_.__value_.__r.__words[0];
        }

        v156 = memmove(v157, v158, v155);
      }

      strcpy(v157 + v155, "does not define an id");
      v159 = *(v149 + 8);
      if (v159)
      {
        v160 = (v159 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v156);
        v160 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v744, "");
      siri::intelligence::GetLineNumFromUnknownField(v160, &v744, -1);
    }

    if ((siri::intelligence::IsValidId(*(v149 + 72)) & 1) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v161 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v161 = __p.__r_.__value_.__l.__size_;
      }

      v162 = std::string::basic_string[abi:ne200100](&v745, v161 + 32);
      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = &v745;
      }

      else
      {
        v163 = v745.__r_.__value_.__r.__words[0];
      }

      if (v161)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v164 = &__p;
        }

        else
        {
          v164 = __p.__r_.__value_.__r.__words[0];
        }

        v162 = memmove(v163, v164, v161);
      }

      strcpy(v163 + v161, "has invalid characters in the ID");
      v165 = *(v149 + 8);
      if (v165)
      {
        v166 = (v165 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v162);
        v166 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v744, "id");
      siri::intelligence::GetLineNumFromUnknownField(v166, &v744, -1);
    }

    v167 = *(v149 + 72);
    if (*(v149 + 56) == 1)
    {
      v168 = *(*(v149 + 64) + 8);
      v169 = *(v167 + 8);
      v170 = *(v167 + 23);
      v171 = *(v168 + 23);
      if (v171 >= 0)
      {
        v172 = *(v168 + 23);
      }

      else
      {
        v172 = *(v168 + 8);
      }

      if (v170 >= 0)
      {
        v169 = *(v167 + 23);
      }

      if (v172 == v169)
      {
        v173 = v171 >= 0 ? *(*(v149 + 64) + 8) : *v168;
        v174 = v170 >= 0 ? *(v149 + 72) : *v167;
        if (!memcmp(v173, v174, v172))
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v175 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v175 = __p.__r_.__value_.__l.__size_;
          }

          v176 = std::string::basic_string[abi:ne200100](&v745, v175 + 42);
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v177 = &v745;
          }

          else
          {
            v177 = v745.__r_.__value_.__r.__words[0];
          }

          if (v175)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v178 = &__p;
            }

            else
            {
              v178 = __p.__r_.__value_.__r.__words[0];
            }

            v176 = memmove(v177, v178, v175);
          }

          strcpy(v177 + v175, "has a single next id that refers to itself");
          v179 = *(v149 + 8);
          if (v179)
          {
            v180 = (v179 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v176);
            v180 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v744, "nextIds");
          siri::intelligence::GetLineNumFromUnknownField(v180, &v744, 0);
        }
      }
    }

    if ((a2 + 248) == std::__tree<std::string>::find<std::string>(a2 + 240, v167))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v181 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v181 = __p.__r_.__value_.__l.__size_;
      }

      v182 = std::string::basic_string[abi:ne200100](&v745, v181 + 12);
      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v183 = &v745;
      }

      else
      {
        v183 = v745.__r_.__value_.__r.__words[0];
      }

      if (v181)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v184 = &__p;
        }

        else
        {
          v184 = __p.__r_.__value_.__r.__words[0];
        }

        v182 = memmove(v183, v184, v181);
      }

      strcpy(v183 + v181, "is not used.");
      v185 = *(v149 + 8);
      if (v185)
      {
        v186 = (v185 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v182);
        v186 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v744, "");
      siri::intelligence::GetLineNumFromUnknownField(v186, &v744, -1);
    }

    if (*(v149 + 56) >= 1)
    {
      v187 = 0;
      do
      {
        v188 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v149 + 48, v187);
        if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v188))
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v189 = __p.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v744, v189 + 29);
          if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v190 = &v744;
          }

          else
          {
            v190 = v744.__r_.__value_.__r.__words[0];
          }

          if (v189)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v191 = &__p;
            }

            else
            {
              v191 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v190, v191, v189);
          }

          strcpy(v190 + v189, "refers to undefined next id: ");
          v192 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v149 + 48, v187);
          v193 = *(v192 + 23);
          if (v193 >= 0)
          {
            v194 = v192;
          }

          else
          {
            v194 = *v192;
          }

          if (v193 >= 0)
          {
            v195 = *(v192 + 23);
          }

          else
          {
            v195 = *(v192 + 8);
          }

          v196 = std::string::append(&v744, v194, v195);
          v745 = *v196;
          v196->__r_.__value_.__l.__size_ = 0;
          v196->__r_.__value_.__r.__words[2] = 0;
          v196->__r_.__value_.__r.__words[0] = 0;
          v197 = *(v149 + 8);
          if (v197)
          {
            v198 = (v197 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v196);
            v198 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v743, "nextIds");
          siri::intelligence::GetLineNumFromUnknownField(v198, &v743, v187);
        }

        ++v187;
      }

      while (v187 < *(v149 + 56));
    }

    v199 = *(v149 + 144);
    if ((*(v199 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v199 + 8))
      {
        goto LABEL_467;
      }
    }

    else if (!*(v199 + 23))
    {
      goto LABEL_467;
    }

    if ((a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, v199))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v200 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v200 = __p.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v744, v200 + 33);
      if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v201 = &v744;
      }

      else
      {
        v201 = v744.__r_.__value_.__r.__words[0];
      }

      if (v200)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v202 = &__p;
        }

        else
        {
          v202 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v201, v202, v200);
      }

      strcpy(v201 + v200, "refers to undefined input group: ");
      v203 = *(v149 + 144);
      v204 = *(v203 + 23);
      if (v204 >= 0)
      {
        v205 = *(v149 + 144);
      }

      else
      {
        v205 = *v203;
      }

      if (v204 >= 0)
      {
        v206 = *(v203 + 23);
      }

      else
      {
        v206 = *(v203 + 8);
      }

      v207 = std::string::append(&v744, v205, v206);
      v745 = *v207;
      v207->__r_.__value_.__l.__size_ = 0;
      v207->__r_.__value_.__r.__words[2] = 0;
      v207->__r_.__value_.__r.__words[0] = 0;
      v208 = *(v149 + 8);
      if (v208)
      {
        v209 = (v208 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v207);
        v209 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v743, "inputGroupId");
      siri::intelligence::GetLineNumFromUnknownField(v209, &v743, -1);
    }

LABEL_467:
    v210 = *(v149 + 136);
    if ((*(v210 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v210 + 8))
      {
        goto LABEL_492;
      }
    }

    else if (!*(v210 + 23))
    {
      goto LABEL_492;
    }

    if ((a2 + 176) == std::__tree<std::string>::find<std::string>(a2 + 168, v210))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v211 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v211 = __p.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v744, v211 + 31);
      if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v212 = &v744;
      }

      else
      {
        v212 = v744.__r_.__value_.__r.__words[0];
      }

      if (v211)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v213 = &__p;
        }

        else
        {
          v213 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v212, v213, v211);
      }

      strcpy(v212 + v211, "refers to undefined condition: ");
      v214 = *(v149 + 136);
      v215 = *(v214 + 23);
      if (v215 >= 0)
      {
        v216 = *(v149 + 136);
      }

      else
      {
        v216 = *v214;
      }

      if (v215 >= 0)
      {
        v217 = *(v214 + 23);
      }

      else
      {
        v217 = *(v214 + 8);
      }

      v218 = std::string::append(&v744, v216, v217);
      v745 = *v218;
      v218->__r_.__value_.__l.__size_ = 0;
      v218->__r_.__value_.__r.__words[2] = 0;
      v218->__r_.__value_.__r.__words[0] = 0;
      v219 = *(v149 + 8);
      if (v219)
      {
        v220 = (v219 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v218);
        v220 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v743, "conditionId");
      siri::intelligence::GetLineNumFromUnknownField(v220, &v743, -1);
    }

LABEL_492:
    v221 = *(v149 + 16);
    if (*(v149 + 56) >= 1 && (v221 & 0x200) != 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v222 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v222 = __p.__r_.__value_.__l.__size_;
      }

      v223 = std::string::basic_string[abi:ne200100](&v745, v222 + 38);
      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v224 = &v745;
      }

      else
      {
        v224 = v745.__r_.__value_.__r.__words[0];
      }

      if (v222)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v225 = &__p;
        }

        else
        {
          v225 = __p.__r_.__value_.__r.__words[0];
        }

        v223 = memmove(v224, v225, v222);
      }

      strcpy(v224 + v222, "contains both nextIds and inputGroupId");
      v226 = *(v149 + 8);
      if (v226)
      {
        v227 = (v226 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v223);
        v227 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v744, "");
      siri::intelligence::GetLineNumFromUnknownField(v227, &v744, -1);
    }

    if ((v221 & 0x80) == 0)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v228 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v228 = __p.__r_.__value_.__l.__size_;
      }

      v229 = std::string::basic_string[abi:ne200100](&v745, v228 + 22);
      if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v230 = &v745;
      }

      else
      {
        v230 = v745.__r_.__value_.__r.__words[0];
      }

      if (v228)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v231 = &__p;
        }

        else
        {
          v231 = __p.__r_.__value_.__r.__words[0];
        }

        v229 = memmove(v230, v231, v228);
      }

      strcpy(v230 + v228, "does not define a name");
      v232 = *(v149 + 8);
      if (v232)
      {
        v233 = (v232 & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        google::protobuf::internal::InitProtobufDefaults(v229);
        v233 = &google::protobuf::internal::fixed_address_empty_string;
      }

      std::string::basic_string[abi:ne200100]<0>(&v744, "");
      siri::intelligence::GetLineNumFromUnknownField(v233, &v744, -1);
    }

    if (*(v149 + 32) >= 1)
    {
      v234 = 0;
      do
      {
        v235 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v149 + 24, v234);
        siri::intelligence::ValidateKeyValueParameter(&__p, v235, a2, a3);
        ++v234;
      }

      while (v234 < *(v149 + 32));
    }

    memset(&v745, 0, sizeof(v745));
    memset(&v744, 0, sizeof(v744));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v744, v149 + 24);
    if (LODWORD(v744.__r_.__value_.__r.__words[1]))
    {
      if (v744.__r_.__value_.__r.__words[2])
      {
        v236 = (v744.__r_.__value_.__r.__words[2] + 8);
      }

      else
      {
        v236 = 0;
      }

      do
      {
        std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&v745, *v236++);
        if (v744.__r_.__value_.__r.__words[2])
        {
          v237 = v744.__r_.__value_.__r.__words[2] + 8;
        }

        else
        {
          v237 = 0;
        }
      }

      while (v236 != (v237 + 8 * SLODWORD(v744.__r_.__value_.__r.__words[1])));
    }

    google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v744);
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
  }

  if (*(v29 + 26) >= 1)
  {
    for (j = 0; j < *(this + 26); ++j)
    {
      v239 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>((v148 + 24), j);
      std::string::basic_string[abi:ne200100]<0>(&__p, "reference response ");
      v240 = *(v239 + 16);
      if (v240)
      {
        std::operator+<char>();
        v241 = std::string::append(&v744, "' ");
        v242 = *&v241->__r_.__value_.__l.__data_;
        v745.__r_.__value_.__r.__words[2] = v241->__r_.__value_.__r.__words[2];
        *&v745.__r_.__value_.__l.__data_ = v242;
        v241->__r_.__value_.__l.__size_ = 0;
        v241->__r_.__value_.__r.__words[2] = 0;
        v241->__r_.__value_.__r.__words[0] = 0;
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v243 = &v745;
        }

        else
        {
          v243 = v745.__r_.__value_.__r.__words[0];
        }

        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v244 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v244 = v745.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v243, v244);
        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        v240 = *(v239 + 16);
      }

      if ((v240 & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v245 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v245 = __p.__r_.__value_.__l.__size_;
        }

        v246 = std::string::basic_string[abi:ne200100](&v745, v245 + 21);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v247 = &v745;
        }

        else
        {
          v247 = v745.__r_.__value_.__r.__words[0];
        }

        if (v245)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v248 = &__p;
          }

          else
          {
            v248 = __p.__r_.__value_.__r.__words[0];
          }

          v246 = memmove(v247, v248, v245);
        }

        strcpy(v247 + v245, "does not define an id");
        v249 = *(v239 + 8);
        if (v249)
        {
          v250 = (v249 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v246);
          v250 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v250, &v744, -1);
      }

      if ((siri::intelligence::IsValidId(*(v239 + 48)) & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v251 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v251 = __p.__r_.__value_.__l.__size_;
        }

        v252 = std::string::basic_string[abi:ne200100](&v745, v251 + 32);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v253 = &v745;
        }

        else
        {
          v253 = v745.__r_.__value_.__r.__words[0];
        }

        if (v251)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v254 = &__p;
          }

          else
          {
            v254 = __p.__r_.__value_.__r.__words[0];
          }

          v252 = memmove(v253, v254, v251);
        }

        strcpy(v253 + v251, "has invalid characters in the ID");
        v255 = *(v239 + 8);
        if (v255)
        {
          v256 = (v255 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v252);
          v256 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "id");
        siri::intelligence::GetLineNumFromUnknownField(v256, &v744, -1);
      }

      v257 = *(v239 + 48);
      if (*(v239 + 32) == 1)
      {
        v258 = *(*(v239 + 40) + 8);
        v259 = *(v257 + 8);
        v260 = *(v257 + 23);
        v261 = *(v258 + 23);
        if (v261 >= 0)
        {
          v262 = *(v258 + 23);
        }

        else
        {
          v262 = *(v258 + 8);
        }

        if (v260 >= 0)
        {
          v259 = *(v257 + 23);
        }

        if (v262 == v259)
        {
          v263 = v261 >= 0 ? *(*(v239 + 40) + 8) : *v258;
          v264 = v260 >= 0 ? *(v239 + 48) : *v257;
          if (!memcmp(v263, v264, v262))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v265 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v265 = __p.__r_.__value_.__l.__size_;
            }

            v266 = std::string::basic_string[abi:ne200100](&v745, v265 + 42);
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v267 = &v745;
            }

            else
            {
              v267 = v745.__r_.__value_.__r.__words[0];
            }

            if (v265)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v268 = &__p;
              }

              else
              {
                v268 = __p.__r_.__value_.__r.__words[0];
              }

              v266 = memmove(v267, v268, v265);
            }

            strcpy(v267 + v265, "has a single next id that refers to itself");
            v269 = *(v239 + 8);
            if (v269)
            {
              v270 = (v269 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v266);
              v270 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v744, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v270, &v744, 0);
          }
        }
      }

      if ((a2 + 248) == std::__tree<std::string>::find<std::string>(a2 + 240, v257))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v271 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v271 = __p.__r_.__value_.__l.__size_;
        }

        v272 = std::string::basic_string[abi:ne200100](&v745, v271 + 12);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v273 = &v745;
        }

        else
        {
          v273 = v745.__r_.__value_.__r.__words[0];
        }

        if (v271)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v274 = &__p;
          }

          else
          {
            v274 = __p.__r_.__value_.__r.__words[0];
          }

          v272 = memmove(v273, v274, v271);
        }

        strcpy(v273 + v271, "is not used.");
        v275 = *(v239 + 8);
        if (v275)
        {
          v276 = (v275 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v272);
          v276 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v276, &v744, -1);
      }

      if (*(v239 + 32) >= 1)
      {
        v277 = 0;
        do
        {
          v278 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v239 + 24, v277);
          if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v278))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v279 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v279 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v279 + 29);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v280 = &v744;
            }

            else
            {
              v280 = v744.__r_.__value_.__r.__words[0];
            }

            if (v279)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v281 = &__p;
              }

              else
              {
                v281 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v280, v281, v279);
            }

            strcpy(v280 + v279, "refers to undefined next id: ");
            v282 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v239 + 24, v277);
            v283 = *(v282 + 23);
            if (v283 >= 0)
            {
              v284 = v282;
            }

            else
            {
              v284 = *v282;
            }

            if (v283 >= 0)
            {
              v285 = *(v282 + 23);
            }

            else
            {
              v285 = *(v282 + 8);
            }

            v286 = std::string::append(&v744, v284, v285);
            v745 = *v286;
            v286->__r_.__value_.__l.__size_ = 0;
            v286->__r_.__value_.__r.__words[2] = 0;
            v286->__r_.__value_.__r.__words[0] = 0;
            v287 = *(v239 + 8);
            if (v287)
            {
              v288 = (v287 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v286);
              v288 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v288, &v743, v277);
          }

          ++v277;
        }

        while (v277 < *(v239 + 32));
      }

      v289 = *(v239 + 128);
      if ((*(v289 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v289 + 8))
        {
          goto LABEL_681;
        }
      }

      else if (!*(v289 + 23))
      {
        goto LABEL_681;
      }

      if ((a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, v289))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v290 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v290 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v744, v290 + 33);
        if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v291 = &v744;
        }

        else
        {
          v291 = v744.__r_.__value_.__r.__words[0];
        }

        if (v290)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v292 = &__p;
          }

          else
          {
            v292 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v291, v292, v290);
        }

        strcpy(v291 + v290, "refers to undefined input group: ");
        v293 = *(v239 + 128);
        v294 = *(v293 + 23);
        if (v294 >= 0)
        {
          v295 = *(v239 + 128);
        }

        else
        {
          v295 = *v293;
        }

        if (v294 >= 0)
        {
          v296 = *(v293 + 23);
        }

        else
        {
          v296 = *(v293 + 8);
        }

        v297 = std::string::append(&v744, v295, v296);
        v745 = *v297;
        v297->__r_.__value_.__l.__size_ = 0;
        v297->__r_.__value_.__r.__words[2] = 0;
        v297->__r_.__value_.__r.__words[0] = 0;
        v298 = *(v239 + 8);
        if (v298)
        {
          v299 = (v298 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v297);
          v299 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v743, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v299, &v743, -1);
      }

LABEL_681:
      v300 = *(v239 + 120);
      if ((*(v300 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v300 + 8))
        {
LABEL_685:
          if ((a2 + 176) == std::__tree<std::string>::find<std::string>(a2 + 168, v300))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v301 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v301 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v301 + 31);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v302 = &v744;
            }

            else
            {
              v302 = v744.__r_.__value_.__r.__words[0];
            }

            if (v301)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v303 = &__p;
              }

              else
              {
                v303 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v302, v303, v301);
            }

            strcpy(v302 + v301, "refers to undefined condition: ");
            v304 = *(v239 + 120);
            v305 = *(v304 + 23);
            if (v305 >= 0)
            {
              v306 = *(v239 + 120);
            }

            else
            {
              v306 = *v304;
            }

            if (v305 >= 0)
            {
              v307 = *(v304 + 23);
            }

            else
            {
              v307 = *(v304 + 8);
            }

            v308 = std::string::append(&v744, v306, v307);
            v745 = *v308;
            v308->__r_.__value_.__l.__size_ = 0;
            v308->__r_.__value_.__r.__words[2] = 0;
            v308->__r_.__value_.__r.__words[0] = 0;
            v309 = *(v239 + 8);
            if (v309)
            {
              v310 = (v309 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v308);
              v310 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "conditionId");
            siri::intelligence::GetLineNumFromUnknownField(v310, &v743, -1);
          }
        }
      }

      else if (*(v300 + 23))
      {
        goto LABEL_685;
      }

      v311 = *(v239 + 16);
      if (*(v239 + 32) >= 1 && (v311 & 0x400) != 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v312 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v312 = __p.__r_.__value_.__l.__size_;
        }

        v313 = std::string::basic_string[abi:ne200100](&v745, v312 + 38);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v314 = &v745;
        }

        else
        {
          v314 = v745.__r_.__value_.__r.__words[0];
        }

        if (v312)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v315 = &__p;
          }

          else
          {
            v315 = __p.__r_.__value_.__r.__words[0];
          }

          v313 = memmove(v314, v315, v312);
        }

        strcpy(v314 + v312, "contains both nextIds and inputGroupId");
        v316 = *(v239 + 8);
        if (v316)
        {
          v317 = (v316 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v313);
          v317 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v317, &v744, -1);
      }

      if ((v311 & 0x80) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v318 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v318 = __p.__r_.__value_.__l.__size_;
        }

        v319 = std::string::basic_string[abi:ne200100](&v745, v318 + 23);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v320 = &v745;
        }

        else
        {
          v320 = v745.__r_.__value_.__r.__words[0];
        }

        if (v318)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v321 = &__p;
          }

          else
          {
            v321 = __p.__r_.__value_.__r.__words[0];
          }

          v319 = memmove(v320, v321, v318);
        }

        strcpy(v320 + v318, "does not define a refId");
        v322 = *(v239 + 8);
        if (v322)
        {
          v323 = (v322 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v319);
          v323 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v323, &v744, -1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v148 = this;
    }
  }

  if (v148[104] >= 1)
  {
    for (k = 0; k < *(this + 104); ++k)
    {
      v325 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>((v148 + 102), k);
      std::string::basic_string[abi:ne200100]<0>(&__p, "response group ");
      v326 = *(v325 + 16);
      if (v326)
      {
        std::operator+<char>();
        v327 = std::string::append(&v744, "' ");
        v328 = *&v327->__r_.__value_.__l.__data_;
        v745.__r_.__value_.__r.__words[2] = v327->__r_.__value_.__r.__words[2];
        *&v745.__r_.__value_.__l.__data_ = v328;
        v327->__r_.__value_.__l.__size_ = 0;
        v327->__r_.__value_.__r.__words[2] = 0;
        v327->__r_.__value_.__r.__words[0] = 0;
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v329 = &v745;
        }

        else
        {
          v329 = v745.__r_.__value_.__r.__words[0];
        }

        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v330 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v330 = v745.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v329, v330);
        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        v326 = *(v325 + 16);
      }

      if ((v326 & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v331 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v331 = __p.__r_.__value_.__l.__size_;
        }

        v332 = std::string::basic_string[abi:ne200100](&v745, v331 + 21);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v333 = &v745;
        }

        else
        {
          v333 = v745.__r_.__value_.__r.__words[0];
        }

        if (v331)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v334 = &__p;
          }

          else
          {
            v334 = __p.__r_.__value_.__r.__words[0];
          }

          v332 = memmove(v333, v334, v331);
        }

        strcpy(v333 + v331, "does not define an id");
        v335 = *(v325 + 8);
        if (v335)
        {
          v336 = (v335 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v332);
          v336 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v336, &v744, -1);
      }

      if ((siri::intelligence::IsValidId(*(v325 + 48)) & 1) == 0)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v337 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v337 = __p.__r_.__value_.__l.__size_;
        }

        v338 = std::string::basic_string[abi:ne200100](&v745, v337 + 32);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v339 = &v745;
        }

        else
        {
          v339 = v745.__r_.__value_.__r.__words[0];
        }

        if (v337)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v340 = &__p;
          }

          else
          {
            v340 = __p.__r_.__value_.__r.__words[0];
          }

          v338 = memmove(v339, v340, v337);
        }

        strcpy(v339 + v337, "has invalid characters in the ID");
        v341 = *(v325 + 8);
        if (v341)
        {
          v342 = (v341 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v338);
          v342 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "id");
        siri::intelligence::GetLineNumFromUnknownField(v342, &v744, -1);
      }

      v343 = *(v325 + 48);
      if (*(v325 + 32) == 1)
      {
        v344 = *(*(v325 + 40) + 8);
        v345 = *(v343 + 8);
        v346 = *(v343 + 23);
        v347 = *(v344 + 23);
        if (v347 >= 0)
        {
          v348 = *(v344 + 23);
        }

        else
        {
          v348 = *(v344 + 8);
        }

        if (v346 >= 0)
        {
          v345 = *(v343 + 23);
        }

        if (v348 == v345)
        {
          v349 = v347 >= 0 ? *(*(v325 + 40) + 8) : *v344;
          v350 = v346 >= 0 ? *(v325 + 48) : *v343;
          if (!memcmp(v349, v350, v348))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v351 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v351 = __p.__r_.__value_.__l.__size_;
            }

            v352 = std::string::basic_string[abi:ne200100](&v745, v351 + 42);
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v353 = &v745;
            }

            else
            {
              v353 = v745.__r_.__value_.__r.__words[0];
            }

            if (v351)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v354 = &__p;
              }

              else
              {
                v354 = __p.__r_.__value_.__r.__words[0];
              }

              v352 = memmove(v353, v354, v351);
            }

            strcpy(v353 + v351, "has a single next id that refers to itself");
            v355 = *(v325 + 8);
            if (v355)
            {
              v356 = (v355 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v352);
              v356 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v744, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v356, &v744, 0);
          }
        }
      }

      if ((a2 + 248) == std::__tree<std::string>::find<std::string>(a2 + 240, v343))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v357 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v357 = __p.__r_.__value_.__l.__size_;
        }

        v358 = std::string::basic_string[abi:ne200100](&v745, v357 + 12);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v359 = &v745;
        }

        else
        {
          v359 = v745.__r_.__value_.__r.__words[0];
        }

        if (v357)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v360 = &__p;
          }

          else
          {
            v360 = __p.__r_.__value_.__r.__words[0];
          }

          v358 = memmove(v359, v360, v357);
        }

        strcpy(v359 + v357, "is not used.");
        v361 = *(v325 + 8);
        if (v361)
        {
          v362 = (v361 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v358);
          v362 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v362, &v744, -1);
      }

      if (*(v325 + 32) >= 1)
      {
        v363 = 0;
        do
        {
          v364 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v325 + 24, v363);
          if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v364))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v365 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v365 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v365 + 29);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v366 = &v744;
            }

            else
            {
              v366 = v744.__r_.__value_.__r.__words[0];
            }

            if (v365)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v367 = &__p;
              }

              else
              {
                v367 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v366, v367, v365);
            }

            strcpy(v366 + v365, "refers to undefined next id: ");
            v368 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v325 + 24, v363);
            v369 = *(v368 + 23);
            if (v369 >= 0)
            {
              v370 = v368;
            }

            else
            {
              v370 = *v368;
            }

            if (v369 >= 0)
            {
              v371 = *(v368 + 23);
            }

            else
            {
              v371 = *(v368 + 8);
            }

            v372 = std::string::append(&v744, v370, v371);
            v745 = *v372;
            v372->__r_.__value_.__l.__size_ = 0;
            v372->__r_.__value_.__r.__words[2] = 0;
            v372->__r_.__value_.__r.__words[0] = 0;
            v373 = *(v325 + 8);
            if (v373)
            {
              v374 = (v373 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v372);
              v374 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "nextIds");
            siri::intelligence::GetLineNumFromUnknownField(v374, &v743, v363);
          }

          ++v363;
        }

        while (v363 < *(v325 + 32));
      }

      v375 = *(v325 + 112);
      if ((*(v375 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v375 + 8))
        {
          goto LABEL_887;
        }
      }

      else if (!*(v375 + 23))
      {
        goto LABEL_887;
      }

      if ((a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, v375))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v376 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v376 = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v744, v376 + 33);
        if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v377 = &v744;
        }

        else
        {
          v377 = v744.__r_.__value_.__r.__words[0];
        }

        if (v376)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v378 = &__p;
          }

          else
          {
            v378 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v377, v378, v376);
        }

        strcpy(v377 + v376, "refers to undefined input group: ");
        v379 = *(v325 + 112);
        v380 = *(v379 + 23);
        if (v380 >= 0)
        {
          v381 = *(v325 + 112);
        }

        else
        {
          v381 = *v379;
        }

        if (v380 >= 0)
        {
          v382 = *(v379 + 23);
        }

        else
        {
          v382 = *(v379 + 8);
        }

        v383 = std::string::append(&v744, v381, v382);
        v745 = *v383;
        v383->__r_.__value_.__l.__size_ = 0;
        v383->__r_.__value_.__r.__words[2] = 0;
        v383->__r_.__value_.__r.__words[0] = 0;
        v384 = *(v325 + 8);
        if (v384)
        {
          v385 = (v384 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v383);
          v385 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v743, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v385, &v743, -1);
      }

LABEL_887:
      v386 = *(v325 + 104);
      if ((*(v386 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v386 + 8))
        {
LABEL_891:
          if ((a2 + 176) == std::__tree<std::string>::find<std::string>(a2 + 168, v386))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v387 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v387 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v387 + 31);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v388 = &v744;
            }

            else
            {
              v388 = v744.__r_.__value_.__r.__words[0];
            }

            if (v387)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v389 = &__p;
              }

              else
              {
                v389 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v388, v389, v387);
            }

            strcpy(v388 + v387, "refers to undefined condition: ");
            v390 = *(v325 + 104);
            v391 = *(v390 + 23);
            if (v391 >= 0)
            {
              v392 = *(v325 + 104);
            }

            else
            {
              v392 = *v390;
            }

            if (v391 >= 0)
            {
              v393 = *(v390 + 23);
            }

            else
            {
              v393 = *(v390 + 8);
            }

            v394 = std::string::append(&v744, v392, v393);
            v745 = *v394;
            v394->__r_.__value_.__l.__size_ = 0;
            v394->__r_.__value_.__r.__words[2] = 0;
            v394->__r_.__value_.__r.__words[0] = 0;
            v395 = *(v325 + 8);
            if (v395)
            {
              v396 = (v395 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v394);
              v396 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "conditionId");
            siri::intelligence::GetLineNumFromUnknownField(v396, &v743, -1);
          }
        }
      }

      else if (*(v386 + 23))
      {
        goto LABEL_891;
      }

      v397 = *(v325 + 32);
      if (v397 < 1)
      {
        if (!v397 && (*(v325 + 17) & 1) == 0)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v404 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v404 = __p.__r_.__value_.__l.__size_;
          }

          v405 = std::string::basic_string[abi:ne200100](&v745, v404 + 51);
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v406 = &v745;
          }

          else
          {
            v406 = v745.__r_.__value_.__r.__words[0];
          }

          if (v404)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v407 = &__p;
            }

            else
            {
              v407 = __p.__r_.__value_.__r.__words[0];
            }

            v405 = memmove(v406, v407, v404);
          }

          strcpy(v406 + v404, "has not effect: no nextIds and inputGroupId defined");
          v408 = *(v325 + 8);
          if (v408)
          {
            v409 = (v408 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v405);
            v409 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v744, "");
          siri::intelligence::GetLineNumFromUnknownField(v409, &v744, -1);
        }
      }

      else if (*(v325 + 17))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v398 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v398 = __p.__r_.__value_.__l.__size_;
        }

        v399 = std::string::basic_string[abi:ne200100](&v745, v398 + 38);
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v400 = &v745;
        }

        else
        {
          v400 = v745.__r_.__value_.__r.__words[0];
        }

        if (v398)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v401 = &__p;
          }

          else
          {
            v401 = __p.__r_.__value_.__r.__words[0];
          }

          v399 = memmove(v400, v401, v398);
        }

        strcpy(v400 + v398, "contains both nextIds and inputGroupId");
        v402 = *(v325 + 8);
        if (v402)
        {
          v403 = (v402 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v399);
          v403 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v403, &v744, -1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v148 = this;
    }
  }

  if (v148[110] >= 1)
  {
    v410 = 0;
    v411 = a2 + 80;
    while (1)
    {
      v731 = v410;
      v412 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>((v148 + 108), v410);
      std::string::basic_string[abi:ne200100]<0>(&v741, "input group ");
      v413 = *(v412 + 16);
      if (v413)
      {
        std::operator+<char>();
        v414 = std::string::append(&v745, "' ");
        v415 = *&v414->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v414->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v415;
        v414->__r_.__value_.__l.__size_ = 0;
        v414->__r_.__value_.__r.__words[2] = 0;
        v414->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v416 = &__p;
        }

        else
        {
          v416 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v417 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v417 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v741, v416, v417);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
        }

        v413 = *(v412 + 16);
      }

      if ((v413 & 1) == 0)
      {
        if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v418 = HIBYTE(v741.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v418 = v741.__r_.__value_.__l.__size_;
        }

        v419 = std::string::basic_string[abi:ne200100](&__p, v418 + 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v420 = &__p;
        }

        else
        {
          v420 = __p.__r_.__value_.__r.__words[0];
        }

        if (v418)
        {
          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v421 = &v741;
          }

          else
          {
            v421 = v741.__r_.__value_.__r.__words[0];
          }

          v419 = memmove(v420, v421, v418);
        }

        strcpy(v420 + v418, "does not define an id");
        v422 = *(v412 + 8);
        if (v422)
        {
          v423 = (v422 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v419);
          v423 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v745, "");
        siri::intelligence::GetLineNumFromUnknownField(v423, &v745, -1);
      }

      if ((siri::intelligence::IsValidId(*(v412 + 144)) & 1) == 0)
      {
        if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v424 = HIBYTE(v741.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v424 = v741.__r_.__value_.__l.__size_;
        }

        v425 = std::string::basic_string[abi:ne200100](&__p, v424 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v426 = &__p;
        }

        else
        {
          v426 = __p.__r_.__value_.__r.__words[0];
        }

        if (v424)
        {
          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v427 = &v741;
          }

          else
          {
            v427 = v741.__r_.__value_.__r.__words[0];
          }

          v425 = memmove(v426, v427, v424);
        }

        strcpy(v426 + v424, "has invalid characters in the ID");
        v428 = *(v412 + 8);
        if (v428)
        {
          v429 = (v428 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v425);
          v429 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v745, "id");
        siri::intelligence::GetLineNumFromUnknownField(v429, &v745, -1);
      }

      if ((a2 + 224) == std::__tree<std::string>::find<std::string>(a2 + 216, *(v412 + 144)) && (*(v412 + 169) & 1) == 0)
      {
        if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v495 = HIBYTE(v741.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v495 = v741.__r_.__value_.__l.__size_;
        }

        v496 = std::string::basic_string[abi:ne200100](&__p, v495 + 74);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v497 = &__p;
        }

        else
        {
          v497 = __p.__r_.__value_.__r.__words[0];
        }

        if (v495)
        {
          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v498 = &v741;
          }

          else
          {
            v498 = v741.__r_.__value_.__r.__words[0];
          }

          v496 = memmove(v497, v498, v495);
        }

        strcpy(v497 + v495, "is not referenced. Did you mean to set 'toplevel: true' to make it global?");
        v499 = *(v412 + 8);
        if (v499)
        {
          v500 = (v499 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v496);
          v500 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v745, "");
        siri::intelligence::GetLineNumFromUnknownField(v500, &v745, -1);
      }

      if (*(v412 + 32) >= 1)
      {
        siri::intelligence::Utils::VersionLessThan(a2, siri::intelligence::sIntentRenameChange);
      }

      v430 = *(v412 + 112);
      v431 = (v430 + 8);
      v432 = v430 == 0;
      v433 = v412;
      if (v432)
      {
        v434 = 0;
      }

      else
      {
        v434 = v431;
      }

      v435 = v433;
      v436 = *(v433 + 104);
      if (v436)
      {
        v437 = 8 * v436;
        do
        {
          siri::intelligence::ValidateKeyValueParameter(&v741, *v434++, a2, a3);
          v437 -= 8;
        }

        while (v437);
      }

      if (*(v435 + 128) >= 1)
      {
        break;
      }

LABEL_1123:
      if (*(v435 + 56) >= 1)
      {
        v482 = 0;
        do
        {
          v483 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(v435 + 48, v482);
          std::string::basic_string[abi:ne200100]<0>(&__p, "input group fallback ");
          if (*(v483 + 56) >= 1)
          {
            v484 = 0;
            do
            {
              v485 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v483 + 48, v484);
              if (*(v485 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v745, *v485, *(v485 + 8));
              }

              else
              {
                v486 = *v485;
                v745.__r_.__value_.__r.__words[2] = *(v485 + 16);
                *&v745.__r_.__value_.__l.__data_ = v486;
              }

              if (v411 == std::__tree<std::string>::find<std::string>(a2 + 72, &v745.__r_.__value_.__l.__data_))
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v487 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v487 = __p.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&v743, v487 + 33);
                if ((v743.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v488 = &v743;
                }

                else
                {
                  v488 = v743.__r_.__value_.__r.__words[0];
                }

                if (v487)
                {
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v489 = &__p;
                  }

                  else
                  {
                    v489 = __p.__r_.__value_.__r.__words[0];
                  }

                  memmove(v488, v489, v487);
                }

                strcpy(v488 + v487, "refers to undefined response id: ");
                if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v490 = &v745;
                }

                else
                {
                  v490 = v745.__r_.__value_.__r.__words[0];
                }

                if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v491 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v491 = v745.__r_.__value_.__l.__size_;
                }

                v492 = std::string::append(&v743, v490, v491);
                v744 = *v492;
                v492->__r_.__value_.__l.__size_ = 0;
                v492->__r_.__value_.__r.__words[2] = 0;
                v492->__r_.__value_.__r.__words[0] = 0;
                v493 = *(v483 + 8);
                if (v493)
                {
                  v494 = (v493 & 0xFFFFFFFFFFFFFFFELL);
                }

                else
                {
                  google::protobuf::internal::InitProtobufDefaults(v492);
                  v494 = &google::protobuf::internal::fixed_address_empty_string;
                }

                std::string::basic_string[abi:ne200100]<0>(&v742, "responseIds");
                siri::intelligence::GetLineNumFromUnknownField(v494, &v742, v484);
              }

              if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v745.__r_.__value_.__l.__data_);
              }

              ++v484;
            }

            while (v484 < *(v483 + 56));
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v482;
        }

        while (v482 < *(v435 + 56));
      }

      if (SHIBYTE(v741.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v741.__r_.__value_.__l.__data_);
      }

      v410 = v731 + 1;
      v148 = this;
      if (v731 + 1 >= *(this + 110))
      {
        goto LABEL_1180;
      }
    }

    v438 = 0;
    while (1)
    {
      v439 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(v435 + 120, v438);
      std::string::basic_string[abi:ne200100]<0>(&__p, "input group event ");
      if (*(v439 + 16))
      {
        std::operator+<char>();
        v440 = std::string::append(&v744, "' ");
        v441 = *&v440->__r_.__value_.__l.__data_;
        v745.__r_.__value_.__r.__words[2] = v440->__r_.__value_.__r.__words[2];
        *&v745.__r_.__value_.__l.__data_ = v441;
        v440->__r_.__value_.__l.__size_ = 0;
        v440->__r_.__value_.__r.__words[2] = 0;
        v440->__r_.__value_.__r.__words[0] = 0;
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v442 = &v745;
        }

        else
        {
          v442 = v745.__r_.__value_.__r.__words[0];
        }

        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v443 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v443 = v745.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v442, v443);
        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        if ((*(v439 + 16) & 1) != 0 && (siri::intelligence::IsValidId(*(v439 + 48)) & 1) == 0)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v444 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v444 = __p.__r_.__value_.__l.__size_;
          }

          v445 = std::string::basic_string[abi:ne200100](&v745, v444 + 32);
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v446 = &v745;
          }

          else
          {
            v446 = v745.__r_.__value_.__r.__words[0];
          }

          if (v444)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v447 = &__p;
            }

            else
            {
              v447 = __p.__r_.__value_.__r.__words[0];
            }

            v445 = memmove(v446, v447, v444);
          }

          strcpy(v446 + v444, "has invalid characters in the ID");
          v448 = *(v439 + 8);
          if (v448)
          {
            v449 = (v448 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v445);
            v449 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(&v744, "id");
          siri::intelligence::GetLineNumFromUnknownField(v449, &v744, -1);
        }
      }

      v450 = *(v439 + 64);
      if ((*(v450 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v450 + 8))
        {
LABEL_1043:
          if ((a2 + 152) == std::__tree<std::string>::find<std::string>(a2 + 144, v450))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v451 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v451 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v451 + 27);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v452 = &v744;
            }

            else
            {
              v452 = v744.__r_.__value_.__r.__words[0];
            }

            if (v451)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v453 = &__p;
              }

              else
              {
                v453 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v452, v453, v451);
            }

            strcpy(v452 + v451, "refers to undefined event: ");
            v454 = *(v439 + 64);
            v455 = *(v454 + 23);
            if (v455 >= 0)
            {
              v456 = *(v439 + 64);
            }

            else
            {
              v456 = *v454;
            }

            if (v455 >= 0)
            {
              v457 = *(v454 + 23);
            }

            else
            {
              v457 = *(v454 + 8);
            }

            v458 = std::string::append(&v744, v456, v457);
            v745 = *v458;
            v458->__r_.__value_.__l.__size_ = 0;
            v458->__r_.__value_.__r.__words[2] = 0;
            v458->__r_.__value_.__r.__words[0] = 0;
            v459 = *(v439 + 8);
            if (v459)
            {
              v460 = (v459 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v458);
              v460 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "eventId");
            siri::intelligence::GetLineNumFromUnknownField(v460, &v743, -1);
          }

          if (!*(v439 + 32))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v461 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v461 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v744, v461 + 48);
            if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v462 = &v744;
            }

            else
            {
              v462 = v744.__r_.__value_.__r.__words[0];
            }

            if (v461)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v463 = &__p;
              }

              else
              {
                v463 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v462, v463, v461);
            }

            strcpy(v462 + v461, "defines no responses to be triggered for event: ");
            v464 = *(v439 + 64);
            v465 = *(v464 + 23);
            if (v465 >= 0)
            {
              v466 = *(v439 + 64);
            }

            else
            {
              v466 = *v464;
            }

            if (v465 >= 0)
            {
              v467 = *(v464 + 23);
            }

            else
            {
              v467 = *(v464 + 8);
            }

            v468 = std::string::append(&v744, v466, v467);
            v745 = *v468;
            v468->__r_.__value_.__l.__size_ = 0;
            v468->__r_.__value_.__r.__words[2] = 0;
            v468->__r_.__value_.__r.__words[0] = 0;
            v469 = *(v439 + 8);
            if (v469)
            {
              v470 = (v469 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v468);
              v470 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v743, "eventId");
            siri::intelligence::GetLineNumFromUnknownField(v470, &v743, -1);
          }
        }
      }

      else if (*(v450 + 23))
      {
        goto LABEL_1043;
      }

      if (*(v439 + 32) >= 1)
      {
        v471 = 0;
        do
        {
          v472 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v439 + 24, v471);
          if (*(v472 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v745, *v472, *(v472 + 8));
          }

          else
          {
            v473 = *v472;
            v745.__r_.__value_.__r.__words[2] = *(v472 + 16);
            *&v745.__r_.__value_.__l.__data_ = v473;
          }

          if (v411 == std::__tree<std::string>::find<std::string>(a2 + 72, &v745.__r_.__value_.__l.__data_))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v474 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v474 = __p.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v743, v474 + 33);
            if ((v743.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v475 = &v743;
            }

            else
            {
              v475 = v743.__r_.__value_.__r.__words[0];
            }

            if (v474)
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v476 = &__p;
              }

              else
              {
                v476 = __p.__r_.__value_.__r.__words[0];
              }

              memmove(v475, v476, v474);
            }

            strcpy(v475 + v474, "refers to undefined response id: ");
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v477 = &v745;
            }

            else
            {
              v477 = v745.__r_.__value_.__r.__words[0];
            }

            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v478 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v478 = v745.__r_.__value_.__l.__size_;
            }

            v479 = std::string::append(&v743, v477, v478);
            v744 = *v479;
            v479->__r_.__value_.__l.__size_ = 0;
            v479->__r_.__value_.__r.__words[2] = 0;
            v479->__r_.__value_.__r.__words[0] = 0;
            v480 = *(v439 + 8);
            if (v480)
            {
              v481 = (v480 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v479);
              v481 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v742, "responseIds");
            siri::intelligence::GetLineNumFromUnknownField(v481, &v742, v471);
          }

          if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v745.__r_.__value_.__l.__data_);
          }

          ++v471;
        }

        while (v471 < *(v439 + 32));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v438 >= *(v435 + 128))
      {
        goto LABEL_1123;
      }
    }
  }

LABEL_1180:
  v501 = v148;
  if (v148[128] >= 1)
  {
    v502 = 0;
    while (1)
    {
      v733 = v502;
      v503 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(v501 + 504, v502);
      std::string::basic_string[abi:ne200100]<0>(&v745, "event ");
      v504 = *(v503 + 16);
      if (v504)
      {
        break;
      }

      if ((v504 & 2) != 0)
      {
        std::operator+<char>();
        v505 = std::string::append(&v744, "' ");
        v506 = *&v505->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v505->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v506;
        v505->__r_.__value_.__l.__size_ = 0;
        v505->__r_.__value_.__r.__words[2] = 0;
        v505->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v507 = &__p;
        }

        else
        {
          v507 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v508 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v508 = __p.__r_.__value_.__l.__size_;
        }

LABEL_1196:
        std::string::append(&v745, v507, v508);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }
      }

      if ((*(v503 + 16) & 1) == 0)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v511 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v511 = v745.__r_.__value_.__l.__size_;
        }

        v512 = std::string::basic_string[abi:ne200100](&__p, v511 + 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v513 = &__p;
        }

        else
        {
          v513 = __p.__r_.__value_.__r.__words[0];
        }

        if (v511)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v514 = &v745;
          }

          else
          {
            v514 = v745.__r_.__value_.__r.__words[0];
          }

          v512 = memmove(v513, v514, v511);
        }

        strcpy(v513 + v511, "does not define an id");
        v515 = *(v503 + 8);
        if (v515)
        {
          v516 = (v515 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v512);
          v516 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v516, &v744, -1);
      }

      if ((siri::intelligence::IsValidId(*(v503 + 120)) & 1) == 0)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v517 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v517 = v745.__r_.__value_.__l.__size_;
        }

        v518 = std::string::basic_string[abi:ne200100](&__p, v517 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v519 = &__p;
        }

        else
        {
          v519 = __p.__r_.__value_.__r.__words[0];
        }

        if (v517)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v520 = &v745;
          }

          else
          {
            v520 = v745.__r_.__value_.__r.__words[0];
          }

          v518 = memmove(v519, v520, v517);
        }

        strcpy(v519 + v517, "has invalid characters in the ID");
        v521 = *(v503 + 8);
        if (v521)
        {
          v522 = (v521 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v518);
          v522 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "id");
        siri::intelligence::GetLineNumFromUnknownField(v522, &v744, -1);
      }

      v523 = *(v503 + 16);
      if ((v523 & 0xC) == 8)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v524 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v524 = v745.__r_.__value_.__l.__size_;
        }

        v525 = std::string::basic_string[abi:ne200100](&__p, v524 + 54);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v526 = &__p;
        }

        else
        {
          v526 = __p.__r_.__value_.__r.__words[0];
        }

        if (v524)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v527 = &v745;
          }

          else
          {
            v527 = v745.__r_.__value_.__r.__words[0];
          }

          v525 = memmove(v526, v527, v524);
        }

        strcpy(v526 + v524, "defines a CATI intent GUID but not a CATI intent name.");
        v528 = *(v503 + 8);
        if (v528)
        {
          v529 = (v528 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v525);
          v529 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v529, &v744, -1);
      }

      if ((v523 & 0x14) == 0x10)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v530 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v530 = v745.__r_.__value_.__l.__size_;
        }

        v531 = std::string::basic_string[abi:ne200100](&__p, v530 + 51);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v532 = &__p;
        }

        else
        {
          v532 = __p.__r_.__value_.__r.__words[0];
        }

        if (v530)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v533 = &v745;
          }

          else
          {
            v533 = v745.__r_.__value_.__r.__words[0];
          }

          v531 = memmove(v532, v533, v530);
        }

        strcpy(v532 + v530, "defines a CATI ensemble but not a CATI intent name.");
        v534 = *(v503 + 8);
        if (v534)
        {
          v535 = (v534 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v531);
          v535 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v535, &v744, -1);
      }

      if ((v523 & 0x1C) == 4)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v536 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v536 = v745.__r_.__value_.__l.__size_;
        }

        v537 = std::string::basic_string[abi:ne200100](&__p, v536 + 59);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v538 = &__p;
        }

        else
        {
          v538 = __p.__r_.__value_.__r.__words[0];
        }

        if (v536)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v539 = &v745;
          }

          else
          {
            v539 = v745.__r_.__value_.__r.__words[0];
          }

          v537 = memmove(v538, v539, v536);
        }

        strcpy(v538 + v536, "defines a CATI intent name but not a CATI ensemble or GUID.");
        v540 = *(v503 + 8);
        if (v540)
        {
          v541 = (v540 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v537);
          v541 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v541, &v744, -1);
      }

      if ((v523 & 8) != 0 && (v523 & 0x20) != 0)
      {
        if (!*(v503 + 160))
        {
          google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
          v542 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v744, &v542->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
        }

        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v543 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v543 = v745.__r_.__value_.__l.__size_;
        }

        v544 = std::string::basic_string[abi:ne200100](&__p, v543 + 88);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v545 = &__p;
        }

        else
        {
          v545 = __p.__r_.__value_.__r.__words[0];
        }

        if (v543)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v546 = &v745;
          }

          else
          {
            v546 = v745.__r_.__value_.__r.__words[0];
          }

          v544 = memmove(v545, v546, v543);
        }

        strcpy(v545 + v543, "defines a CATI intent GUID and a custom producer. The CATI GUID definition will be used.");
        v547 = *(v503 + 8);
        if (v547)
        {
          v548 = (v547 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v544);
          v548 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v548, &v744, -1);
      }

      v549 = *(v503 + 40);
      if (v549)
      {
        v550 = v549 + 8;
      }

      else
      {
        v550 = 0;
      }

      v551 = *(v503 + 32);
      if (v551)
      {
        v552 = v550 + 8 * v551;
        do
        {
          v553 = *(*v550 + 40);
          if (v553)
          {
            v554 = (v553 + 8);
          }

          else
          {
            v554 = 0;
          }

          v555 = *(*v550 + 32);
          if (v555)
          {
            v556 = 8 * v555;
            do
            {
              siri::intelligence::ValidateKeyValueParameter(&v745, *v554++, a2, a3);
              v556 -= 8;
            }

            while (v556);
          }

          v550 += 8;
        }

        while (v550 != v552);
      }

      if ((*(v503 + 16) & 0x20) != 0)
      {
        v557 = *(v503 + 160);
        if (!v557)
        {
          google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
          v558 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v744, &v558->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
          v557 = *(v503 + 160);
        }

        if (!v557)
        {
          v557 = &protobuf::_Intelligence_NLParameters_default_instance_;
        }

        v559 = *(v557 + 5);
        if (v559)
        {
          v560 = (v559 + 8);
        }

        else
        {
          v560 = 0;
        }

        v561 = v557[8];
        if (v561)
        {
          v562 = 8 * v561;
          do
          {
            siri::intelligence::ValidateKeyValueParameter(&v745, *v560++, a2, a3);
            v562 -= 8;
          }

          while (v562);
        }
      }

      v563 = *(v503 + 104);
      if (v563 >= 1)
      {
        memset(&__p, 0, sizeof(__p));
        v564 = *(v503 + 112);
        if (v564)
        {
          v565 = (v564 + 8);
        }

        else
        {
          v565 = 0;
        }

        v566 = 8 * v563;
        do
        {
          v567 = *v565;
          siri::intelligence::Utterances::GetNormalizedText(*v565, &v744);
          v568 = HIBYTE(v744.__r_.__value_.__r.__words[2]);
          if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v568 = v744.__r_.__value_.__l.__size_;
          }

          if (!v568)
          {
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v580 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v580 = v745.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v741, v580 + 50);
            if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v581 = &v741;
            }

            else
            {
              v581 = v741.__r_.__value_.__r.__words[0];
            }

            if (v580)
            {
              if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v582 = &v745;
              }

              else
              {
                v582 = v745.__r_.__value_.__r.__words[0];
              }

              memmove(v581, v582, v580);
            }

            strcpy(v581 + v580, "has an empty / ineffectual normalized utterance: '");
            v583 = SHIBYTE(v567->__r_.__value_.__r.__words[2]);
            if (v583 >= 0)
            {
              v584 = v567;
            }

            else
            {
              v584 = v567->__r_.__value_.__r.__words[0];
            }

            if (v583 >= 0)
            {
              v585 = HIBYTE(v567->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v585 = v567->__r_.__value_.__l.__size_;
            }

            v586 = std::string::append(&v741, v584, v585);
            v587 = *&v586->__r_.__value_.__l.__data_;
            v742.__r_.__value_.__r.__words[2] = v586->__r_.__value_.__r.__words[2];
            *&v742.__r_.__value_.__l.__data_ = v587;
            v586->__r_.__value_.__l.__size_ = 0;
            v586->__r_.__value_.__r.__words[2] = 0;
            v586->__r_.__value_.__r.__words[0] = 0;
            v588 = std::string::append(&v742, "'");
            v743 = *v588;
            v588->__r_.__value_.__l.__size_ = 0;
            v588->__r_.__value_.__r.__words[2] = 0;
            v588->__r_.__value_.__r.__words[0] = 0;
            v589 = *(v503 + 8);
            if (v589)
            {
              v590 = (v589 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v588);
              v590 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(v739, "");
            siri::intelligence::GetLineNumFromUnknownField(v590, v739, -1);
          }

          if (siri::intelligence::VectorContains(&__p, &v744))
          {
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v569 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v569 = v745.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v741, v569 + 39);
            if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v570 = &v741;
            }

            else
            {
              v570 = v741.__r_.__value_.__r.__words[0];
            }

            if (v569)
            {
              if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v571 = &v745;
              }

              else
              {
                v571 = v745.__r_.__value_.__r.__words[0];
              }

              memmove(v570, v571, v569);
            }

            strcpy(v570 + v569, "has a duplicate normalized utterance: '");
            v572 = SHIBYTE(v567->__r_.__value_.__r.__words[2]);
            if (v572 >= 0)
            {
              v573 = v567;
            }

            else
            {
              v573 = v567->__r_.__value_.__r.__words[0];
            }

            if (v572 >= 0)
            {
              v574 = HIBYTE(v567->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v574 = v567->__r_.__value_.__l.__size_;
            }

            v575 = std::string::append(&v741, v573, v574);
            v576 = *&v575->__r_.__value_.__l.__data_;
            v742.__r_.__value_.__r.__words[2] = v575->__r_.__value_.__r.__words[2];
            *&v742.__r_.__value_.__l.__data_ = v576;
            v575->__r_.__value_.__l.__size_ = 0;
            v575->__r_.__value_.__r.__words[2] = 0;
            v575->__r_.__value_.__r.__words[0] = 0;
            v577 = std::string::append(&v742, "'");
            v743 = *v577;
            v577->__r_.__value_.__l.__size_ = 0;
            v577->__r_.__value_.__r.__words[2] = 0;
            v577->__r_.__value_.__r.__words[0] = 0;
            v578 = *(v503 + 8);
            if (v578)
            {
              v579 = (v578 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v577);
              v579 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(v739, "");
            siri::intelligence::GetLineNumFromUnknownField(v579, v739, -1);
          }

          std::vector<std::string>::push_back[abi:ne200100](&__p, &v744);
          if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v744.__r_.__value_.__l.__data_);
          }

          ++v565;
          v566 -= 8;
        }

        while (v566);
        v591 = *(v503 + 104);
        if (v591 >= 25)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v592 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v592 = v745.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v742, v592 + 14);
          if ((v742.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v593 = &v742;
          }

          else
          {
            v593 = v742.__r_.__value_.__r.__words[0];
          }

          if (v592)
          {
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v594 = &v745;
            }

            else
            {
              v594 = v745.__r_.__value_.__r.__words[0];
            }

            memmove(v593, v594, v592);
          }

          strcpy(v593 + v592, "has more than ");
          std::to_string(&v741, 24);
          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v595 = &v741;
          }

          else
          {
            v595 = v741.__r_.__value_.__r.__words[0];
          }

          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v596 = HIBYTE(v741.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v596 = v741.__r_.__value_.__l.__size_;
          }

          v597 = std::string::append(&v742, v595, v596);
          v598 = *&v597->__r_.__value_.__l.__data_;
          v743.__r_.__value_.__r.__words[2] = v597->__r_.__value_.__r.__words[2];
          *&v743.__r_.__value_.__l.__data_ = v598;
          v597->__r_.__value_.__l.__size_ = 0;
          v597->__r_.__value_.__r.__words[2] = 0;
          v597->__r_.__value_.__r.__words[0] = 0;
          v599 = std::string::append(&v743, " utterances. This feature is meant for prototyping only. It is not a production NL system.");
          v744 = *v599;
          v599->__r_.__value_.__l.__size_ = 0;
          v599->__r_.__value_.__r.__words[2] = 0;
          v599->__r_.__value_.__r.__words[0] = 0;
          v600 = *(v503 + 8);
          if (v600)
          {
            v601 = (v600 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v599);
            v601 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(v739, "");
          siri::intelligence::GetLineNumFromUnknownField(v601, v739, -1);
        }

        if (v591 >= 13)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v602 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v602 = v745.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](&v742, v602 + 14);
          if ((v742.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v603 = &v742;
          }

          else
          {
            v603 = v742.__r_.__value_.__r.__words[0];
          }

          if (v602)
          {
            if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v604 = &v745;
            }

            else
            {
              v604 = v745.__r_.__value_.__r.__words[0];
            }

            memmove(v603, v604, v602);
          }

          strcpy(v603 + v602, "has more than ");
          std::to_string(&v741, 12);
          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v605 = &v741;
          }

          else
          {
            v605 = v741.__r_.__value_.__r.__words[0];
          }

          if ((v741.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v606 = HIBYTE(v741.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v606 = v741.__r_.__value_.__l.__size_;
          }

          v607 = std::string::append(&v742, v605, v606);
          v608 = *&v607->__r_.__value_.__l.__data_;
          v743.__r_.__value_.__r.__words[2] = v607->__r_.__value_.__r.__words[2];
          *&v743.__r_.__value_.__l.__data_ = v608;
          v607->__r_.__value_.__l.__size_ = 0;
          v607->__r_.__value_.__r.__words[2] = 0;
          v607->__r_.__value_.__r.__words[0] = 0;
          v609 = std::string::append(&v743, " utterances. This feature is meant for prototyping only. It is not a production NL system.");
          v744 = *v609;
          v609->__r_.__value_.__l.__size_ = 0;
          v609->__r_.__value_.__r.__words[2] = 0;
          v609->__r_.__value_.__r.__words[0] = 0;
          v610 = *(v503 + 8);
          if (v610)
          {
            v611 = (v610 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            google::protobuf::internal::InitProtobufDefaults(v609);
            v611 = &google::protobuf::internal::fixed_address_empty_string;
          }

          std::string::basic_string[abi:ne200100]<0>(v739, "");
          siri::intelligence::GetLineNumFromUnknownField(v611, v739, -1);
        }

        v744.__r_.__value_.__r.__words[0] = &__p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v744);
      }

      if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v745.__r_.__value_.__l.__data_);
      }

      v502 = v733 + 1;
      v501 = this;
      if (v733 + 1 >= *(this + 128))
      {
        goto LABEL_1426;
      }
    }

    std::operator+<char>();
    v509 = std::string::append(&v744, "' ");
    v510 = *&v509->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v509->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v510;
    v509->__r_.__value_.__l.__size_ = 0;
    v509->__r_.__value_.__r.__words[2] = 0;
    v509->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v507 = &__p;
    }

    else
    {
      v507 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v508 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v508 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_1196;
  }

LABEL_1426:
  if (*(v501 + 98) >= 1)
  {
    v612 = 0;
    v613 = a2 + 296;
    do
    {
      v614 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(v501 + 384, v612);
      std::string::basic_string[abi:ne200100]<0>(&v745, "variable ");
      v615 = *(v614 + 16);
      if (v615)
      {
        std::operator+<char>();
        v616 = std::string::append(&v744, "' ");
        v617 = *&v616->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v616->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v617;
        v616->__r_.__value_.__l.__size_ = 0;
        v616->__r_.__value_.__r.__words[2] = 0;
        v616->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v618 = &__p;
        }

        else
        {
          v618 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v619 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v619 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v745, v618, v619);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        v615 = *(v614 + 16);
      }

      if ((v615 & 1) == 0)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v620 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v620 = v745.__r_.__value_.__l.__size_;
        }

        v621 = std::string::basic_string[abi:ne200100](&__p, v620 + 22);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v622 = &__p;
        }

        else
        {
          v622 = __p.__r_.__value_.__r.__words[0];
        }

        if (v620)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v623 = &v745;
          }

          else
          {
            v623 = v745.__r_.__value_.__r.__words[0];
          }

          v621 = memmove(v622, v623, v620);
        }

        strcpy(v622 + v620, "does not define a name");
        v624 = *(v614 + 8);
        if (v624)
        {
          v625 = (v624 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v621);
          v625 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v625, &v744, -1);
      }

      if (v613 == std::__tree<std::string>::find<std::string>(a2 + 288, *(v614 + 72)))
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v626 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v626 = v745.__r_.__value_.__l.__size_;
        }

        v627 = std::string::basic_string[abi:ne200100](&__p, v626 + 12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v628 = &__p;
        }

        else
        {
          v628 = __p.__r_.__value_.__r.__words[0];
        }

        if (v626)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v629 = &v745;
          }

          else
          {
            v629 = v745.__r_.__value_.__r.__words[0];
          }

          v627 = memmove(v628, v629, v626);
        }

        strcpy(v628 + v626, "is not used.");
        v630 = *(v614 + 8);
        if (v630)
        {
          v631 = (v630 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v627);
          v631 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v631, &v744, -1);
      }

      if ((*(v614 + 16) & 2) == 0)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v632 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v632 = v745.__r_.__value_.__l.__size_;
        }

        v633 = std::string::basic_string[abi:ne200100](&__p, v632 + 22);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v634 = &__p;
        }

        else
        {
          v634 = __p.__r_.__value_.__r.__words[0];
        }

        if (v632)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v635 = &v745;
          }

          else
          {
            v635 = v745.__r_.__value_.__r.__words[0];
          }

          v633 = memmove(v634, v635, v632);
        }

        strcpy(v634 + v632, "does not define a type");
        v636 = *(v614 + 8);
        if (v636)
        {
          v637 = (v636 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v633);
          v637 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v637, &v744, -1);
      }

      if (!siri::intelligence::IsValidTypeName(*(v614 + 80)))
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v638 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v638 = v745.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v744, v638 + 26);
        if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v639 = &v744;
        }

        else
        {
          v639 = v744.__r_.__value_.__r.__words[0];
        }

        if (v638)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v640 = &v745;
          }

          else
          {
            v640 = v745.__r_.__value_.__r.__words[0];
          }

          memmove(v639, v640, v638);
        }

        strcpy(v639 + v638, "has an invalid type name: ");
        v641 = *(v614 + 80);
        v642 = *(v641 + 23);
        if (v642 >= 0)
        {
          v643 = *(v614 + 80);
        }

        else
        {
          v643 = *v641;
        }

        if (v642 >= 0)
        {
          v644 = *(v641 + 23);
        }

        else
        {
          v644 = *(v641 + 8);
        }

        v645 = std::string::append(&v744, v643, v644);
        __p = *v645;
        v645->__r_.__value_.__l.__size_ = 0;
        v645->__r_.__value_.__r.__words[2] = 0;
        v645->__r_.__value_.__r.__words[0] = 0;
        v646 = *(v614 + 8);
        if (v646)
        {
          v647 = (v646 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v645);
          v647 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v743, "type");
        siri::intelligence::GetLineNumFromUnknownField(v647, &v743, -1);
      }

      if ((*(v614 + 16) & 1) != 0 && !siri::intelligence::IsValidVariableName(*(v614 + 72)))
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v648 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v648 = v745.__r_.__value_.__l.__size_;
        }

        v649 = std::string::basic_string[abi:ne200100](&__p, v648 + 34);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v650 = &__p;
        }

        else
        {
          v650 = __p.__r_.__value_.__r.__words[0];
        }

        if (v648)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v651 = &v745;
          }

          else
          {
            v651 = v745.__r_.__value_.__r.__words[0];
          }

          v649 = memmove(v650, v651, v648);
        }

        strcpy(v650 + v648, "has invalid characters in the name");
        v652 = *(v614 + 8);
        if (v652)
        {
          v653 = (v652 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v649);
          v653 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "name");
        siri::intelligence::GetLineNumFromUnknownField(v653, &v744, -1);
      }

      v654 = *(v614 + 16);
      if ((v654 & 0x10) == 0)
      {
        goto LABEL_1628;
      }

      v655 = *(v614 + 104);
      if (v655)
      {
        if ((v654 & 2) != 0)
        {
          goto LABEL_1527;
        }
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 17756);
        v656 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || default_value_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v744, &v656->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
        v655 = *(v614 + 104);
        if ((*(v614 + 16) & 2) != 0)
        {
LABEL_1527:
          if (v655)
          {
            v657 = v655;
          }

          else
          {
            v657 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
          }

          v658 = *(v614 + 80);
          if (*(v658 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v744, *v658, *(v658 + 1));
          }

          else
          {
            v659 = *v658;
            v744.__r_.__value_.__r.__words[2] = *(v658 + 2);
            *&v744.__r_.__value_.__l.__data_ = v659;
          }

          v660 = *(v657 + 4);
          LOWORD(v661) = v660;
          if ((v660 & 2) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v742, siri::intelligence::TYPE_STRING[0]);
            if (siri::intelligence::IsEquivalentType(&v744, &v742))
            {
              v661 = *(v657 + 4);
              goto LABEL_1536;
            }

            v665 = 1;
LABEL_1565:
            if (SHIBYTE(v742.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v742.__r_.__value_.__l.__data_);
            }

LABEL_1567:
            v501 = this;
            if (v665)
            {
              goto LABEL_1568;
            }

            v677 = *(v657 + 4);
            if ((v677 & 0x10) != 0)
            {
              memset(&__p, 0, sizeof(__p));
              memset(&v743, 0, sizeof(v743));
              google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v743, v657 + 96);
              if (LODWORD(v743.__r_.__value_.__r.__words[1]))
              {
                if (v743.__r_.__value_.__r.__words[2])
                {
                  v679 = (v743.__r_.__value_.__r.__words[2] + 8);
                }

                else
                {
                  v679 = 0;
                }

                do
                {
                  std::vector<protobuf::Intelligence_KeyValueParameter>::push_back[abi:ne200100](&__p, *v679++);
                  if (v743.__r_.__value_.__r.__words[2])
                  {
                    v680 = v743.__r_.__value_.__r.__words[2] + 8;
                  }

                  else
                  {
                    v680 = 0;
                  }
                }

                while (v679 != (v680 + 8 * SLODWORD(v743.__r_.__value_.__r.__words[1])));
              }

              google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(&v743);
              std::allocate_shared[abi:ne200100]<siri::intelligence::VariableDictionary,std::allocator<siri::intelligence::VariableDictionary>,char const(&)[1],std::vector<protobuf::Intelligence_KeyValueParameter> &,0>();
            }

            if ((v677 & 8) == 0)
            {
              if (siri::intelligence::DialogTypes::IsDialogType(&v744))
              {
                if (*(v614 + 104))
                {
                  v678 = *(v614 + 104);
                }

                else
                {
                  v678 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
                }

                siri::intelligence::Variable::FromProtobuf(*(v614 + 72), v678, &v735);
                _ZNSt3__115allocate_sharedB8ne200100IN4siri12intelligence18VariableDictionaryENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
              }

LABEL_1626:
              siri::intelligence::ValidateKeyValueParameter(&v745, v657, a2, a3);
              if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v744.__r_.__value_.__l.__data_);
              }

              goto LABEL_1628;
            }

            siri::intelligence::Memory::GetVariable(a2 + 39, *(v657 + 18), &v743);
            if (v743.__r_.__value_.__r.__words[0])
            {
              (*(*v743.__r_.__value_.__l.__data_ + 96))(&__p);
              v681 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v682 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v682 = __p.__r_.__value_.__l.__size_;
              }

              v683 = HIBYTE(v744.__r_.__value_.__r.__words[2]);
              if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v683 = v744.__r_.__value_.__l.__size_;
              }

              if (v682 == v683)
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v684 = &__p;
                }

                else
                {
                  v684 = __p.__r_.__value_.__r.__words[0];
                }

                if ((v744.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v685 = &v744;
                }

                else
                {
                  v685 = v744.__r_.__value_.__r.__words[0];
                }

                v686 = memcmp(v684, v685, v682) != 0;
                if (v681 < 0)
                {
LABEL_1621:
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v686 = 1;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_1621;
                }
              }

              v501 = this;
            }

            else
            {
              v686 = 0;
            }

            if (v743.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v743.__r_.__value_.__l.__size_);
            }

            if (v686)
            {
LABEL_1568:
              if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v667 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v667 = v745.__r_.__value_.__l.__size_;
              }

              std::string::basic_string[abi:ne200100](&v743, v667 + 51);
              if ((v743.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v668 = &v743;
              }

              else
              {
                v668 = v743.__r_.__value_.__r.__words[0];
              }

              if (v667)
              {
                if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v669 = &v745;
                }

                else
                {
                  v669 = v745.__r_.__value_.__r.__words[0];
                }

                memmove(v668, v669, v667);
              }

              strcpy(v668 + v667, "has a default value that doesn't match the type of ");
              v670 = *(v614 + 80);
              v671 = *(v670 + 23);
              if (v671 >= 0)
              {
                v672 = *(v614 + 80);
              }

              else
              {
                v672 = *v670;
              }

              if (v671 >= 0)
              {
                v673 = *(v670 + 23);
              }

              else
              {
                v673 = *(v670 + 8);
              }

              v674 = std::string::append(&v743, v672, v673);
              __p = *v674;
              v674->__r_.__value_.__l.__size_ = 0;
              v674->__r_.__value_.__r.__words[2] = 0;
              v674->__r_.__value_.__r.__words[0] = 0;
              v675 = *(v614 + 8);
              if (v675)
              {
                v676 = (v675 & 0xFFFFFFFFFFFFFFFELL);
              }

              else
              {
                google::protobuf::internal::InitProtobufDefaults(v674);
                v676 = &google::protobuf::internal::fixed_address_empty_string;
              }

              std::string::basic_string[abi:ne200100]<0>(&v735, "defaultValue");
              siri::intelligence::GetLineNumFromUnknownField(v676, &v735, -1);
            }

            goto LABEL_1626;
          }

LABEL_1536:
          LOBYTE(v662) = v661;
          if ((v661 & 0x100) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v741, siri::intelligence::TYPE_BOOLEAN[0]);
            if (siri::intelligence::IsEquivalentType(&v744, &v741))
            {
              v662 = *(v657 + 4);
              goto LABEL_1539;
            }

            v665 = 1;
LABEL_1561:
            if (SHIBYTE(v741.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v741.__r_.__value_.__l.__data_);
            }

LABEL_1564:
            if ((v660 & 2) != 0)
            {
              goto LABEL_1565;
            }

            goto LABEL_1567;
          }

LABEL_1539:
          if ((v662 & 0x80) == 0 || (std::string::basic_string[abi:ne200100]<0>(v739, siri::intelligence::TYPE_NUMBER[0]), siri::intelligence::IsEquivalentType(&v744, v739)))
          {
            v663 = v613;
            v664 = *(v657 + 14);
            if (v664 < 1)
            {
              if (*(v657 + 20) >= 1)
              {
                goto LABEL_1548;
              }

              v665 = 0;
LABEL_1557:
              v613 = v663;
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v737, siri::intelligence::TYPE_ARRAY[0]);
              if (!siri::intelligence::IsEquivalentType(&v744, v737))
              {
                v665 = 1;
                goto LABEL_1554;
              }

              if (*(v657 + 20) <= 0)
              {
                v665 = 0;
                goto LABEL_1554;
              }

LABEL_1548:
              std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
              IsEquivalentType = siri::intelligence::IsEquivalentType(&v744, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v665 = !IsEquivalentType;
              if (v664 < 1)
              {
                goto LABEL_1557;
              }

LABEL_1554:
              v613 = v663;
              if (v738 < 0)
              {
                operator delete(v737[0]);
              }
            }

            if ((v662 & 0x80) != 0)
            {
LABEL_1559:
              if (v740 < 0)
              {
                operator delete(v739[0]);
                if ((v661 & 0x100) != 0)
                {
                  goto LABEL_1561;
                }

                goto LABEL_1564;
              }
            }

            if ((v661 & 0x100) != 0)
            {
              goto LABEL_1561;
            }

            goto LABEL_1564;
          }

          v665 = 1;
          goto LABEL_1559;
        }
      }

LABEL_1628:
      if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v745.__r_.__value_.__l.__data_);
      }

      ++v612;
    }

    while (v612 < *(v501 + 98));
  }

  v687 = v501;
  if (*(v501 + 68) >= 1)
  {
    v688 = 0;
    do
    {
      v689 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(v687 + 264, v688);
      std::string::basic_string[abi:ne200100]<0>(&v745, "condition ");
      v690 = *(v689 + 16);
      if (v690)
      {
        std::operator+<char>();
        v691 = std::string::append(&v744, "' ");
        v692 = *&v691->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v691->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v692;
        v691->__r_.__value_.__l.__size_ = 0;
        v691->__r_.__value_.__r.__words[2] = 0;
        v691->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v693 = &__p;
        }

        else
        {
          v693 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v694 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v694 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v745, v693, v694);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        v690 = *(v689 + 16);
      }

      if ((v690 & 1) == 0)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v695 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v695 = v745.__r_.__value_.__l.__size_;
        }

        v696 = std::string::basic_string[abi:ne200100](&__p, v695 + 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v697 = &__p;
        }

        else
        {
          v697 = __p.__r_.__value_.__r.__words[0];
        }

        if (v695)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v698 = &v745;
          }

          else
          {
            v698 = v745.__r_.__value_.__r.__words[0];
          }

          v696 = memmove(v697, v698, v695);
        }

        strcpy(v697 + v695, "does not define an id");
        v699 = *(v689 + 8);
        if (v699)
        {
          v700 = (v699 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v696);
          v700 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v700, &v744, -1);
      }

      if ((siri::intelligence::IsValidId(*(v689 + 24)) & 1) == 0)
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v701 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v701 = v745.__r_.__value_.__l.__size_;
        }

        v702 = std::string::basic_string[abi:ne200100](&__p, v701 + 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v703 = &__p;
        }

        else
        {
          v703 = __p.__r_.__value_.__r.__words[0];
        }

        if (v701)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v704 = &v745;
          }

          else
          {
            v704 = v745.__r_.__value_.__r.__words[0];
          }

          v702 = memmove(v703, v704, v701);
        }

        strcpy(v703 + v701, "has invalid characters in the ID");
        v705 = *(v689 + 8);
        if (v705)
        {
          v706 = (v705 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v702);
          v706 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "id");
        siri::intelligence::GetLineNumFromUnknownField(v706, &v744, -1);
      }

      if ((a2 + 272) == std::__tree<std::string>::find<std::string>(a2 + 264, *(v689 + 24)))
      {
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v707 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v707 = v745.__r_.__value_.__l.__size_;
        }

        v708 = std::string::basic_string[abi:ne200100](&__p, v707 + 12);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v709 = &__p;
        }

        else
        {
          v709 = __p.__r_.__value_.__r.__words[0];
        }

        if (v707)
        {
          if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v710 = &v745;
          }

          else
          {
            v710 = v745.__r_.__value_.__r.__words[0];
          }

          v708 = memmove(v709, v710, v707);
        }

        strcpy(v709 + v707, "is not used.");
        v711 = *(v689 + 8);
        if (v711)
        {
          v712 = (v711 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v708);
          v712 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "");
        siri::intelligence::GetLineNumFromUnknownField(v712, &v744, -1);
      }

      if ((*(v689 + 16) & 2) != 0)
      {
        v713 = *(v689 + 32);
        if (!v713)
        {
          google::protobuf::internal::LogMessage::LogMessage(&__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21788);
          v714 = google::protobuf::internal::LogMessage::operator<<(&__p, "CHECK failed: !value || condition_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v744, &v714->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
          v713 = *(v689 + 32);
        }

        if (v713)
        {
          v715 = v713;
        }

        else
        {
          v715 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
        }

        siri::intelligence::ValidateConditionEntry(&v745.__r_.__value_.__l.__data_, v715, a2, a3);
      }

      if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v745.__r_.__value_.__l.__data_);
      }

      ++v688;
      v687 = this;
    }

    while (v688 < *(this + 68));
  }

  if (*(v687 + 44) >= 1)
  {
    v716 = 0;
    do
    {
      v717 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(v687 + 168, v716);
      std::string::basic_string[abi:ne200100]<0>(&__p, "activity ");
      v718 = *(v717 + 16);
      if ((v718 & 2) != 0)
      {
        std::operator+<char>();
        v719 = std::string::append(&v744, "' ");
        v720 = *&v719->__r_.__value_.__l.__data_;
        v745.__r_.__value_.__r.__words[2] = v719->__r_.__value_.__r.__words[2];
        *&v745.__r_.__value_.__l.__data_ = v720;
        v719->__r_.__value_.__l.__size_ = 0;
        v719->__r_.__value_.__r.__words[2] = 0;
        v719->__r_.__value_.__r.__words[0] = 0;
        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v721 = &v745;
        }

        else
        {
          v721 = v745.__r_.__value_.__r.__words[0];
        }

        if ((v745.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v722 = HIBYTE(v745.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v722 = v745.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v721, v722);
        if (SHIBYTE(v745.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v745.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v744.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v744.__r_.__value_.__l.__data_);
        }

        v718 = *(v717 + 16);
      }

      if ((v718 & 0x10) != 0 && (a2 + 104) == std::__tree<std::string>::find<std::string>(a2 + 96, *(v717 + 80)))
      {
        v723 = std::operator+<char>();
        v724 = *(v717 + 8);
        if (v724)
        {
          v725 = (v724 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          google::protobuf::internal::InitProtobufDefaults(v723);
          v725 = &google::protobuf::internal::fixed_address_empty_string;
        }

        std::string::basic_string[abi:ne200100]<0>(&v744, "inputGroupId");
        siri::intelligence::GetLineNumFromUnknownField(v725, &v744, -1);
      }

      if (*(v717 + 32) >= 1)
      {
        v726 = 0;
        do
        {
          v727 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v717 + 24, v726);
          if ((a2 + 80) == std::__tree<std::string>::find<std::string>(a2 + 72, v727))
          {
            v728 = std::operator+<char>();
            v729 = *(v717 + 8);
            if (v729)
            {
              v730 = (v729 & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              google::protobuf::internal::InitProtobufDefaults(v728);
              v730 = &google::protobuf::internal::fixed_address_empty_string;
            }

            std::string::basic_string[abi:ne200100]<0>(&v744, "responseIds");
            siri::intelligence::GetLineNumFromUnknownField(v730, &v744, v726);
          }

          ++v726;
        }

        while (v726 < *(v717 + 32));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v716;
      v687 = this;
    }

    while (v716 < *(this + 44));
  }
}