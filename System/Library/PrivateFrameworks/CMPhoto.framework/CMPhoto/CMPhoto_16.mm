void sub_1A5A050DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Date>::parse_from_string(uint64_t *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v14, a2, 8);
  memset(&__str, 0, sizeof(__str));
  std::vector<vega::Date>::__base_destruct_at_end[abi:ne200100]((a1 + 1), a1[1]);
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v5 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v5 == 32)
        {
          std::string::basic_string(&v10, &__str, 0, size - 1, &v19);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = v10;
          __str.__r_.__value_.__r.__words[2] = v11;
        }

        vega::Date::Date(&v10);
        v6 = a1[2];
        if (v6 >= a1[3])
        {
          v7 = std::vector<vega::Date>::__emplace_back_slow_path<vega::Date>((a1 + 1), &v10);
          v8 = *(&v12 + 1);
          a1[2] = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          *v6 = v10;
          v10 = 0uLL;
          v6[1] = v11;
          v11 = 0uLL;
          v6[2] = v12;
          v12 = 0uLL;
          a1[2] = (v6 + 3);
        }

        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v5 = *(&v12 + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 15);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v14[0] = *MEMORY[0x1E69E54E0];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A053E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<vega::Date>@<X0>(vega::dictionary::Page **a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Date>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A055A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Date>(uint64_t a1, vega::dictionary::Page **a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void sub_1A5A05690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::DecimalString::str(&__p, (v4 + v5));
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1)
      {
        v23 = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 8;
    }

    while (v6 < (*(a1 + 16) - v4) >> 3);
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DecimalString>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2, &v14) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        a1[2] = a1[1];
        std::vector<vega::DecimalString>::reserve(a1 + 1, v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::DecimalString>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    a1[2] = a1[1];
    return 1;
  }

  return v6;
}

void sub_1A5A05B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A05C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DecimalString>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A05DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DecimalString>::parse_from_string(void *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v20, a2, 8);
  memset(&__str, 0, sizeof(__str));
  v3 = (a1 + 1);
  a1[2] = a1[1];
  while (1)
  {
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v6 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v6 == 32)
        {
          std::string::basic_string(&v18, &__str, 0, size - 1, &v25);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v18;
        }

        vega::DecimalString::DecimalString(&v18, &__str);
        v8 = a1[2];
        v7 = a1[3];
        if (v8 >= v7)
        {
          v10 = *v3;
          v11 = v8 - *v3;
          v12 = v11 >> 3;
          v13 = (v11 >> 3) + 1;
          if (v13 >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v7 - v10;
          if (v14 >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a1 + 1), v15);
          }

          *(8 * v12) = v18.__r_.__value_.__r.__words[0];
          v9 = 8 * v12 + 8;
          memcpy(0, v10, v11);
          v16 = a1[1];
          a1[1] = 0;
          a1[2] = v9;
          a1[3] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v8 = v18.__r_.__value_.__r.__words[0];
          v9 = (v8 + 8);
        }

        a1[2] = v9;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v6 = *(&v18.__r_.__value_.__r.__words[2] + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 7);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v20[0] = *MEMORY[0x1E69E54E0];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v24);
}

void sub_1A5A06120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<vega::DecimalString>@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::operator<<(&v7, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A062D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vega::manipulators::DateTimeManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::DateTimeManipulator::~DateTimeManipulator(vega::manipulators::DateTimeManipulator *this)
{
  v1 = (this + 8);
  std::vector<vega::DateTime>::__destroy_vector::operator()[abi:ne200100](&v1);
  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v1 = (this + 8);
  std::vector<vega::DateTime>::__destroy_vector::operator()[abi:ne200100](&v1);
  CMPhotoGetEncodeAccelerationModeOverride();
  MEMORY[0x1AC552B90]();
}

void sub_1A5A0648C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DateTime>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::DateTime::str((v4 + v5), &__p);
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < -1 - 0x5555555555555555 * ((*(a1 + 16) - *(a1 + 8)) >> 4))
      {
        v23[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 48;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 4));
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DateTime>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2, &v14) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
        std::vector<vega::DateTime>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::DateTime>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
    return 1;
  }

  return v6;
}

void sub_1A5A0699C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DateTime>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A06A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::DateTimeManipulator::is_valid_for (vega::manipulators::DateTimeManipulator *this, const vega::VR *a2)
{
  vega::vr::DT(this);

  return vega::Word::operator==(a2, &word_1ED6FA79C);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::DateTime>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A06C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<vega::DateTime>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, i))
  {
    i -= 6;
  }

  *(a1 + 8) = a2;
}

uint64_t *std::vector<vega::DateTime>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::allocator<vega::Date>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A5A06E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<vega::DateTime>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::DateTime>::parse_from_string(uint64_t a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v14, a2, 8);
  memset(&__str, 0, sizeof(__str));
  std::vector<vega::DateTime>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v5 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v5 == 32)
        {
          std::string::basic_string(&v10, &__str, 0, size - 1, &v19);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = v10;
          __str.__r_.__value_.__r.__words[2] = v11;
        }

        vega::DateTime::DateTime(&v10);
        v6 = *(a1 + 16);
        if (v6 >= *(a1 + 24))
        {
          v7 = std::vector<vega::DateTime>::__emplace_back_slow_path<vega::DateTime>(a1 + 8, &v10);
          v8 = *(&v12 + 1);
          *(a1 + 16) = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          *v6 = v10;
          v10 = 0uLL;
          v6[1] = v11;
          v11 = 0uLL;
          v6[2] = v12;
          v12 = 0uLL;
          *(a1 + 16) = v6 + 3;
        }

        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v5 = *(&v12 + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 15);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v14[0] = *MEMORY[0x1E69E54E0];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A070B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::DateTime>,vega::DateTime*>(uint64_t a1, void *a2, void *a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
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
      *a4 = *v7;
      *v7 = 0;
      v7[1] = 0;
      a4[1] = *(v7 + 1);
      v7[2] = 0;
      v7[3] = 0;
      a4[2] = *(v7 + 2);
      v7[4] = 0;
      v7[5] = 0;
      v7 += 6;
      a4 += 3;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(a1, v5);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::DateTime>,vega::DateTime*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vega::DateTime>,vega::DateTime*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<vega::Date>,vega::Date*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<vega::DateTime>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vega::DateTime>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vega::DateTime>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    std::allocator_traits<std::allocator<vega::Date>>::destroy[abi:ne200100]<vega::Date,void,0>(v5, (v4 - 48));
  }
}

uint64_t std::vector<vega::DateTime>::__emplace_back_slow_path<vega::DateTime>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<vega::Date>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = *(a1 + 8);
  v9 = (48 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vega::DateTime>,vega::DateTime*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vega::DateTime>::~__split_buffer(&v14);
  return v13;
}

void sub_1A5A073AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<vega::DateTime>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vega::Json::to_json<vega::manipulators::PaddedStringManipulator<vega::DateTime>,(vega::manipulators::PaddedStringManipulator<vega::DateTime>*)0>(void *result, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4);
  if (v7 == 1)
  {

    vega::Json::value_to_json<vega::DateTime>(result, v4);
  }

  else if (v7)
  {
    if (*(result + 16) == 1)
    {
      v8 = *result;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<vega::DateTime>(result, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        if (v10 < v11 - 1 && *(result + 16) == 1)
        {
          v12 = *result;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - v4) >> 4);
        }

        ++v10;
        v9 += 6;
      }

      while (v10 < v11);
    }

    if (*(result + 16) == 1)
    {
      v13 = *result;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(result, "null");
  }
}

void vega::Json::value_to_json<vega::DateTime>(uint64_t a1, vega::dictionary::Page **a2)
{
  vega::to_json<vega::DateTime>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A075A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<vega::DateTime>@<X0>(vega::dictionary::Page **a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::DateTime>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A07740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::DateTime>(uint64_t a1, vega::dictionary::Page **a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void vega::Json::from_json<vega::manipulators::PaddedStringManipulator<vega::DateTime> &,vega::DateTime>(void *a1, uint64_t a2)
{
  v3 = std::istream::peek();
  v5 = v3;
  if (v3 == 34)
  {
    vega::Json::value_from_json<vega::DateTime>(a1, &v4);
  }

  if (v3 == 91)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
    vega::Json::value_from_json<vega::DateTime>(a1, &v4);
  }

  if (v3 != 110)
  {
    vega::Json::value_from_json<vega::DateTime>(a1, &v4);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v5);
}

void vega::Json::value_from_json<vega::DateTime>(void *a1@<X0>, vega::DateTime *a2@<X8>)
{
  vega::DateTime::DateTime(a2);
  if (std::istream::peek() == 34)
  {
    v4 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v4);
    if (v4 == 34)
    {
      vega::operator>>(a1, a2);
    }

    __assert_rtn("value_from_json", "json.h", 70, "c == ''");
  }

  vega::operator>>(a1, a2);
}

void std::__shared_ptr_emplace<vega::manipulators::FloatingPointManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::FloatingPointManipulator::~FloatingPointManipulator(vega::manipulators::FloatingPointManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (*(a1 + 16) != *(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      vega::to_string<float>(__p);
      if ((v12 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
      if (v5 < v8 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
        v8 = (*(a1 + 16) - *(a1 + 8)) >> 2;
      }

      ++v5;
      v4 += 4;
    }

    while (v5 < v8);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v9;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned int>(a2, v10 - 4);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A080B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned int>(a2, v2);
    v2 += 4;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::FloatingPointManipulator::is_valid_for (vega::manipulators::FloatingPointManipulator *this, const vega::VR *a2)
{
  vega::vr::FL(this);

  return vega::Word::operator==(a2, &word_1ED6FA79E);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<float>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(result + 8);
    if (v4 - v5 == *(result + 16) - v6)
    {
      if (v5 == v4)
      {
        return 1;
      }

      else
      {
        v7 = v5 + 4;
        do
        {
          v8 = *v6++;
          result = *(v7 - 4) == v8;
          v9 = *(v7 - 4) != v8 || v7 == v4;
          v7 += 4;
        }

        while (!v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<float>,(vega::manipulators::FixedSizeElementManipulator<float>*)0>(void *result, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = (v5 - v4) >> 2;
  if (v7 == 1)
  {

    vega::Json::value_to_json<float>(result, v4);
  }

  else if (v7)
  {
    if (*(result + 16) == 1)
    {
      v8 = *result;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<float>(result, v4 + v9);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 2;
        if (v10 < v11 - 1 && *(result + 16) == 1)
        {
          v12 = *result;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 2;
        }

        ++v10;
        v9 += 4;
      }

      while (v10 < v11);
    }

    if (*(result + 16) == 1)
    {
      v13 = *result;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(result, "null");
  }
}

void vega::Json::value_to_json<float>(uint64_t a1, uint64_t a2)
{
  vega::to_json<float>(__p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A08474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<float>@<X0>(void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5);
  std::ostream::operator<<();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v5, a2);
  v5[0] = *MEMORY[0x1E69E54D8];
  v3 = *(MEMORY[0x1E69E54D8] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v9);
}

void sub_1A5A08618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<float> &,float>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<float>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<float>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A088DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

float vega::Json::value_from_json<float>(void *a1)
{
  v4 = 0.0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552810](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552810](a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::FloatingPointDoubleManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19184E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::FloatingPointDoubleManipulator::~FloatingPointDoubleManipulator(vega::manipulators::FloatingPointDoubleManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v5 = *(a1 + 8);
  if (*(a1 + 16) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      vega::to_string<double>((v5 + v6), v4, __p);
      if ((v14 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v9 = v14;
      }

      else
      {
        v9 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v8, v9);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = *(a1 + 8);
      v10 = (*(a1 + 16) - v5) >> 3;
      if (v7 < v10 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, __p, 1);
        v5 = *(a1 + 8);
        v10 = (*(a1 + 16) - v5) >> 3;
      }

      ++v7;
      v6 += 8;
    }

    while (v7 < v10);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, a2);
  v15[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v20);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 8;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(8 * v13) = 0;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 8);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<double>(a2, v10 - 8);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 8;
  }

  while (!v19);
  return result;
}

void sub_1A5A08F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<double>(a2, v2);
    v2 += 8;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::FloatingPointDoubleManipulator::is_valid_for (vega::manipulators::FloatingPointDoubleManipulator *this, const vega::VR *a2)
{
  vega::vr::FD(this);

  return vega::Word::operator==(a2, &word_1ED6FA7A0);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<double>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v6 = *(result + 8);
    if (v4 - v5 == *(result + 16) - v6)
    {
      if (v5 == v4)
      {
        return 1;
      }

      else
      {
        v7 = v5 + 8;
        do
        {
          v8 = *v6++;
          result = *(v7 - 8) == v8;
          v9 = *(v7 - 8) != v8 || v7 == v4;
          v7 += 8;
        }

        while (!v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::dicom::RawReader::read_into<double>(vega::dicom::IOState *a1, uint64_t a2)
{
  if (vega::dicom::IOState::swap(a1))
  {
    v4 = a2 + 7;
    v5 = -8;
    while (1)
    {
      std::istream::read();
      if (!*(*(a1 + 2) + 8))
      {
        break;
      }

      --v4;
      if (__CFADD__(v5++, 1))
      {
        return 1;
      }
    }
  }

  else
  {
    std::istream::read();
    if ((*(*(a1 + 2) + 8) & 0xFFFFFFF8) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t vega::dicom::RawWriter::write_from<double>(vega::dicom::IOState *a1, uint64_t a2)
{
  if (vega::dicom::IOState::swap(a1))
  {
    v3 = a2 + 7;
    v4 = -8;
    do
    {
      std::ostream::write();
      --v3;
    }

    while (!__CFADD__(v4++, 1));
  }

  else
  {
    std::ostream::write();
  }

  return 8;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<double>,(vega::manipulators::FixedSizeElementManipulator<double>*)0>(void *result, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<double>(result, v4);
  }

  else if (v7)
  {
    if (*(result + 16) == 1)
    {
      v8 = *result;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<double>(result, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(result + 16) == 1)
        {
          v12 = *result;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(result + 16) == 1)
    {
      v13 = *result;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(result, "null");
  }
}

void vega::Json::value_to_json<double>(uint64_t a1, double *a2)
{
  vega::to_json<double>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A093E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<double>@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC5528F0](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A09588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<double> &,double>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<double>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<double>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

double vega::Json::value_from_json<double>(void *a1)
{
  v4 = 0.0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552800](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552800](a1, &v4);
  }

  return v4;
}

void sub_1A5A09984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::to_string<int>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, p_p, size);
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__l.__size_;
      }

      v7 += v10;
      if (v6 < ((*(a1 + 16) - *(a1 + 8)) >> 2) - 1)
      {
        v21 = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &v21, 1);
        ++v7;
        v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v11 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v4) >> 2);
    if (v7)
    {
      __p.__r_.__value_.__s.__data_[0] = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, a2);
  v15[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v12;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v20);
}

BOOL vega::manipulators::PaddedStringManipulator<int>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2, &v14) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        *(a1 + 16) = *(a1 + 8);
        std::vector<int>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<int>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    *(a1 + 16) = *(a1 + 8);
    return 1;
  }

  return v6;
}

void sub_1A5A09E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A09F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<int>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A0A0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::parse_from_string(void *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v21, a2, 8);
  memset(&__str, 0, sizeof(__str));
  v3 = (a1 + 1);
  a1[2] = a1[1];
  while (1)
  {
    v4 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v6 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v6 == 32)
        {
          std::string::basic_string(&v19, &__str, 0, size - 1, v26);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v19;
        }

        v7 = vega::from_string<int>(&__str);
        v9 = a1[2];
        v8 = a1[3];
        if (v9 >= v8)
        {
          v11 = *v3;
          v12 = v9 - *v3;
          v13 = v12 >> 2;
          v14 = (v12 >> 2) + 1;
          if (v14 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v15 = v8 - v11;
          if (v15 >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v16 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::allocator<int>::allocate_at_least[abi:ne200100]((a1 + 1), v16);
          }

          *(4 * v13) = v7;
          v10 = 4 * v13 + 4;
          memcpy(0, v11, v12);
          v17 = a1[1];
          a1[1] = 0;
          a1[2] = v10;
          a1[3] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v9 = v7;
          v10 = (v9 + 4);
        }

        a1[2] = v10;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v6 = *(&v19.__r_.__value_.__r.__words[2] + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 7);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v21[0] = *MEMORY[0x1E69E54E0];
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v25);
}

void sub_1A5A0A408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a20);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<int>@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552910](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0A5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  if (*(a1 + 16) != *(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      vega::to_string<vega::Word>(__p);
      if ((v12 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v6, v7);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = (*(a1 + 16) - *(a1 + 8)) >> 1;
      if (v5 < v8 - 1)
      {
        LOBYTE(__p[0]) = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
        v8 = (*(a1 + 16) - *(a1 + 8)) >> 1;
      }

      ++v5;
      v4 += 2;
    }

    while (v5 < v8);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v9;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v4 = a1 + 1;
  a1[2] = a1[1];
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v22);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 2;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = (v9 - *v4) >> 1;
      if (v11 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - *v4;
      if (v12 <= v11 + 1)
      {
        v13 = v11 + 1;
      }

      else
      {
        v13 = v12;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100](v4, v14);
      }

      *(2 * v11) = 0;
      v10 = 2 * v11 + 2;
      v15 = a1[1];
      v16 = a1[2] - v15;
      v17 = (2 * v11 - v16);
      memcpy(v17, v15, v16);
      v18 = a1[1];
      a1[1] = v17;
      a1[2] = v10;
      a1[3] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 1);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned short>(a2, v10 - 2);
    if (result)
    {
      v20 = v7 >= a3;
    }

    else
    {
      v20 = 1;
    }

    v7 += 2;
  }

  while (!v20);
  return result;
}

void sub_1A5A0AA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned short>(a2, v2);
    v2 += 2;
  }

  while (v2 != v3);
  return v5;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<vega::Word>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v6 = a1 + 8;
    v4 = *(a1 + 8);
    v5 = *(v6 + 8);
    v7 = *(result + 8);
    if (v5 - v4 == *(result + 16) - v7)
    {
      if (v4 == v5)
      {
        return 1;
      }

      else
      {
        do
        {
          result = vega::Word::operator==(v4, v7);
          if (!result)
          {
            break;
          }

          ++v4;
          ++v7;
        }

        while (v4 != v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::to_json<vega::Word>@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0AD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vega::manipulators::OtherFloatManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19188E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::OtherFloatManipulator::~OtherFloatManipulator(vega::manipulators::OtherFloatManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::OtherFloatManipulator::is_valid_for (vega::manipulators::OtherFloatManipulator *this, const vega::VR *a2)
{
  vega::vr::OF(this);

  return vega::Word::operator==(a2, &word_1ED6FA7AC);
}

void std::__shared_ptr_emplace<vega::manipulators::OtherDoubleManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19189C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::OtherDoubleManipulator::~OtherDoubleManipulator(vega::manipulators::OtherDoubleManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::OtherDoubleManipulator::is_valid_for (vega::manipulators::OtherDoubleManipulator *this, const vega::VR *a2)
{
  vega::vr::OD(this);

  return vega::Word::operator==(a2, &word_1ED6FA7AE);
}

void std::__shared_ptr_emplace<vega::manipulators::ShortStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::ShortStringManipulator::~ShortStringManipulator(vega::manipulators::ShortStringManipulator *this)
{
  v1 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v1 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
  CMPhotoGetEncodeAccelerationModeOverride();
  MEMORY[0x1AC552B90]();
}

BOOL vega::manipulators::ShortStringManipulator::is_valid_for (vega::manipulators::ShortStringManipulator *this, const vega::VR *a2)
{
  vega::vr::SH(this);

  return vega::Word::operator==(a2, &word_1ED6FA7B2);
}

void std::__shared_ptr_emplace<vega::manipulators::SignedLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::SignedLongManipulator::~SignedLongManipulator(vega::manipulators::SignedLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<int>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<int>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 2;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 2;
      }

      ++v6;
      v5 += 4;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<int>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned int>(a2, v10 - 4);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A0B72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<int>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned int>(a2, v2);
    v2 += 4;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::SignedLongManipulator::is_valid_for (vega::manipulators::SignedLongManipulator *this, const vega::VR *a2)
{
  vega::vr::SL(this);

  return vega::Word::operator==(a2, &word_1ED6FA7B4);
}

void *vega::manipulators::FixedSizeElementManipulator<int>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = v4[1];
    if (v6 == v4[2] - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<int> &,int>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<int>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 4;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<int>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 4;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0BBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<short>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 1;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 1;
      }

      ++v6;
      v5 += 2;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v4 = (a1 + 1);
  a1[2] = a1[1];
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 2;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v4;
      v12 = v9 - *v4;
      v13 = v12 >> 1;
      if (v12 >> 1 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v11;
      if (v14 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100](v4, v16);
      }

      *(2 * v13) = 0;
      v10 = 2 * v13 + 2;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 2);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned short>(a2, v10 - 2);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 2;
  }

  while (!v19);
  return result;
}

void sub_1A5A0C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<short>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned short>(a2, v2);
    v2 += 2;
  }

  while (v2 != v3);
  return v5;
}

void *vega::manipulators::FixedSizeElementManipulator<short>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = v4[1];
    if (v6 == v4[2] - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::to_json<short>@<X0>(__int16 *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552910](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_1A5A0C3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vega::Time::str(&__p, (v4 + v5));
      if ((v16 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v9);
      v10 = v16;
      v11 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      v7 += v10;
      if (v6 < -1 - 0x5555555555555555 * ((*(a1 + 16) - *(a1 + 8)) >> 4))
      {
        v23[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v23, 1);
        ++v7;
        v11 = v16;
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }

      ++v6;
      v4 = *(a1 + 8);
      v5 += 48;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 4));
    if (v7)
    {
      LOBYTE(__p) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, a2);
  v17[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v12;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v22);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Time>::read_from(uint64_t a1, vega::dicom::IOState *a2, unint64_t a3)
{
  if (a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v6 = 0;
    v7 = 0;
    v14 = 0;
    v8 = 1;
    v9 = a3;
    while ((vega::dicom::RawReader::read_into<vega::Byte>(a2, &v14) & 1) != 0)
    {
      v10 = v14;
      __p.__r_.__value_.__s.__data_[0] = v14;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &__p, 1);
      if (v10 == 92)
      {
        ++v7;
      }

      v6 = v8++ >= a3;
      if (!--v9)
      {
        std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
        std::vector<vega::Time>::reserve((a1 + 8), v7 + 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, &__p);
        vega::manipulators::PaddedStringManipulator<vega::Time>::parse_from_string(a1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = 1;
        break;
      }
    }

    v15[0] = *MEMORY[0x1E69E54D8];
    v11 = *(MEMORY[0x1E69E54D8] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v16 = v11;
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x1AC552AF0](&v20);
  }

  else
  {
    std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
    return 1;
  }

  return v6;
}

void sub_1A5A0C8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  (*(*a1 + 24))(__p);
  v3 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  v5 = vega::dicom::RawWriter::write_from<std::__wrap_iter<char *>>(a2, v4, v4 + v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1A5A0C994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::manipulators::PaddedStringManipulator<vega::Time>::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  (*(*a1 + 24))(v15, a1);
  (*(*v4 + 24))(__p, v4);
  v5 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15[1];
  }

  v7 = v14;
  v8 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v7 = __p[1];
  }

  if (v6 == v7)
  {
    if ((v16 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  operator delete(__p[0]);
  v5 = v16;
LABEL_19:
  if ((v5 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v11;
}

void sub_1A5A0CB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::manipulators::PaddedStringManipulator<vega::Time>::parse_from_string(uint64_t a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v14, a2, 8);
  memset(&__str, 0, sizeof(__str));
  std::vector<vega::Time>::__base_destruct_at_end[abi:ne200100](a1 + 8, *(a1 + 8));
  while (1)
  {
    v3 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, &__str, 0x5Cu);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v5 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
LABEL_8:
        if (v5 == 32)
        {
          std::string::basic_string(&v10, &__str, 0, size - 1, &v19);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__str.__r_.__value_.__l.__data_ = v10;
          __str.__r_.__value_.__r.__words[2] = v11;
        }

        vega::Time::Time(&v10);
        v6 = *(a1 + 16);
        if (v6 >= *(a1 + 24))
        {
          v7 = std::vector<vega::Time>::__emplace_back_slow_path<vega::Time>(a1 + 8, &v10);
          v8 = *(&v12 + 1);
          *(a1 + 16) = v7;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        else
        {
          *v6 = v10;
          v10 = 0uLL;
          v6[1] = v11;
          v11 = 0uLL;
          v6[2] = v12;
          v12 = 0uLL;
          *(a1 + 16) = v6 + 3;
        }

        if (*(&v11 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
        }

        if (*(&v10 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        }
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      v5 = *(&v12 + HIBYTE(__str.__r_.__value_.__r.__words[2]) + 15);
      goto LABEL_8;
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v14[0] = *MEMORY[0x1E69E54E0];
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::istream::~istream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A0CE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<vega::Time>@<X0>(vega::dictionary::Page **a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Time>(v6, a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v6[2] = v4;
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v10);
}

void sub_1A5A0CFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t vega::to_json<std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>,vega::Time>(uint64_t a1, vega::dictionary::Page **a2)
{
  v7 = 34;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v7, 1);
  v5 = vega::operator<<(v4, a2);
  v8 = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v8, 1);
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::UnsignedLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnsignedLongManipulator::~UnsignedLongManipulator(vega::manipulators::UnsignedLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<unsigned int>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 2;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 2;
      }

      ++v6;
      v5 += 4;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 4;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(4 * v13) = 0;
      v10 = 4 * v13 + 4;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 4);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned int>(a2, v10 - 4);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 4;
  }

  while (!v19);
  return result;
}

void sub_1A5A0D5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned int>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned int>(a2, v2);
    v2 += 4;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::UnsignedLongManipulator::is_valid_for (vega::manipulators::UnsignedLongManipulator *this, const vega::VR *a2)
{
  vega::vr::UL(this);

  return vega::Word::operator==(a2, &word_1ED6FA7BE);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned int>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = v4[1];
    if (v6 == v4[2] - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<unsigned int>,(vega::manipulators::FixedSizeElementManipulator<unsigned int>*)0>(void *result, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<unsigned int>(result, v4);
  }

  else if (v7)
  {
    if (*(result + 16) == 1)
    {
      v8 = *result;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<unsigned int>(result, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 2;
        if (v10 < v11 - 1 && *(result + 16) == 1)
        {
          v12 = *result;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 2;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(result + 16) == 1)
    {
      v13 = *result;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(result, "null");
  }
}

void vega::Json::value_to_json<unsigned int>(uint64_t a1, unsigned int *a2)
{
  vega::to_json<unsigned int>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A0D978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<unsigned int>@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<unsigned int> &,unsigned int>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<unsigned int>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 2;
      v27 = v26 + 1;
      if ((v26 + 1) >> 62)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 1 > v27)
      {
        v27 = v28 >> 1;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
      v30 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 2;
      v32 = (4 * v26);
      v33 = (4 * v26 - 4 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 4;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<unsigned int>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<int>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 2;
      v20 = (4 * v15);
      v21 = (4 * v15 - 4 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 4;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0DDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<unsigned int>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552830](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552830](a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::UnknownManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1918FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnknownManipulator::~UnknownManipulator(vega::manipulators::UnknownManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::UnknownManipulator::is_valid_for (vega::manipulators::UnknownManipulator *this, const vega::VR *a2)
{
  vega::vr::UN(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C0);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<unsigned short>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 1;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 1;
      }

      ++v6;
      v5 += 2;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v4 = (a1 + 1);
  a1[2] = a1[1];
  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 2;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v4;
      v12 = v9 - *v4;
      v13 = v12 >> 1;
      if (v12 >> 1 <= -2)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v8 - v11;
      if (v14 <= v13 + 1)
      {
        v15 = v13 + 1;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::allocator<unsigned short>::allocate_at_least[abi:ne200100](v4, v16);
      }

      *(2 * v13) = 0;
      v10 = 2 * v13 + 2;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 2);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<unsigned short>(a2, v10 - 2);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 2;
  }

  while (!v19);
  return result;
}

void sub_1A5A0E450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned short>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<unsigned short>(a2, v2);
    v2 += 2;
  }

  while (v2 != v3);
  return v5;
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned short>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = v4[1];
    if (v6 == v4[2] - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t vega::to_json<unsigned short>@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552920](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0E768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN4vega12manipulators24UnlimitedTextManipulatorENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1919148;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  vega::manipulators::SingleStringManipulator::SingleStringManipulator((a1 + 24));
  *(a1 + 24) = &unk_1F1919198;
  return a1;
}

void std::__shared_ptr_emplace<vega::manipulators::UnlimitedTextManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnlimitedTextManipulator::~UnlimitedTextManipulator(void **this)
{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  *this = &unk_1F1919888;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::UnlimitedTextManipulator::is_valid_for (vega::manipulators::UnlimitedTextManipulator *this, const vega::VR *a2)
{
  vega::vr::UT(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C4);
}

void std::__shared_ptr_emplace<vega::manipulators::SignedVeryLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::SignedVeryLongManipulator::~SignedVeryLongManipulator(vega::manipulators::SignedVeryLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<long long>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<long long>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 3;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 3;
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<long long>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 8;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(8 * v13) = 0;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 8);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<double>(a2, v10 - 8);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 8;
  }

  while (!v19);
  return result;
}

void sub_1A5A0EF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<long long>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<double>(a2, v2);
    v2 += 8;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::SignedVeryLongManipulator::is_valid_for (vega::manipulators::SignedVeryLongManipulator *this, const vega::VR *a2)
{
  vega::vr::SV(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C6);
}

void *vega::manipulators::FixedSizeElementManipulator<long long>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = v4[1];
    if (v6 == v4[2] - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<long long>,(vega::manipulators::FixedSizeElementManipulator<long long>*)0>(void *result, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<long long>(result, v4);
  }

  else if (v7)
  {
    if (*(result + 16) == 1)
    {
      v8 = *result;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<long long>(result, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(result + 16) == 1)
        {
          v12 = *result;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(result + 16) == 1)
    {
      v13 = *result;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(result, "null");
  }
}

void vega::Json::value_to_json<long long>(uint64_t a1, void *a2)
{
  vega::to_json<long long>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A0F328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<long long>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552930](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A0F4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<long long> &,long long>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<long long>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<long long>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A0F788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<long long>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552860](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552860](a1, &v4);
  }

  return v4;
}

void std::__shared_ptr_emplace<vega::manipulators::UnsignedVeryLongManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19192E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::UnsignedVeryLongManipulator::~UnsignedVeryLongManipulator(vega::manipulators::UnsignedVeryLongManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned long long>::str@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  v4 = *(a1 + 8);
  if (*(a1 + 16) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      vega::to_string<unsigned long long>((v4 + v5), &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = *(a1 + 8);
      v9 = (*(a1 + 16) - v4) >> 3;
      if (v6 < v9 - 1)
      {
        __p.__r_.__value_.__s.__data_[0] = 92;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, &__p, 1);
        v4 = *(a1 + 8);
        v9 = (*(a1 + 16) - v4) >> 3;
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < v9);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v13, a2);
  v13[0] = *MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v10;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned long long>::read_from(void *a1, vega::dicom::IOState *a2, unint64_t a3)
{
  v3 = (a1 + 1);
  a1[2] = a1[1];
  if ((a3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Incompatible num_bytes for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v21);
    exception->__vftable = &unk_1F1917110;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 8;
  do
  {
    v9 = a1[2];
    v8 = a1[3];
    if (v9 >= v8)
    {
      v11 = *v3;
      v12 = v9 - *v3;
      v13 = v12 >> 3;
      v14 = (v12 >> 3) + 1;
      if (v14 >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = v8 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100](v3, v16);
      }

      *(8 * v13) = 0;
      v10 = 8 * v13 + 8;
      memcpy(0, v11, v12);
      v17 = a1[1];
      a1[1] = 0;
      a1[2] = v10;
      a1[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v9 = 0;
      v10 = (v9 + 8);
    }

    a1[2] = v10;
    result = vega::dicom::RawReader::read_into<double>(a2, v10 - 8);
    if (result)
    {
      v19 = v7 >= a3;
    }

    else
    {
      v19 = 1;
    }

    v7 += 8;
  }

  while (!v19);
  return result;
}

void sub_1A5A0FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t vega::manipulators::FixedSizeElementManipulator<unsigned long long>::write_to(uint64_t a1, vega::dicom::IOState *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v5 += vega::dicom::RawWriter::write_from<double>(a2, v2);
    v2 += 8;
  }

  while (v2 != v3);
  return v5;
}

BOOL vega::manipulators::UnsignedVeryLongManipulator::is_valid_for (vega::manipulators::UnsignedVeryLongManipulator *this, const vega::VR *a2)
{
  vega::vr::UV(this);

  return vega::Word::operator==(a2, &word_1ED6FA7C8);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned long long>::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16) - v5;
    v7 = v4[1];
    if (v6 == v4[2] - v7)
    {
      return (memcmp(v5, v7, v6) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void vega::Json::to_json<vega::manipulators::FixedSizeElementManipulator<unsigned long long>,(vega::manipulators::FixedSizeElementManipulator<unsigned long long>*)0>(void *result, uint64_t a2)
{
  v6 = a2 + 8;
  v4 = *(a2 + 8);
  v5 = *(v6 + 8);
  v7 = v5 - v4;
  if (v7 == 1)
  {

    vega::Json::value_to_json<unsigned long long>(result, v4);
  }

  else if (v7)
  {
    if (*(result + 16) == 1)
    {
      v8 = *result;
      v14 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v14, 1);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v5 != v4)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        vega::Json::value_to_json<unsigned long long>(result, &v4[v9]);
        v4 = *(a2 + 8);
        v11 = (*(a2 + 16) - v4) >> 3;
        if (v10 < v11 - 1 && *(result + 16) == 1)
        {
          v12 = *result;
          v16 = 44;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v16, 1);
          v4 = *(a2 + 8);
          v11 = (*(a2 + 16) - v4) >> 3;
        }

        ++v10;
        ++v9;
      }

      while (v10 < v11);
    }

    if (*(result + 16) == 1)
    {
      v13 = *result;
      v15 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v15, 1);
    }
  }

  else
  {

    vega::operator<<<char [18]>(result, "null");
  }
}

void vega::Json::value_to_json<unsigned long long>(uint64_t a1, void *a2)
{
  vega::to_json<unsigned long long>(a2, __p);
  vega::operator<<<std::string>(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A5A1016C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::to_json<unsigned long long>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  MEMORY[0x1AC552940](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v11);
}

void sub_1A5A10310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void vega::Json::from_json<vega::manipulators::FixedSizeElementManipulator<unsigned long long> &,unsigned long long>(void *a1, void *a2)
{
  v4 = std::istream::peek();
  v36 = v4;
  if (v4 == 34)
  {
LABEL_5:
    v5 = vega::Json::value_from_json<unsigned long long>(a1);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v24 = a2[1];
      v25 = v7 - v24;
      v26 = (v7 - v24) >> 3;
      v27 = v26 + 1;
      if ((v26 + 1) >> 61)
      {
LABEL_34:
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v28 = v6 - v24;
      if (v28 >> 2 > v27)
      {
        v27 = v28 >> 2;
      }

      v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
      v30 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v27;
      }

      if (v30)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v30);
      }

      v31 = (v7 - v24) >> 3;
      v32 = (8 * v26);
      v33 = (8 * v26 - 8 * v31);
      *v32 = v5;
      v8 = v32 + 1;
      memcpy(v33, v24, v25);
      v34 = a2[1];
      a2[1] = v33;
      a2[2] = v8;
      a2[3] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
    return;
  }

  if (v4 != 91)
  {
    if (v4 == 110)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
      return;
    }

    goto LABEL_5;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  do
  {
    v9 = vega::Json::value_from_json<unsigned long long>(a1);
    v11 = a2[2];
    v10 = a2[3];
    if (v11 >= v10)
    {
      v13 = a2[1];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_34;
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((a2 + 1), v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = v9;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = a2[1];
      a2[1] = v21;
      a2[2] = v12;
      a2[3] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
    }

    a2[2] = v12;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v36);
  }

  while (v36 == 44);
  if (v36 != 93)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v35, "Invalid JSON: No ending ] in list");
    std::runtime_error::runtime_error(exception, &v35);
    exception->__vftable = &unk_1F1917110;
  }
}

void sub_1A5A105CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t vega::Json::value_from_json<unsigned long long>(void *a1)
{
  v4 = 0;
  if (std::istream::peek() == 34)
  {
    v3 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }

    MEMORY[0x1AC552870](a1, &v4);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v3);
    if (v3 != 34)
    {
      vega::Json::value_from_json<int>();
    }
  }

  else
  {
    MEMORY[0x1AC552870](a1, &v4);
  }

  return v4;
}

void vega::vr::AE()
{
  if (__cxa_guard_acquire(byte_1ED6FA7D0))
  {
    _MergedGlobals_15 = 17729;

    __cxa_guard_release(byte_1ED6FA7D0);
  }
}

void vega::vr::AS()
{
  if (__cxa_guard_acquire(byte_1ED6FA7D8))
  {
    word_1ED6FA792 = 21313;

    __cxa_guard_release(byte_1ED6FA7D8);
  }
}

void vega::vr::AT()
{
  if (__cxa_guard_acquire(byte_1ED6FA7E0))
  {
    word_1ED6FA794 = 21569;

    __cxa_guard_release(byte_1ED6FA7E0);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED6FA6F0))
  {
    word_1ED6FA6A0 = 21569;

    __cxa_guard_release(byte_1ED6FA6F0);
  }
}

void vega::vr::CS()
{
  if (__cxa_guard_acquire(byte_1ED6FA7E8))
  {
    word_1ED6FA796 = 21315;

    __cxa_guard_release(byte_1ED6FA7E8);
  }
}

void vega::vr::DA()
{
  if (__cxa_guard_acquire(byte_1ED6FA7F0))
  {
    word_1ED6FA798 = 16708;

    __cxa_guard_release(byte_1ED6FA7F0);
  }
}

void vega::vr::DS()
{
  if (__cxa_guard_acquire(byte_1ED6FA7F8))
  {
    word_1ED6FA79A = 21316;

    __cxa_guard_release(byte_1ED6FA7F8);
  }
}

void vega::vr::DT()
{
  if (__cxa_guard_acquire(byte_1ED6FA800))
  {
    word_1ED6FA79C = 21572;

    __cxa_guard_release(byte_1ED6FA800);
  }
}

void vega::vr::FL()
{
  if (__cxa_guard_acquire(byte_1ED6FA808))
  {
    word_1ED6FA79E = 19526;

    __cxa_guard_release(byte_1ED6FA808);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED6FA6E0))
  {
    word_1ED6FA69C = 19526;

    __cxa_guard_release(byte_1ED6FA6E0);
  }
}

void vega::vr::FD()
{
  if (__cxa_guard_acquire(byte_1ED6FA810))
  {
    word_1ED6FA7A0 = 17478;

    __cxa_guard_release(byte_1ED6FA810);
  }
}

{
  if (__cxa_guard_acquire(byte_1ED6FA6E8))
  {
    word_1ED6FA69E = 17478;

    __cxa_guard_release(byte_1ED6FA6E8);
  }
}

void vega::vr::IS()
{
  if (__cxa_guard_acquire(byte_1ED6FA818))
  {
    word_1ED6FA7A2 = 21321;

    __cxa_guard_release(byte_1ED6FA818);
  }
}

void vega::vr::LO()
{
  if (__cxa_guard_acquire(byte_1ED6FA820))
  {
    word_1ED6FA7A4 = 20300;

    __cxa_guard_release(byte_1ED6FA820);
  }
}

void vega::vr::LT()
{
  if (__cxa_guard_acquire(byte_1ED6FA828))
  {
    word_1ED6FA7A6 = 21580;

    __cxa_guard_release(byte_1ED6FA828);
  }
}

void vega::vr::OF()
{
  if (__cxa_guard_acquire(byte_1ED6FA840))
  {
    word_1ED6FA7AC = 17999;

    __cxa_guard_release(byte_1ED6FA840);
  }
}

void vega::vr::OD()
{
  if (__cxa_guard_acquire(byte_1ED6FA848))
  {
    word_1ED6FA7AE = 17487;

    __cxa_guard_release(byte_1ED6FA848);
  }
}

void vega::vr::PN()
{
  if (__cxa_guard_acquire(byte_1ED6FA850))
  {
    word_1ED6FA7B0 = 20048;

    __cxa_guard_release(byte_1ED6FA850);
  }
}

void vega::vr::SH()
{
  if (__cxa_guard_acquire(byte_1ED6FA858))
  {
    word_1ED6FA7B2 = 18515;

    __cxa_guard_release(byte_1ED6FA858);
  }
}

void vega::vr::SL()
{
  if (__cxa_guard_acquire(byte_1ED6FA860))
  {
    word_1ED6FA7B4 = 19539;

    __cxa_guard_release(byte_1ED6FA860);
  }
}

void vega::vr::ST()
{
  if (__cxa_guard_acquire(byte_1ED6FA870))
  {
    word_1ED6FA7B8 = 21587;

    __cxa_guard_release(byte_1ED6FA870);
  }
}

void vega::vr::TM()
{
  if (__cxa_guard_acquire(byte_1ED6FA878))
  {
    word_1ED6FA7BA = 19796;

    __cxa_guard_release(byte_1ED6FA878);
  }
}

void vega::vr::UI()
{
  if (__cxa_guard_acquire(byte_1ED6FA880))
  {
    word_1ED6FA7BC = 18773;

    __cxa_guard_release(byte_1ED6FA880);
  }
}

void vega::vr::UL()
{
  if (__cxa_guard_acquire(byte_1ED6FA888))
  {
    word_1ED6FA7BE = 19541;

    __cxa_guard_release(byte_1ED6FA888);
  }
}

void vega::vr::UN()
{
  if (__cxa_guard_acquire(byte_1ED6FA890))
  {
    word_1ED6FA7C0 = 20053;

    __cxa_guard_release(byte_1ED6FA890);
  }
}

void vega::vr::UT()
{
  if (__cxa_guard_acquire(byte_1ED6FA8A0))
  {
    word_1ED6FA7C4 = 21589;

    __cxa_guard_release(byte_1ED6FA8A0);
  }
}

void vega::vr::SV()
{
  if (__cxa_guard_acquire(byte_1ED6FA8A8))
  {
    word_1ED6FA7C6 = 22099;

    __cxa_guard_release(byte_1ED6FA8A8);
  }
}

void vega::vr::UV()
{
  if (__cxa_guard_acquire(byte_1ED6FA8B0))
  {
    word_1ED6FA7C8 = 22101;

    __cxa_guard_release(byte_1ED6FA8B0);
  }
}

void vega::manipulators::PixelDataManipulator::allows_vr()
{
  if (__cxa_guard_acquire(byte_1ED6FA8C0))
  {
    word_1ED6FA7CA = 30831;
    qword_1ED6FA8B8 = &word_1ED6FA7CA;

    __cxa_guard_release(byte_1ED6FA8C0);
  }
}

uint64_t vega::dicom::RawReader::RawReader(uint64_t a1, uint64_t *a2)
{
  vega::dicom::IOState::IOState(a1);
  v4 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  std::istream::tellg();
  std::istream::seekg();
  std::istream::tellg();
  *(a1 + 128) = v12;
  *(a1 + 144) = v13;
  *(a1 + 160) = v14;
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 96) = v10;
  *(a1 + 112) = v11;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  std::istream::seekg();
  return a1;
}

void sub_1A5A11094(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 vega::dicom::RawReader::eof_pos@<Q0>(uint64_t *__return_ptr a1@<X8>, vega::dicom::RawReader *this@<X0>)
{
  v2 = *(this + 9);
  *(a1 + 6) = *(this + 8);
  *(a1 + 7) = v2;
  a1[16] = *(this + 20);
  v3 = *(this + 5);
  *(a1 + 2) = *(this + 4);
  *(a1 + 3) = v3;
  v4 = *(this + 7);
  *(a1 + 4) = *(this + 6);
  *(a1 + 5) = v4;
  result = *(this + 3);
  *a1 = *(this + 2);
  *(a1 + 1) = result;
  return result;
}

BOOL vega::dicom::RawReader::eof(vega::dicom::RawReader *this)
{
  std::istream::tellg();
  if (v4 < 0)
  {
    return 1;
  }

  std::istream::tellg();
  return v3 >= *(this + 20);
}

uint64_t vega::dicom::RawReader::read_into<vega::Tag>(vega::dicom::IOState *a1, vega::Tag *a2)
{
  CMPhotoGetEncodeAccelerationModeOverride();
  result = vega::dicom::RawReader::read_into<unsigned short>(a1, v4);
  if (result)
  {
    v6 = vega::Tag::element(a2);

    return vega::dicom::RawReader::read_into<unsigned short>(a1, v6);
  }

  return result;
}

uint64_t vega::dicom::RawReader::read_into<vega::VR>(vega::dicom::IOState *a1, uint64_t a2)
{
  result = vega::dicom::RawReader::read_into<vega::Byte>(a1, a2);
  if (result)
  {

    return vega::dicom::RawReader::read_into<vega::Byte>(a1, a2 + 1);
  }

  return result;
}

uint64_t vega::Json::value_from_json<std::string>@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 & 0xFFFFEFFF;
  v24 = 0;
  v6 = MEMORY[0x1E69E9830];
  do
  {
    v7 = std::istream::peek();
    if (v7 <= 0x7F)
    {
      v8 = *(v6 + 4 * v7 + 60) & 0x4000;
    }

    else
    {
      v8 = __maskrune(v7, 0x4000uLL);
    }

    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v24);
  }

  while (v8);
  if (v24 != 34)
  {
    vega::Json::value_from_json<std::string>();
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  while ((*(a1 + *(*a1 - 24) + 32) & 2) == 0)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v24);
    if (v24 == 92)
    {
      std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, &v24);
      if (v24 <= 0x65u)
      {
        switch(v24)
        {
          case '""':
            v25[0] = 34;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
            break;
          case '\\':
            v25[0] = 92;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
            break;
          case 'b':
            v25[0] = 8;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
            break;
        }
      }

      else if (v24 > 0x71u)
      {
        if (v24 == 114)
        {
          v25[0] = 13;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
        }

        else if (v24 == 116)
        {
          v25[0] = 9;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
        }
      }

      else if (v24 == 102)
      {
        v25[0] = 12;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
      }

      else if (v24 == 110)
      {
        v25[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
      }
    }

    else
    {
      if (v24 == 34)
      {
        break;
      }

      v25[0] = v24;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v25, 1);
    }
  }

  *(&v14[1] + *(v14[0] - 24)) = v5;
  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_42;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_42:
  a2[v9] = 0;
  v14[0] = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v12;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v23);
}

void sub_1A5A116C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC552AF0](&a26);
  _Unwind_Resume(a1);
}

void *vega::operator>>(void *a1, _BYTE *a2)
{
  if (std::istream::peek() == 45)
  {
    std::operator>>[abi:ne200100]<char,std::char_traits<char>>(a1, a2);
  }

  else
  {
    v5 = 0;
    MEMORY[0x1AC552830](a1, &v5);
    *a2 = v5;
  }

  return a1;
}

void *vega::operator<<(void *a1, uint64_t a2)
{
  vega::to_string<vega::Word>(__p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A11818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::operator>>(uint64_t a1, _WORD *a2)
{
  if (std::istream::peek() == 45)
  {
    MEMORY[0x1AC552840](a1, a2);
  }

  else
  {
    v5 = 0;
    MEMORY[0x1AC552830](a1, &v5);
    *a2 = v5;
  }

  return a1;
}

void *vega::operator<<(void *a1, double *a2)
{
  v3 = *(a1 + *(*a1 - 24) + 8);
  v15 = 0;
  v4 = *a2;
  v5 = 0.0;
  if (fabs(*a2) != INFINITY)
  {
    v5 = vega::math::frexp10(&v15, *a2, a2);
    v4 = *a2;
  }

  if (fabs(v4) != INFINITY)
  {
    if (v15 < 100)
    {
      if (v15 < 13)
      {
        if ((v15 & 0x80000000) == 0)
        {
          *(a1 + *(*a1 - 24) + 16) = 14;
          MEMORY[0x1AC5528F0](a1, v4);
          goto LABEL_16;
        }

        if (v15 < 0xFFFFFFF7)
        {
          v14 = a1 + *(*a1 - 24);
          if (v15 < 0xFFFFFF9D)
          {
            if (v5 <= 0.0)
            {
              *(v14 + 2) = 9;
              v8 = MEMORY[0x1AC5528F0](a1);
              v25 = 101;
              v9 = &v25;
            }

            else
            {
              *(v14 + 2) = 10;
              v8 = MEMORY[0x1AC5528F0](a1);
              v24 = 101;
              v9 = &v24;
            }
          }

          else if (v5 <= 0.0)
          {
            *(v14 + 2) = 10;
            v8 = MEMORY[0x1AC5528F0](a1);
            v23 = 101;
            v9 = &v23;
          }

          else
          {
            *(v14 + 2) = 11;
            v8 = MEMORY[0x1AC5528F0](a1);
            v22 = 101;
            v9 = &v22;
          }
        }

        else
        {
          v13 = a1 + *(*a1 - 24);
          if (v5 <= 0.0)
          {
            *(v13 + 2) = 11;
            v8 = MEMORY[0x1AC5528F0](a1);
            v21 = 101;
            v9 = &v21;
          }

          else
          {
            *(v13 + 2) = 12;
            v8 = MEMORY[0x1AC5528F0](a1);
            v20 = 101;
            v9 = &v20;
          }
        }
      }

      else
      {
        v10 = a1 + *(*a1 - 24);
        if (v5 <= 0.0)
        {
          *(v10 + 2) = 11;
          v8 = MEMORY[0x1AC5528F0](a1);
          v19 = 101;
          v9 = &v19;
        }

        else
        {
          *(v10 + 2) = 12;
          v8 = MEMORY[0x1AC5528F0](a1);
          v18 = 101;
          v9 = &v18;
        }
      }
    }

    else
    {
      v7 = a1 + *(*a1 - 24);
      if (v5 <= 0.0)
      {
        *(v7 + 2) = 10;
        v8 = MEMORY[0x1AC5528F0](a1);
        v17 = 101;
        v9 = &v17;
      }

      else
      {
        *(v7 + 2) = 11;
        v8 = MEMORY[0x1AC5528F0](a1);
        v16 = 101;
        v9 = &v16;
      }
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, 1);
    MEMORY[0x1AC552910](v11, v15);
    goto LABEL_16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "inf", 3);
LABEL_16:
  *(a1 + *(*a1 - 24) + 8) = v3;
  return a1;
}

uint64_t *vega::DecimalString::str@<X0>(uint64_t *__return_ptr a1@<X8>, vega::DecimalString *this@<X0>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  vega::operator<<(&v10, this);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      *(a1 + 23) = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, locale, v4);
  }

LABEL_14:
  *(a1 + v4) = 0;
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v7;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC552AF0](&v18);
}

void sub_1A5A11E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC552AF0](v3 + 128);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::DataSet(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a2[1];
  a1[3] = *a2;
  a1[4] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[7] = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN4vega10dictionary18PrivateOwnerBlocksENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1A5A11EE4(_Unwind_Exception *a1)
{
  v3 = v2;
  std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::destroy(v3, *(v1 + 48));
  v5 = *(v1 + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t vega::dicom::DataSet::iterator::operator++(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    do
    {
      v3 = v1[2];
      v4 = *v3 == v1;
      v1 = v3;
    }

    while (!v4);
  }

  *result = v3;
  return result;
}

uint64_t vega::dicom::DataSet::add_data_element(uint64_t a1, uint64_t a2)
{
  v4 = vega::dictionary::Page::name(*a2);
  v5 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(a1 + 40, v4);
  if (a1 + 48 != v5)
  {
    v7 = *(v5 + 40);
    v6 = *(v5 + 48);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v13, "DataSet::add_data_element() -- Cannot add new element as it already exists");
      std::runtime_error::runtime_error(exception, &v13);
      exception->__vftable = &unk_1F1917110;
    }
  }

  v8 = *(a2 + 8);
  v12[0] = *a2;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataSet::add_private_owner_block_if_relevant(a1, v12);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = vega::dictionary::Page::name(*a2);

  return std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag&,std::shared_ptr<vega::dicom::DataElement>&>((a1 + 40), v9, v9, a2);
}

void sub_1A5A120B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t *vega::dicom::DataSet::data_element@<X0>(uint64_t *__return_ptr a1@<X8>, vega::dicom::DataSet *this@<X0>, const vega::Tag *a3@<X1>)
{
  result = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(this + 40, a3);
  if ((this + 48) == result)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v6 = result[6];
    *a1 = result[5];
    a1[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void vega::dicom::DataSet::add_private_owner_block_if_relevant(uint64_t a1, vega::dictionary::Page **a2)
{
  if ((vega::dicom::DataElement::is_sequence(*a2) & 1) == 0)
  {
    v3 = vega::dictionary::Page::name(*a2);
    if (vega::Tag::is_private_owner(v3))
    {
      vega::dicom::DataElement::get_manipulator<vega::manipulators::LongStringManipulator>(*a2, &v8);
      v9 = &unk_1F1917B90;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v10, *(v8.__r_.__value_.__r.__words[0] + 8), *(v8.__r_.__value_.__r.__words[0] + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v8.__r_.__value_.__r.__words[0] + 16) - *(v8.__r_.__value_.__r.__words[0] + 8)) >> 3));
      v9 = &unk_1F1918680;
      if (v8.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8.__r_.__value_.__l.__size_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v8, "");
      if (v11 != v10)
      {
        std::string::operator=(&v8, v10);
      }

      v4 = vega::dictionary::Dictionary::instance(1);
      vega::dictionary::Dictionary::private_owner(v4, &v8, &v6);
      if (v6)
      {
        vega::dictionary::Page::name(*a2);
        CMPhotoGetEncodeAccelerationModeOverride();
        v5 = vega::dictionary::Page::name(*a2);
        vega::Tag::element(v5);
        std::allocate_shared[abi:ne200100]<vega::dictionary::PrivateOwnerBlock,std::allocator<vega::dictionary::PrivateOwnerBlock>,std::shared_ptr<vega::dictionary::PrivateOwner> &,unsigned short &,unsigned short &,0>();
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      v8.__r_.__value_.__r.__words[0] = &v10;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
      CMPhotoGetEncodeAccelerationModeOverride();
    }
  }
}

void sub_1A5A122E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  vega::manipulators::LongStringManipulator::~LongStringManipulator(&a19);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::page_for (vega::dictionary::PrivateOwnerBlocks **this@<X0>, const vega::Tag *a2@<X1>, void *a3@<X8>)
{
  if (!vega::Tag::is_private(a2))
  {
LABEL_11:
    v9 = vega::dictionary::Dictionary::instance(1);
    vega::dictionary::Dictionary::page_for (v9, a2, a3);
    return;
  }

  vega::dictionary::PrivateOwnerBlocks::find_block(&v10, this[8], a2);
  if (v10)
  {
    v6 = vega::dictionary::PrivateOwnerBlock::private_owner(v10);
    vega::dictionary::PrivateOwner::find_page(v6, a2, a3);
    if (*a3)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v8 = a3[1];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v7 = 1;
LABEL_8:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v7)
  {
    goto LABEL_11;
  }
}

void sub_1A5A1240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::DataSet::page_for@<X0>(char *a1@<X1>, void *a2@<X8>)
{
  v4 = vega::dictionary::Dictionary::instance(1);

  return vega::dictionary::Dictionary::page_for (v4, a1, a2);
}

void vega::dicom::DataSet::data_element(vega::dicom::DataSet *a1@<X0>, char *a2@<X1>, vega::dictionary::Page **a3@<X8>)
{
  v6 = vega::dictionary::Dictionary::instance(1);
  vega::dictionary::Dictionary::page_for (v6, a2, &v8);
  if (v8)
  {
    v7 = vega::dictionary::Page::tag_mask(v8);
    vega::dicom::DataSet::data_element(a3, a1, v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1A5A124EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataSet::data_element(vega::dictionary::Page **__return_ptr a1@<X8>, vega::dicom::DataSet *this@<X0>, const vega::TagMask *a3@<X1>)
{
  if (vega::Tag::tag((a3 + 4)) == -1)
  {
    v14 = vega::TagMask::singular_tag(a3);
    v15 = std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::find<vega::Tag>(this + 40, v14);
    if ((this + 48) != v15)
    {
      v16 = v15[6];
      *a1 = v15[5];
      a1[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      return;
    }

LABEL_18:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v6 = *(this + 5);
  v7 = this + 48;
  if (v6 == this + 48)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = *(v6 + 5);
    v9 = *(v6 + 6);
    *a1 = v8;
    a1[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }

    v10 = vega::dictionary::Page::name(v8);
    if (vega::TagMask::contains(a3, v10))
    {
      break;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v11 = *(v6 + 1);
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = *(v6 + 2);
        v13 = *v12 == v6;
        v6 = v12;
      }

      while (!v13);
    }

    v6 = v12;
    if (v12 == v7)
    {
      goto LABEL_18;
    }
  }
}

void sub_1A5A12610(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

vega::TagMask *vega::TagMask::singular_tag(vega::TagMask *this)
{
  if (vega::Tag::tag((this + 4)) != -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::Tag::str(&v12);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Cannot get singular tag from TagMask with value and mask of ", &v12, &v13);
    v4 = std::string::append(&v13, " and ", 5uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    vega::Tag::str(v10);
    if ((v11 & 0x80u) == 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v10[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10[1];
    }

    v8 = std::string::append(&v14, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v15);
    exception->__vftable = &unk_1F1917110;
  }

  return this;
}

void sub_1A5A12760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5A1288C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

void *_ZNSt3__120__shared_ptr_emplaceIN4vega10dictionary18PrivateOwnerBlocksENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1919410;
  vega::dictionary::PrivateOwnerBlocks::PrivateOwnerBlocks(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlocks>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

uint64_t std::__tree<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::shared_ptr<vega::dicom::DataElement>>>>::__emplace_unique_key_args<vega::Tag,vega::Tag&,std::shared_ptr<vega::dicom::DataElement>&>(uint64_t **a1, unsigned __int16 *a2, _DWORD *a3, void *a4)
{
  v4 = *std::__tree<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::__map_value_compare<vega::Tag,std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>,std::less<vega::Tag>,true>,std::allocator<std::__value_type<vega::Tag,std::map<vega::Tag,std::shared_ptr<vega::dictionary::Page const>>>>>::__find_equal<vega::Tag>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::LongStringManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::LongStringManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::LongStringManipulator>::InvalidValueManipulator();
  }

  return result;
}

void ***vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(void ***a1, void ****a2)
{
  vega::dicom::RawValue::str(*a2, &__p);
  vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A5A12CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***vega::manipulators::PaddedStringManipulator<std::string>::PaddedStringManipulator(void ***a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F19193A0;
  vega::manipulators::PaddedStringManipulator<std::string>::parse_from_string(a1, a2);
  return a1;
}

void sub_1A5A12D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v11 = v10;
  a10 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  CMPhotoGetEncodeAccelerationModeOverride();
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlock>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dictionary::PrivateOwner> &,unsigned short &,unsigned short &,std::allocator<vega::dictionary::PrivateOwnerBlock>,0>(void *a1, void *a2, __int16 *a3, __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1919488;
  vega::dictionary::PrivateOwnerBlock::PrivateOwnerBlock((a1 + 3), a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1919488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dictionary::PrivateOwnerBlock>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5A12F6C(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 64));
  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_1A5A13398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5A13558(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 64));
  vega::dicom::TransferSyntax::~TransferSyntax((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void vega::dicom::FileMeta::read(vega::dicom::FileMeta *this, vega::dicom::Reader *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v38 = *this;
  v39 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::Reader::read_data_element(a2, &v38, 0, &v40);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (!v40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v37, "Reader failed to read in group length tag");
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_1F19194F0;
  }

  v5 = vega::dictionary::Page::name(v40);
  if (!vega::Tag::operator==(v5, vega::dicom::FileMeta::FileMetaInformationGroupLength))
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,char const(&)[31],0>();
  }

  v7 = v40;
  v6 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedLongManipulator>(v7, &__p);
  vega::dicom::Reader::tell();
  v8 = **(__p.__r_.__value_.__r.__words[0] + 8);
  v9 = v46;
  v10 = *this;
  v35 = v7;
  v36 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::DataSet::add_data_element(v10, &v35);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v11 = v9 + v8;
  while (1)
  {
    vega::dicom::Reader::tell();
    if (v46 >= v11)
    {
      break;
    }

    v12 = *(this + 1);
    v33 = *this;
    v34 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vega::dicom::Reader::read_data_element(a2, &v33, 0, &v43);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (!v43.__r_.__value_.__r.__words[0])
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v32, "Unexpected error reading file meta");
      std::runtime_error::runtime_error(v20, &v32);
      v20->__vftable = &unk_1F19194F0;
    }

    v13 = vega::dictionary::Page::name(v43.__r_.__value_.__l.__data_);
    if (!vega::Tag::is_file_meta(v13))
    {
      v19 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v31, "Encountered non file-meta DataElement in file meta header");
      std::runtime_error::runtime_error(v19, &v31);
      v19->__vftable = &unk_1F19194F0;
    }

    v14 = *this;
    v30 = *&v43.__r_.__value_.__l.__data_;
    if (v43.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v43.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    vega::dicom::DataSet::add_data_element(v14, &v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (v43.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43.__r_.__value_.__l.__size_);
    }
  }

  vega::dicom::Reader::tell();
  if (v46 != v11)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v29, "Read past expected end of file meta data");
    std::runtime_error::runtime_error(v23, &v29);
    v23->__vftable = &unk_1F19194F0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  vega::dicom::DataSet::data_element(&v27, *this, &vega::dicom::FileMeta::TransferSyntaxUID);
  if (!v27)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v26, "Need TransferSyntaxUID element");
    std::runtime_error::runtime_error(v22, &v26);
    v22->__vftable = &unk_1F19194F0;
  }

  vega::dicom::DataSet::data_element(&__p, *this, &vega::dicom::SOPClass::TAG);
  if (__p.__r_.__value_.__r.__words[0])
  {
    vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>(__p.__r_.__value_.__l.__data_, v24);
    v15 = vega::manipulators::UniqueIdentifierManipulator::uid(v24[0]);
    vega::dicom::SOPClass::SOPClass(&v43, v15);
    if (*(this + 87) < 0)
    {
      operator delete(*(this + 8));
    }

    *(this + 64) = v43;
    *(&v43.__r_.__value_.__s + 23) = 0;
    v43.__r_.__value_.__s.__data_[0] = 0;
    if (*(this + 111) < 0)
    {
      operator delete(*(this + 11));
      v16 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
      *(this + 88) = v44;
      *(this + 13) = v45;
      HIBYTE(v45) = 0;
      LOBYTE(v44) = 0;
      if (v16 < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(this + 88) = v44;
      *(this + 13) = v45;
    }

    if (v24[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24[1]);
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v17 = *this;
  std::string::basic_string[abi:ne200100]<0>(&v43, "MediaStorageSOPInstanceUID");
  vega::dicom::DataSet::data_element(v17, &v43, &__p);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>(__p.__r_.__value_.__l.__data_, &v43);
    v18 = vega::manipulators::UniqueIdentifierManipulator::uid(v43.__r_.__value_.__l.__data_);
    std::string::operator=((this + 112), v18);
    if (v43.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43.__r_.__value_.__l.__size_);
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  vega::dicom::DataElement::str(v27);
  vega::UID::UID(&__p, v24);
  vega::dicom::TransferSyntax::TransferSyntax(&v43, &__p);
  vega::dicom::FileMeta::set_transfer_syntax(this, &v43);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}

void sub_1A5A13DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53, void *a54, std::__shared_weak_count *a55)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v57 & 1) == 0)
    {
LABEL_6:
      if (a55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a55);
      }

      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v55);
      }

      if (a53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a53);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v57)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v56);
  goto LABEL_6;
}

void vega::dicom::FileMeta::set_transfer_syntax(vega::dicom::FileMeta *this, const std::string *a2)
{
  std::string::operator=((this + 16), a2);
  std::string::operator=((this + 40), a2 + 1);
  v4 = *this;
  std::string::basic_string[abi:ne200100]<0>(&__p, "TransferSyntaxUID");
  vega::dicom::DataSet::data_element(v4, &__p, &v10);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    vega::dicom::DataElement::get_manipulator<vega::manipulators::UniqueIdentifierManipulator>(v10, &__p);
    v5 = vega::dicom::SOPClass::uid((this + 16));
    v6 = vega::manipulators::UniqueIdentifierManipulator::uid(__p);
    std::string::operator=(v6, v5);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1A5A14168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vega::dicom::FileMeta::write(uint64_t *a1, vega::dicom::Writer **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return 0;
  }

  v32 = *vega::dicom::Writer::dicom_endian(*a2);
  LODWORD(v33[0]) = 0;
  vega::dicom::Writer::set_dicom_endianness(*a2, v33);
  v24 = vega::dicom::Writer::vr_explicit(*a2);
  vega::dicom::Writer::set_vr_explicit(*a2, 1);
  v31 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = *a1;
  vega::dicom::DataSet::iterator::iterator(v33, *(*a1 + 40));
  v30 = v33[0];
  vega::dicom::DataSet::iterator::iterator(v33, v4 + 48);
  v29 = v33[0];
  if (vega::dicom::DataSet::iterator::operator!=(&v30, &v29))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = vega::dicom::DataSet::iterator::operator*(&v30);
      v11 = *v9;
      v10 = *(v9 + 8);
      if (v10)
      {
        p_shared_owners = &v10->__shared_owners_;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *a2;
        if ((v8 & 1) == 0)
        {
          v25 = v11;
          v26 = v10;
          atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
          goto LABEL_22;
        }

        v27 = v11;
        v28 = v10;
        atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = *a2;
        if ((v8 & 1) == 0)
        {
          v25 = v11;
          v26 = 0;
LABEL_22:
          v5 += vega::dicom::Writer::write_element(v13, &v25);
          v31 = v5;
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          goto LABEL_24;
        }

        v27 = v11;
        v28 = 0;
      }

      v14 = vega::dicom::Writer::write_element(v13, &v27);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v15 = vega::dictionary::Page::name(v11);
      LODWORD(v33[0]) = 2;
      if (!vega::Tag::operator==(v15, v33))
      {
        __assert_rtn("write", "file_meta.cpp", 94, "data_element->tag() == Tag(0x00020000)");
      }

      vega::dicom::Writer::tell(v33, *a2);
      v16 = v41;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      vega::dicom::DataElement::lazy_load(v11);
      v17 = *(v11 + 30);
      v18 = *(v11 + 31);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v17 + 16))(v33);
      if (vega::dicom::RawValue::size(v33[0]) != 4)
      {
        __assert_rtn("write", "file_meta.cpp", 96, "data_element->manipulator()->raw_value()->size() == sizeof(file_meta_bytes)");
      }

      if (v33[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33[1]);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v6 += v14;
      v7 = v16 - 4;
LABEL_24:
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      vega::dicom::DataSet::iterator::operator++(&v30);
      v8 = 0;
      if (!vega::dicom::DataSet::iterator::operator!=(&v30, &v29))
      {
        goto LABEL_30;
      }
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_30:
  vega::dicom::Writer::tell(v33, *a2);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v42 = *v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v20 = v41;
  v21 = *a2;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  *v33 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v41 = v7;
  vega::dicom::Writer::seek_pos(v21, v33);
  CMPhotoGetEncodeAccelerationModeOverride();
  vega::dicom::RawWriter::write_from<unsigned int>(v22, &v31);
  v23 = *a2;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  *v33 = v42;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v41 = v20;
  vega::dicom::Writer::seek_pos(v23, v33);
  vega::dicom::Writer::set_dicom_endianness(*a2, &v32);
  vega::dicom::Writer::set_vr_explicit(*a2, v24);
  return (v31 + v6);
}

void sub_1A5A1456C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedLongManipulator>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::UnsignedLongManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = a1[30];
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!v7)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,std::allocator<vega::manipulators::UnsignedLongManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = a1[31];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  *a2 = v7;
  a2[1] = v8;
}

void sub_1A5A1479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void vega::dicom::FileMeta::InvalidFileMeta::~InvalidFileMeta(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::UniqueIdentifierManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::UniqueIdentifierManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::UniqueIdentifierManipulator>::InvalidValueManipulator();
  }

  return result;
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::UnsignedLongManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::UnsignedLongManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedLongManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedLongManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen(("N4vega12manipulators23UnsignedLongManipulatorE" & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, ("N4vega12manipulators23UnsignedLongManipulatorE" & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(__p, a2);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1919558;
  return a1;
}

void sub_1A5A14B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::UnsignedLongManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::FixedSizeElementManipulator<unsigned int>::~FixedSizeElementManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride();

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::manipulators::UnsignedLongManipulator>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::RawValue>,std::allocator<vega::manipulators::UnsignedLongManipulator>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1918F08;
  std::construct_at[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UnsignedLongManipulator*>(a1 + 3, a2);
  return a1;
}

void *std::construct_at[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,std::shared_ptr<vega::dicom::RawValue>,vega::manipulators::UnsignedLongManipulator*>(void *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  vega::manipulators::FixedSizeElementManipulator<unsigned int>::FixedSizeElementManipulator(a1, &v4);
  *a1 = &unk_1F1918F58;
  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void sub_1A5A14E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *vega::manipulators::FixedSizeElementManipulator<unsigned int>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1919580;
  if ((vega::dicom::RawValue::size(*a2) & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "Incompatible size for FixedSizeElementManipulator");
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &unk_1F1917110;
  }

  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned int>>>(&v9, v4, v5, a1);
  return a1;
}

void sub_1A5A14F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = *v16;
      if (*v16)
      {
        *(v14 + 16) = v19;
        operator delete(v19);
      }

      CMPhotoGetEncodeAccelerationModeOverride();
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<unsigned int>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[2];
    do
    {
      v8 = a4[3];
      if (v7 >= v8)
      {
        v9 = a4[1];
        v10 = v7 - v9;
        v11 = (v7 - v9) >> 2;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<int>::allocate_at_least[abi:ne200100]((a4 + 1), v14);
        }

        v15 = (v7 - v9) >> 2;
        v16 = (4 * v11);
        v17 = (4 * v11 - 4 * v15);
        *v16 = *v5;
        v7 = (v16 + 1);
        memcpy(v17, v9, v10);
        v18 = a4[1];
        a4[1] = v17;
        a4[2] = v7;
        a4[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[2] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[31],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A151F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[27],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[27],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[27],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A1535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::OtherByteManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::OtherByteManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::OtherByteManipulator>::InvalidValueManipulator();
  }

  return result;
}

void *vega::manipulators::FixedSizeElementManipulator<vega::Byte>::FixedSizeElementManipulator(void *a1, vega::dicom::RawValue **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F1919618;
  vega::dicom::RawValue::size(*a2);
  v4 = vega::dicom::RawValue::data(*a2);
  v5 = vega::dicom::RawValue::end(*a2);
  std::__copy_impl::operator()[abi:ne200100]<vega::Byte const*,vega::Byte const*,std::back_insert_iterator<vega::manipulators::FixedSizeElementManipulator<vega::Byte>>>(&v7, v4, v5, a1);
  return a1;
}

void sub_1A5A15480(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  CMPhotoGetEncodeAccelerationModeOverride();
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[24],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[24],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[24],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A155F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[18],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[18],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[18],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A1575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<vega::dicom::DataElement>::__shared_ptr_emplace[abi:ne200100]<char const(&)[23],std::allocator<vega::dicom::DataElement>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917B58;
  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[23],vega::dicom::DataElement*>((a1 + 3), a2);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[23],vega::dicom::DataElement*>(uint64_t a1, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = 0;
  v5 = 0;
  vega::dicom::DataElement::DataElement(a1, __p, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1A5A158C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(va);
  _Unwind_Resume(a1);
}

void std::construct_at[abi:ne200100]<vega::dicom::DataElement,char const(&)[31],vega::dicom::DataElement*>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t *vega::dicom::SOPClass::NAME_UID_PAIRS(vega::dicom::SOPClass *this)
{
  MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v579 = *MEMORY[0x1E69E9840];
  {
    v5 = v3;
    std::string::basic_string[abi:ne200100]<0>(v348, "1.2.840.10008.5.1.4.1.1.1");
    vega::UID::UID(&v350, v348);
    std::string::basic_string[abi:ne200100]<0>(v351, "Computed Radiography Image Storage");
    v352 = v350;
    memset(&v350, 0, sizeof(v350));
    std::string::basic_string[abi:ne200100]<0>(v345, "1.2.840.10008.5.1.4.1.1.1.1");
    vega::UID::UID(&v347, v345);
    std::string::basic_string[abi:ne200100]<0>(v353, "Digital X-Ray Image Storage - For Presentation");
    v354 = v347;
    memset(&v347, 0, sizeof(v347));
    std::string::basic_string[abi:ne200100]<0>(v342, "1.2.840.10008.5.1.4.1.1.1.1.1");
    vega::UID::UID(&v344, v342);
    std::string::basic_string[abi:ne200100]<0>(v355, "Digital X-Ray Image Storage - For Processing");
    v356 = v344;
    memset(&v344, 0, sizeof(v344));
    std::string::basic_string[abi:ne200100]<0>(v339, "1.2.840.10008.5.1.4.1.1.1.2");
    vega::UID::UID(&v341, v339);
    std::string::basic_string[abi:ne200100]<0>(v357, "Digital Mammography X-Ray Image Storage - For Presentation");
    v358 = v341;
    memset(&v341, 0, sizeof(v341));
    std::string::basic_string[abi:ne200100]<0>(v336, "1.2.840.10008.5.1.4.1.1.1.2.1");
    vega::UID::UID(&v338, v336);
    std::string::basic_string[abi:ne200100]<0>(v359, "Digital Mammography X-Ray Image Storage - For Processing");
    v360 = v338;
    memset(&v338, 0, sizeof(v338));
    std::string::basic_string[abi:ne200100]<0>(v333, "1.2.840.10008.5.1.4.1.1.1.3");
    vega::UID::UID(&v335, v333);
    std::string::basic_string[abi:ne200100]<0>(v361, "Digital Intra-Oral X-Ray Image Storage - For Presentation");
    v362 = v335;
    memset(&v335, 0, sizeof(v335));
    std::string::basic_string[abi:ne200100]<0>(v330, "1.2.840.10008.5.1.4.1.1.1.3.1");
    vega::UID::UID(&v332, v330);
    std::string::basic_string[abi:ne200100]<0>(v363, "Digital Intra-Oral X-Ray Image Storage - For Processing");
    v364 = v332;
    memset(&v332, 0, sizeof(v332));
    std::string::basic_string[abi:ne200100]<0>(v327, "1.2.840.10008.5.1.4.1.1.2");
    vega::UID::UID(&v329, v327);
    std::string::basic_string[abi:ne200100]<0>(v365, "CT Image Storage");
    v366 = v329;
    memset(&v329, 0, sizeof(v329));
    std::string::basic_string[abi:ne200100]<0>(v324, "1.2.840.10008.5.1.4.1.1.2.1");
    vega::UID::UID(&v326, v324);
    std::string::basic_string[abi:ne200100]<0>(v367, "Enhanced CT Image Storage");
    v368 = v326;
    memset(&v326, 0, sizeof(v326));
    std::string::basic_string[abi:ne200100]<0>(v321, "1.2.840.10008.5.1.4.1.1.2.2");
    vega::UID::UID(&v323, v321);
    std::string::basic_string[abi:ne200100]<0>(v369, "Legacy Converted Enhanced CT Image Storage");
    v370 = v323;
    memset(&v323, 0, sizeof(v323));
    std::string::basic_string[abi:ne200100]<0>(v318, "1.2.840.10008.5.1.4.1.1.3");
    vega::UID::UID(&v320, v318);
    std::string::basic_string[abi:ne200100]<0>(v371, "Ultrasound Multi-frame Image Storage (Retired)");
    v372 = v320;
    memset(&v320, 0, sizeof(v320));
    std::string::basic_string[abi:ne200100]<0>(v315, "1.2.840.10008.5.1.4.1.1.3.1");
    vega::UID::UID(&v317, v315);
    std::string::basic_string[abi:ne200100]<0>(v373, "Ultrasound Multi-frame Image Storage");
    v374 = v317;
    memset(&v317, 0, sizeof(v317));
    std::string::basic_string[abi:ne200100]<0>(v312, "1.2.840.10008.5.1.4.1.1.4");
    vega::UID::UID(&v314, v312);
    std::string::basic_string[abi:ne200100]<0>(v375, "MR Image Storage");
    v376 = v314;
    memset(&v314, 0, sizeof(v314));
    std::string::basic_string[abi:ne200100]<0>(v309, "1.2.840.10008.5.1.4.1.1.4.1");
    vega::UID::UID(&v311, v309);
    std::string::basic_string[abi:ne200100]<0>(v377, "Enhanced MR Image Storage");
    v378 = v311;
    memset(&v311, 0, sizeof(v311));
    std::string::basic_string[abi:ne200100]<0>(v306, "1.2.840.10008.5.1.4.1.1.4.2");
    vega::UID::UID(&v308, v306);
    std::string::basic_string[abi:ne200100]<0>(v379, "MR Spectroscopy Storage");
    v380 = v308;
    memset(&v308, 0, sizeof(v308));
    std::string::basic_string[abi:ne200100]<0>(v303, "1.2.840.10008.5.1.4.1.1.4.3");
    vega::UID::UID(&v305, v303);
    std::string::basic_string[abi:ne200100]<0>(v381, "Enhanced MR Color Image Storage");
    v382 = v305;
    memset(&v305, 0, sizeof(v305));
    std::string::basic_string[abi:ne200100]<0>(v300, "1.2.840.10008.5.1.4.1.1.4.4");
    vega::UID::UID(&v302, v300);
    std::string::basic_string[abi:ne200100]<0>(v383, "Legacy Converted Enhanced MR Image Storage");
    v384 = v302;
    memset(&v302, 0, sizeof(v302));
    std::string::basic_string[abi:ne200100]<0>(v297, "1.2.840.10008.5.1.4.1.1.6");
    vega::UID::UID(&v299, v297);
    std::string::basic_string[abi:ne200100]<0>(v385, "Ultrasound Image Storage (Retired)");
    v386 = v299;
    memset(&v299, 0, sizeof(v299));
    std::string::basic_string[abi:ne200100]<0>(v294, "1.2.840.10008.5.1.4.1.1.6.1");
    vega::UID::UID(&v296, v294);
    std::string::basic_string[abi:ne200100]<0>(v387, "Ultrasound Image Storage");
    v388 = v296;
    memset(&v296, 0, sizeof(v296));
    std::string::basic_string[abi:ne200100]<0>(v291, "1.2.840.10008.5.1.4.1.1.6.2");
    vega::UID::UID(&v293, v291);
    std::string::basic_string[abi:ne200100]<0>(v389, "Enhanced US Volume Storage");
    v390 = v293;
    memset(&v293, 0, sizeof(v293));
    std::string::basic_string[abi:ne200100]<0>(v288, "1.2.840.10008.5.1.4.1.1.7");
    vega::UID::UID(&v290, v288);
    std::string::basic_string[abi:ne200100]<0>(v391, "Secondary Capture Image Storage");
    v392 = v290;
    memset(&v290, 0, sizeof(v290));
    std::string::basic_string[abi:ne200100]<0>(v285, "1.2.840.10008.5.1.4.1.1.7.1");
    vega::UID::UID(&v287, v285);
    std::string::basic_string[abi:ne200100]<0>(v393, "Multi-frame Single Bit Secondary Capture Image Storage");
    v394 = v287;
    memset(&v287, 0, sizeof(v287));
    std::string::basic_string[abi:ne200100]<0>(v282, "1.2.840.10008.5.1.4.1.1.7.2");
    vega::UID::UID(&v284, v282);
    std::string::basic_string[abi:ne200100]<0>(v395, "Multi-frame Grayscale Byte Secondary Capture Image Storage");
    v396 = v284;
    memset(&v284, 0, sizeof(v284));
    std::string::basic_string[abi:ne200100]<0>(v279, "1.2.840.10008.5.1.4.1.1.7.3");
    vega::UID::UID(&v281, v279);
    std::string::basic_string[abi:ne200100]<0>(v397, "Multi-frame Grayscale Word Secondary Capture Image Storage");
    v398 = v281;
    memset(&v281, 0, sizeof(v281));
    std::string::basic_string[abi:ne200100]<0>(v276, "1.2.840.10008.5.1.4.1.1.7.4");
    vega::UID::UID(&v278, v276);
    std::string::basic_string[abi:ne200100]<0>(v399, "Multi-frame True Color Secondary Capture Image Storage");
    v400 = v278;
    memset(&v278, 0, sizeof(v278));
    std::string::basic_string[abi:ne200100]<0>(v273, "1.2.840.10008.5.1.4.1.1.9.1.1");
    vega::UID::UID(&v275, v273);
    std::string::basic_string[abi:ne200100]<0>(v401, "12-lead ECG Waveform Storage");
    v402 = v275;
    memset(&v275, 0, sizeof(v275));
    std::string::basic_string[abi:ne200100]<0>(v270, "1.2.840.10008.5.1.4.1.1.9.1.2");
    vega::UID::UID(&v272, v270);
    std::string::basic_string[abi:ne200100]<0>(v403, "General ECG Waveform Storage");
    v404 = v272;
    memset(&v272, 0, sizeof(v272));
    std::string::basic_string[abi:ne200100]<0>(v267, "1.2.840.10008.5.1.4.1.1.9.1.3");
    vega::UID::UID(&v269, v267);
    std::string::basic_string[abi:ne200100]<0>(v405, "Ambulatory ECG Waveform Storage");
    v406 = v269;
    memset(&v269, 0, sizeof(v269));
    std::string::basic_string[abi:ne200100]<0>(v264, "1.2.840.10008.5.1.4.1.1.9.2.1");
    vega::UID::UID(&v266, v264);
    std::string::basic_string[abi:ne200100]<0>(v407, "Hemodynamic Waveform Storage");
    v408 = v266;
    memset(&v266, 0, sizeof(v266));
    std::string::basic_string[abi:ne200100]<0>(v261, "1.2.840.10008.5.1.4.1.1.9.3.1");
    vega::UID::UID(&v263, v261);
    std::string::basic_string[abi:ne200100]<0>(v409, "Cardiac Electrophysiology Waveform Storage");
    v410 = v263;
    memset(&v263, 0, sizeof(v263));
    std::string::basic_string[abi:ne200100]<0>(v258, "1.2.840.10008.5.1.4.1.1.9.4.1");
    vega::UID::UID(&v260, v258);
    std::string::basic_string[abi:ne200100]<0>(v411, "Basic Voice Audio Waveform Storage");
    v412 = v260;
    memset(&v260, 0, sizeof(v260));
    std::string::basic_string[abi:ne200100]<0>(v255, "1.2.840.10008.5.1.4.1.1.9.4.2");
    vega::UID::UID(&v257, v255);
    std::string::basic_string[abi:ne200100]<0>(v413, "General Audio Waveform Storage");
    v414 = v257;
    memset(&v257, 0, sizeof(v257));
    std::string::basic_string[abi:ne200100]<0>(v252, "1.2.840.10008.5.1.4.1.1.9.5.1");
    vega::UID::UID(&v254, v252);
    std::string::basic_string[abi:ne200100]<0>(v415, "Arterial Pulse Waveform Storage");
    v416 = v254;
    memset(&v254, 0, sizeof(v254));
    std::string::basic_string[abi:ne200100]<0>(v249, "1.2.840.10008.5.1.4.1.1.9.6.1");
    vega::UID::UID(&v251, v249);
    std::string::basic_string[abi:ne200100]<0>(v417, "Respiratory Waveform Storage");
    v418 = v251;
    memset(&v251, 0, sizeof(v251));
    std::string::basic_string[abi:ne200100]<0>(v246, "1.2.840.10008.5.1.4.1.1.11.1");
    vega::UID::UID(&v248, v246);
    std::string::basic_string[abi:ne200100]<0>(v419, "Grayscale Softcopy Presentation State Storage");
    v420 = v248;
    memset(&v248, 0, sizeof(v248));
    std::string::basic_string[abi:ne200100]<0>(v243, "1.2.840.10008.5.1.4.1.1.11.2");
    vega::UID::UID(&v245, v243);
    std::string::basic_string[abi:ne200100]<0>(v421, "Color Softcopy Presentation State Storage");
    v422 = v245;
    memset(&v245, 0, sizeof(v245));
    std::string::basic_string[abi:ne200100]<0>(v240, "1.2.840.10008.5.1.4.1.1.11.3");
    vega::UID::UID(&v242, v240);
    std::string::basic_string[abi:ne200100]<0>(v423, "Pseudo-Color Softcopy Presentation State Storage");
    v424 = v242;
    memset(&v242, 0, sizeof(v242));
    std::string::basic_string[abi:ne200100]<0>(v237, "1.2.840.10008.5.1.4.1.1.11.4");
    vega::UID::UID(&v239, v237);
    std::string::basic_string[abi:ne200100]<0>(v425, "Blending Softcopy Presentation State Storage");
    v426 = v239;
    memset(&v239, 0, sizeof(v239));
    std::string::basic_string[abi:ne200100]<0>(v234, "1.2.840.10008.5.1.4.1.1.11.5");
    vega::UID::UID(&v236, v234);
    std::string::basic_string[abi:ne200100]<0>(v427, "XA/XRF Grayscale Softcopy Presentation State Storage");
    v428 = v236;
    memset(&v236, 0, sizeof(v236));
    std::string::basic_string[abi:ne200100]<0>(v231, "1.2.840.10008.5.1.4.1.1.12.1");
    vega::UID::UID(&v233, v231);
    std::string::basic_string[abi:ne200100]<0>(v429, "X-Ray Angiographic Image Storage");
    v430 = v233;
    memset(&v233, 0, sizeof(v233));
    std::string::basic_string[abi:ne200100]<0>(v228, "1.2.840.10008.5.1.4.1.1.12.1.1");
    vega::UID::UID(&v230, v228);
    std::string::basic_string[abi:ne200100]<0>(v431, "Enhanced XA Image Storage");
    v432 = v230;
    memset(&v230, 0, sizeof(v230));
    std::string::basic_string[abi:ne200100]<0>(v225, "1.2.840.10008.5.1.4.1.1.12.2");
    vega::UID::UID(&v227, v225);
    std::string::basic_string[abi:ne200100]<0>(v433, "X-Ray Radiofluoroscopic Image Storage");
    v434 = v227;
    memset(&v227, 0, sizeof(v227));
    std::string::basic_string[abi:ne200100]<0>(v222, "1.2.840.10008.5.1.4.1.1.12.2.1");
    vega::UID::UID(&v224, v222);
    std::string::basic_string[abi:ne200100]<0>(v435, "Enhanced XRF Image Storage");
    v436 = v224;
    memset(&v224, 0, sizeof(v224));
    std::string::basic_string[abi:ne200100]<0>(v219, "1.2.840.10008.5.1.4.1.1.12.3");
    vega::UID::UID(&v221, v219);
    std::string::basic_string[abi:ne200100]<0>(v437, "X-Ray Angiographic Bi-plane Image Storage (Retired)");
    v438 = v221;
    memset(&v221, 0, sizeof(v221));
    std::string::basic_string[abi:ne200100]<0>(v216, "1.2.840.10008.5.1.4.1.1.13.1.1");
    vega::UID::UID(&v218, v216);
    std::string::basic_string[abi:ne200100]<0>(v439, "X-Ray 3D Angiographic Image Storage");
    v440 = v218;
    memset(&v218, 0, sizeof(v218));
    std::string::basic_string[abi:ne200100]<0>(v213, "1.2.840.10008.5.1.4.1.1.13.1.2");
    vega::UID::UID(&v215, v213);
    std::string::basic_string[abi:ne200100]<0>(v441, "X-Ray 3D Craniofacial Image Storage");
    v442 = v215;
    memset(&v215, 0, sizeof(v215));
    std::string::basic_string[abi:ne200100]<0>(v210, "1.2.840.10008.5.1.4.1.1.13.1.3");
    vega::UID::UID(&v212, v210);
    std::string::basic_string[abi:ne200100]<0>(v443, "Breast Tomosynthesis Image Storage");
    v444 = v212;
    memset(&v212, 0, sizeof(v212));
    std::string::basic_string[abi:ne200100]<0>(v207, "1.2.840.10008.5.1.4.1.1.14.1");
    vega::UID::UID(&v209, v207);
    std::string::basic_string[abi:ne200100]<0>(v445, "Intravascular Optical Coherence Tomography Image Storage - For Presentation");
    v446 = v209;
    memset(&v209, 0, sizeof(v209));
    std::string::basic_string[abi:ne200100]<0>(v204, "1.2.840.10008.5.1.4.1.1.14.2");
    vega::UID::UID(&v206, v204);
    std::string::basic_string[abi:ne200100]<0>(v447, "Intravascular Optical Coherence Tomography Image Storage - For Processing");
    v448 = v206;
    memset(&v206, 0, sizeof(v206));
    std::string::basic_string[abi:ne200100]<0>(v201, "1.2.840.10008.5.1.4.1.1.20");
    vega::UID::UID(&v203, v201);
    std::string::basic_string[abi:ne200100]<0>(v449, "Nuclear Medicine Image Storage");
    v450 = v203;
    memset(&v203, 0, sizeof(v203));
    std::string::basic_string[abi:ne200100]<0>(v198, "1.2.840.10008.5.1.4.1.1.5");
    vega::UID::UID(&v200, v198);
    std::string::basic_string[abi:ne200100]<0>(v451, "Nuclear Medicine Image Storage (Retired)");
    v452 = v200;
    memset(&v200, 0, sizeof(v200));
    std::string::basic_string[abi:ne200100]<0>(v195, "1.2.840.10008.5.1.4.1.1.66");
    vega::UID::UID(&v197, v195);
    std::string::basic_string[abi:ne200100]<0>(v453, "Raw Data Storage");
    v454 = v197;
    memset(&v197, 0, sizeof(v197));
    std::string::basic_string[abi:ne200100]<0>(v192, "1.2.840.10008.5.1.4.1.1.66.1");
    vega::UID::UID(&v194, v192);
    std::string::basic_string[abi:ne200100]<0>(v455, "Spatial Registration Storage");
    v456 = v194;
    memset(&v194, 0, sizeof(v194));
    std::string::basic_string[abi:ne200100]<0>(v189, "1.2.840.10008.5.1.4.1.1.66.2");
    vega::UID::UID(&v191, v189);
    std::string::basic_string[abi:ne200100]<0>(v457, "Spatial Fiducials Storage");
    v458 = v191;
    memset(&v191, 0, sizeof(v191));
    std::string::basic_string[abi:ne200100]<0>(v186, "1.2.840.10008.5.1.4.1.1.66.3");
    vega::UID::UID(&v188, v186);
    std::string::basic_string[abi:ne200100]<0>(v459, "Deformable Spatial Registration Storage");
    v460 = v188;
    memset(&v188, 0, sizeof(v188));
    std::string::basic_string[abi:ne200100]<0>(v183, "1.2.840.10008.5.1.4.1.1.66.4");
    vega::UID::UID(&v185, v183);
    std::string::basic_string[abi:ne200100]<0>(v461, "Segmentation Storage");
    v462 = v185;
    memset(&v185, 0, sizeof(v185));
    std::string::basic_string[abi:ne200100]<0>(v180, "1.2.840.10008.5.1.4.1.1.66.5");
    vega::UID::UID(&v182, v180);
    std::string::basic_string[abi:ne200100]<0>(v463, "Surface Segmentation Storage");
    v464 = v182;
    memset(&v182, 0, sizeof(v182));
    std::string::basic_string[abi:ne200100]<0>(v177, "1.2.840.10008.5.1.4.1.1.67");
    vega::UID::UID(&v179, v177);
    std::string::basic_string[abi:ne200100]<0>(v465, "Real World Value Mapping Storage");
    v466 = v179;
    memset(&v179, 0, sizeof(v179));
    std::string::basic_string[abi:ne200100]<0>(v174, "1.2.840.10008.5.1.4.1.1.68.1");
    vega::UID::UID(&v176, v174);
    std::string::basic_string[abi:ne200100]<0>(v467, "Surface Scan Mesh Storage");
    v468 = v176;
    memset(&v176, 0, sizeof(v176));
    std::string::basic_string[abi:ne200100]<0>(v171, "1.2.840.10008.5.1.4.1.1.68.2");
    vega::UID::UID(&v173, v171);
    std::string::basic_string[abi:ne200100]<0>(v469, "Surface Scan Point Cloud Storage");
    v470 = v173;
    memset(&v173, 0, sizeof(v173));
    std::string::basic_string[abi:ne200100]<0>(v168, "1.2.840.10008.5.1.4.1.1.77.1.1");
    vega::UID::UID(&v170, v168);
    std::string::basic_string[abi:ne200100]<0>(v471, "VL Endoscopic Image Storage");
    v472 = v170;
    memset(&v170, 0, sizeof(v170));
    std::string::basic_string[abi:ne200100]<0>(v165, "1.2.840.10008.5.1.4.1.1.77.1.1.1");
    vega::UID::UID(&v167, v165);
    std::string::basic_string[abi:ne200100]<0>(v473, "Video Endoscopic Image Storage");
    v474 = v167;
    memset(&v167, 0, sizeof(v167));
    std::string::basic_string[abi:ne200100]<0>(v162, "1.2.840.10008.5.1.4.1.1.77.1.2");
    vega::UID::UID(&v164, v162);
    std::string::basic_string[abi:ne200100]<0>(v475, "VL Microscopic Image Storage");
    v476 = v164;
    memset(&v164, 0, sizeof(v164));
    std::string::basic_string[abi:ne200100]<0>(v159, "1.2.840.10008.5.1.4.1.1.77.1.2.1");
    vega::UID::UID(&v161, v159);
    std::string::basic_string[abi:ne200100]<0>(v477, "Video Microscopic Image Storage");
    v478 = v161;
    memset(&v161, 0, sizeof(v161));
    std::string::basic_string[abi:ne200100]<0>(v156, "1.2.840.10008.5.1.4.1.1.77.1.3");
    vega::UID::UID(&v158, v156);
    std::string::basic_string[abi:ne200100]<0>(v479, "VL Slide-Coordinates Microscopic Image Storage");
    v480 = v158;
    memset(&v158, 0, sizeof(v158));
    std::string::basic_string[abi:ne200100]<0>(v153, "1.2.840.10008.5.1.4.1.1.77.1.4");
    vega::UID::UID(&v155, v153);
    std::string::basic_string[abi:ne200100]<0>(v481, "VL Photographic Image Storage");
    v482 = v155;
    memset(&v155, 0, sizeof(v155));
    std::string::basic_string[abi:ne200100]<0>(v150, "1.2.840.10008.5.1.4.1.1.77.1.4.1");
    vega::UID::UID(&v152, v150);
    std::string::basic_string[abi:ne200100]<0>(v483, "Video Photographic Image Storage");
    v484 = v152;
    memset(&v152, 0, sizeof(v152));
    std::string::basic_string[abi:ne200100]<0>(v147, "1.2.840.10008.5.1.4.1.1.77.1.5.1");
    vega::UID::UID(&v149, v147);
    std::string::basic_string[abi:ne200100]<0>(v485, "Ophthalmic Photography 8 Bit Image Storage");
    v486 = v149;
    memset(&v149, 0, sizeof(v149));
    std::string::basic_string[abi:ne200100]<0>(v144, "1.2.840.10008.5.1.4.1.1.77.1.5.2");
    vega::UID::UID(&v146, v144);
    std::string::basic_string[abi:ne200100]<0>(v487, "Ophthalmic Photography 16 Bit Image Storage");
    v488 = v146;
    memset(&v146, 0, sizeof(v146));
    std::string::basic_string[abi:ne200100]<0>(v141, "1.2.840.10008.5.1.4.1.1.77.1.5.3");
    vega::UID::UID(&v143, v141);
    std::string::basic_string[abi:ne200100]<0>(v489, "Stereometric Relationship Storage");
    v490 = v143;
    memset(&v143, 0, sizeof(v143));
    std::string::basic_string[abi:ne200100]<0>(v138, "1.2.840.10008.5.1.4.1.1.77.1.5.4");
    vega::UID::UID(&v140, v138);
    std::string::basic_string[abi:ne200100]<0>(v491, "Ophthalmic Tomography Image Storage");
    v492 = v140;
    memset(&v140, 0, sizeof(v140));
    std::string::basic_string[abi:ne200100]<0>(v135, "1.2.840.10008.5.1.4.1.1.77.1.6");
    vega::UID::UID(&v137, v135);
    std::string::basic_string[abi:ne200100]<0>(v493, "VL Whole Slide Microscopy Image Storage");
    v494 = v137;
    memset(&v137, 0, sizeof(v137));
    std::string::basic_string[abi:ne200100]<0>(v132, "1.2.840.10008.5.1.4.1.1.78.1");
    vega::UID::UID(&v134, v132);
    std::string::basic_string[abi:ne200100]<0>(v495, "Lensometry Measurements Storage");
    v496 = v134;
    memset(&v134, 0, sizeof(v134));
    std::string::basic_string[abi:ne200100]<0>(v129, "1.2.840.10008.5.1.4.1.1.78.2");
    vega::UID::UID(&v131, v129);
    std::string::basic_string[abi:ne200100]<0>(v497, "Autorefraction Measurements Storage");
    v498 = v131;
    memset(&v131, 0, sizeof(v131));
    std::string::basic_string[abi:ne200100]<0>(v126, "1.2.840.10008.5.1.4.1.1.78.3");
    vega::UID::UID(&v128, v126);
    std::string::basic_string[abi:ne200100]<0>(v499, "Keratometry Measurements Storage");
    v500 = v128;
    memset(&v128, 0, sizeof(v128));
    std::string::basic_string[abi:ne200100]<0>(v123, "1.2.840.10008.5.1.4.1.1.78.4");
    vega::UID::UID(&v125, v123);
    std::string::basic_string[abi:ne200100]<0>(v501, "Subjective Refraction Measurements Storage");
    v502 = v125;
    memset(&v125, 0, sizeof(v125));
    std::string::basic_string[abi:ne200100]<0>(v120, "1.2.840.10008.5.1.4.1.1.78.5");
    vega::UID::UID(&v122, v120);
    std::string::basic_string[abi:ne200100]<0>(v503, "Visual Acuity Measurements Storage");
    v504 = v122;
    memset(&v122, 0, sizeof(v122));
    std::string::basic_string[abi:ne200100]<0>(v117, "1.2.840.10008.5.1.4.1.1.78.6");
    vega::UID::UID(&v119, v117);
    std::string::basic_string[abi:ne200100]<0>(v505, "Spectacle Prescription Report Storage");
    v506 = v119;
    memset(&v119, 0, sizeof(v119));
    std::string::basic_string[abi:ne200100]<0>(v114, "1.2.840.10008.5.1.4.1.1.78.7");
    vega::UID::UID(&v116, v114);
    std::string::basic_string[abi:ne200100]<0>(v507, "Ophthalmic Axial Measurements Storage");
    v508 = v116;
    memset(&v116, 0, sizeof(v116));
    std::string::basic_string[abi:ne200100]<0>(v111, "1.2.840.10008.5.1.4.1.1.78.8");
    vega::UID::UID(&v113, v111);
    std::string::basic_string[abi:ne200100]<0>(v509, "Intraocular Lens Calculations Storage");
    v510 = v113;
    memset(&v113, 0, sizeof(v113));
    std::string::basic_string[abi:ne200100]<0>(v108, "1.2.840.10008.5.1.4.1.1.79.1");
    vega::UID::UID(&v110, v108);
    std::string::basic_string[abi:ne200100]<0>(v511, "Macular Grid Thickness and Volume Report");
    v512 = v110;
    memset(&v110, 0, sizeof(v110));
    std::string::basic_string[abi:ne200100]<0>(v105, "1.2.840.10008.5.1.4.1.1.80.1");
    vega::UID::UID(&v107, v105);
    std::string::basic_string[abi:ne200100]<0>(v513, "Ophthalmic Visual Field Static Perimetry Measurements Storage");
    v514 = v107;
    memset(&v107, 0, sizeof(v107));
    std::string::basic_string[abi:ne200100]<0>(v102, "1.2.840.10008.5.1.4.1.1.81.1");
    vega::UID::UID(&v104, v102);
    std::string::basic_string[abi:ne200100]<0>(v515, "Ophthalmic Thickness Map Storage");
    v516 = v104;
    memset(&v104, 0, sizeof(v104));
    std::string::basic_string[abi:ne200100]<0>(v99, "1.2.840.10008.5.1.4.1.1.82.1");
    vega::UID::UID(&v101, v99);
    std::string::basic_string[abi:ne200100]<0>(v517, "Corneal Topography Map Storage");
    v518 = v101;
    memset(&v101, 0, sizeof(v101));
    std::string::basic_string[abi:ne200100]<0>(v96, "1.2.840.10008.5.1.4.1.1.88.11");
    vega::UID::UID(&v98, v96);
    std::string::basic_string[abi:ne200100]<0>(v519, "Basic Text SR");
    v520 = v98;
    memset(&v98, 0, sizeof(v98));
    std::string::basic_string[abi:ne200100]<0>(v93, "1.2.840.10008.5.1.4.1.1.88.22");
    vega::UID::UID(&v95, v93);
    std::string::basic_string[abi:ne200100]<0>(v521, "Enhanced SR");
    v522 = v95;
    memset(&v95, 0, sizeof(v95));
    std::string::basic_string[abi:ne200100]<0>(v90, "1.2.840.10008.5.1.4.1.1.88.33");
    vega::UID::UID(&v92, v90);
    std::string::basic_string[abi:ne200100]<0>(v523, "Comprehensive SR");
    v524 = v92;
    memset(&v92, 0, sizeof(v92));
    std::string::basic_string[abi:ne200100]<0>(v87, "1.2.840.10008.5.1.4.1.1.88.34");
    vega::UID::UID(&v89, v87);
    std::string::basic_string[abi:ne200100]<0>(v525, "Comprehensive 3D SR");
    v526 = v89;
    memset(&v89, 0, sizeof(v89));
    std::string::basic_string[abi:ne200100]<0>(v84, "1.2.840.10008.5.1.4.1.1.88.40");
    vega::UID::UID(&v86, v84);
    std::string::basic_string[abi:ne200100]<0>(v527, "Procedure Log");
    v528 = v86;
    memset(&v86, 0, sizeof(v86));
    std::string::basic_string[abi:ne200100]<0>(v81, "1.2.840.10008.5.1.4.1.1.88.50");
    vega::UID::UID(&v83, v81);
    std::string::basic_string[abi:ne200100]<0>(v529, "Mammography CAD SR");
    v530 = v83;
    memset(&v83, 0, sizeof(v83));
    std::string::basic_string[abi:ne200100]<0>(v78, "1.2.840.10008.5.1.4.1.1.88.59");
    vega::UID::UID(&v80, v78);
    std::string::basic_string[abi:ne200100]<0>(v531, "Key Object Selection");
    v532 = v80;
    memset(&v80, 0, sizeof(v80));
    std::string::basic_string[abi:ne200100]<0>(v75, "1.2.840.10008.5.1.4.1.1.88.65");
    vega::UID::UID(&v77, v75);
    std::string::basic_string[abi:ne200100]<0>(v533, "Chest CAD SR");
    v534 = v77;
    memset(&v77, 0, sizeof(v77));
    std::string::basic_string[abi:ne200100]<0>(v72, "1.2.840.10008.5.1.4.1.1.88.67");
    vega::UID::UID(&v74, v72);
    std::string::basic_string[abi:ne200100]<0>(v535, "X-Ray Radiation Dose SR");
    v536 = v74;
    memset(&v74, 0, sizeof(v74));
    std::string::basic_string[abi:ne200100]<0>(v69, "1.2.840.10008.5.1.4.1.1.88.69");
    vega::UID::UID(&v71, v69);
    std::string::basic_string[abi:ne200100]<0>(v537, "Colon CAD SR");
    v538 = v71;
    memset(&v71, 0, sizeof(v71));
    std::string::basic_string[abi:ne200100]<0>(v66, "1.2.840.10008.5.1.4.1.1.88.70");
    vega::UID::UID(&v68, v66);
    std::string::basic_string[abi:ne200100]<0>(v539, "Implantation Plan SR Document Storage");
    v540 = v68;
    memset(&v68, 0, sizeof(v68));
    std::string::basic_string[abi:ne200100]<0>(v63, "1.2.840.10008.5.1.4.1.1.104.1");
    vega::UID::UID(&v65, v63);
    std::string::basic_string[abi:ne200100]<0>(v541, "Encapsulated PDF Storage");
    v542 = v65;
    memset(&v65, 0, sizeof(v65));
    std::string::basic_string[abi:ne200100]<0>(v60, "1.2.840.10008.5.1.4.1.1.104.2");
    vega::UID::UID(&v62, v60);
    std::string::basic_string[abi:ne200100]<0>(v543, "Encapsulated CDA Storage");
    v544 = v62;
    memset(&v62, 0, sizeof(v62));
    std::string::basic_string[abi:ne200100]<0>(v57, "1.2.840.10008.5.1.4.1.1.128");
    vega::UID::UID(&v59, v57);
    std::string::basic_string[abi:ne200100]<0>(v545, "Positron Emission Tomography Image Storage");
    v546 = v59;
    memset(&v59, 0, sizeof(v59));
    std::string::basic_string[abi:ne200100]<0>(v54, "1.2.840.10008.5.1.4.1.1.130");
    vega::UID::UID(&v56, v54);
    std::string::basic_string[abi:ne200100]<0>(v547, "Enhanced PET Image Storage");
    v548 = v56;
    memset(&v56, 0, sizeof(v56));
    std::string::basic_string[abi:ne200100]<0>(v51, "1.2.840.10008.5.1.4.1.1.128.1");
    vega::UID::UID(&v53, v51);
    std::string::basic_string[abi:ne200100]<0>(v549, "Legacy Converted Enhanced PET Image Storage");
    v550 = v53;
    memset(&v53, 0, sizeof(v53));
    std::string::basic_string[abi:ne200100]<0>(v48, "1.2.840.10008.5.1.4.1.1.131");
    vega::UID::UID(&v50, v48);
    std::string::basic_string[abi:ne200100]<0>(v551, "Basic Structured Display Storage");
    v552 = v50;
    memset(&v50, 0, sizeof(v50));
    std::string::basic_string[abi:ne200100]<0>(v45, "1.2.840.10008.5.1.4.1.1.481.1");
    vega::UID::UID(&v47, v45);
    std::string::basic_string[abi:ne200100]<0>(v553, "RT Image Storage");
    v554 = v47;
    memset(&v47, 0, sizeof(v47));
    std::string::basic_string[abi:ne200100]<0>(v42, "1.2.840.10008.5.1.4.1.1.481.2");
    vega::UID::UID(&v44, v42);
    std::string::basic_string[abi:ne200100]<0>(v555, "RT Dose Storage");
    v556 = v44;
    memset(&v44, 0, sizeof(v44));
    std::string::basic_string[abi:ne200100]<0>(v39, "1.2.840.10008.5.1.4.1.1.481.3");
    vega::UID::UID(&v41, v39);
    std::string::basic_string[abi:ne200100]<0>(v557, "RT Structure Set Storage");
    v558 = v41;
    memset(&v41, 0, sizeof(v41));
    std::string::basic_string[abi:ne200100]<0>(v36, "1.2.840.10008.5.1.4.1.1.481.4");
    vega::UID::UID(&v38, v36);
    std::string::basic_string[abi:ne200100]<0>(v559, "RT Beams Treatment Record Storage");
    v560 = v38;
    memset(&v38, 0, sizeof(v38));
    std::string::basic_string[abi:ne200100]<0>(v33, "1.2.840.10008.5.1.4.1.1.481.5");
    vega::UID::UID(&v35, v33);
    std::string::basic_string[abi:ne200100]<0>(v561, "RT Plan Storage");
    v562 = v35;
    memset(&v35, 0, sizeof(v35));
    std::string::basic_string[abi:ne200100]<0>(v30, "1.2.840.10008.5.1.4.1.1.481.6");
    vega::UID::UID(&v32, v30);
    std::string::basic_string[abi:ne200100]<0>(v563, "RT Brachy Treatment Record Storage");
    v564 = v32;
    memset(&v32, 0, sizeof(v32));
    std::string::basic_string[abi:ne200100]<0>(v27, "1.2.840.10008.5.1.4.1.1.481.7");
    vega::UID::UID(&v29, v27);
    std::string::basic_string[abi:ne200100]<0>(v565, "RT Treatment Summary Record Storage");
    v566 = v29;
    memset(&v29, 0, sizeof(v29));
    std::string::basic_string[abi:ne200100]<0>(v24, "1.2.840.10008.5.1.4.1.1.481.8");
    vega::UID::UID(&v26, v24);
    std::string::basic_string[abi:ne200100]<0>(v567, "RT Ion Plan Storage");
    v568 = v26;
    memset(&v26, 0, sizeof(v26));
    std::string::basic_string[abi:ne200100]<0>(v21, "1.2.840.10008.5.1.4.1.1.481.9");
    vega::UID::UID(&v23, v21);
    std::string::basic_string[abi:ne200100]<0>(v569, "RT Ion Beams Treatment Record Storage");
    v570 = v23;
    memset(&v23, 0, sizeof(v23));
    std::string::basic_string[abi:ne200100]<0>(v18, "1.2.840.10008.5.1.4.34.7");
    vega::UID::UID(&v20, v18);
    std::string::basic_string[abi:ne200100]<0>(v571, "RT Beams Delivery Instruction Storage");
    v572 = v20;
    memset(&v20, 0, sizeof(v20));
    std::string::basic_string[abi:ne200100]<0>(v15, "1.2.840.10008.5.1.4.43.1");
    vega::UID::UID(&v17, v15);
    std::string::basic_string[abi:ne200100]<0>(v573, "Generic Implant Template Storage");
    v574 = v17;
    memset(&v17, 0, sizeof(v17));
    std::string::basic_string[abi:ne200100]<0>(v12, "1.2.840.10008.5.1.4.44.1");
    vega::UID::UID(&v14, v12);
    std::string::basic_string[abi:ne200100]<0>(v575, "Implant Assembly Template Storage");
    v576 = v14;
    memset(&v14, 0, sizeof(v14));
    std::string::basic_string[abi:ne200100]<0>(v9, "1.2.840.10008.5.1.4.45.1");
    vega::UID::UID(&__p, v9);
    std::string::basic_string[abi:ne200100]<0>(v577, "Implant Template Group Storage");
    v578 = __p;
    memset(&__p, 0, sizeof(__p));
    qword_1EB1ECB90 = 0;
    unk_1EB1ECB98 = 0;
    vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS = 0;
    std::vector<std::pair<std::string,vega::UID>>::__init_with_size[abi:ne200100]<std::pair<std::string,vega::UID> const*,std::pair<std::string,vega::UID> const*>(&vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS, v351, &v579, 0x72uLL);
    v6 = v577;
    v7 = -5472;
    do
    {
      vega::dicom::TransferSyntax::~TransferSyntax(v6);
      v6 = (v8 - 48);
      v7 += 48;
    }

    while (v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v64 < 0)
    {
      operator delete(v63[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (v70 < 0)
    {
      operator delete(v69[0]);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (v76 < 0)
    {
      operator delete(v75[0]);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (v88 < 0)
    {
      operator delete(v87[0]);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (v91 < 0)
    {
      operator delete(v90[0]);
    }

    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    if (v94 < 0)
    {
      operator delete(v93[0]);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    if (v97 < 0)
    {
      operator delete(v96[0]);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (v100 < 0)
    {
      operator delete(v99[0]);
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    if (v103 < 0)
    {
      operator delete(v102[0]);
    }

    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (v106 < 0)
    {
      operator delete(v105[0]);
    }

    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v110.__r_.__value_.__l.__data_);
    }

    if (v109 < 0)
    {
      operator delete(v108[0]);
    }

    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (v112 < 0)
    {
      operator delete(v111[0]);
    }

    if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (v115 < 0)
    {
      operator delete(v114[0]);
    }

    if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v119.__r_.__value_.__l.__data_);
    }

    if (v118 < 0)
    {
      operator delete(v117[0]);
    }

    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v122.__r_.__value_.__l.__data_);
    }

    if (v121 < 0)
    {
      operator delete(v120[0]);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (v124 < 0)
    {
      operator delete(v123[0]);
    }

    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (v130 < 0)
    {
      operator delete(v129[0]);
    }

    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v134.__r_.__value_.__l.__data_);
    }

    if (v133 < 0)
    {
      operator delete(v132[0]);
    }

    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    if (v136 < 0)
    {
      operator delete(v135[0]);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (v139 < 0)
    {
      operator delete(v138[0]);
    }

    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (v142 < 0)
    {
      operator delete(v141[0]);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (v148 < 0)
    {
      operator delete(v147[0]);
    }

    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    if (v151 < 0)
    {
      operator delete(v150[0]);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if (v154 < 0)
    {
      operator delete(v153[0]);
    }

    if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v158.__r_.__value_.__l.__data_);
    }

    if (v157 < 0)
    {
      operator delete(v156[0]);
    }

    if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v161.__r_.__value_.__l.__data_);
    }

    if (v160 < 0)
    {
      operator delete(v159[0]);
    }

    if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v164.__r_.__value_.__l.__data_);
    }

    if (v163 < 0)
    {
      operator delete(v162[0]);
    }

    if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v167.__r_.__value_.__l.__data_);
    }

    if (v166 < 0)
    {
      operator delete(v165[0]);
    }

    if (SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v170.__r_.__value_.__l.__data_);
    }

    if (v169 < 0)
    {
      operator delete(v168[0]);
    }

    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v173.__r_.__value_.__l.__data_);
    }

    if (v172 < 0)
    {
      operator delete(v171[0]);
    }

    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v176.__r_.__value_.__l.__data_);
    }

    if (v175 < 0)
    {
      operator delete(v174[0]);
    }

    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }

    if (v178 < 0)
    {
      operator delete(v177[0]);
    }

    if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v182.__r_.__value_.__l.__data_);
    }

    if (v181 < 0)
    {
      operator delete(v180[0]);
    }

    if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v185.__r_.__value_.__l.__data_);
    }

    if (v184 < 0)
    {
      operator delete(v183[0]);
    }

    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (v187 < 0)
    {
      operator delete(v186[0]);
    }

    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v191.__r_.__value_.__l.__data_);
    }

    if (v190 < 0)
    {
      operator delete(v189[0]);
    }

    if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v194.__r_.__value_.__l.__data_);
    }

    if (v193 < 0)
    {
      operator delete(v192[0]);
    }

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if (v196 < 0)
    {
      operator delete(v195[0]);
    }

    if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200.__r_.__value_.__l.__data_);
    }

    if (v199 < 0)
    {
      operator delete(v198[0]);
    }

    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }

    if (v202 < 0)
    {
      operator delete(v201[0]);
    }

    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    if (v205 < 0)
    {
      operator delete(v204[0]);
    }

    if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v209.__r_.__value_.__l.__data_);
    }

    if (v208 < 0)
    {
      operator delete(v207[0]);
    }

    if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v212.__r_.__value_.__l.__data_);
    }

    if (v211 < 0)
    {
      operator delete(v210[0]);
    }

    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    if (v214 < 0)
    {
      operator delete(v213[0]);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    if (v217 < 0)
    {
      operator delete(v216[0]);
    }

    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    if (v220 < 0)
    {
      operator delete(v219[0]);
    }

    if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v224.__r_.__value_.__l.__data_);
    }

    if (v223 < 0)
    {
      operator delete(v222[0]);
    }

    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (v226 < 0)
    {
      operator delete(v225[0]);
    }

    if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v230.__r_.__value_.__l.__data_);
    }

    if (v229 < 0)
    {
      operator delete(v228[0]);
    }

    if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v233.__r_.__value_.__l.__data_);
    }

    if (v232 < 0)
    {
      operator delete(v231[0]);
    }

    if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v236.__r_.__value_.__l.__data_);
    }

    if (v235 < 0)
    {
      operator delete(v234[0]);
    }

    if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v239.__r_.__value_.__l.__data_);
    }

    if (v238 < 0)
    {
      operator delete(v237[0]);
    }

    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    if (v241 < 0)
    {
      operator delete(v240[0]);
    }

    if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v245.__r_.__value_.__l.__data_);
    }

    if (v244 < 0)
    {
      operator delete(v243[0]);
    }

    if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v248.__r_.__value_.__l.__data_);
    }

    if (v247 < 0)
    {
      operator delete(v246[0]);
    }

    if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v251.__r_.__value_.__l.__data_);
    }

    if (v250 < 0)
    {
      operator delete(v249[0]);
    }

    if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v254.__r_.__value_.__l.__data_);
    }

    if (v253 < 0)
    {
      operator delete(v252[0]);
    }

    if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v257.__r_.__value_.__l.__data_);
    }

    if (v256 < 0)
    {
      operator delete(v255[0]);
    }

    if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v260.__r_.__value_.__l.__data_);
    }

    if (v259 < 0)
    {
      operator delete(v258[0]);
    }

    if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v263.__r_.__value_.__l.__data_);
    }

    if (v262 < 0)
    {
      operator delete(v261[0]);
    }

    if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v266.__r_.__value_.__l.__data_);
    }

    if (v265 < 0)
    {
      operator delete(v264[0]);
    }

    if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v269.__r_.__value_.__l.__data_);
    }

    if (v268 < 0)
    {
      operator delete(v267[0]);
    }

    if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v272.__r_.__value_.__l.__data_);
    }

    if (v271 < 0)
    {
      operator delete(v270[0]);
    }

    if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v275.__r_.__value_.__l.__data_);
    }

    if (v274 < 0)
    {
      operator delete(v273[0]);
    }

    if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v278.__r_.__value_.__l.__data_);
    }

    if (v277 < 0)
    {
      operator delete(v276[0]);
    }

    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v281.__r_.__value_.__l.__data_);
    }

    if (v280 < 0)
    {
      operator delete(v279[0]);
    }

    if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v284.__r_.__value_.__l.__data_);
    }

    if (v283 < 0)
    {
      operator delete(v282[0]);
    }

    if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v287.__r_.__value_.__l.__data_);
    }

    if (v286 < 0)
    {
      operator delete(v285[0]);
    }

    if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v290.__r_.__value_.__l.__data_);
    }

    if (v289 < 0)
    {
      operator delete(v288[0]);
    }

    if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v293.__r_.__value_.__l.__data_);
    }

    if (v292 < 0)
    {
      operator delete(v291[0]);
    }

    if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v296.__r_.__value_.__l.__data_);
    }

    if (v295 < 0)
    {
      operator delete(v294[0]);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (v298 < 0)
    {
      operator delete(v297[0]);
    }

    if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v302.__r_.__value_.__l.__data_);
    }

    if (v301 < 0)
    {
      operator delete(v300[0]);
    }

    if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v305.__r_.__value_.__l.__data_);
    }

    if (v304 < 0)
    {
      operator delete(v303[0]);
    }

    if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v308.__r_.__value_.__l.__data_);
    }

    if (v307 < 0)
    {
      operator delete(v306[0]);
    }

    if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v311.__r_.__value_.__l.__data_);
    }

    if (v310 < 0)
    {
      operator delete(v309[0]);
    }

    if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v314.__r_.__value_.__l.__data_);
    }

    if (v313 < 0)
    {
      operator delete(v312[0]);
    }

    if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v317.__r_.__value_.__l.__data_);
    }

    if (v316 < 0)
    {
      operator delete(v315[0]);
    }

    if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v320.__r_.__value_.__l.__data_);
    }

    if (v319 < 0)
    {
      operator delete(v318[0]);
    }

    if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v323.__r_.__value_.__l.__data_);
    }

    if (v322 < 0)
    {
      operator delete(v321[0]);
    }

    if (SHIBYTE(v326.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v326.__r_.__value_.__l.__data_);
    }

    if (v325 < 0)
    {
      operator delete(v324[0]);
    }

    if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v329.__r_.__value_.__l.__data_);
    }

    if (v328 < 0)
    {
      operator delete(v327[0]);
    }

    if (SHIBYTE(v332.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v332.__r_.__value_.__l.__data_);
    }

    if (v331 < 0)
    {
      operator delete(v330[0]);
    }

    if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v335.__r_.__value_.__l.__data_);
    }

    if (v334 < 0)
    {
      operator delete(v333[0]);
    }

    if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v338.__r_.__value_.__l.__data_);
    }

    if (v337 < 0)
    {
      operator delete(v336[0]);
    }

    if (SHIBYTE(v341.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v341.__r_.__value_.__l.__data_);
    }

    if (v340 < 0)
    {
      operator delete(v339[0]);
    }

    if (SHIBYTE(v344.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v344.__r_.__value_.__l.__data_);
    }

    if (v343 < 0)
    {
      operator delete(v342[0]);
    }

    if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v347.__r_.__value_.__l.__data_);
    }

    if (v346 < 0)
    {
      operator delete(v345[0]);
    }

    if (SHIBYTE(v350.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v350.__r_.__value_.__l.__data_);
    }

    if (v349 < 0)
    {
      operator delete(v348[0]);
    }

    v3 = v5;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return std::vector<std::pair<std::string,vega::UID>>::__init_with_size[abi:ne200100]<std::pair<std::string,vega::UID>*,std::pair<std::string,vega::UID>*>(v3, vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS, qword_1EB1ECB90, 0xAAAAAAAAAAAAAAABLL * ((qword_1EB1ECB90 - vega::dicom::SOPClass::NAME_UID_PAIRS(void)::NAME_UID_PAIRS) >> 4));
}