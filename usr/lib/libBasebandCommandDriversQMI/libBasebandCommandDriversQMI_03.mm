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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(uint64_t a1, std::basic_regex<char> *a2, int a3)
{
  v6 = MEMORY[0x29C268DF0]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  col_high = HIBYTE(a2->__traits_.__col_);
  if ((col_high & 0x80u) == 0)
  {
    locale = a2;
  }

  else
  {
    locale = a2->__traits_.__loc_.__locale_;
  }

  if ((col_high & 0x80u) != 0)
  {
    col_high = a2->__traits_.__ct_;
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(a1, locale, (locale + col_high)) != (locale + col_high))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_296EF3364(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E15B98;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E15BF0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
          }

          goto LABEL_15;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      else
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x80u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x100u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_296EF35D4(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v22 = *(a1 + 56);
      v23 = (&v8->__traits_.__loc_.__locale_ + 1);
      v24 = &v8->__traits_.__loc_.__locale_ + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_2A1E161B0;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_2A1E161F8;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_2A1E15CE8;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = (&a2->__traits_.__loc_.__locale_ + 1);
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if ((&v11->__traits_.__loc_.__locale_ + 1) == a3 && LOBYTE(v11->__traits_.__loc_.__locale_) == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_2A1E15D30;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        v11 = (v11 + 1);
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &unk_2A1E161B0;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &unk_2A1E161F8;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E161B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E161F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E161B0;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E161F8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_2A1E15D78;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E15CE8;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E15D30;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = *(v26 + 24);
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = *(v7 + 24);
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x3E)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) > 0x5Bu)
    {
      if (locale_low == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      if (locale_low != 123)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (locale_low != 91)
    {
      if (locale_low != 63)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
      }

LABEL_32:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  if (locale_low != 40)
  {
    if (locale_low == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = &unk_2A1E15E08;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return (&v5->__traits_.__loc_.__locale_ + 1);
    }

    if (locale_low - 42 >= 2)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
    }

    goto LABEL_32;
  }

  v10 = &a2->__traits_.__loc_.__locale_ + 1;
  if ((&a2->__traits_.__loc_.__locale_ + 1) == a3)
  {
LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v11 = a1;
  if ((&a2->__traits_.__loc_.__locale_ + 2) != a3 && *v10 == 63 && BYTE2(a2->__traits_.__loc_.__locale_) == 58)
  {
    ++*(a1 + 36);
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, &a2->__traits_.__loc_.__locale_ + 3, a3);
    if (v13 != v12 && LOBYTE(v13->__traits_.__loc_.__locale_) == 41)
    {
      --*(v11 + 36);
      return (&v13->__traits_.__loc_.__locale_ + 1);
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v17 = *(a1 + 28);
  }

  else
  {
    v14 = a3;
    v15 = operator new(0x18uLL);
    a3 = v14;
    v16 = v15;
    a1 = v11;
    v17 = *(v11 + 28) + 1;
    *(v11 + 28) = v17;
    v18 = *(v11 + 56);
    v19 = *(v18 + 8);
    *v16 = &unk_2A1E16048;
    v16[1] = v19;
    *(v16 + 4) = v17;
    *(v18 + 8) = v16;
    *(v11 + 56) = v16;
  }

  ++*(a1 + 36);
  v20 = a3;
  v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, v10, a3);
  if (v21 == v20)
  {
    goto LABEL_33;
  }

  v22 = v21;
  if (LOBYTE(v21->__traits_.__loc_.__locale_) != 41)
  {
    goto LABEL_33;
  }

  v23 = v11;
  if ((*(v11 + 24) & 2) == 0)
  {
    v24 = operator new(0x18uLL);
    v23 = v11;
    v25 = *(v11 + 56);
    v26 = *(v25 + 8);
    *v24 = &unk_2A1E16090;
    v24[1] = v26;
    *(v24 + 4) = v17;
    *(v25 + 8) = v24;
    *(v11 + 56) = v24;
  }

  --*(v23 + 36);
  return (&v22->__traits_.__loc_.__locale_ + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
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
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v9, v16, a4, __mexp_begin, __mexp_end, v17);
                  return v6;
                }

                v9 = v12;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                goto LABEL_34;
              }

              v9 = v12;
              __mexp_begin = __mexp_begin;
              __mexp_end = __mexp_end;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    __mexp_begin = __mexp_begin;
                    __mexp_end = __mexp_end;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      goto LABEL_34;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3 && LOBYTE(this->__traits_.__loc_.__locale_) == 92)
  {
    v4 = &this->__traits_.__loc_.__locale_ + 1;
    if (a3 == (&this->__traits_.__loc_.__locale_ + 1))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      return (v3 + 2);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 = (v3 + 2);
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          locale_low = LOBYTE(v3->__traits_.__loc_.__locale_);
          if ((locale_low - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          v3 = (v3 + 1);
          v6 = locale_low + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v6 > a1->__marked_count_)
      {
        goto LABEL_23;
      }

      v10 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
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

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v10 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

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

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

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
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

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
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

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
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_98;
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

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

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

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

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

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
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

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

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

void sub_296EF57D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void sub_296EF5AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_296EF6530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_296EF66CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
      *v10 = &unk_2A1E16048;
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
        *v18 = &unk_2A1E16090;
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
      v15->__vftable = &unk_2A1E16240;
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
        v14 = &unk_2A1E15D30;
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
          *v15 = &unk_2A1E16048;
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
          *v20 = &unk_2A1E16090;
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
        v14 = &unk_2A1E15CE8;
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
      v10->__vftable = &unk_2A1E16240;
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

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29C268CC0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_296EF72F4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x296EF72B4);
  }

  __cxa_rethrow();
}

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_296EF78E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void ***a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
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

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, &v11[v13], v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void ***a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *a3 = *a1;
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
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

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_296EF7C24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v21 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v18 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v18, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v16 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v14 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v8 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v8 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v10 = cf;
    Code = CFErrorGetCode(error);
    v12 = __p;
    if (v14 < 0)
    {
      v12 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v20 = v12;
    _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
      v7 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v16;
      if (!v16)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_296EF80DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 != -1)
  {

    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }
}

void util::moveDirContent(const void **a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v144 = *MEMORY[0x29EDCA608];
  v135 = 0;
  v136 = 0;
  v137 = 0;
  std::locale::locale(&v129, a5);
  v130 = *(a5 + 8);
  v131 = *(a5 + 24);
  v8 = *(a5 + 48);
  v132 = *(a5 + 40);
  v133 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v134 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v10 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::locale::~locale(&v129);
    if (filtered_files)
    {
LABEL_6:
      v11 = v135;
      v117 = v136;
      if (v135 != v136)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v143, 170, sizeof(v143));
            if (*(v11 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v143, *v11, v11[1]);
            }

            else
            {
              v12 = *v11;
              v143.__r_.__value_.__r.__words[2] = v11[2];
              *&v143.__r_.__value_.__l.__data_ = v12;
            }

            v13 = *(a1 + 23);
            if (v13 >= 0)
            {
              v14 = *(a1 + 23);
            }

            else
            {
              v14 = a1[1];
            }

            v15 = v14 + 1;
            if (v14 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v15 < 0x17)
            {
              memset(&v127, 0, sizeof(v127));
              v17 = &v127;
              *(&v127.__r_.__value_.__s + 23) = v14 + 1;
              if (!v14)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if ((v15 | 7) == 0x17)
              {
                v16 = 25;
              }

              else
              {
                v16 = (v15 | 7) + 1;
              }

              v17 = operator new(v16);
              v127.__r_.__value_.__l.__size_ = v14 + 1;
              v127.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
              v127.__r_.__value_.__r.__words[0] = v17;
            }

            if (v13 >= 0)
            {
              v18 = a1;
            }

            else
            {
              v18 = *a1;
            }

            memmove(v17, v18, v14);
LABEL_27:
            *&v17[v14] = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v143;
            }

            else
            {
              v19 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v143.__r_.__value_.__l.__size_;
            }

            v21 = std::string::append(&v127, v19, size);
            v22 = *&v21->__r_.__value_.__l.__data_;
            __p[2] = v21->__r_.__value_.__r.__words[2];
            *__p = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_35:
                if (is_directory)
                {
                  goto LABEL_36;
                }

                goto LABEL_47;
              }
            }

            else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            operator delete(v127.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_36:
              v24 = *(a1 + 23);
              if (v24 >= 0)
              {
                v25 = *(a1 + 23);
              }

              else
              {
                v25 = a1[1];
              }

              v26 = v25 + 1;
              if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v26 < 0x17)
              {
                memset(&v127, 0, sizeof(v127));
                v28 = &v127;
                *(&v127.__r_.__value_.__s + 23) = v25 + 1;
                if (v25)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                if ((v26 | 7) == 0x17)
                {
                  v27 = 25;
                }

                else
                {
                  v27 = (v26 | 7) + 1;
                }

                v28 = operator new(v27);
                v127.__r_.__value_.__l.__size_ = v25 + 1;
                v127.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
                v127.__r_.__value_.__r.__words[0] = v28;
LABEL_60:
                if (v24 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                memmove(v28, v35, v25);
              }

              *&v28[v25] = 47;
              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = &v143;
              }

              else
              {
                v36 = v143.__r_.__value_.__r.__words[0];
              }

              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v37 = v143.__r_.__value_.__l.__size_;
              }

              v38 = std::string::append(&v127, v36, v37);
              v39 = *&v38->__r_.__value_.__l.__data_;
              __p[2] = v38->__r_.__value_.__r.__words[2];
              *__p = v39;
              v38->__r_.__value_.__l.__size_ = 0;
              v38->__r_.__value_.__r.__words[2] = 0;
              v38->__r_.__value_.__r.__words[0] = 0;
              v40 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v40 = __p[1];
                v42 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v43 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v43 != __p[1])
                {
                  v41 = __p[0];
                  goto LABEL_91;
                }

                if (v42 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v41 = __p[0];
                if (v43 > 0x3FFFFFFFFFFFFFF2)
                {
                  v47 = 0;
                  v46 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_76:
                  v44 = 2 * v43;
                  if (v42 > 2 * v43)
                  {
                    v44 = v42;
                  }

                  if ((v44 | 7) == 0x17)
                  {
                    v45 = 25;
                  }

                  else
                  {
                    v45 = (v44 | 7) + 1;
                  }

                  if (v44 >= 0x17)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = 23;
                  }

                  v47 = v43 == 22;
                }

                v48 = operator new(v46);
                v49 = v48;
                if (v43)
                {
                  memmove(v48, v41, v43);
                }

                v49[v43] = 47;
                if (!v47)
                {
                  operator delete(v41);
                }

                __p[1] = v42;
                __p[2] = (v46 | 0x8000000000000000);
                __p[0] = v49;
                v50 = &v49[v42];
              }

              else
              {
                v41 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v42 = 23;
                  v43 = 22;
                  goto LABEL_76;
                }

LABEL_91:
                *(v40 + v41) = 47;
                v51 = v40 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v51;
                }

                else
                {
                  HIBYTE(__p[2]) = v51 & 0x7F;
                }

                v50 = &v51[v41];
              }

              *v50 = 0;
              *v125 = *__p;
              v126 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v124, *a2, *(a2 + 8));
              }

              else
              {
                v124 = *a2;
              }

              std::locale::locale(&v118, a5);
              v119 = *(a5 + 8);
              v120 = *(a5 + 24);
              v52 = *(a5 + 48);
              v121 = *(a5 + 40);
              v122 = v52;
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v123 = *(a5 + 56);
              util::moveDirContent(v125, &v124, a3, a4 - 1, &v118);
              v53 = v122;
              if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v53->__on_zero_shared)(v53);
                std::__shared_weak_count::__release_weak(v53);
                std::locale::~locale(&v118);
                if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                std::locale::~locale(&v118);
                if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_103:
                  if ((SHIBYTE(v126) & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_109:
                  operator delete(v125[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_110;
                }
              }

              operator delete(v124.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v126) & 0x80000000) == 0)
              {
LABEL_104:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_105;
                }

                goto LABEL_110;
              }

              goto LABEL_109;
            }

LABEL_47:
            if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
            {
              qword_2A18A5920 = 0;
              qword_2A18A5928 = 0;
              __cxa_guard_release(&qword_2A18A5918);
            }

            if (_MergedGlobals_0 == -1)
            {
              v29 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
              v29 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            v30 = *(a1 + 23);
            if (v30 >= 0)
            {
              v31 = *(a1 + 23);
            }

            else
            {
              v31 = a1[1];
            }

            v32 = v31 + 1;
            if (v31 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v32 < 0x17)
            {
              memset(&v127, 0, sizeof(v127));
              v34 = &v127;
              *(&v127.__r_.__value_.__s + 23) = v31 + 1;
              if (!v31)
              {
                goto LABEL_120;
              }
            }

            else
            {
              if ((v32 | 7) == 0x17)
              {
                v33 = 25;
              }

              else
              {
                v33 = (v32 | 7) + 1;
              }

              v34 = operator new(v33);
              v127.__r_.__value_.__l.__size_ = v31 + 1;
              v127.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
              v127.__r_.__value_.__r.__words[0] = v34;
            }

            if (v30 >= 0)
            {
              v54 = a1;
            }

            else
            {
              v54 = *a1;
            }

            memmove(v34, v54, v31);
LABEL_120:
            *&v34[v31] = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &v143;
            }

            else
            {
              v55 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v56 = v143.__r_.__value_.__l.__size_;
            }

            v57 = std::string::append(&v127, v55, v56);
            v58 = *&v57->__r_.__value_.__l.__data_;
            __p[2] = v57->__r_.__value_.__r.__words[2];
            *__p = v58;
            v57->__r_.__value_.__l.__size_ = 0;
            v57->__r_.__value_.__r.__words[2] = 0;
            v57->__r_.__value_.__r.__words[0] = 0;
            v59 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v59 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v59;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_296ECF000, v29, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_105:
              if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_111;
              }

              goto LABEL_112;
            }

LABEL_110:
            operator delete(__p[0]);
            if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_111:
              operator delete(v127.__r_.__value_.__l.__data_);
            }

LABEL_112:
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }
        }

        while (1)
        {
          memset(&v143, 170, sizeof(v143));
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v143, *v11, v11[1]);
          }

          else
          {
            v65 = *v11;
            v143.__r_.__value_.__r.__words[2] = v11[2];
            *&v143.__r_.__value_.__l.__data_ = v65;
          }

          memset(__p, 170, sizeof(__p));
          v66 = *(a2 + 23);
          if (v66 >= 0)
          {
            v67 = *(a2 + 23);
          }

          else
          {
            v67 = *(a2 + 8);
          }

          v68 = v67 + 1;
          if (v67 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v68 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v67 + 1;
            if (!v67)
            {
              goto LABEL_169;
            }
          }

          else
          {
            if ((v68 | 7) == 0x17)
            {
              v69 = 25;
            }

            else
            {
              v69 = (v68 | 7) + 1;
            }

            p_buf = operator new(v69);
            buf.__r_.__value_.__l.__size_ = v67 + 1;
            buf.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          if (v66 >= 0)
          {
            v71 = a2;
          }

          else
          {
            v71 = *a2;
          }

          memmove(p_buf, v71, v67);
LABEL_169:
          *(&p_buf->__r_.__value_.__l.__data_ + v67) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &v143;
          }

          else
          {
            v72 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v73 = v143.__r_.__value_.__l.__size_;
          }

          v74 = std::string::append(&buf, v72, v73);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_177;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_177;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_177:
          v76 = *(a1 + 23);
          if (v76 >= 0)
          {
            v77 = *(a1 + 23);
          }

          else
          {
            v77 = a1[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v80 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            v80 = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v80;
          }

          if (v76 >= 0)
          {
            v81 = a1;
          }

          else
          {
            v81 = *a1;
          }

          memmove(v80, v81, v77);
LABEL_191:
          *(&v80->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = &v143;
          }

          else
          {
            v82 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = v143.__r_.__value_.__l.__size_;
          }

          v84 = std::string::append(&buf, v82, v83);
          v85 = *&v84->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          v86 = ctu::fs::rename();
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_199:
              explicit = atomic_load_explicit(&qword_2A18A5918, memory_order_acquire);
              if (v86)
              {
                goto LABEL_200;
              }

              goto LABEL_216;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A18A5918, memory_order_acquire);
          if (v86)
          {
LABEL_200:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
            {
              qword_2A18A5920 = 0;
              qword_2A18A5928 = 0;
              __cxa_guard_release(&qword_2A18A5918);
            }

            if (_MergedGlobals_0 == -1)
            {
              v88 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
              v88 = qword_2A18A5928;
              if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            v89 = *(a1 + 23);
            if (v89 >= 0)
            {
              v90 = *(a1 + 23);
            }

            else
            {
              v90 = a1[1];
            }

            v91 = v90 + 1;
            if (v90 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v91 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v93 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v90 + 1;
              if (v90)
              {
                goto LABEL_229;
              }
            }

            else
            {
              if ((v91 | 7) == 0x17)
              {
                v92 = 25;
              }

              else
              {
                v92 = (v91 | 7) + 1;
              }

              v93 = operator new(v92);
              buf.__r_.__value_.__l.__size_ = v90 + 1;
              buf.__r_.__value_.__r.__words[2] = v92 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v93;
LABEL_229:
              if (v89 >= 0)
              {
                v100 = a1;
              }

              else
              {
                v100 = *a1;
              }

              memmove(v93, v100, v90);
            }

            *(&v93->__r_.__value_.__l.__data_ + v90) = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v101 = &v143;
            }

            else
            {
              v101 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v102 = v143.__r_.__value_.__l.__size_;
            }

            v103 = std::string::append(&buf, v101, v102);
            v104 = *&v103->__r_.__value_.__l.__data_;
            v127.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
            *&v127.__r_.__value_.__l.__data_ = v104;
            v103->__r_.__value_.__l.__size_ = 0;
            v103->__r_.__value_.__r.__words[2] = 0;
            v103->__r_.__value_.__r.__words[0] = 0;
            v105 = &v127;
            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v105 = v127.__r_.__value_.__r.__words[0];
            }

            v106 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v106 = __p[0];
            }

            *v138 = 136315394;
            v139 = v105;
            v140 = 2080;
            v141 = v106;
            _os_log_impl(&dword_296ECF000, v88, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v138, 0x16u);
            if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_244;
            }

            goto LABEL_262;
          }

LABEL_216:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
          {
            qword_2A18A5920 = 0;
            qword_2A18A5928 = 0;
            __cxa_guard_release(&qword_2A18A5918);
          }

          if (_MergedGlobals_0 == -1)
          {
            v94 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
            v94 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          v95 = *(a1 + 23);
          if (v95 >= 0)
          {
            v96 = *(a1 + 23);
          }

          else
          {
            v96 = a1[1];
          }

          v97 = v96 + 1;
          if (v96 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v97 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v99 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v96 + 1;
            if (!v96)
            {
              goto LABEL_251;
            }
          }

          else
          {
            if ((v97 | 7) == 0x17)
            {
              v98 = 25;
            }

            else
            {
              v98 = (v97 | 7) + 1;
            }

            v99 = operator new(v98);
            buf.__r_.__value_.__l.__size_ = v96 + 1;
            buf.__r_.__value_.__r.__words[2] = v98 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v99;
          }

          if (v95 >= 0)
          {
            v107 = a1;
          }

          else
          {
            v107 = *a1;
          }

          memmove(v99, v107, v96);
LABEL_251:
          *(&v99->__r_.__value_.__l.__data_ + v96) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v108 = &v143;
          }

          else
          {
            v108 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v109 = v143.__r_.__value_.__l.__size_;
          }

          v110 = std::string::append(&buf, v108, v109);
          v111 = *&v110->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          v112 = &v127;
          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v112 = v127.__r_.__value_.__r.__words[0];
          }

          v113 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v113 = __p[0];
          }

          *v138 = 136315394;
          v139 = v112;
          v140 = 2080;
          v141 = v113;
          _os_log_error_impl(&dword_296ECF000, v94, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v138, 0x16u);
          if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_244:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_263;
            }

            goto LABEL_264;
          }

LABEL_262:
          operator delete(v127.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_263:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_264:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_151;
            }

LABEL_266:
            operator delete(v143.__r_.__value_.__l.__data_);
            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }

          else
          {
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_266;
            }

LABEL_151:
            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }
        }
      }

      goto LABEL_138;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if (filtered_files)
    {
      goto LABEL_6;
    }
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 == -1)
  {
    v60 = qword_2A18A5928;
    if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    v60 = qword_2A18A5928;
    if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  v114 = a1;
  if (*(a1 + 23) < 0)
  {
    v114 = *a1;
  }

  LODWORD(v143.__r_.__value_.__l.__data_) = 136315138;
  *(v143.__r_.__value_.__r.__words + 4) = v114;
  _os_log_error_impl(&dword_296ECF000, v60, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v143, 0xCu);
LABEL_138:
  if (a3)
  {
    ctu::fs::remove_dir();
  }

  v61 = v135;
  if (v135)
  {
    v62 = v136;
    v63 = v135;
    if (v136 != v135)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      v63 = v135;
    }

    v136 = v61;
    operator delete(v63);
  }
}

void sub_296EF9214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v14 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v14 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LOWORD(c.count[0]) = 0;
    v15 = "dataIn buffer is NULL";
    p_c = &c;
    v17 = v14;
    v18 = 2;
LABEL_20:
    _os_log_error_impl(&dword_296ECF000, v17, OS_LOG_TYPE_ERROR, v15, p_c, v18);
    return;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  if (!ctu::fs::get_file_size())
  {
    return;
  }

  CC_SHA256_Init(&c);
  v10 = a1;
  if (a1[23] < 0)
  {
    v10 = *a1;
  }

  v11 = open(v10, 0);
  if (v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = read(v11, a2, a3);
      if (v13 == -1)
      {
        break;
      }

      CC_SHA256_Update(&c, a2, v13);
      v12 += v13;
      if (v12 >= 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_24;
      }
    }

    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v24 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        CC_SHA256_Final(*a4, &c);
        close(v11);
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v24 = qword_2A18A5928;
      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v25 = __error();
    v26 = strerror(*v25);
    v27 = *__error();
    v28 = *__error();
    *buf = 136315906;
    v31 = a1;
    v32 = 2080;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v36 = 1024;
    v37 = v28;
    _os_log_error_impl(&dword_296ECF000, v24, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
    goto LABEL_24;
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 == -1)
  {
    v19 = qword_2A18A5928;
    if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_17;
  }

  dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  v19 = qword_2A18A5928;
  if (os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
  {
LABEL_17:
    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v22 = *__error();
    v23 = *__error();
    *buf = 136315906;
    v31 = a1;
    v32 = 2080;
    v33 = v21;
    v34 = 1024;
    v35 = v22;
    v36 = 1024;
    v37 = v23;
    v15 = "Failed to open %s : %s (%d, 0x%x)";
    p_c = buf;
    v17 = v19;
    v18 = 34;
    goto LABEL_20;
  }
}

void sub_296EF982C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(const char *a1)
{
  v1 = a1;
  v26 = *MEMORY[0x29EDCA608];
  v15 = 65541;
  if ((a1[23] & 0x80000000) == 0)
  {
    v2 = open(a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
    {
      qword_2A18A5920 = 0;
      qword_2A18A5928 = 0;
      __cxa_guard_release(&qword_2A18A5918);
    }

    if (_MergedGlobals_0 == -1)
    {
      v12 = qword_2A18A5928;
      result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
      v12 = qword_2A18A5928;
      result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    if (v1[23] < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v17 = v1;
    v18 = 2080;
    v19 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(*a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v15, 0);
  close(v3);
  if (!v4)
  {
    return 1;
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 == -1)
  {
    v5 = qword_2A18A5928;
    result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_7:
      if (v1[23] < 0)
      {
        v1 = *v1;
      }

      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136316162;
      v17 = v1;
      v18 = 2080;
      v19 = v8;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = v4;
      v24 = 2048;
      v25 = v15;
      v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
      v10 = v5;
      v11 = 44;
LABEL_17:
      _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      return 0;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    v5 = qword_2A18A5928;
    result = os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, __darwin_time_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC), 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p, 10);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_296EFA140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_296EFA3F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v49 = a2[1];
  if (v3 == v49)
  {
    return;
  }

  v48 = &v49 + 3;
  while (1)
  {
    memset(&v51, 170, sizeof(v51));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      v51.__r_.__value_.__r.__words[2] = *(v3 + 16);
      *&v51.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      if (v6 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      memmove(v12, v13, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v14 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v15 = &v51;
      }

      else
      {
        v15 = v51.__r_.__value_.__r.__words[0];
      }

      memmove(v14, v15, size);
    }

    v14[size] = 0;
    v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v52.st_blksize = v16;
    *v52.st_qspare = v16;
    v52.st_birthtimespec = v16;
    *&v52.st_size = v16;
    v52.st_mtimespec = v16;
    v52.st_ctimespec = v16;
    *&v52.st_uid = v16;
    v52.st_atimespec = v16;
    *&v52.st_dev = v16;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (stat(v17, &v52) || (SHIBYTE(__p[2]) >= 0 ? (v19 = __p) : (v19 = __p[0]), v20 = opendir(v19), (v21 = v20) == 0))
    {
      v18 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v22 = readdir(v20);
    closedir(v21);
    v18 = HIBYTE(__p[2]);
    if (v22)
    {
      break;
    }

LABEL_35:
    if (v18 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 += 24;
    if (v3 == v49)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v23 = &v48[HIBYTE(__p[2])];
    if (*v23 == 1885626669 && v48[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v23 == 1935962413 && v23[4] == 115)
    {
      goto LABEL_80;
    }

    v26 = *v23;
    v27 = v23[4];
    if (v26 == 1634296877 && v27 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v29 = __p;
    v30 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v30 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v29 = __p[0];
  v31 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v31 - 5) != 1935962413 || *(v31 - 1) != 115))
  {
    v34 = *(v31 - 5);
    v35 = *(v31 - 1);
    if (v34 != 1634296877 || v35 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v37 = v29 + v30;
      v38 = *(v37 - 9);
      v39 = *(v37 - 1);
      if (v38 == 0x636172742D62622DLL && v39 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v41 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v51.__r_.__value_.__l.__size_;
  }

  v43 = v42 + 9;
  if (v42 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v43 < 0x17)
  {
    memset(&v52, 0, 24);
    v45 = &v52;
    HIBYTE(v52.st_gid) = v42 + 9;
    if (v42)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v43 | 7) == 0x17)
    {
      v44 = 25;
    }

    else
    {
      v44 = (v43 | 7) + 1;
    }

    v45 = operator new(v44);
    v52.st_ino = v42 + 9;
    *&v52.st_uid = v44 | 0x8000000000000000;
    *&v52.st_dev = v45;
LABEL_90:
    if (v41 >= 0)
    {
      v46 = &v51;
    }

    else
    {
      v46 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(v45, v46, v42);
  }

  strcpy(v45 + v42, "/info.txt");
  *a3 = *&v52.st_dev;
  a3[2] = *&v52.st_uid;
  if ((v18 & 0x80) == 0)
  {
    if ((v41 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v51.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v51.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_296EFA878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x29EDCA608];
  v81 = 0;
  v82 = 0;
  v83 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v79[32] = v2;
  v80 = v2;
  *v79 = v2;
  *&v79[16] = v2;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v78[1] = 0;
    v78[2] = 0;
    HIBYTE(v78[2]) = v4 + 2;
    v10 = v78 + 2;
    v78[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v78[1] = (v4 + 2);
    v78[2] = (v8 | 0x8000000000000000);
    v78[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  if (v3 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *v6;
  }

  memmove(v10, v11, v4);
LABEL_15:
  v10[v4] = 0;
  v12 = SHIBYTE(v78[2]);
  if ((SHIBYTE(v78[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v78[2]) - 21) < 2)
    {
      v13 = (SHIBYTE(v78[2]) + 2);
      v14 = v78;
      v15 = 22;
LABEL_21:
      v16 = 2 * v15;
      if (v13 > 2 * v15)
      {
        v16 = v13;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 23;
      }

      v19 = v15 == 22;
      goto LABEL_30;
    }

    v23 = v78;
    *(v78 + SHIBYTE(v78[2])) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v12 = v78[1];
  v15 = (v78[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - v78[1] >= 2)
  {
    v23 = v78[0];
    *(v78[0] + v78[1]) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v78[2]) = v24 & 0x7F;
LABEL_39:
      v22 = &v24[v23];
      goto LABEL_40;
    }

LABEL_38:
    v78[1] = v24;
    goto LABEL_39;
  }

  v13 = v78[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v78[2] & 0x7FFFFFFFFFFFFFFFLL)) < v78[1] - v15 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v78[0];
  if (v15 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v18 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v20 = operator new(v18);
  v21 = v20;
  if (v12)
  {
    memmove(v20, v14, v12);
  }

  *(v21 + v12) = 10798;
  if (!v19)
  {
    operator delete(v14);
  }

  v78[1] = v13;
  v78[2] = (v18 | 0x8000000000000000);
  v78[0] = v21;
  v22 = &v13[v21];
LABEL_40:
  *v22 = 0;
  *&__p[0].__traits_.__loc_.__locale_ = *v78;
  __p[0].__traits_.__col_ = v78[2];
  memset(v78, 0, sizeof(v78));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v79, __p, 0);
  if ((SHIBYTE(__p[0].__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v78[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0].__traits_.__loc_.__locale_);
  if (SHIBYTE(v78[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v77 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v77, *a1, *(a1 + 8));
LABEL_47:
  std::locale::locale(&v71, v79);
  v72 = *&v79[8];
  v73 = *&v79[24];
  v74 = *&v79[40];
  v75 = v80;
  if (v80)
  {
    atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
  }

  v76 = *(&v80 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v77, &v71, &v81, 0);
  v26 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    std::locale::~locale(&v71);
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v27 = 0;
      v28 = v80;
      if (!v80)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else
  {
    std::locale::~locale(&v71);
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v77.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v78, 170, sizeof(v78));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, *a1, *(a1 + 8));
  }

  else
  {
    v70 = *a1;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  v29 = v81;
  v30 = v82;
  *buf = &v67;
  *&buf[8] = 0xAAAAAAAAAAAAAA00;
  v31 = v82 - v81;
  if (v82 != v81)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v31 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v32 = operator new(v82 - v81);
    v67 = v32;
    v68 = v32;
    v69 = v32 + v31;
    v84 = v32;
    v85 = v32;
    __p[0].__traits_.__loc_.__locale_ = &v67;
    __p[0].__traits_.__ct_ = &v84;
    __p[0].__traits_.__col_ = &v85;
    *&__p[0].__flags_ = 0xAAAAAAAAAAAAAA00;
    do
    {
      while ((*(v29 + 23) & 0x80000000) == 0)
      {
        v33 = *v29;
        v32->__r_.__value_.__r.__words[2] = v29[2];
        *&v32->__r_.__value_.__l.__data_ = v33;
        ++v32;
        v29 += 3;
        v85 = v32;
        if (v29 == v30)
        {
          goto LABEL_66;
        }
      }

      std::string::__init_copy_ctor_external(v32, *v29, v29[1]);
      v29 += 3;
      v32 = ++v85;
    }

    while (v29 != v30);
LABEL_66:
    v68 = v32;
  }

  util::findBasebandLogInfoFile(&v70.__r_.__value_.__l.__data_, &v67, v78);
  v34 = v67;
  if (v67)
  {
    p_data = &v68->__r_.__value_.__l.__data_;
    v36 = v67;
    if (v68 != v67)
    {
      do
      {
        v37 = *(p_data - 1);
        p_data -= 3;
        if (v37 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v34);
      v36 = v67;
    }

    v68 = v34;
    operator delete(v36);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    v38 = SHIBYTE(v78[2]);
    if (SHIBYTE(v78[2]) >= 0)
    {
      v39 = HIBYTE(v78[2]);
    }

    else
    {
      v39 = v78[1];
    }

    if (v39)
    {
LABEL_80:
      memset(__p, 170, sizeof(__p));
      v40 = *(a1 + 23);
      if (v40 >= 0)
      {
        v41 = *(a1 + 23);
      }

      else
      {
        v41 = *(a1 + 8);
      }

      v42 = v41 + v39;
      if (v41 + v39 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v42 <= 0x16)
      {
        memset(buf, 0, 24);
        v44 = buf;
        buf[23] = v41 + v39;
        if (!v41)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if ((v42 | 7) == 0x17)
        {
          v43 = 25;
        }

        else
        {
          v43 = (v42 | 7) + 1;
        }

        v44 = operator new(v43);
        *&buf[8] = v41 + v39;
        *&buf[16] = v43 | 0x8000000000000000;
        *buf = v44;
        if (!v41)
        {
LABEL_111:
          v47 = &v44[v41];
          if (v38 >= 0)
          {
            v48 = v78;
          }

          else
          {
            v48 = v78[0];
          }

          memmove(v47, v48, v39);
          v47[v39] = 0;
          std::ifstream::basic_ifstream(__p, buf, 8);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[2].__traits_.__ct_)
            {
              goto LABEL_116;
            }
          }

          else if (__p[2].__traits_.__ct_)
          {
LABEL_116:
            std::istream::seekg();
            memset(buf, 170, 24);
            v49 = buf;
            support::fs::readCurrentLine(__p, buf);
            v50 = buf[23];
            v52 = *buf;
            v51 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v49 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v51 = buf[23];
            }

            if (v51 >= 35)
            {
              v53 = &v49[v51];
              v54 = v49;
              do
              {
                v55 = memchr(v54, 98, v51 - 34);
                if (!v55)
                {
                  break;
                }

                if (*v55 == 0x6320676F6C206262 && *(v55 + 1) == 0x6F697463656C6C6FLL && *(v55 + 2) == 0x20726F66202D206ELL && *(v55 + 3) == 0x6E67616964737973 && *(v55 + 27) == 0x65736F6E67616964)
                {
                  if (v55 != v53 && v55 - v49 != -1)
                  {
                    v27 = 1;
                    goto LABEL_148;
                  }

                  break;
                }

                v54 = v55 + 1;
                v51 = v53 - v54;
              }

              while (v53 - v54 >= 35);
            }

            v27 = 0;
LABEL_148:
            if (v50 < 0)
            {
              operator delete(v52);
            }

LABEL_150:
            __p[0].__traits_.__loc_.__locale_ = *MEMORY[0x29EDC9518];
            *(&__p[0].__traits_.__loc_.__locale_ + *(__p[0].__traits_.__loc_.__locale_ - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C268C80](&__p[0].__traits_.__col_);
            std::istream::~istream();
            MEMORY[0x29C268E60](&__p[6].__start_);
            if (SHIBYTE(v78[2]) < 0)
            {
              goto LABEL_151;
            }

            goto LABEL_103;
          }

          if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
          {
            qword_2A18A5920 = 0;
            qword_2A18A5928 = 0;
            __cxa_guard_release(&qword_2A18A5918);
          }

          if (_MergedGlobals_0 == -1)
          {
            v60 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              v27 = 0;
              goto LABEL_150;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
            v60 = qword_2A18A5928;
            if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }
          }

          v66 = v78;
          if (SHIBYTE(v78[2]) < 0)
          {
            v66 = v78[0];
          }

          *buf = 136315138;
          *&buf[4] = v66;
          _os_log_error_impl(&dword_296ECF000, v60, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_142;
        }
      }

      if (v40 >= 0)
      {
        v46 = a1;
      }

      else
      {
        v46 = *a1;
      }

      memmove(v44, v46, v41);
      goto LABEL_111;
    }
  }

  else
  {
    v38 = SHIBYTE(v78[2]);
    if (SHIBYTE(v78[2]) >= 0)
    {
      v39 = HIBYTE(v78[2]);
    }

    else
    {
      v39 = v78[1];
    }

    if (v39)
    {
      goto LABEL_80;
    }
  }

  if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
  {
    qword_2A18A5920 = 0;
    qword_2A18A5928 = 0;
    __cxa_guard_release(&qword_2A18A5918);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  v45 = qword_2A18A5928;
  v27 = 0;
  if (os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0].__traits_.__loc_.__locale_) = 136315138;
    *(&__p[0].__traits_.__loc_.__locale_ + 4) = v6;
    _os_log_impl(&dword_296ECF000, v45, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v27 = 0;
    if (SHIBYTE(v78[2]) < 0)
    {
LABEL_151:
      operator delete(v78[0]);
      v28 = v80;
      if (!v80)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else if (SHIBYTE(v78[2]) < 0)
  {
    goto LABEL_151;
  }

LABEL_103:
  v28 = v80;
  if (!v80)
  {
    goto LABEL_152;
  }

LABEL_104:
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_152:
  std::locale::~locale(v79);
  v61 = v81;
  if (v81)
  {
    v62 = v82;
    v63 = v81;
    if (v82 != v81)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      v63 = v81;
    }

    v82 = v61;
    operator delete(v63);
  }

  return v27;
}

void sub_296EFB360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_296EFB3CC(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va1, a32);
  va_start(va, a32);
  v33.__locale_ = va_arg(va1, std::locale::__imp *);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  std::vector<std::string>::~vector[abi:ne200100](&a12);
  if (SHIBYTE(a17) < 0)
  {
    operator delete(a15);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_296EFB3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  JUMPOUT(0x296EFB4A0);
}

void sub_296EFB3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296EFB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x296EFB418);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296EFB434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x296EFB3F0);
}

void sub_296EFB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](va);
  JUMPOUT(0x296EFB498);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v7 = a3;
  v9 = a6;
  v148 = *MEMORY[0x29EDCA608];
  *&a6->__r_.__value_.__l.__data_ = 0uLL;
  a6->__r_.__value_.__r.__words[2] = 0;
  memset(&v139.__flags_, 0, 24);
  memset(&v139, 170, 24);
  v10 = strlen(__s);
  v104 = v9;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v10 | 7) + 1;
    }

    p_cntrl = operator new(v18);
    v139.__end_ = v11;
    *v140 = v18 | 0x8000000000000000;
    v139.__start_.__cntrl_ = p_cntrl;
  }

  else
  {
    v140[7] = v10;
    p_cntrl = &v139.__start_.__cntrl_;
    if (!v10)
    {
      LOBYTE(v139.__start_.__cntrl_) = 0;
      end = v140[7];
      if ((v140[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_cntrl, __s, v11);
  *(&v11->__vftable + p_cntrl) = 0;
  end = v140[7];
  if ((v140[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (end - 21 < 2)
    {
      v14 = v7;
      v15 = (end + 2);
      v16 = &v139.__start_.__cntrl_;
      v17 = 22;
LABEL_15:
      v19 = 2 * v17;
      if (v15 > 2 * v17)
      {
        v19 = v15;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v17 == 22;
      goto LABEL_24;
    }

    cntrl = &v139.__start_.__cntrl_;
    *(&v139.__start_.__cntrl_ + end) = 10798;
    v27 = (end + 2);
    if ((v140[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  end = v139.__end_;
  v17 = (*v140 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 - v139.__end_ >= 2)
  {
    cntrl = v139.__start_.__cntrl_;
    *(&v139.__start_.__cntrl_->__vftable + v139.__end_) = 10798;
    v27 = (end + 2);
    if ((v140[7] & 0x80000000) == 0)
    {
LABEL_30:
      v140[7] = v27 & 0x7F;
LABEL_33:
      v25 = v27 + cntrl;
      goto LABEL_34;
    }

LABEL_32:
    v139.__end_ = v27;
    goto LABEL_33;
  }

  v15 = (&v139.__end_->__vftable + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (*v140 & 0x7FFFFFFFFFFFFFFFLL)) < (&v139.__end_->__vftable - v17 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v139.__start_.__cntrl_;
  v14 = v7;
  if (v17 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v22 = 0;
  v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v23 = operator new(v21);
  v24 = v23;
  if (end)
  {
    memmove(v23, v16, end);
  }

  *(&v24->__vftable + end) = 10798;
  if (!v22)
  {
    operator delete(v16);
  }

  v139.__end_ = v15;
  *v140 = v21 | 0x8000000000000000;
  v139.__start_.__cntrl_ = v24;
  v25 = v15 + v24;
  v7 = v14;
LABEL_34:
  *v25 = 0;
  v139.__traits_.__col_ = *v140;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v138 = v28;
  *&v139.__traits_.__loc_.__locale_ = *&v139.__start_.__cntrl_;
  *&v137[16] = v28;
  *&v137[32] = v28;
  *v137 = v28;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v137, &v139, 0);
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v135[32] = v29;
  v136 = v29;
  *v135 = v29;
  *&v135[16] = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v135, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v30 = strlen(this);
  if (v30 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  v106 = a5 == 0;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v33 = 25;
    }

    else
    {
      v33 = (v30 | 7) + 1;
    }

    v32 = operator new(v33);
    __p[1] = v31;
    v134 = v33 | 0x8000000000000000;
    __p[0] = v32;
    goto LABEL_42;
  }

  HIBYTE(v134) = v30;
  v32 = __p;
  if (v30)
  {
LABEL_42:
    memcpy(v32, this, v31);
  }

  *(v31 + v32) = 0;
  std::locale::locale(&v127, v137);
  v128 = *&v137[8];
  v129 = *&v137[24];
  v130 = *&v137[40];
  v131 = v138;
  if (v138)
  {
    atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
  }

  v132 = *(&v138 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v127, &v139.__flags_, 0);
  v35 = v131;
  if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    std::locale::~locale(&v127);
    if ((SHIBYTE(v134) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v127);
    if ((SHIBYTE(v134) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v37 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*&v139.__loop_count_ - *&v139.__flags_) >> 3));
  if (*&v139.__loop_count_ == *&v139.__flags_)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(*&v139.__flags_, *&v139.__loop_count_, v38, 1, v36);
  memset(&v126, 0, sizeof(v126));
  v39 = *&v139.__flags_;
  v103 = *&v139.__loop_count_;
  if (*&v139.__flags_ == *&v139.__loop_count_)
  {
LABEL_192:
    if (!v7)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v113, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
    }

    else
    {
      v113 = *v9;
    }

    std::locale::locale(&v107, v135);
    v108 = *&v135[8];
    v109 = *&v135[24];
    v110 = *&v135[40];
    v111 = v136;
    if (v136)
    {
      atomic_fetch_add_explicit((v136 + 8), 1uLL, memory_order_relaxed);
    }

    v112 = *(&v136 + 1);
    v91 = util::checkLogFileAge(&v113, v7, &v107);
    v92 = v111;
    if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
      std::locale::~locale(&v107);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v91)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
        {
          *v9->__r_.__value_.__l.__data_ = 0;
          v9->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v9->__r_.__value_.__s.__data_[0] = 0;
          *(&v9->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v107);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v113.__r_.__value_.__l.__data_);
    if (!v91)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v99 = v7;
  v101 = a5;
  while (1)
  {
    memset(&v125, 170, sizeof(v125));
    v105 = v39;
    v40 = &v125;
    if (*(v39 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v125, *v39, *(v39 + 1));
    }

    else
    {
      v41 = *v39;
      v125.__r_.__value_.__r.__words[2] = *(v39 + 2);
      *&v125.__r_.__value_.__l.__data_ = v41;
    }

    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v126.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v126.__r_.__value_.__l.__size_;
    }

    v43 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
    v44 = SHIBYTE(v125.__r_.__value_.__r.__words[2]);
    v45 = *&v125.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v125.__r_.__value_.__l.__size_;
        v40 = v125.__r_.__value_.__r.__words[0];
      }

      v47 = (v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v126 : v126.__r_.__value_.__r.__words[0];
      if (v46 >= size)
      {
        v68 = v40 + v46;
        v69 = v47->__r_.__value_.__s.__data_[0];
        v70 = v40;
        do
        {
          v71 = v46 - size;
          if (v71 == -1)
          {
            break;
          }

          v72 = memchr(v70, v69, v71 + 1);
          if (!v72)
          {
            break;
          }

          v73 = v72;
          if (!memcmp(v72, v47, size))
          {
            if (v73 == v68 || v73 - v40 == -1)
            {
              break;
            }

            v66 = 3;
            v9 = v104;
            if ((v44 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v70 = (v73 + 1);
          v46 = v68 - (v73 + 1);
        }

        while (v46 >= size);
      }
    }

    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v123 = v48;
    v120 = 0xAAAAAAAAAAAAAA00;
    v117[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v118 = 0;
    v119 = 0;
    v121 = 0;
    v122 = 0;
    LOBYTE(v123) = 0;
    BYTE8(v123) = 0;
    v124 = 0;
    memset(v117, 0, 41);
    if (v106)
    {
      v146 = v48;
      v143 = 0xAAAAAAAAAAAAAA00;
      *&v140[24] = v48;
      v141 = 0;
      v142 = 0;
      v144 = 0;
      v145 = 0;
      LOBYTE(v146) = 0;
      BYTE8(v146) = 0;
      v147 = 0;
      *&v139.__start_.__cntrl_ = 0uLL;
      *v140 = 0uLL;
      if (v44 >= 0)
      {
        v49 = &v125;
      }

      else
      {
        v49 = v45;
      }

      if (v44 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *(&v45 + 1);
      }

      *&v140[9] = 0uLL;
      v51 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v135, v49, (v49 + v50), &v139.__start_.__cntrl_, 0);
      v52 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v125;
      }

      else
      {
        v53 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v125.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v117, v53, (v53 + v52), &v139.__start_.__cntrl_, 0);
      v9 = v104;
      if (v139.__start_.__cntrl_)
      {
        v139.__end_ = v139.__start_.__cntrl_;
        operator delete(v139.__start_.__cntrl_);
      }

      if (v51)
      {
        p_matched = &v117[0].__begin_->matched;
        if (v117[0].__end_ == v117[0].__begin_)
        {
          p_matched = &v117[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          *&v139.__start_.__cntrl_ = 0uLL;
          *v140 = 0;
          if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v104->__r_.__value_.__l.__data_);
            *&v104->__r_.__value_.__l.__data_ = *&v139.__start_.__cntrl_;
            v104->__r_.__value_.__r.__words[2] = *v140;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v104->__r_.__value_.__l.__data_ = *&v139.__start_.__cntrl_;
          v104->__r_.__value_.__r.__words[2] = *v140;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v79 = strlen(this);
          if (v79 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v80 = v79;
          if (v79 >= 0x17)
          {
            if ((v79 | 7) == 0x17)
            {
              v83 = 25;
            }

            else
            {
              v83 = (v79 | 7) + 1;
            }

            v81 = operator new(v83);
            v115[1] = v80;
            v116 = v83 | 0x8000000000000000;
            v115[0] = v81;
          }

          else
          {
            HIBYTE(v116) = v79;
            v81 = v115;
            if (!v79)
            {
              LOBYTE(v115[0]) = 0;
              if ((SHIBYTE(v104->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v114 = *v104;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v114, v104->__r_.__value_.__l.__data_, v104->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v115, &v114);
              if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v114.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v116) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A18A5918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5918))
                    {
                      qword_2A18A5920 = 0;
                      qword_2A18A5928 = 0;
                      __cxa_guard_release(&qword_2A18A5918);
                    }

                    if (_MergedGlobals_0 == -1)
                    {
                      v85 = qword_2A18A5928;
                      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
                      v85 = qword_2A18A5928;
                      if (!os_log_type_enabled(qword_2A18A5928, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v104->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v86 = v104;
                    }

                    else
                    {
                      v86 = v104->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v139.__start_.__cntrl_) = 136315138;
                    *(&v139.__start_.__cntrl_ + 4) = v86;
                    _os_log_impl(&dword_296ECF000, v85, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &v139.__start_.__cntrl_, 0xCu);
LABEL_156:
                    if (&v126 != v104)
                    {
                      v87 = HIBYTE(v104->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v87 >= 0)
                        {
                          v89 = v104;
                        }

                        else
                        {
                          v89 = v104->__r_.__value_.__r.__words[0];
                        }

                        if (v87 >= 0)
                        {
                          v90 = HIBYTE(v104->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v90 = v104->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v126, v89, v90);
                      }

                      else
                      {
                        if ((*(&v104->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v126 = *v104;
LABEL_185:
                          v66 = 0;
                          v104->__r_.__value_.__s.__data_[0] = 0;
                          *(&v104->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v126, v104->__r_.__value_.__l.__data_, v104->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v66 = 0;
                      *v104->__r_.__value_.__l.__data_ = 0;
                      v104->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v66 = 2;
LABEL_167:
                  v88 = 1;
LABEL_168:
                  v106 = v88;
                  begin = v117[0].__begin_;
                  if (v117[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v116) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v115[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v81, this, v80);
          *(v80 + v81) = 0;
          if ((SHIBYTE(v104->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v55 = &v117[1];
        if (v117[0].__end_ != v117[0].__begin_)
        {
          v55 = v117[0].__begin_;
        }

        i = v55->first.__i_;
        p_i = &v117[0].__begin_->second.__i_;
        if (v117[0].__end_ == v117[0].__begin_)
        {
          p_i = &v117[1].__end_;
        }

        v58 = *p_i;
        v59 = *p_i - i;
        if (v59 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v59 > 0x16)
        {
          if ((v59 | 7) == 0x17)
          {
            v82 = 25;
          }

          else
          {
            v82 = (v59 | 7) + 1;
          }

          v60 = operator new(v82);
          v139.__end_ = v59;
          *v140 = v82 | 0x8000000000000000;
          v139.__start_.__cntrl_ = v60;
          if (v58 == i)
          {
LABEL_98:
            *(&v60->__vftable + v59) = 0;
            if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v140[7] = *p_i - i;
          v60 = &v139.__start_.__cntrl_;
          if (v58 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v60, i, v59);
        goto LABEL_98;
      }

LABEL_166:
      v66 = 0;
      goto LABEL_167;
    }

    v61 = v44 < 0;
    if (v44 >= 0)
    {
      v62 = &v125;
    }

    else
    {
      v62 = v45;
    }

    if (v61)
    {
      v63 = *(&v45 + 1);
    }

    else
    {
      v63 = v43;
    }

    v64 = strlen(v101);
    v9 = v104;
    if (!v64)
    {
LABEL_165:
      std::string::__assign_external(&v126, v101);
      goto LABEL_166;
    }

    v65 = v64;
    if (v63 >= v64)
    {
      v74 = v62 + v63;
      v75 = *v101;
      v76 = v62;
      do
      {
        if (v63 - v65 == -1)
        {
          break;
        }

        v77 = memchr(v76, v75, v63 - v65 + 1);
        if (!v77)
        {
          break;
        }

        v78 = v77;
        if (!memcmp(v77, v101, v65))
        {
          v88 = 0;
          if (v78 != v74)
          {
            v66 = 0;
            if (v78 - v62 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v66 = 0;
          v106 = 0;
          begin = v117[0].__begin_;
          if (v117[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v76 = (v78 + 1);
        v63 = v74 - (v78 + 1);
      }

      while (v63 >= v65);
    }

    v66 = 0;
    v106 = 0;
    begin = v117[0].__begin_;
    if (v117[0].__begin_)
    {
LABEL_169:
      v117[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v39 = v105;
    if ((*(&v125.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v66 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v39 = (v39 + 24);
    if (v39 == v103)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v125.__r_.__value_.__l.__data_);
  if (v66 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v66)
  {
    goto LABEL_57;
  }

LABEL_191:
  v7 = v99;
  if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v126.__r_.__value_.__l.__data_);
  if (v99)
  {
    goto LABEL_193;
  }

LABEL_209:
  v93 = v136;
  if (v136 && !atomic_fetch_add((v136 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v93);
    std::locale::~locale(v135);
    v94 = v138;
    if (!v138)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    if (SHIBYTE(v139.__traits_.__col_) < 0)
    {
LABEL_214:
      operator delete(v139.__traits_.__loc_.__locale_);
    }
  }

  else
  {
    std::locale::~locale(v135);
    v94 = v138;
    if (v138)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v137);
    if (SHIBYTE(v139.__traits_.__col_) < 0)
    {
      goto LABEL_214;
    }
  }

  v95 = *&v139.__flags_;
  if (*&v139.__flags_)
  {
    v96 = *&v139.__loop_count_;
    v97 = *&v139.__flags_;
    if (*&v139.__loop_count_ != *&v139.__flags_)
    {
      do
      {
        v98 = *(v96 - 1);
        v96 -= 3;
        if (v98 < 0)
        {
          operator delete(*v96);
        }
      }

      while (v96 != v95);
      v97 = *&v139.__flags_;
    }

    *&v139.__loop_count_ = v95;
    operator delete(v97);
  }
}

void sub_296EFC228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, const void **a2)
{
  v199 = a1;
  v242 = *MEMORY[0x29EDCA608];
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v221 = 0u;
  v222 = 0u;
  v223 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v219[32] = v5;
  v220 = v5;
  *v219 = v5;
  *&v219[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = v7 + 64;
  v198 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v12 = v10 + v7;
  v13 = *(v4 + 3);
  v15 = *v4;
  v14 = *(v4 + 1);
  *(v12 + 2) = *(v4 + 2);
  *(v12 + 3) = v13;
  *v12 = v15;
  *(v12 + 1) = v14;
  v12[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v17 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v18 = buf;
      v19 = 22;
LABEL_22:
      v20 = 2 * v19;
      if (v17 > 2 * v19)
      {
        v20 = v17;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v19 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v28 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v19 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v28 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v28 & 0x7F;
LABEL_40:
      v26 = v28 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v28;
    goto LABEL_40;
  }

  v17 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v19 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = buf[0].__begin_;
  if (v19 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v24 = operator new(v22);
  v25 = v24;
  if (value_high)
  {
    memmove(v24, v18, value_high);
  }

  *(&v25->first.__i_ + value_high) = 10798;
  if (!v23)
  {
    operator delete(v18);
  }

  buf[0].__end_ = v17;
  buf[0].__end_cap_.__value_ = (v22 | 0x8000000000000000);
  buf[0].__begin_ = v25;
  v26 = v17 + v25;
LABEL_41:
  *v26 = 0;
  __p.__traits_ = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v219, &__p, 0);
  if (SHIBYTE(__p.__traits_.__col_) < 0)
  {
    operator delete(__p.__traits_.__loc_.__locale_);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v217 = v29;
  v218 = v29;
  v216 = v29;
  *&v215[0].__locale_ = v29;
  v30 = *(a2 + 23);
  if (v30 >= 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = a2[1];
  }

  v32 = v31 + 64;
  if (v31 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v32 <= 0x16)
  {
    memset(buf, 0, 24);
    v34 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v31 + 64;
LABEL_54:
    if (v30 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    memmove(v34, v35, v31);
    goto LABEL_58;
  }

  if ((v32 | 7) == 0x17)
  {
    v33 = 25;
  }

  else
  {
    v33 = (v32 | 7) + 1;
  }

  v34 = operator new(v33);
  buf[0].__end_ = (v31 + 64);
  buf[0].__end_cap_.__value_ = (v33 | 0x8000000000000000);
  buf[0].__begin_ = v34;
  if (v31)
  {
    goto LABEL_54;
  }

LABEL_58:
  v36 = v34 + v31;
  v37 = *(v4 + 3);
  v39 = *v4;
  v38 = *(v4 + 1);
  *(v36 + 2) = *(v4 + 2);
  *(v36 + 3) = v37;
  *v36 = v39;
  *(v36 + 1) = v38;
  v36[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v41 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v42 = buf;
      v43 = 22;
LABEL_66:
      v44 = 2 * v43;
      if (v41 > 2 * v43)
      {
        v44 = v41;
      }

      if ((v44 | 7) == 0x17)
      {
        v45 = 25;
      }

      else
      {
        v45 = (v44 | 7) + 1;
      }

      if (v44 >= 0x17)
      {
        v46 = v45;
      }

      else
      {
        v46 = 23;
      }

      v47 = v43 == 22;
      goto LABEL_75;
    }

    v51 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v52 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v50 = v51 + v52;
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v43 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v43 - buf[0].__end_ >= 0x1D)
  {
    v51 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v52 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v41 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v43 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v42 = buf[0].__begin_;
  if (v43 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v47 = 0;
  v46 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v48 = operator new(v46);
  v49 = v48;
  if (end)
  {
    memmove(v48, v42, end);
  }

  qmemcpy(v49 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v47)
  {
    operator delete(v42);
  }

  buf[0].__end_ = v41;
  buf[0].__end_cap_.__value_ = (v46 | 0x8000000000000000);
  buf[0].__begin_ = v49;
  v50 = v41 + v49;
LABEL_83:
  *v50 = 0;
  __p.__traits_ = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v215, &__p, 0);
  if ((SHIBYTE(__p.__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v53 = v199;
    if ((*(v199 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(__p.__traits_.__loc_.__locale_);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v53 = v199;
  if ((*(v199 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v214 = *v53;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v214, v53->__r_.__value_.__l.__data_, v53->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v208, v219);
  v209 = *&v219[8];
  v210 = *&v219[24];
  v211 = *&v219[40];
  v212 = v220;
  if (v220)
  {
    atomic_fetch_add_explicit((v220 + 8), 1uLL, memory_order_relaxed);
  }

  v213 = *(&v220 + 1);
  support::fs::getFilteredFiles(&v214, &v208, &v224, 0);
  v54 = v212;
  if (v212 && !atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
    std::locale::~locale(&v208);
    if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      v56 = v224;
      v55 = v225;
      if (v224 == v225)
      {
        goto LABEL_268;
      }

      goto LABEL_99;
    }
  }

  else
  {
    std::locale::~locale(&v208);
    if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }
  }

  operator delete(v214.__r_.__value_.__l.__data_);
  v56 = v224;
  v55 = v225;
  if (v224 == v225)
  {
    goto LABEL_268;
  }

LABEL_99:
  p_end_cap = &buf[1].__end_cap_;
  v202 = &buf[1];
  v203 = &v222;
  p_end = &buf[1].__end_;
  v204 = &buf[1].__end_cap_;
  v205 = v55;
  while (2)
  {
    *&v58 = 0xAAAAAAAAAAAAAAAALL;
    *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&p_end_cap[4].__value_ = v58;
    *&p_end_cap[6].__value_ = v58;
    *&p_end_cap->__value_ = v58;
    *&p_end_cap[2].__value_ = v58;
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v240 = 0;
    v241 = 0;
    memset(buf, 0, 41);
    v231 = v58;
    v228 = 0xAAAAAAAAAAAAAA00;
    __p.__start_.__ptr_ = 0xAAAAAAAAAAAAAAAALL;
    __p.__start_.__cntrl_ = 0;
    __p.__end_ = 0;
    v229 = 0;
    v230 = 0;
    LOBYTE(v231) = 0;
    BYTE8(v231) = 0;
    v232 = 0;
    memset(&__p, 0, 40);
    second = *(&v56->matched + 7);
    if (second >= 0)
    {
      first = v56;
    }

    else
    {
      first = v56->first;
    }

    if (second < 0)
    {
      second = v56->second;
    }

    v61 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v215, first, &second[first], &__p, 0);
    v62 = *(&v56->matched + 7);
    if (v62 >= 0)
    {
      v63 = v56;
    }

    else
    {
      v63 = v56->first;
    }

    if (v62 < 0)
    {
      v62 = v56->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v63, &v62[v63], &__p, 0);
    if (__p.__traits_.__loc_.__locale_)
    {
      __p.__traits_.__ct_ = __p.__traits_.__loc_.__locale_;
      operator delete(__p.__traits_.__loc_.__locale_);
    }

    v64 = buf[0].__begin_;
    if (!v61)
    {
      goto LABEL_258;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = p_end_cap;
    }

    if (*p_matched)
    {
      v66 = v202;
      if (buf[0].__end_ != buf[0].__begin_)
      {
        v66 = buf[0].__begin_;
      }

      i = v66->first.__i_;
      p_second = &buf[0].__begin_->second;
      if (buf[0].__end_ == buf[0].__begin_)
      {
        p_second = p_end;
      }

      v69 = p_second->__i_;
      v70 = p_second->__i_ - i;
      if (v70 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v70 > 0x16)
      {
        if ((v70 | 7) == 0x17)
        {
          v158 = 25;
        }

        else
        {
          v158 = (v70 | 7) + 1;
        }

        p_dst = operator new(v158);
        *(&__dst + 1) = v70;
        v207 = v158 | 0x8000000000000000;
        *&__dst = p_dst;
        if (v69 == i)
        {
          goto LABEL_125;
        }
      }

      else
      {
        HIBYTE(v207) = LOBYTE(p_second->__i_) - i;
        p_dst = &__dst;
        if (v69 == i)
        {
LABEL_125:
          *(p_dst + v70) = 0;
          v72 = HIBYTE(v207);
          v74 = *(&__dst + 1);
          v73 = __dst;
          goto LABEL_127;
        }
      }

      memmove(p_dst, i, v70);
      goto LABEL_125;
    }

    v74 = 0;
    v73 = 0;
    v72 = 0;
    __dst = 0uLL;
    v207 = 0;
LABEL_127:
    if ((v72 & 0x80u) == 0)
    {
      v75 = &__dst;
    }

    else
    {
      v75 = v73;
    }

    if ((v72 & 0x80u) == 0)
    {
      v76 = v72;
    }

    else
    {
      v76 = v74;
    }

    if (v76 > 0x20)
    {
      if (v76 <= 0x40)
      {
        if ((v72 & 0x80u) == 0)
        {
          v73 = &__dst;
        }

        v80 = *(v73 + 3);
        v81 = *(v75 + v76 - 16);
        v82 = *v75 - 0x3C5A37A36834CED9 * (v81 + v76);
        v83 = __ROR8__(v82 + v80, 52);
        v85 = *(v73 + 1);
        v84 = *(v73 + 2);
        v86 = v82 + v85;
        v87 = __ROR8__(v86, 7);
        v88 = v86 + v84;
        v89 = v87 + __ROR8__(*v75 - 0x3C5A37A36834CED9 * (v81 + v76), 37) + v83 + __ROR8__(v88, 31);
        v90 = *(v75 + v76 - 32) + v84;
        v91 = *(v75 + v76 - 8) + v80;
        v92 = __ROR8__(v91 + v90, 52);
        v93 = __ROR8__(v90, 37);
        v94 = *(v75 + v76 - 24) + v90;
        v95 = __ROR8__(v94, 7);
        v96 = v94 + v81;
        v97 = v96 + v91;
        v98 = v88 + v80 + v93 + v95 + v92 + __ROR8__(v96, 31);
        v99 = 0x9AE16A3B2F90404FLL;
        v100 = v89 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v97 + v89) - 0x651E95C4D06FBFB1 * v98) ^ ((0xC3A5C85C97CB3127 * (v97 + v89) - 0x651E95C4D06FBFB1 * v98) >> 47));
        goto LABEL_145;
      }

      v107 = *(v75 + v76 - 48);
      v108 = *(v75 + v76 - 40);
      v109 = *(v75 + v76 - 24);
      v110 = *(v75 + v76 - 56);
      v112 = *(v75 + v76 - 16);
      v111 = *(v75 + v76 - 8);
      v113 = v110 + v112;
      v114 = 0x9DDFEA08EB382D69 * (v109 ^ ((0x9DDFEA08EB382D69 * (v109 ^ (v107 + v76))) >> 47) ^ (0x9DDFEA08EB382D69 * (v109 ^ (v107 + v76))));
      v115 = 0x9DDFEA08EB382D69 * (v114 ^ (v114 >> 47));
      v116 = *(v75 + v76 - 64) + v76;
      v117 = v107 + v110 + v116;
      v118 = __ROR8__(v117, 44) + v116;
      v119 = __ROR8__(v116 + v108 + v115, 21);
      v120 = v117 + v108;
      v121 = v118 + v119;
      v122 = v113 + *(v75 + v76 - 32) - 0x4B6D499041670D8DLL;
      v123 = v109 + v112 + v122;
      v124 = v123 + v111;
      v125 = __ROR8__(v123, 44) + v122 + __ROR8__(v122 + v108 + v111, 21);
      v126 = v75 + 2;
      v127 = *v75 - 0x4B6D499041670D8DLL * v108;
      v128 = -((v76 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v129 = *(v126 - 3);
        v130 = v127 + v120 + v113 + v129;
        v131 = v126[2];
        v132 = v126[3];
        v133 = v126[1];
        v113 = v133 + v120 - 0x4B6D499041670D8DLL * __ROR8__(v113 + v121 + v131, 42);
        v134 = v115 + v124;
        v135 = *(v126 - 2);
        v136 = *(v126 - 1);
        v137 = *(v126 - 4) - 0x4B6D499041670D8DLL * v121;
        v138 = v137 + v124 + v136;
        v139 = v137 + v129 + v135;
        v120 = v139 + v136;
        v140 = __ROR8__(v139, 44) + v137;
        v141 = (0xB492B66FBE98F273 * __ROR8__(v130, 37)) ^ v125;
        v127 = 0xB492B66FBE98F273 * __ROR8__(v134, 33);
        v121 = v140 + __ROR8__(v138 + v141, 21);
        v142 = v127 + v125 + *v126;
        v124 = v133 + v131 + v142 + v132;
        v125 = __ROR8__(v133 + v131 + v142, 44) + v142 + __ROR8__(v113 + v135 + v142 + v132, 21);
        v126 += 8;
        v115 = v141;
        v128 += 64;
      }

      while (v128);
      v143 = v127 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v125 ^ ((0x9DDFEA08EB382D69 * (v125 ^ v121)) >> 47) ^ (0x9DDFEA08EB382D69 * (v125 ^ v121)))) ^ ((0x9DDFEA08EB382D69 * (v125 ^ ((0x9DDFEA08EB382D69 * (v125 ^ v121)) >> 47) ^ (0x9DDFEA08EB382D69 * (v125 ^ v121)))) >> 47));
      v144 = 0x9DDFEA08EB382D69 * (v143 ^ (v141 - 0x4B6D499041670D8DLL * (v113 ^ (v113 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v124 ^ ((0x9DDFEA08EB382D69 * (v124 ^ v120)) >> 47) ^ (0x9DDFEA08EB382D69 * (v124 ^ v120)))) ^ ((0x9DDFEA08EB382D69 * (v124 ^ ((0x9DDFEA08EB382D69 * (v124 ^ v120)) >> 47) ^ (0x9DDFEA08EB382D69 * (v124 ^ v120)))) >> 47))));
      v79 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v143 ^ (v144 >> 47) ^ v144)) ^ ((0x9DDFEA08EB382D69 * (v143 ^ (v144 >> 47) ^ v144)) >> 47));
    }

    else
    {
      if (v76 > 0x10)
      {
        v101 = 0xB492B66FBE98F273 * *v75;
        if ((v72 & 0x80u) == 0)
        {
          v73 = &__dst;
        }

        v102 = *(v73 + 1);
        v103 = __ROR8__(0x9AE16A3B2F90404FLL * *(v75 + v76 - 8), 30) + __ROR8__(v101 - v102, 43) - 0x3C5A37A36834CED9 * *(v75 + v76 - 16);
        v104 = v101 + v76 + __ROR8__(v102 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v75 + v76 - 8);
        v105 = v103 ^ v104;
        v99 = 0x9DDFEA08EB382D69;
        v106 = v104 ^ ((0x9DDFEA08EB382D69 * v105) >> 47) ^ (0x9DDFEA08EB382D69 * v105);
        goto LABEL_144;
      }

      if (v76 >= 9)
      {
        v77 = *(v75 + v76 - 8);
        v78 = __ROR8__(v77 + v76, v76);
        v79 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ *v75)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ *v75)))) ^ ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ *v75)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ *v75)))) >> 47))) ^ v77;
        goto LABEL_149;
      }

      if (v76 >= 4)
      {
        v159 = *(v75 + v76 - 4);
        v99 = 0x9DDFEA08EB382D69;
        v160 = 0x9DDFEA08EB382D69 * ((v76 + (8 * *v75)) ^ v159);
        v106 = v159 ^ (v160 >> 47) ^ v160;
LABEL_144:
        v100 = 0x9DDFEA08EB382D69 * v106;
LABEL_145:
        v79 = (v100 ^ (v100 >> 47)) * v99;
        goto LABEL_149;
      }

      v79 = 0x9AE16A3B2F90404FLL;
      if (v76)
      {
        v179 = (0xC949D7C7509E6557 * (v76 | (4 * *(v75 + v76 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v75 | (*(v75 + (v76 >> 1)) << 8)));
        v79 = 0x9AE16A3B2F90404FLL * (v179 ^ (v179 >> 47));
      }
    }

LABEL_149:
    v145 = *(&v221 + 1);
    if (!*(&v221 + 1))
    {
      v147 = 0xAAAAAAAAAAAAAAAALL;
LABEL_191:
      v161 = operator new(0x28uLL);
      __p.__traits_.__loc_.__locale_ = v161;
      __p.__traits_.__ct_ = &v221;
      __p.__traits_.__col_ = 1;
      *v161 = 0;
      *(v161 + 1) = v79;
      *(v161 + 1) = __dst;
      *(v161 + 4) = v207;
      __dst = 0uLL;
      v207 = 0;
      v162 = (*(&v222 + 1) + 1);
      if (v145 && (*&v223 * v145) >= v162)
      {
        v79 = v147;
        goto LABEL_252;
      }

      v163 = (v145 & (v145 - 1)) != 0;
      if (v145 < 3)
      {
        v163 = 1;
      }

      v164 = v163 | (2 * v145);
      v165 = vcvtps_u32_f32(v162 / *&v223);
      if (v164 <= v165)
      {
        prime = v165;
      }

      else
      {
        prime = v164;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v145 = *(&v221 + 1);
      }

      if (prime <= v145)
      {
        if (prime >= v145)
        {
          goto LABEL_240;
        }

        v175 = vcvtps_u32_f32(*(&v222 + 1) / *&v223);
        if (v145 < 3 || (v176 = vcnt_s8(v145), v176.i16[0] = vaddlv_u8(v176), v176.u32[0] > 1uLL))
        {
          v175 = std::__next_prime(v175);
        }

        else
        {
          v177 = 1 << -__clz(v175 - 1);
          if (v175 >= 2)
          {
            v175 = v177;
          }
        }

        if (prime <= v175)
        {
          prime = v175;
        }

        if (prime >= v145)
        {
          v145 = *(&v221 + 1);
          v181 = *(&v221 + 1) - 1;
          if ((*(&v221 + 1) & (*(&v221 + 1) - 1)) != 0)
          {
LABEL_250:
            if (v79 >= v145)
            {
              v79 %= v145;
            }

LABEL_252:
            v183 = v221;
            v184 = *(v221 + 8 * v79);
            if (v184)
            {
              *v161 = *v184;
            }

            else
            {
              *v161 = v222;
              *&v222 = v161;
              *(v183 + 8 * v79) = v203;
              if (!*v161)
              {
LABEL_255:
                ++*(&v222 + 1);
                if ((v207 & 0x8000000000000000) != 0)
                {
                  goto LABEL_256;
                }

                goto LABEL_257;
              }

              v185 = *(*v161 + 8);
              if ((v145 & (v145 - 1)) != 0)
              {
                if (v185 >= v145)
                {
                  v185 %= v145;
                }

                v184 = (v183 + 8 * v185);
              }

              else
              {
                v184 = (v183 + 8 * (v185 & (v145 - 1)));
              }
            }

            *v184 = v161;
            goto LABEL_255;
          }

LABEL_241:
          v79 &= v181;
          goto LABEL_252;
        }

        if (!prime)
        {
          v180 = v221;
          *&v221 = 0;
          if (v180)
          {
            operator delete(v180);
          }

          v145 = 0;
          *(&v221 + 1) = 0;
          v181 = -1;
          goto LABEL_241;
        }
      }

      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v167 = operator new(8 * prime);
      v168 = v221;
      *&v221 = v167;
      if (v168)
      {
        operator delete(v168);
        v167 = v221;
      }

      *(&v221 + 1) = prime;
      bzero(v167, 8 * prime);
      v169 = v222;
      if (!v222)
      {
LABEL_249:
        v145 = prime;
        v181 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      v170 = *(v222 + 8);
      v171 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v172 = v170 & v171;
        *(v167 + v172) = v203;
        for (j = *v169; *v169; j = *v169)
        {
          v174 = j[1] & v171;
          if (v174 == v172)
          {
            v169 = j;
          }

          else if (*(v167 + v174))
          {
            *v169 = *j;
            *j = **(v167 + v174);
            **(v167 + v174) = j;
          }

          else
          {
            *(v167 + v174) = v169;
            v169 = j;
            v172 = v174;
          }
        }

        goto LABEL_249;
      }

      if (v170 < prime)
      {
        *(v167 + v170) = v203;
        v178 = *v169;
        if (*v169)
        {
          goto LABEL_244;
        }

        goto LABEL_239;
      }

      v170 %= prime;
      *(v167 + v170) = v203;
      v178 = *v169;
      if (!*v169)
      {
LABEL_239:
        v145 = prime;
LABEL_240:
        v181 = v145 - 1;
        if ((v145 & (v145 - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      while (1)
      {
LABEL_244:
        v182 = v178[1];
        if (v182 >= prime)
        {
          v182 %= prime;
        }

        if (v182 == v170)
        {
          goto LABEL_243;
        }

        if (*(v167 + v182))
        {
          *v169 = *v178;
          *v178 = **(v167 + v182);
          **(v167 + v182) = v178;
          v178 = v169;
LABEL_243:
          v169 = v178;
          v178 = *v178;
          if (!v178)
          {
            goto LABEL_249;
          }
        }

        else
        {
          *(v167 + v182) = v169;
          v169 = v178;
          v178 = *v178;
          v170 = v182;
          if (!v178)
          {
            goto LABEL_249;
          }
        }
      }
    }

    v146 = vcnt_s8(*(&v221 + 8));
    v146.i16[0] = vaddlv_u8(v146);
    if (v146.u32[0] > 1uLL)
    {
      v147 = v79;
      if (v79 >= *(&v221 + 1))
      {
        v147 = v79 % *(&v221 + 1);
      }
    }

    else
    {
      v147 = (*(&v221 + 1) - 1) & v79;
    }

    v148 = *(v221 + 8 * v147);
    if (!v148)
    {
      goto LABEL_191;
    }

    v149 = *v148;
    if (!*v148)
    {
      goto LABEL_191;
    }

    if (v146.u32[0] < 2uLL)
    {
      v200 = v72;
      while (1)
      {
        v154 = v149[1];
        if (v154 == v79)
        {
          v155 = *(v149 + 39);
          v156 = v155;
          if (v155 < 0)
          {
            v155 = v149[3];
          }

          if (v155 == v76)
          {
            v157 = v156 >= 0 ? (v149 + 2) : v149[2];
            if (!memcmp(v157, v75, v76))
            {
              if ((v200 & 0x80) != 0)
              {
                goto LABEL_256;
              }

              goto LABEL_257;
            }
          }
        }

        else if ((v154 & (v145 - 1)) != v147)
        {
          goto LABEL_191;
        }

        v149 = *v149;
        if (!v149)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v150 = v149[1];
      if (v150 == v79)
      {
        break;
      }

      if (v150 >= v145)
      {
        v150 %= v145;
      }

      if (v150 != v147)
      {
        goto LABEL_191;
      }

LABEL_160:
      v149 = *v149;
      if (!v149)
      {
        goto LABEL_191;
      }
    }

    v151 = *(v149 + 39);
    v152 = v151;
    if (v151 < 0)
    {
      v151 = v149[3];
    }

    if (v151 != v76)
    {
      goto LABEL_160;
    }

    v153 = v152 >= 0 ? (v149 + 2) : v149[2];
    if (memcmp(v153, v75, v76))
    {
      goto LABEL_160;
    }

    if ((v72 & 0x80) != 0)
    {
LABEL_256:
      operator delete(__dst);
    }

LABEL_257:
    v64 = buf[0].__begin_;
    p_end_cap = v204;
    v55 = v205;
LABEL_258:
    if (v64)
    {
      buf[0].__end_ = v64;
      operator delete(v64);
    }

    if (++v56 != v55)
    {
      continue;
    }

    break;
  }

LABEL_268:
  v186 = *(&v222 + 1);
  v187 = v218;
  if (v218 && !atomic_fetch_add((v218 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v187->__on_zero_shared)(v187);
    std::__shared_weak_count::__release_weak(v187);
  }

  std::locale::~locale(v215);
  v188 = v220;
  v189 = v198;
  if (v220 && !atomic_fetch_add((v220 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v188->__on_zero_shared)(v188);
    std::__shared_weak_count::__release_weak(v188);
  }

  std::locale::~locale(v219);
  operator delete(v189);
  v190 = v222;
  if (v222)
  {
    do
    {
      v197 = *v190;
      if (*(v190 + 39) < 0)
      {
        operator delete(v190[2]);
      }

      operator delete(v190);
      v190 = v197;
    }

    while (v197);
  }

  v191 = v221;
  *&v221 = 0;
  if (v191)
  {
    operator delete(v191);
  }

  v192 = v224;
  if (v224)
  {
    v193 = v225;
    v194 = v224;
    if (v225 != v224)
    {
      do
      {
        v195 = *(v193 - 1);
        v193 -= 3;
        if (v195 < 0)
        {
          operator delete(*v193);
        }
      }

      while (v193 != v192);
      v194 = v224;
    }

    v225 = v192;
    operator delete(v194);
  }

  return v186;
}