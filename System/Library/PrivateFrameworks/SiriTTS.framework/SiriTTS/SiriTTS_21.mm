void kaldi::ParseOptions::Escape(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1[23];
  v5 = *a1;
  if (v4 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = *v6;
  if (!*v6)
  {
LABEL_16:
    if ((v4 & 0x80u) == 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = v5;
    }

    v13 = 39;
    v14 = "'\\''";
    if (strchr(v12, 39))
    {
      {
        v13 = 39;
      }

      else
      {
        v14 = "\";
        v13 = 34;
      }
    }

    __s[1] = 0;
    __s[0] = v13;
    std::string::basic_string[abi:ne200100]<0>(a2, __s);
    v15 = *a1;
    if ((a1[23] & 0x80u) == 0)
    {
      v15 = a1;
    }

    v16 = *v15;
    if (*v15)
    {
      v17 = v15 + 1;
      do
      {
        v18 = v14;
        if (v16 != v13)
        {
          __s[0] = v16;
          v18 = __s;
        }

        std::string::append(a2, v18);
        v19 = *v17++;
        v16 = v19;
      }

      while (v19);
    }

    __s[0] = v13;
    std::string::append(a2, __s);
    return;
  }

  v8 = MEMORY[0x1E69E9830];
  do
  {
    if (v7 < 0)
    {
      if (__maskrune(v7, 0x500uLL))
      {
        goto LABEL_10;
      }
    }

    else if ((*(v8 + 4 * v7 + 60) & 0x500) != 0)
    {
      goto LABEL_10;
    }

    v10 = 91;
    v11 = 1u;
    while (*v6 != v10)
    {
      v10 = asc_1C38B963C[v11++];
      if (v11 == 14)
      {
        LOBYTE(v4) = a1[23];
        v5 = *a1;
        goto LABEL_16;
      }
    }

LABEL_10:
    v9 = *++v6;
    v7 = v9;
  }

  while (v9);
  if (a1[23] < 0)
  {
    v20 = *a1;
    v21 = *(a1 + 1);

    std::string::__init_copy_ctor_external(a2, v20, v21);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 2);
  }
}

void sub_1C312803C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x1C692A7A0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C31281E8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1C692A7B0](a1 + 2);

  return std::istream::~istream();
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void kaldi::SplitStringOnString(uint64_t a1, char *a2, void ***a3)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v8 = a2[23];
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
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (!v10)
  {
    v17 = 0;
    goto LABEL_26;
  }

  if (size >= v10)
  {
    v11 = p_str + size;
    v12 = *v9;
    v13 = p_str;
    do
    {
      v14 = size - v10;
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, v14 + 1);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (!memcmp(v15, v9, v10))
      {
        if (v16 != v11)
        {
          v17 = v16 - p_str;
          while (v17 != -1)
          {
LABEL_26:
            std::string::basic_string(&v33, &__str, 0, v17, &v35);
            kaldi::Trim(&v33);
            std::vector<std::string>::push_back[abi:ne200100](a3, &v33);
            v18 = a2[23];
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(a2 + 1);
            }

            v19 = std::string::erase(&__str, 0, v18 + v17);
            std::string::operator=(&__str, v19);
            v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &__str;
            }

            else
            {
              v21 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __str.__r_.__value_.__l.__size_;
            }

            v22 = a2[23];
            if (v22 >= 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = *a2;
            }

            if (v22 >= 0)
            {
              v24 = a2[23];
            }

            else
            {
              v24 = *(a2 + 1);
            }

            if (v24)
            {
              v25 = v21 + v20;
              if (v20 >= v24)
              {
                v29 = *v23;
                v30 = v21;
                do
                {
                  v31 = v20 - v24;
                  if (v31 == -1)
                  {
                    break;
                  }

                  v32 = memchr(v30, v29, v31 + 1);
                  if (!v32)
                  {
                    break;
                  }

                  v26 = v32;
                  if (!memcmp(v32, v23, v24))
                  {
                    goto LABEL_42;
                  }

                  v30 = (v26 + 1);
                  v20 = v25 - (v26 + 1);
                }

                while (v20 >= v24);
              }

              v26 = v25;
LABEL_42:
              if (v26 == v25)
              {
                v17 = -1;
              }

              else
              {
                v17 = v26 - v21;
              }
            }

            else
            {
              v17 = 0;
            }

            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }
          }
        }

        break;
      }

      v13 = (v16 + 1);
      size = v11 - (v16 + 1);
    }

    while (size >= v10);
  }

  kaldi::Trim(&__str);
  v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __str.__r_.__value_.__l.__size_;
  }

  if (v27)
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, &__str);
    v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v28 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1C31288DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *kaldi::Trim(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    v3 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v5 = ~size;
  v6 = v3 + size - 1;
  do
  {
    if (v5 == -1)
    {
      goto LABEL_11;
    }

    v7 = *v6--;
    ++v5;
  }

  while (memchr(" \t\n\r\f\v", v7, 6uLL));
  if (!v5)
  {
LABEL_11:
    if ((v2 & 0x80000000) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      v11 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = this + v2;
      v12 = this;
    }

    v13 = v11 - v12;
    v14 = this;
    goto LABEL_15;
  }

  result = std::string::erase(this, -v5, 0xFFFFFFFFFFFFFFFFLL);
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = this->__r_.__value_.__l.__size_;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v10 = this;
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return result;
    }
  }

  v15 = 0;
  while (1)
  {
    result = memchr(" \t\n\r\f\v", v10->__r_.__value_.__s.__data_[v15], 6uLL);
    if (!result)
    {
      break;
    }

    if (v9 == ++v15)
    {
      return result;
    }
  }

  if (v15 != -1)
  {
    v14 = this;
    v13 = v15;
LABEL_15:

    return std::string::erase(v14, 0, v13);
  }

  return result;
}

void kaldi::SplitStringToStringPair(const std::string *a1, const char *a2, std::allocator<std::pair<std::string, std::string>> *a3)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  kaldi::SplitStringToVector(a1, a2, 1, &v43);
  v5 = *a3;
  for (i = *(a3 + 1); i != v5; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a3, i))
  {
    i -= 48;
  }

  *(a3 + 1) = v5;
  v6 = v43;
  v7 = v44;
  if (v43 == v44)
  {
    goto LABEL_45;
  }

  do
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    kaldi::SplitStringToVector(v6, ",", 1, &v40);
    v8 = v40;
    if (v41 == v40)
    {
LABEL_47:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v37, "SplitStringToStringPair", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/text-utils.cc", 96);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "tensor pair specified size is not 2", 35);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v37);
    }

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v8 + v9);
      size = *(v8 + v9 + 23);
      if ((size & 0x8000000000000000) == 0)
      {
        if (!*(v8 + v9 + 23))
        {
          goto LABEL_46;
        }

        if (v11->__r_.__value_.__s.__data_[0] != 91)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (!v11->__r_.__value_.__l.__size_)
      {
LABEL_46:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v37, "SplitStringToStringPair", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/util/text-utils.cc", 86);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "tensor specified being empty is not allowed", 43);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v37);
      }

      if (*v11->__r_.__value_.__l.__data_ == 91)
      {
        size = v11->__r_.__value_.__l.__size_;
LABEL_14:
        std::string::basic_string(&v37, (v8 + v9), 1uLL, size - 1, &v46);
        v13 = v40 + v9;
        if (*(v40 + v9 + 23) < 0)
        {
          operator delete(*v13);
        }

        v14 = *&v37.__r_.__value_.__l.__data_;
        *(v13 + 2) = *(&v37.__r_.__value_.__l + 2);
        *v13 = v14;
        v8 = v40;
        LOBYTE(size) = *(v40 + v9 + 23);
      }

      if ((size & 0x80) == 0)
      {
        v11 = (v8 + 24 * v10);
LABEL_19:
        v15 = 0;
        v16 = size;
        v17 = v11;
        goto LABEL_21;
      }

      v11 = (v8 + v9);
      v17 = *(v8 + v9);
      v16 = *(v8 + v9 + 8);
      v15 = 1;
LABEL_21:
      if (v17->__r_.__value_.__s.__data_[v16 - 1] == 93)
      {
        if (v15)
        {
          size = v11->__r_.__value_.__l.__size_;
        }

        else
        {
          size = size;
        }

        std::string::basic_string(&v37, v11, 0, size - 1, &v46);
        v18 = v40 + v9;
        if (*(v40 + v9 + 23) < 0)
        {
          operator delete(*v18);
        }

        v19 = *&v37.__r_.__value_.__l.__data_;
        *(v18 + 2) = *(&v37.__r_.__value_.__l + 2);
        *v18 = v19;
        v8 = v40;
      }

      ++v10;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v41 - v8) >> 3));
    if (v41 - v8 != 48)
    {
      goto LABEL_47;
    }

    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&v37, v8, (v8 + 24));
    v20 = *(a3 + 1);
    v21 = *(a3 + 2);
    if (v20 >= v21)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a3) >> 4);
      v25 = v24 + 1;
      if (v24 + 1 > 0x555555555555555)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a3) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x2AAAAAAAAAAAAAALL)
      {
        v27 = 0x555555555555555;
      }

      else
      {
        v27 = v25;
      }

      v46.__end_cap_.__value_ = a3;
      if (v27)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a3, v27);
      }

      v28 = 48 * v24;
      v29 = *&v37.__r_.__value_.__l.__data_;
      *(v28 + 16) = *(&v37.__r_.__value_.__l + 2);
      *v28 = v29;
      memset(&v37, 0, sizeof(v37));
      v30 = __p;
      *(v28 + 40) = v39;
      *(v28 + 24) = v30;
      v39 = 0;
      __p = 0uLL;
      v31 = 48 * v24 + 48;
      v32 = *(a3 + 1) - *a3;
      v33 = 48 * v24 - v32;
      memcpy((v28 - v32), *a3, v32);
      v34 = *a3;
      *a3 = v33;
      *(a3 + 1) = v31;
      v35 = *(a3 + 2);
      *(a3 + 2) = 0;
      v46.__end_ = v34;
      v46.__end_cap_.__value_ = v35;
      v46.__first_ = v34;
      v46.__begin_ = v34;
      std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v46);
      v36 = SHIBYTE(v39);
      *(a3 + 1) = v31;
      if (v36 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v22 = *&v37.__r_.__value_.__l.__data_;
      *(v20 + 16) = *(&v37.__r_.__value_.__l + 2);
      *v20 = v22;
      memset(&v37, 0, sizeof(v37));
      v23 = v39;
      *(v20 + 24) = __p;
      *(v20 + 40) = v23;
      v39 = 0;
      __p = 0uLL;
      *(a3 + 1) = v20 + 48;
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v37.__r_.__value_.__r.__words[0] = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
    ++v6;
  }

  while (v6 != v7);
LABEL_45:
  v37.__r_.__value_.__r.__words[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
}

void sub_1C3128EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v9 - 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void kaldi::SplitStringToVector(const std::string *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  kaldi::SplitStringToVector(a1, a2, 1, a3);
}

void sub_1C3128F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1C3128F9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Vocab::Vocab(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v8 = a1 + 8;
  *(a1 + 56) = 0u;
  v9 = a1 + 56;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  v10 = a1 + 120;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  v38 = (a1 + 56);
  v39 = (a1 + 8);
  kaldi::ExpectToken(a2, a3, "<VocabSize>");
  kaldi::ReadBasicType<int>(a2, a3, a1);
  kaldi::ExpectToken(a2, a3, "<UnknownWord>");
  kaldi::ReadToken(a2, a3, v8, v11, v12);
  kaldi::ExpectToken(a2, a3, "<BeginOfSentenceWord>");
  kaldi::ReadToken(a2, a3, a1 + 32, v13, v14);
  kaldi::ExpectToken(a2, a3, "<EndOfSentenceWord>");
  kaldi::ReadToken(a2, a3, v9, v15, v16);
  if (*a1 >= 1)
  {
    v19 = 0;
    do
    {
      __p = 0uLL;
      v42 = 0;
      __x = 0.0;
      kaldi::ReadToken(a2, a3, &__p, v17, v18);
      kaldi::ReadBasicType<double>(a2, a3, &__x);
      v44 = COERCE_DOUBLE(&__p);
      *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), &__p, &std::piecewise_construct, &v44, &v43) + 10) = v19;
      std::vector<std::string>::push_back[abi:ne200100](v10, &__p);
      if (a4)
      {
        v44 = log(__x);
        std::vector<double>::push_back[abi:ne200100]((a1 + 144), &v44);
      }

      else
      {
        v21 = *(a1 + 152);
        v20 = *(a1 + 160);
        if (v21 >= v20)
        {
          v23 = *(a1 + 144);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
          v29 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v28)
          {
            v29 = v26;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1 + 144, v29);
          }

          v30 = (v21 - v23) >> 3;
          v31 = (8 * v25);
          v32 = (8 * v25 - 8 * v30);
          *v31 = __x;
          v22 = v31 + 1;
          memcpy(v32, v23, v24);
          v33 = *(a1 + 144);
          *(a1 + 144) = v32;
          *(a1 + 152) = v22;
          *(a1 + 160) = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v21 = __x;
          v22 = v21 + 1;
        }

        *(a1 + 152) = v22;
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p);
      }

      ++v19;
    }

    while (v19 < *a1);
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), v39))
  {
    v36 = "all_words_and_indices_.count(oov_word_) > 0";
    v37 = 210;
    goto LABEL_28;
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), (a1 + 32)))
  {
    v36 = "all_words_and_indices_.count(bos_word_) > 0";
    v37 = 211;
    goto LABEL_28;
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), v38))
  {
    v36 = "all_words_and_indices_.count(eos_word_) > 0";
    v37 = 212;
LABEL_28:
    kaldi::KaldiAssertFailure_("Vocab", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnlm/vocab.cc", v37, v36, v34);
  }

  v44 = *&v39;
  *(a1 + 168) = *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 80), v39, &std::piecewise_construct, &v44, &__x) + 10);
  return a1;
}

void sub_1C31292F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = *(v17 + 144);
  if (v19)
  {
    *(v17 + 152) = v19;
    operator delete(v19);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table((v17 + 80));
  if (*(v17 + 79) < 0)
  {
    operator delete(*a9);
  }

  if (*(v17 + 55) < 0)
  {
    operator delete(*(v17 + 32));
  }

  if (*(v17 + 31) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::Vocab::EosWord(kaldi::quasar::Vocab *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *a2 = *(this + 56);
  }
}

uint64_t kaldi::quasar::Vocab::GetWordId(uint64_t a1, uint64_t *a2)
{
  v3 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((a1 + 80), a2);
  v4 = (v3 + 5);
  if (!v3)
  {
    v4 = (a1 + 168);
  }

  return *v4;
}

uint64_t kaldi::quasar::Vocab::GetWord(kaldi::quasar::Vocab *this, signed int a2)
{
  if (a2 < 0 || *this <= a2)
  {
    return this + 8;
  }

  else
  {
    return *(this + 15) + 24 * a2;
  }
}

void sub_1C31294B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1C312970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C31297CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1C3129A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C3129B04(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t **a1, int *a2, _DWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 7);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v11);
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

void std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_front<std::pair<int,int> *>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v9);
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

void std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *> &>::emplace_front<std::pair<int,int> *&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1[4], v9);
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

void sub_1C3129FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::~Nnet((v5 + 384), a2, a3, a4, a5);
  kaldi::nnet1::Nnet::~Nnet(v6, v8, v9, v10, v11);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::AttentionModel::~AttentionModel(kaldi::quasar::TorchEncoderDecoder::AttentionModel *this)
{
  *this = &unk_1F42CBCD8;
  v2 = (this + 8);
  kaldi::CuMatrix<float>::~CuMatrix(this + 1144);
  kaldi::nnet1::Nnet::~Nnet((this + 760), v3, v4, v5, v6);
  kaldi::nnet1::Nnet::~Nnet((this + 384), v7, v8, v9, v10);
  kaldi::nnet1::Nnet::~Nnet(v2, v11, v12, v13, v14);
}

{
  kaldi::quasar::TorchEncoderDecoder::AttentionModel::~AttentionModel(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::TorchEncoderDecoder::AttentionModel::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*(a2 + 20) < 1)
  {
    v14 = a1 + 1144;

    kaldi::CuMatrix<float>::Resize(v14, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(a1 + 1144, a4, *(a2 + 16), 2, 0);
    if (*(a1 + 1164) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
    }

    v10 = *(a1 + 1160);
    v11 = *(a1 + 1176);
    v16[1] = *(a1 + 1152) + 4 * (*(a1 + 1168) * a3);
    v16[0] = &unk_1F42BFF30;
    v16[2] = v10;
    v16[3] = v11;
    if (!*(a2 + 20))
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
    }

    v12 = *(a2 + 16);
    v13 = *(a2 + 32);
    v15[1] = *(a2 + 8);
    v15[0] = &unk_1F42BFF30;
    v15[2] = v12;
    v15[3] = v13;
    kaldi::CuVectorBase<float>::CopyFromVec(v16, v15, v7, v8, v9);
  }
}

void kaldi::quasar::TorchEncoderDecoder::AttentionModel::GetHistoryState(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::CuMatrix<float>::Resize(a2, *(a1 + 1164) > 0, *(a1 + 1160), 0, 0);
  if (*(a2 + 20) >= 1)
  {
    v8 = a3;
    v10 = 0;
    v11 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v8, &__p, 1uLL);
    kaldi::CuMatrixBase<float>::CopyRows(a2, a1 + 1144, &__p, v6, v7);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }
}

void sub_1C312A29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TorchEncoderDecoder::AttentionModel::Read(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1[1137] == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 105, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Reading Whe_", 12);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
    }

    kaldi::nnet1::Nnet::Read((a1 + 8), a2, a3, a4);
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 107, 2);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Whe_.Dims() ", 12);
      v13 = kaldi::nnet1::Nnet::InputDim((a1 + 8), v9, v10, v11, v12);
      v14 = MEMORY[0x1C692A960](v8, v13);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
      v20 = kaldi::nnet1::Nnet::OutputDim((a1 + 8), v16, v17, v18, v19);
      MEMORY[0x1C692A960](v15, v20);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
    }
  }

  if ((a1[1137] & 1) != 0 || a1[1138] == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 110, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Reading Whd_", 12);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
    }

    kaldi::nnet1::Nnet::Read((a1 + 384), a2, a3, a4);
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 112, 2);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Whd_.Dims() ", 12);
      v26 = kaldi::nnet1::Nnet::InputDim((a1 + 384), v22, v23, v24, v25);
      v27 = MEMORY[0x1C692A960](v21, v26);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " ", 1);
      v33 = kaldi::nnet1::Nnet::OutputDim((a1 + 384), v29, v30, v31, v32);
      MEMORY[0x1C692A960](v28, v33);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
      if (kaldi::g_kaldi_verbose_level >= 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 113, 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Reading Whc_", 12);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
      }
    }

    kaldi::nnet1::Nnet::Read((a1 + 760), a2, a3, a4);
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v47, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 115, 2);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Whc_.Dims() ", 12);
      v39 = kaldi::nnet1::Nnet::InputDim((a1 + 760), v35, v36, v37, v38);
      v40 = MEMORY[0x1C692A960](v34, v39);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
      v46 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v42, v43, v44, v45);
      MEMORY[0x1C692A960](v41, v46);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v47);
    }
  }
}

void sub_1C312A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TorchEncoderDecoder::AttentionModel::Feedforward@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::vector<int> *a6@<X8>)
{
  v12 = *(a3 + 20);
  v85 = 0u;
  v84 = 0u;
  v83 = &unk_1F42BFED8;
  v86 = 0;
  if (*(a1 + 1138) == 1)
  {
    v81 = 0uLL;
    v80 = 0uLL;
    v79 = &unk_1F42BFED8;
    v82 = 0;
    kaldi::nnet1::Nnet::Feedforward((a1 + 384), a3, &v79, 0xFFFFFFFF, 0);
    kaldi::CuMatrix<float>::Resize(&v83, *(a2 + 20), v12, 0, 0);
    kaldi::CuMatrixBase<float>::AddMatMat(&v83, a2, 111, &v79, 0x70);
LABEL_5:
    kaldi::CuMatrix<float>::~CuMatrix(&v79);
    goto LABEL_7;
  }

  if (*(a1 + 1137) == 1)
  {
    v81 = 0uLL;
    v80 = 0uLL;
    v79 = &unk_1F42BFED8;
    v82 = 0;
    kaldi::nnet1::Nnet::Feedforward((a1 + 8), a2, &v79, 0xFFFFFFFF, 0);
    v76 = 0u;
    v77 = 0u;
    v75 = &unk_1F42BFED8;
    v78 = 0;
    kaldi::nnet1::Nnet::Feedforward((a1 + 384), a3, &v75, 0xFFFFFFFF, 0);
    kaldi::CuMatrix<float>::Resize(&v83, HIDWORD(v80), v12, 0, 0);
    kaldi::CuMatrixBase<float>::AddMatMat(&v83, &v79, 111, &v75, 0x70);
    kaldi::CuMatrix<float>::~CuMatrix(&v75);
    goto LABEL_5;
  }

  kaldi::CuMatrix<float>::Resize(&v83, *(a2 + 20), v12, 0, 0);
  kaldi::CuMatrixBase<float>::AddMatMat(&v83, a2, 111, a3, 0x70);
LABEL_7:
  kaldi::CuMatrix<float>::Transpose(&v83);
  v68 = a3;
  __sz = 0;
  __src = 0;
  v74 = 0;
  kaldi::CuMatrixBase<float>::FindRowMaxId(&v83, &__sz, v13, v14, v15);
  kaldi::CuMatrix<float>::Resize(a4, v12, *(a2 + 16), 0, 0);
  kaldi::CuMatrix<float>::Resize(a5, v12, DWORD2(v84), 0, 0);
  if (v12 >= 1)
  {
    v18 = 0;
    do
    {
      v76 = 0uLL;
      v75 = &unk_1F42BFF70;
      *&v77 = 0;
      kaldi::CuVector<float>::Resize(&v75, DWORD2(v84), 0, v16, v17);
      if (HIDWORD(v84) <= v18)
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
      }

      *&v80 = v84 + 4 * (v85 * v18);
      v79 = &unk_1F42BFF30;
      *(&v80 + 1) = DWORD2(v84);
      *&v81 = *(&v85 + 1);
      kaldi::CuVector<float>::operator=(&v75, &v79, v19, v20, v21);
      if (*(a1 + 1136))
      {
        kaldi::CuVectorBase<float>::ApplyExp(&v75);
        if (*(a1 + 1164) <= v18)
        {
          kaldi::CuMatrix<float>::Resize(a1 + 1144, v18 + 1, DWORD2(v76), 2, 0);
          if (*(a1 + 1164) <= v18)
          {
            kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v42);
          }

          v43 = *(a1 + 1160);
          v44 = *(a1 + 1176);
          *&v80 = *(a1 + 1152) + 4 * (*(a1 + 1168) * v18);
          v79 = &unk_1F42BFF30;
          *(&v80 + 1) = v43;
          *&v81 = v44;
          kaldi::CuVectorBase<float>::CopyFromVec(&v79, &v75, v40, v41, v42);
        }

        else
        {
          kaldi::CuVector<float>::CuVector(&v79, &v75, v23, v24, v25);
          if (*(a1 + 1164) <= v18)
          {
            kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v28);
          }

          v29 = *(a1 + 1160);
          v30 = *(a1 + 1176);
          *&v70 = *(a1 + 1152) + 4 * (*(a1 + 1168) * v18);
          v69 = &unk_1F42BFF30;
          *(&v70 + 1) = v29;
          *&v71 = v30;
          kaldi::CuVectorBase<float>::DivElements(&v75, &v69, v26, v27, v28);
          if (*(a1 + 1164) <= v18)
          {
            kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v33);
          }

          v35 = *(a1 + 1160);
          v36 = *(a1 + 1176);
          *&v70 = *(a1 + 1152) + 4 * (*(a1 + 1168) * v18);
          v69 = &unk_1F42BFF30;
          *(&v70 + 1) = v35;
          *&v71 = v36;
          v34.n128_u32[0] = 1.0;
          kaldi::CuVectorBase<float>::AddVec(&v69, &v79, v34, 1.0, v31, v32, v33);
          kaldi::CuVector<float>::~CuVector(&v79);
        }

        v45 = kaldi::CuVectorBase<float>::Sum(&v75);
        kaldi::CuVectorBase<float>::Scale(&v75, 1.0 / *&v45);
      }

      else
      {
        kaldi::CuVectorBase<float>::ApplySoftMax(&v75, v22);
      }

      if (*(a5 + 20) <= v18)
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v39);
      }

      v46 = *(a5 + 16);
      v47 = *(a5 + 32);
      *&v80 = *(a5 + 8) + 4 * (*(a5 + 24) * v18);
      v79 = &unk_1F42BFF30;
      *(&v80 + 1) = v46;
      *&v81 = v47;
      kaldi::CuVectorBase<float>::CopyFromVec(&v79, &v75, v37, v38, v39);
      kaldi::CuMatrix<float>::CuMatrix(&v79, a2, 111);
      kaldi::CuMatrixBase<float>::MulRowsVec(&v79, &v75, v48, v49, v50);
      if (*(a4 + 20) <= v18)
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v53);
      }

      v54 = *(a4 + 16);
      v55 = *(a4 + 32);
      *&v70 = *(a4 + 8) + 4 * (*(a4 + 24) * v18);
      v69 = &unk_1F42BFF30;
      *(&v70 + 1) = v54;
      *&v71 = v55;
      kaldi::CuVectorBase<float>::AddRowSumMat(&v69, &v79, 1.0, 111.0, v51, v52, v53);
      kaldi::CuMatrix<float>::~CuMatrix(&v79);
      kaldi::CuVector<float>::~CuVector(&v75);
      ++v18;
    }

    while (v12 != v18);
  }

  if (*(a1 + 1138))
  {
    v81 = 0u;
    v80 = 0u;
    v79 = &unk_1F42BFED8;
    v82 = 0;
    kaldi::CuMatrix<float>::Resize(&v79, v12, (*(a3 + 16) + *(a4 + 16)), 0, 0);
    v56 = a6;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v75, &v79, 0, SHIDWORD(v80), 0, *(a4 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v75, a4, 111, v57, v58);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, &v79, 0, SHIDWORD(v80), *(a4 + 16), *(v68 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v69, v68, 111, v59, v60);
    kaldi::nnet1::Nnet::Feedforward((a1 + 760), &v79, a4, 0xFFFFFFFF, 0);
    kaldi::CuMatrixBase<float>::ApplyTanh(a4, v61, v62, v63, v64);
    v69 = &unk_1F42BFE90;
    v70 = 0u;
    v71 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
    v75 = &unk_1F42BFE90;
    v76 = 0u;
    v77 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase();
  }

  else
  {
    v56 = a6;
    if (*(a1 + 1137) != 1)
    {
      goto LABEL_27;
    }

    v81 = 0u;
    v80 = 0u;
    v79 = &unk_1F42BFED8;
    v82 = 0;
    kaldi::nnet1::Nnet::Feedforward((a1 + 760), a4, &v79, 0xFFFFFFFF, 0);
    kaldi::CuMatrix<float>::operator=(a4, &v79);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v79);
LABEL_27:
  v56->__begin_ = 0;
  v56->__end_ = 0;
  v56->__end_cap_.__value_ = 0;
  if (__sz)
  {
    std::vector<float>::resize(v56, __sz);
    begin = v56->__begin_;
    v66 = 4 * __sz;
  }

  else
  {
    v66 = 0;
    begin = 0;
  }

  memcpy(begin, __src, v66);
  if (__src)
  {
    free(__src);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v83);
}

void sub_1C312AE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, ...)
{
  va_start(va, a21);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(v21 - 152);
  _Unwind_Resume(a1);
}

void sub_1C312B2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  kaldi::CuMatrix<float>::~CuMatrix(v22);
  v29 = *v24;
  if (*v24)
  {
    *(v20 + 3992) = v29;
    operator delete(v29);
  }

  kaldi::quasar::TorchEncoderDecoder::TorchEncoderDecoder(v20, (v20 + 3952), v21, (v20 + 3672));
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((v20 + 3664), 0, v30, v31, v32);
  std::unique_ptr<kaldi::quasar::Shortlist>::reset[abi:ne200100]((v20 + 3656), 0);
  v33 = *(v20 + 3648);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v20 + 3632);
  *(v20 + 3632) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *v23;
  *v23 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(v20 + 3600, *(v20 + 3608));
  if (*(v20 + 3599) < 0)
  {
    operator delete(*(v20 + 3576));
  }

  if (*(v20 + 3575) < 0)
  {
    operator delete(*(v20 + 3552));
  }

  kaldi::Vector<float>::Destroy(v27);
  kaldi::CuMatrix<float>::~CuMatrix(v28);
  __p = (v20 + 3408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  kaldi::CuMatrix<float>::~CuMatrix(v26);
  kaldi::CuMatrix<float>::~CuMatrix(v25);
  kaldi::CuMatrix<float>::~CuMatrix(a10);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  kaldi::CuMatrix<float>::~CuMatrix(a12);
  kaldi::CuMatrix<float>::~CuMatrix(a13);
  kaldi::quasar::TorchEncoderDecoder::AttentionModel::~AttentionModel((v20 + 1928));
  kaldi::nnet1::Nnet::~Nnet((v20 + 1552), v36, v37, v38, v39);
  kaldi::nnet1::Nnet::~Nnet((v20 + 1176), v40, v41, v42, v43);
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(v20 + 1152, *(v20 + 1160));
  v48 = *(v20 + 1144);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  kaldi::nnet1::Nnet::~Nnet((v20 + 760), v44, v45, v46, v47);
  kaldi::nnet1::Nnet::~Nnet((v20 + 384), v49, v50, v51, v52);
  kaldi::nnet1::Nnet::~Nnet(v19, v53, v54, v55, v56);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::~TorchEncoderDecoder(kaldi::quasar::TorchEncoderDecoder *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *this = &unk_1F42CBCF8;
  if (*(this + 3920) == 1 && ((*(this + 96) - *(this + 95)) >> 3) >= 1)
  {
    kaldi::nnet1::Nnet::ReleaseComponent((this + 760), 0, a3, a4, a5);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 4008);
  v6 = *(this + 498);
  if (v6)
  {
    *(this + 499) = v6;
    operator delete(v6);
  }

  if (*(this + 3975) < 0)
  {
    operator delete(*(this + 494));
  }

  if (*(this + 3951) < 0)
  {
    operator delete(*(this + 491));
  }

  kaldi::quasar::BPE::~BPE((this + 3672));
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 458, 0, v7, v8, v9);
  std::unique_ptr<kaldi::quasar::Shortlist>::reset[abi:ne200100](this + 457, 0);
  v10 = *(this + 456);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 454);
  *(this + 454) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 453);
  *(this + 453) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 3600, *(this + 451));
  if (*(this + 3599) < 0)
  {
    operator delete(*(this + 447));
  }

  if (*(this + 3575) < 0)
  {
    operator delete(*(this + 444));
  }

  kaldi::Vector<float>::Destroy(this + 3480);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3432);
  v34 = (this + 3408);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v34);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3360);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3312);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3264);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3168);
  kaldi::CuMatrix<float>::~CuMatrix(this + 3120);
  kaldi::quasar::TorchEncoderDecoder::AttentionModel::~AttentionModel((this + 1928));
  kaldi::nnet1::Nnet::~Nnet((this + 1552), v13, v14, v15, v16);
  kaldi::nnet1::Nnet::~Nnet((this + 1176), v17, v18, v19, v20);
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(this + 1152, *(this + 145));
  v25 = *(this + 143);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 760), v21, v22, v23, v24);
  kaldi::nnet1::Nnet::~Nnet((this + 384), v26, v27, v28, v29);
  kaldi::nnet1::Nnet::~Nnet((this + 8), v30, v31, v32, v33);
}

{
  kaldi::quasar::TorchEncoderDecoder::~TorchEncoderDecoder(this, a2, a3, a4, a5);

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(kaldi::quasar::TorchEncoderDecoder *this, int a2)
{
  if (a2)
  {
    kaldi::nnet1::Nnet::ResetHistoryStateIfExists(this + 8);
  }

  kaldi::CuMatrix<float>::Resize(this + 3072, 0, 0, 0, 0);
  kaldi::nnet1::Nnet::ResetHistoryStateIfExists(*(this + 142));
  *(this + 3508) = 0;
  kaldi::nnet1::Nnet::GetHistoricalComponents(&v8, *(this + 142));
  v3 = v8;
  if (v9 != v8)
  {
    v4 = 0;
    do
    {
      v5 = (*(**&v3[8 * v4] + 72))(*&v3[8 * v4]);
      v6 = &unk_1F42CB1B8;
      v7 = *(v5 + 8);
      if (v7 != 1)
      {
        v7 = 1;
        (*(**&v8[8 * v4] + 80))(*&v8[8 * v4], &v6);
      }

      kaldi::nnet1::HistoryOptions::~HistoryOptions(&v6);
      ++v4;
      v3 = v8;
    }

    while (v4 != (v9 - v8) >> 3);
  }

  if (v3)
  {
    v9 = v3;
    operator delete(v3);
  }
}

void sub_1C312B830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  kaldi::nnet1::HistoryOptions::~HistoryOptions(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::GetHistoryState(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v27, (a1 + 4056), a1 + 4112, &__p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  v7 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v8 = v6 - 48;
    v9 = (v6 - 48);
    v10 = (v6 - 48);
    do
    {
      v11 = *v10;
      v10 -= 6;
      (*(v11 + 16))(v9);
      v8 -= 48;
      v12 = v9 == v7;
      v9 = v10;
    }

    while (!v12);
  }

  a2[1] = v7;
  if (kaldi::nnet1::Nnet::HasHistory(*(a1 + 1136)))
  {
    kaldi::nnet1::Nnet::GetHistoricalComponents(&v20, *(a1 + 1136));
    std::vector<kaldi::CuMatrix<float>>::resize(a2, (v21 - v20) >> 3);
    v13 = v20;
    if (v21 != v20)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        *(&__p + 1) = 0;
        v25 = 0;
        v26 = 0;
        *&__p = &unk_1F42BFF70;
        (*(*v13[v15] + 48))(v13[v15], &__p, a3, 0);
        v16 = *a2;
        if (v25 < 1)
        {
          kaldi::CuMatrix<float>::Resize(v16 + v14, 0, 0, 0, 0);
        }

        else
        {
          kaldi::CuMatrix<float>::Resize(v16 + v14, 1, v25, 0, 0);
          kaldi::CuMatrixBase<float>::CopyRowsFromVec(*a2 + v14, &__p);
        }

        kaldi::CuVector<float>::~CuVector(&__p);
        ++v15;
        v13 = v20;
        v14 += 48;
      }

      while (v15 < (v21 - v20) >> 3);
    }

    if (v13)
    {
      *&v21 = v13;
      operator delete(v13);
    }
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v20, a1 + 3312, a3, 1, 0, *(a1 + 3328));
  kaldi::CuMatrix<float>::CuMatrix(&__p, &v20, 111);
  v17 = a2[1];
  if (v17 >= a2[2])
  {
    v18 = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(a2, &__p);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(a2[1], &__p, 111);
    v18 = v17 + 48;
    a2[1] = v17 + 48;
  }

  a2[1] = v18;
  kaldi::CuMatrix<float>::~CuMatrix(&__p);
  v20 = &unk_1F42BFE90;
  v21 = 0u;
  v22 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::CuMatrix<float>::CuMatrix(&__p, 1, 2, 0, 0, 0);
  **(&__p + 1) = vcvt_f32_s32(*(a1 + 3508));
  std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a2, &__p);
  if (*(a1 + 3913) == 1)
  {
    v22 = 0u;
    v21 = 0u;
    v20 = &unk_1F42BFED8;
    v23 = 0;
    kaldi::quasar::TorchEncoderDecoder::AttentionModel::GetHistoryState(a1 + 1928, &v20, a3);
    std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a2, &v20);
    kaldi::CuMatrix<float>::~CuMatrix(&v20);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&__p);
  kaldi::quasar::TimeBlock::~TimeBlock(v27, v19);
}

void sub_1C312BB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, __int128 a10, __int128 a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a13);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock(&a22, v23);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::SetHistoryState(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v44, (a1 + 4056), a1 + 4120, &__p);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (!kaldi::nnet1::Nnet::HasHistory(*(a1 + 1136)))
  {
    v10 = 0;
    goto LABEL_18;
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents(&v35, *(a1 + 1136));
  v8 = v35;
  if (v36 == v35)
  {
    v10 = 0;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = (*(*v8[v10] + 72))(v8[v10]);
    v42 = &unk_1F42CB1B8;
    v43 = *(v11 + 8);
    if (v43 != a4)
    {
      v43 = a4;
      (*(*v35[v10] + 80))(v35[v10], &v42);
    }

    v13 = *a2 + v9;
    v14 = *(v13 + 16);
    if (v14 < 1)
    {
      *(&__p + 1) = 0;
      v40 = 0;
      v41 = 0;
      *&__p = &unk_1F42BFF70;
      (*(*v35[v10] + 64))(v35[v10], &__p, a3, 0);
      kaldi::CuVector<float>::~CuVector(&__p);
    }

    else
    {
      if (!*(v13 + 20))
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
      }

      v15 = v35[v10];
      v16 = *a2 + v9;
      v17 = *(v16 + 8);
      v18 = *(v16 + 32);
      *(&__p + 1) = v17;
      *&__p = &unk_1F42BFF30;
      v40 = v14;
      v41 = v18;
      (*(*v15 + 64))(v15, &__p, a3, 0);
    }

    kaldi::nnet1::HistoryOptions::~HistoryOptions(&v42);
    ++v10;
    v8 = v35;
    v9 += 48;
  }

  while (v10 < (v36 - v35) >> 3);
  if (v35)
  {
LABEL_17:
    v36 = v8;
    operator delete(v8);
  }

LABEL_18:
  kaldi::CuMatrix<float>::Resize(a1 + 3312, a4, *(*a2 + 48 * v10 + 16), 2, 0);
  if (*(a1 + 3332) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
  }

  v22 = *(a1 + 3328);
  v23 = *(a1 + 3344);
  *(&__p + 1) = *(a1 + 3320) + 4 * *(a1 + 3336) * a3;
  *&__p = &unk_1F42BFF30;
  v40 = v22;
  v41 = v23;
  v24 = *a2 + 48 * v10;
  if (!*(v24 + 20))
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
  }

  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  v27 = *(v24 + 32);
  v36 = v25;
  v35 = &unk_1F42BFF30;
  v37 = v26;
  v38 = v27;
  kaldi::CuVectorBase<float>::CopyFromVec(&__p, &v35, v19, v20, v21);
  v30 = *(a1 + 3512);
  v31 = *a2;
  v32 = *(*a2 + 48 * (v10 + 1) + 8);
  v33 = v32[1];
  if (v33 != v30)
  {
    v34 = *(a1 + 3408) + 48 * v30;
    kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(a1, v34, v34, *(a1 + 1136), v29);
    v31 = *a2;
    v32 = *(*a2 + 48 * (v10 + 1) + 8);
    v33 = v32[1];
  }

  *(a1 + 3512) = v33;
  *(a1 + 3508) = *v32;
  if (*(a1 + 3913) == 1)
  {
    kaldi::quasar::TorchEncoderDecoder::AttentionModel::SetHistoryState(a1 + 1928, v31 + 48 * v10 + 96, a3, a4);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v44, v28);
}

void kaldi::quasar::TorchEncoderDecoder::AddTag(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != 1)
  {
    kaldi::KaldiAssertFailure_("AddTag", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x153, "in.NumCols() == 1", a5);
  }

  v5 = a5;
  kaldi::CuMatrix<float>::Resize(a4, (*(a2 + 20) + 1), 1, 0, 0);
  v10 = a3;
  if (*(a1 + 3919) == v5)
  {
    v14 = *(a2 + 20);
    v15 = *(a4 + 16);
    *(*(a4 + 8) + 4 * *(a4 + 24) * v14) = v10;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, a4, 0, v14, 0, v15);
  }

  else
  {
    v11 = *(a4 + 16);
    **(a4 + 8) = v10;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, a4, 1, *(a2 + 20), 0, v11);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, a2, 111, v12, v13);
  v16 = &unk_1F42BFE90;
  v17 = 0u;
  v18 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
}

void kaldi::quasar::TorchEncoderDecoder::FeedforwardModelM(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v63, (a1 + 4056), a1 + 4128, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a2 + 20);
  std::string::basic_string[abi:ne200100]<0>(&v59, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4144, &v59);
  if (SHIBYTE(v59.__end_cap_.__value_) < 0)
  {
    operator delete(v59.__begin_);
  }

  kaldi::quasar::TorchEncoderDecoder::AttentionModel::Feedforward(a1 + 1928, *(a1 + 3408) + 48 * *(a1 + 3512), a1 + 3312, a1 + 3360, a1 + 3432, &v59);
  v10 = *(a1 + 3984);
  if (v10)
  {
    *(a1 + 3992) = v10;
    operator delete(v10);
    *(a1 + 3984) = 0;
    *(a1 + 3992) = 0;
    *(a1 + 4000) = 0;
  }

  *(a1 + 3984) = v59;
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v9);
  std::string::basic_string[abi:ne200100]<0>(&v59, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4160, &v59);
  if (SHIBYTE(v59.__end_cap_.__value_) < 0)
  {
    operator delete(v59.__begin_);
  }

  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 760), a2, a1 + 3168, 0, v11);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v12);
  v17 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v13, v14, v15, v16);
  v22 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v18, v19, v20, v21);
  if (!v8)
  {
    kaldi::KaldiAssertFailure_("FeedforwardModelM", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x2BB, "num_sequences != 0", v23);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 3264, v8, (v22 + v17), 0, 0);
  v28 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v24, v25, v26, v27);
  v33 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v29, v30, v31, v32);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v59, a1 + 3264, 0, *(a1 + 3284), v28, v33);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v59, a1 + 3360, 111, v34, v35);
  v40 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v36, v37, v38, v39);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v56, a1 + 3264, 0, *(a1 + 3284), 0, v40);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v56, a1 + 3168, 111, v41, v42);
  v47 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v43, v44, v45, v46);
  kaldi::CuMatrix<float>::Resize(a1 + 3312, v8, v47, 0, 0);
  std::string::basic_string[abi:ne200100]<0>(v54, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4136, v54);
  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 1136), a1 + 3264, a1 + 3312, 0, v48);
  kaldi::CuMatrix<float>::operator=(a1 + 3216, a1 + 3312);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v49);
  std::string::basic_string[abi:ne200100]<0>(v54, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4152, v54);
  if (v55 < 0)
  {
    operator delete(v54[0]);
    if (a4)
    {
      goto LABEL_14;
    }
  }

  else if (a4)
  {
LABEL_14:
    v50 = ((*(a1 + 392) - *(a1 + 384)) >> 3) - 1;
    goto LABEL_17;
  }

  v50 = -1;
LABEL_17:
  if (*(a1 + 3664))
  {
    v51 = *(a1 + 3664);
  }

  else
  {
    v51 = (a1 + 384);
  }

  kaldi::nnet1::Nnet::Feedforward(v51, a1 + 3216, a3, v50, 0);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v52);
  v56 = &unk_1F42BFE90;
  v57 = 0u;
  v58 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  v59.__begin_ = &unk_1F42BFE90;
  *&v59.__end_ = 0u;
  v60 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock(v63, v53);
}

void sub_1C312C6CC(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 a16, __int128 a17, void *a18, __int128 a19, __int128 a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  kaldi::quasar::TimeBlock::~TimeBlock(&a22, a2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock((v27 - 112), v29);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::FeedforwardModelT(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v52, (a1 + 4056), a1 + 4128, __p);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a2 + 20);
  std::string::basic_string[abi:ne200100]<0>(&v47, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4160, &v47);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 760), a2, a1 + 3168, 0, v9);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v10);
  std::string::basic_string[abi:ne200100]<0>(&v47, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4136, &v47);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 1136), a1 + 3168, a1 + 3312, 0, v11);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v12);
  v17 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v13, v14, v15, v16);
  kaldi::CuMatrix<float>::Resize(a1 + 3216, v8, (2 * v17), 0, 0);
  v22 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v18, v19, v20, v21);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, a1 + 3216, 0, *(a1 + 3236), 0, v22);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v47, a1 + 3312, 111, v23, v24);
  std::string::basic_string[abi:ne200100]<0>(&v45, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4144, &v45);
  if (SHIBYTE(v45.__end_cap_.__value_) < 0)
  {
    operator delete(v45.__begin_);
  }

  kaldi::quasar::TorchEncoderDecoder::AttentionModel::Feedforward(a1 + 1928, *(a1 + 3408) + 48 * *(a1 + 3512), a1 + 3312, a1 + 3360, a1 + 3432, &v45);
  v26 = *(a1 + 3984);
  if (v26)
  {
    *(a1 + 3992) = v26;
    operator delete(v26);
    *(a1 + 3984) = 0;
    *(a1 + 3992) = 0;
    *(a1 + 4000) = 0;
  }

  *(a1 + 3984) = v45;
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v25);
  v31 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v27, v28, v29, v30);
  v36 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v32, v33, v34, v35);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a1 + 3216, 0, *(a1 + 3236), v31, v36);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v45, a1 + 3360, 111, v37, v38);
  std::string::basic_string[abi:ne200100]<0>(v43, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4152, v43);
  if (v44 < 0)
  {
    operator delete(v43[0]);
    if (a4)
    {
      goto LABEL_13;
    }
  }

  else if (a4)
  {
LABEL_13:
    v39 = ((*(a1 + 392) - *(a1 + 384)) >> 3) - 1;
    goto LABEL_16;
  }

  v39 = -1;
LABEL_16:
  if (*(a1 + 3664))
  {
    v40 = *(a1 + 3664);
  }

  else
  {
    v40 = (a1 + 384);
  }

  kaldi::nnet1::Nnet::Feedforward(v40, a1 + 3216, a3, v39, 0);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v41);
  v45.__begin_ = &unk_1F42BFE90;
  *&v45.__end_ = 0u;
  v46 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  v47 = &unk_1F42BFE90;
  v48 = 0u;
  v49 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock(v52, v42);
}

void sub_1C312CB20(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, __int128 a17, __int128 a18, void *a19, __int128 a20, __int128 a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  kaldi::quasar::TimeBlock::~TimeBlock(&a22, a2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock((v27 - 96), v29);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::FeedforwardModelF(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v59, (a1 + 4056), a1 + 4128, __p);
  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a2 + 20);
  std::string::basic_string[abi:ne200100]<0>(&v54, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4160, &v54);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 760), a2, a1 + 3168, 0, v9);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v10);
  v15 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v11, v12, v13, v14);
  v20 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v16, v17, v18, v19);
  if (!v8)
  {
    kaldi::KaldiAssertFailure_("FeedforwardModelF", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x342, "num_sequences != 0", v21);
  }

  kaldi::CuMatrix<float>::Resize(a1 + 3264, v8, (v20 + v15), 0, 0);
  v26 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v22, v23, v24, v25);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v54, a1 + 3264, 0, *(a1 + 3284), 0, v26);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v54, a1 + 3168, 111, v27, v28);
  v33 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v29, v30, v31, v32);
  v38 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v34, v35, v36, v37);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v51, a1 + 3264, 0, *(a1 + 3284), v33, v38);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v51, a1 + 3312, 111, v39, v40);
  std::string::basic_string[abi:ne200100]<0>(&v50, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4136, &v50);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    operator delete(v50.__begin_);
  }

  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 1136), a1 + 3264, a1 + 3312, 0, v41);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v42);
  std::string::basic_string[abi:ne200100]<0>(&v50, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4144, &v50);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    operator delete(v50.__begin_);
  }

  kaldi::quasar::TorchEncoderDecoder::AttentionModel::Feedforward(a1 + 1928, *(a1 + 3408) + 48 * *(a1 + 3512), a1 + 3312, a1 + 3360, a1 + 3432, &v50);
  v44 = *(a1 + 3984);
  if (v44)
  {
    *(a1 + 3992) = v44;
    operator delete(v44);
    *(a1 + 3984) = 0;
    *(a1 + 3992) = 0;
    *(a1 + 4000) = 0;
  }

  *(a1 + 3984) = v50;
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v43);
  v45 = kaldi::CuMatrix<float>::operator=(a1 + 3216, a1 + 3360);
  kaldi::CuMatrix<float>::operator=(a1 + 3312, v45);
  std::string::basic_string[abi:ne200100]<0>(&v50, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4152, &v50);
  if (SHIBYTE(v50.__end_cap_.__value_) < 0)
  {
    operator delete(v50.__begin_);
    if (a4)
    {
      goto LABEL_14;
    }
  }

  else if (a4)
  {
LABEL_14:
    v46 = ((*(a1 + 392) - *(a1 + 384)) >> 3) - 1;
    goto LABEL_17;
  }

  v46 = -1;
LABEL_17:
  if (*(a1 + 3664))
  {
    v47 = *(a1 + 3664);
  }

  else
  {
    v47 = (a1 + 384);
  }

  kaldi::nnet1::Nnet::Feedforward(v47, a1 + 3216, a3, v46, 0);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v48);
  v51 = &unk_1F42BFE90;
  v52 = 0u;
  v53 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  v54 = &unk_1F42BFE90;
  v55 = 0u;
  v56 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock(v59, v49);
}

void sub_1C312CFE4(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, void *a19, __int128 a20, __int128 a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  kaldi::quasar::TimeBlock::~TimeBlock(&a22, a2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::quasar::TimeBlock::~TimeBlock((v27 - 96), v29);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::Start(void *a1, clockid_t a2, uint64_t a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (!*(a3 + 23))
    {
      goto LABEL_3;
    }

LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "Start", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 728);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Dynamic switch is not support in this platform");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if (*(a3 + 8))
  {
    goto LABEL_9;
  }

LABEL_3:
  kaldi::Timer::Reset((a1 + 507), a2);
  v4 = a1[427];
  v5 = a1[426];
  if (v4 != v5)
  {
    v6 = v4 - 6;
    v7 = v4 - 6;
    v8 = v4 - 6;
    do
    {
      v9 = *v8;
      v8 -= 6;
      (*(v9 + 16))(v7);
      v6 -= 6;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a1[427] = v5;
}

void kaldi::quasar::TorchEncoderDecoder::GetTiming(uint64_t **__return_ptr a1@<X8>, const void **this@<X0>)
{
  v13[4] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v5, "time total");
  v5[3] = this[512];
  std::string::basic_string[abi:ne200100]<0>(v6, "time start feedforward");
  v6[3] = this[513];
  std::string::basic_string[abi:ne200100]<0>(v7, "time get history state");
  v7[3] = this[514];
  std::string::basic_string[abi:ne200100]<0>(v8, "time set history state");
  v8[3] = this[515];
  std::string::basic_string[abi:ne200100]<0>(v9, "time feed forward");
  v9[3] = this[516];
  std::string::basic_string[abi:ne200100]<0>(v10, "time decoder");
  v10[3] = this[517];
  std::string::basic_string[abi:ne200100]<0>(v11, "time attention");
  v11[3] = this[518];
  std::string::basic_string[abi:ne200100]<0>(v12, "time readout");
  v12[3] = this[519];
  std::string::basic_string[abi:ne200100]<0>(v13, "time output embedding");
  v13[3] = this[520];
  std::map<std::string,double>::map[abi:ne200100](a1, v5, 9);
  v4 = 36;
  do
  {
    if (*(&v5[v4 - 1] - 1) < 0)
    {
      operator delete(v5[v4 - 4]);
    }

    v4 -= 4;
  }

  while (v4 * 8);
}

void sub_1C312D3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 279);
  v13 = -288;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

int *kaldi::quasar::TorchEncoderDecoder::CopyDecoderHiddenState(uint64_t a1, int *a2)
{
  kaldi::CuMatrix<float>::Resize(a2, *(a1 + 3236), *(a1 + 3232), 0, 0);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, a1 + 3216, 111, v4, v5);
}

uint64_t kaldi::quasar::TorchEncoderDecoder::Symbolize(uint64_t a1, __int128 **a2, const void **a3, int a4, char a5)
{
  v5 = 3624;
  if (a4)
  {
    v5 = 3632;
  }

  v6 = 3524;
  if (a4)
  {
    v6 = 3536;
  }

  v7 = *(a1 + v6);
  if (v7 == -1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v19, "Symbolize", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 883);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v19, "Unknown label not described in the model");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v19);
  }

  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    return 0;
  }

  v12 = 0;
  v13 = *(a1 + v5);
  do
  {
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *v8, *(v8 + 1));
    }

    else
    {
      v14 = *v8;
      v19.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v19.__r_.__value_.__l.__data_ = v14;
    }

    v15 = (*(*v13 + 96))(v13, &v19);
    if (v15 == -1)
    {
      v16 = v7;
    }

    else
    {
      v16 = v15;
    }

    v18 = v16;
    if (v16 != v7 || (v12 = (v12 + 1), (a5 & 1) == 0))
    {
      std::vector<int>::push_back[abi:ne200100](a3, &v18);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    v8 = (v8 + 24);
  }

  while (v8 != v9);
  return v12;
}

void sub_1C312D5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::TorchEncoderDecoder::Align(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v11 = *(a1 + 3532);
  std::vector<int>::push_back[abi:ne200100](&__p, &v11);
  v9 = kaldi::quasar::TorchEncoderDecoder::AlignImpl(a1, a2, &__p, &v18, &v15, a5, 1, a4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return v9;
}

void sub_1C312D6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::TorchEncoderDecoder::AlignImpl(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4, const void **a5, uint64_t a6, int a7, uint64_t a8)
{
  v102 = 0;
  v103 = 0;
  v104 = 0;
  kaldi::JoinVectorToString<int>(a2, " ", &v102);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v96, "AlignImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 955, 1);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Left symbol sequence : ", 23);
    if (v104 >= 0)
    {
      v16 = &v102;
    }

    else
    {
      v16 = v102;
    }

    if (v104 >= 0)
    {
      v17 = HIBYTE(v104);
    }

    else
    {
      v17 = v103;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " (# ", 4);
    v20 = MEMORY[0x1C692A980](v19, (a2[1] - *a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v96);
  }

  kaldi::JoinVectorToString<int>(a3, " ", &v102);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v96, "AlignImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 958, 1);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Right symbol sequence : ", 24);
    if (v104 >= 0)
    {
      v22 = &v102;
    }

    else
    {
      v22 = v102;
    }

    if (v104 >= 0)
    {
      v23 = HIBYTE(v104);
    }

    else
    {
      v23 = v103;
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " (# ", 4);
    v26 = MEMORY[0x1C692A980](v25, (a3[1] - *a3) >> 2);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " including </s>) ", 17);
    MEMORY[0x1C692A960](v27, *(a1 + 3532));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v96);
  }

  v94 = 0u;
  v93 = 0u;
  v92 = &unk_1F42BFED8;
  v95 = 0;
  kaldi::CuMatrix<float>::Resize(&v92, (a2[1] - *a2) >> 2, 1, 0, 0);
  v28 = *a2;
  v29 = a2[1];
  v30 = v29 - *a2;
  if (v29 != *a2)
  {
    v31 = 0;
    v32 = v30 >> 2;
    v33 = v93;
    if (v32 <= 1)
    {
      v32 = 1;
    }

    v34 = 4 * v94;
    do
    {
      *v33 = (*(v28 + 4 * v31++) - 1);
      v33 = (v33 + v34);
    }

    while (v32 != v31);
  }

  kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(a1, 1);
  kaldi::quasar::TorchEncoderDecoder::StartFeedforward(a1, &v92, 0, 0);
  v90 = 0u;
  v89 = 0u;
  v88 = &unk_1F42BFED8;
  v91 = 0;
  kaldi::CuMatrix<float>::CuMatrix(v86, 1, 1, 0, 0, 0);
  *v87 = (*(a1 + 3528) - 1);
  memset(&v85[1], 0, 24);
  v85[0] = &unk_1F42BFF70;
  v40 = *a3;
  v39 = a3[1];
  if (a7)
  {
    v41 = kaldi::nnet1::Nnet::InputDim((a1 + 384), v35, v36, v37, v38) + 1;
  }

  else
  {
    v41 = kaldi::nnet1::Nnet::OutputDim((a1 + 384), v35, v36, v37, v38);
  }

  kaldi::Matrix<float>::Resize(a6, ((v39 - v40) >> 2) - 1, v41, 0, 0);
  if (*(a1 + 3664))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v96, "AlignImpl", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 980);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Constrained Softmax with force alignment decoding is not Supported!", 67);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v96);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v96);
  if (a3[1] == *a3)
  {
    v43 = 0.0;
LABEL_49:
    if (a8)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0.0;
    while (1)
    {
      kaldi::quasar::TorchEncoderDecoder::Feedforward(a1, v86, &v88, 0);
      kaldi::Matrix<float>::Matrix(&v84, HIDWORD(v89), DWORD2(v89), 0, 0);
      kaldi::CuMatrixBase<float>::CopyToMat<float>(&v88, &v84, 111, v44, v45);
      v46 = *(*a3 + 4 * v42);
      *v87 = (v46 - 1);
      MEMORY[0x1C692A960](&v97, (v46 - 1));
      if (((a3[1] - *a3) >> 2) - 1 > v42)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v97, ", ", 2);
      }

      v47 = logf(*(v84 + 4 * (v46 - 1)));
      v43 = v43 - v47;
      if (v46 == *(a1 + 3532))
      {
        break;
      }

      v48 = v47;
      if (a6)
      {
        kaldi::SubMatrix<float>::SubMatrix(v81, a6, v42, 1);
        if (a7)
        {
          kaldi::nnet1::Nnet::InputDim((a1 + 384), v49, v50, v51, v52);
        }

        else
        {
          kaldi::nnet1::Nnet::OutputDim((a1 + 384), v49, v50, v51, v52);
        }

        kaldi::SubMatrix<float>::SubMatrix(v83, v81, 0, v82);
        kaldi::CuMatrixBase<float>::~CuMatrixBase();
        if (a7)
        {
          kaldi::CuMatrixBase<float>::CopyToMat<float>(a1 + 3216, v83, 111, v53, v54);
          *(*a6 + 4 * *(a6 + 16) * v42 + 4 * kaldi::nnet1::Nnet::InputDim((a1 + 384), v55, v56, v57, v58)) = -v48;
        }

        else
        {
          kaldi::CuMatrixBase<float>::CopyToMat<float>(&v88, v83, 111, v53, v54);
        }

        kaldi::CuMatrixBase<float>::~CuMatrixBase();
      }

      if (a5)
      {
        *v83 = -v48;
        std::vector<float>::push_back[abi:ne200100](a5, v83);
      }

      if (a4)
      {
        v59 = *(a1 + 3984);
        if (v59 == *(a1 + 3992))
        {
          v60 = -1;
        }

        else
        {
          v60 = *v59;
        }

        v83[0] = v60;
        std::vector<int>::push_back[abi:ne200100](a4, v83);
      }

      kaldi::Matrix<float>::~Matrix(&v84);
      if (++v42 >= (a3[1] - *a3) >> 2)
      {
        goto LABEL_49;
      }
    }

    kaldi::Matrix<float>::~Matrix(&v84);
    if (a8)
    {
LABEL_52:
      if (a7)
      {
        v61 = kaldi::MatrixBase<float>::NumRows(a6);
        v62 = kaldi::MatrixBase<float>::NumCols(a6);
        kaldi::Matrix<float>::Matrix(&v84, v61, (v62 - 1), 0, 0);
        v63 = *a3;
        if (a3[1] - *a3 != 4)
        {
          v64 = 0;
          do
          {
            v65 = *(v63 + 4 * v64);
            kaldi::SubMatrix<float>::SubMatrix(v83, &v84, v64, 1);
            kaldi::SubMatrix<float>::SubMatrix(v81, a8, (v65 - 1), 1);
            kaldi::SubMatrix<float>::SubMatrix(v80, a8, (v65 - 1), 1);
            kaldi::MatrixBase<float>::CopyFromMat<float>(v83, v80, 111, v66, v67);
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            kaldi::CuMatrixBase<float>::~CuMatrixBase();
            ++v64;
            v63 = *a3;
          }

          while (((a3[1] - *a3) >> 2) - 1 > v64);
        }

        kaldi::MatrixBase<float>::NumCols(a6);
        kaldi::SubMatrix<float>::SubMatrix(v83, a6, 0, *(a6 + 12));
        kaldi::MatrixBase<float>::MulElements(v83, &v84, v68, v69, v70);
        kaldi::CuMatrixBase<float>::~CuMatrixBase();
        kaldi::Matrix<float>::~Matrix(&v84);
      }
    }
  }

  if (a4)
  {
    if ((*(a1 + 3919) & 1) == 0)
    {
      v72 = *a4;
      v71 = a4[1];
      if (*a4 != v71)
      {
        v73 = v71 - 4;
        if (v73 > v72)
        {
          v74 = v72 + 4;
          do
          {
            v75 = *(v74 - 1);
            *(v74 - 1) = *v73;
            *v73 = v75;
            v73 -= 4;
            v76 = v74 >= v73;
            v74 += 4;
          }

          while (!v76);
        }
      }
    }
  }

  v96[0] = *MEMORY[0x1E69E54D8];
  v77 = *(MEMORY[0x1E69E54D8] + 72);
  *(v96 + *(v96[0].__locale_ - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v97 = v77;
  v98 = MEMORY[0x1E69E5548] + 16;
  if (v100 < 0)
  {
    operator delete(v99[7].__locale_);
  }

  v98 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v99);
  std::iostream::~basic_iostream();
  MEMORY[0x1C692AD30](&v101);
  kaldi::CuVector<float>::~CuVector(v85);
  kaldi::CuMatrix<float>::~CuMatrix(v86);
  kaldi::CuMatrix<float>::~CuMatrix(&v88);
  kaldi::CuMatrix<float>::~CuMatrix(&v92);
  if (SHIBYTE(v104) < 0)
  {
    operator delete(v102);
  }

  return v43;
}

void sub_1C312DF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  kaldi::CuMatrixBase<float>::~CuMatrixBase();
  kaldi::Matrix<float>::~Matrix(&a23);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  kaldi::CuVector<float>::~CuVector(&a28);
  kaldi::CuMatrix<float>::~CuMatrix(&a32);
  kaldi::CuMatrix<float>::~CuMatrix(&a38);
  kaldi::CuMatrix<float>::~CuMatrix(&a44);
  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TorchEncoderDecoder::CheckHasHandover(kaldi::nnet1::Nnet **this)
{
  result = kaldi::nnet1::Nnet::IsRnn((this + 1));
  if (result)
  {
    result = kaldi::nnet1::Nnet::IsRnn(this[142]);
  }

  *(this + 3504) = result;
  return result;
}

void kaldi::quasar::TorchEncoderDecoder::GetCurrentAlignment(uint64_t a1, char **a2, unsigned int a3, uint64_t a4, const char *a5)
{
  kaldi::Vector<float>::Resize(a2, *(a1 + 3448), 0, a4, a5);
  v11 = *(a1 + 3448);
  if (v11 >= 1)
  {
    if (*(a1 + 3452) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v10);
    }

    v12 = *(a1 + 3464);
    v13[1] = *(a1 + 3440) + 4 * (*(a1 + 3456) * a3);
    v13[0] = &unk_1F42BFF30;
    v13[2] = v11;
    v13[3] = v12;
    kaldi::CuVectorBase<float>::CopyToVec<float>(v13, a2, v8, v9, v10);
  }
}

std::vector<int> *kaldi::quasar::TorchEncoderDecoder::ConstrainSoftmax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, int **a5, int **a6, void *a7)
{
  result = *(a1 + 3656);
  if (result)
  {
    if (kaldi::quasar::Shortlist::MapShortlist(result, a2, *(a1 + 3532) - 1, *(a1 + 3536) - 1, a3, a4, a5, a6, a7, 0))
    {
      kaldi::quasar::ShortlistNnetBuilder::ConstrainSoftmax((a1 + 384), *(a1 + 3656), v9, v10, v11);
    }

    std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((a1 + 3664), 0, v9, v10, v11);
    return 0;
  }

  return result;
}

uint64_t kaldi::quasar::TorchEncoderDecoder::GetSoftmaxEosId(kaldi::quasar::TorchEncoderDecoder *this)
{
  if (*(this + 458))
  {
    return *(*(this + 457) + 24);
  }

  else
  {
    return (*(this + 883) - 1);
  }
}

void *kaldi::quasar::TorchEncoderDecoder::TryReadSymbolTable(uint64_t a1, uint64_t *a2, int a3, const std::string *a4)
{
  kaldi::ExpectToken(a2, a3, "<SymbolTable>");
  if (!a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
    memset(&__p, 0, sizeof(__p));
    v9 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v10 = std::locale::use_facet(&v24, v9);
      v11 = (v10->__vftable[2].~facet_0)(v10, 10);
      std::locale::~locale(&v24);
      v12 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, v11);
      if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
      {
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_22:
        if (v13 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
        fst::SymbolTable::ReadText(v22);
      }

      kaldi::Trim(&__p);
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p.__r_.__value_.__l.__size_ != 14)
        {
          goto LABEL_14;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 14)
        {
          goto LABEL_14;
        }

        p_p = &__p;
      }

      v15 = p_p->__r_.__value_.__r.__words[0];
      v16 = *(p_p->__r_.__value_.__r.__words + 6);
      if (v15 == 0x6C6F626D79532F3CLL && v16 == 0x3E656C6261546C6FLL)
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v18, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
    }
  }

  v7 = fst::SymbolTable::Read(a2, a4);
  kaldi::ExpectToken(a2, 1, "</SymbolTable>");
  return v7;
}

void sub_1C312E5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a20);
  _Unwind_Resume(a1);
}

void *fst::SymbolTable::Read(void *a1, const std::string *a2)
{
  *__p = 0u;
  v6 = 0u;
  std::string::operator=(&__p[1], a2);
  v3 = fst::SymbolTable::Read(a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

uint64_t kaldi::quasar::TorchEncoderDecoder::ModelFileMap(kaldi::quasar::TorchEncoderDecoder *this)
{
  {
    operator new();
  }

  return kaldi::quasar::TorchEncoderDecoder::ModelFileMap(void)::modelFileMap;
}

void kaldi::quasar::TorchEncoderDecoder::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  kaldi::ExpectToken(a2, a3, "<ModelType>");
  kaldi::ReadToken(a2, a3, a1 + 3576, v7, v8);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1202);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Full ModelType ", 15);
    v10 = *(a1 + 3599);
    if (v10 >= 0)
    {
      v11 = a1 + 3576;
    }

    else
    {
      v11 = *(a1 + 3576);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 3599);
    }

    else
    {
      v12 = *(a1 + 3584);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  kaldi::SplitStringToVector((a1 + 3576), "_", 1, &v106);
  if (v106 == v107)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1207);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Undefined Torch model type", 26);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v111);
  }

  v13 = (a1 + 3552);
  std::string::operator=((a1 + 3552), v106);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1210);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "ModelType ", 10);
    v15 = *(a1 + 3575);
    if (v15 >= 0)
    {
      v16 = a1 + 3552;
    }

    else
    {
      v16 = *(a1 + 3552);
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 3575);
    }

    else
    {
      v17 = *(a1 + 3560);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
  }

  v18 = *(a1 + 3575);
  if (v18 < 0)
  {
    if (*(a1 + 3560) != 6 || (**v13 == 1668443988 ? (v23 = *(*v13 + 2) == 20072) : (v23 = 0), !v23))
    {
      if (*(a1 + 3560) != 6 || (**v13 == 1668443988 ? (v24 = *(*v13 + 2) == 19816) : (v24 = 0), !v24))
      {
        if (*(a1 + 3560) != 6 || (**v13 == 1668443988 ? (v25 = *(*v13 + 2) == 21608) : (v25 = 0), !v25))
        {
          if (*(a1 + 3560) != 6)
          {
            goto LABEL_335;
          }

          v22 = *v13;
          goto LABEL_51;
        }

        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  else
  {
    if (v18 != 6)
    {
      goto LABEL_335;
    }

    if (*v13 != 1668443988 || *(a1 + 3556) != 20072)
    {
      if (*v13 != 1668443988 || *(a1 + 3556) != 19816)
      {
        v21 = *v13 == 1668443988 && *(a1 + 3556) == 21608;
        v22 = (a1 + 3552);
        if (!v21)
        {
LABEL_51:
          v26 = *v22;
          v27 = *(v22 + 2);
          if (v26 != 1668443988 || v27 != 18024)
          {
LABEL_335:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1220);
            v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Unsupported Torch model type : ", 31);
            v97 = *(a1 + 3575);
            if (v97 >= 0)
            {
              v98 = a1 + 3552;
            }

            else
            {
              v98 = *(a1 + 3552);
            }

            if (v97 >= 0)
            {
              v99 = *(a1 + 3575);
            }

            else
            {
              v99 = *(a1 + 3560);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, v98, v99);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v111);
          }

          v29 = 3;
          goto LABEL_60;
        }

LABEL_59:
        v29 = 2;
        goto LABEL_60;
      }

LABEL_58:
      v29 = 1;
      goto LABEL_60;
    }
  }

  v29 = 0;
LABEL_60:
  *(a1 + 3548) = v29;
  *(a1 + 3912) = 0;
  v30 = v106;
  if (0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 3) < 2)
  {
LABEL_332:
    kaldi::nnet1::Nnet::Read((a1 + 8), a2, a3, a4);
    TrainOptions = kaldi::nnet1::Nnet::GetTrainOptions((a1 + 8));
    *__str = &unk_1F42CB198;
    v92 = *(TrainOptions + 8);
    *&__str[23] = *(TrainOptions + 23);
    *&__str[8] = v92;
    __str[38] = 1;
    kaldi::nnet1::Nnet::SetTrainOptions((a1 + 8), __str, 1, v93, v94);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1303);
      v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "dot attention ", 14);
      MEMORY[0x1C692A930](v95, *(a1 + 3914));
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
    }

    kaldi::quasar::TorchEncoderDecoder::AttentionModel::AttentionModel(&v111, *(a1 + 3913), *(a1 + 3914), *(a1 + 3548) == 3);
  }

  v31 = 0;
  v100 = (a1 + 3952);
  v101 = (a1 + 3928);
  v32 = 1;
  while (1)
  {
    v33 = &v30[v31];
    if (SHIBYTE(v33[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__str, v33[1].__r_.__value_.__l.__data_, v33[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v34 = *&v33[1].__r_.__value_.__l.__data_;
      *&__str[16] = *(&v33[1].__r_.__value_.__l + 2);
      *__str = v34;
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v105, *__str, *&__str[8]);
    }

    else
    {
      v105 = *__str;
    }

    memset(&v104, 0, sizeof(v104));
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1231);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Processing token ", 17);
      if (__str[23] >= 0)
      {
        v36 = __str;
      }

      else
      {
        v36 = *__str;
      }

      if (__str[23] >= 0)
      {
        v37 = __str[23];
      }

      else
      {
        v37 = *&__str[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
    }

    LODWORD(v38) = __str[23];
    if ((__str[23] & 0x80000000) != 0)
    {
      if (*&__str[8] == 3 && **__str == 20546 && *(*__str + 2) == 69)
      {
LABEL_146:
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1233);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found BPE token", 15);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
        }

        *(a1 + 3912) = 1;
        goto LABEL_313;
      }

      if (*&__str[8] == 9 && **__str == 0x53494C54524F4853 && *(*__str + 8) == 84)
      {
LABEL_163:
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1236);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found SHORTLIST token", 21);
          kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
        }

        goto LABEL_313;
      }

      if (*&__str[8] != 5)
      {
        if (*&__str[8] == 6 && **__str == 1095781716 && *(*__str + 4) == 21588)
        {
LABEL_131:
          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1239);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found TMPATT token", 18);
            kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
          }

          *(a1 + 3913) = 1;
          goto LABEL_313;
        }

LABEL_108:
        v44 = *&__str[8];
        if (*&__str[8] == 4)
        {
          if (**__str != 1416916804)
          {
            goto LABEL_174;
          }

          goto LABEL_151;
        }

        if (*&__str[8] != 7)
        {
          goto LABEL_154;
        }

        if (**__str != 1867807056 || *(*__str + 3) != 1751347823)
        {
          goto LABEL_154;
        }

LABEL_139:
        *(a1 + 3919) = 1;
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1245);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found PyTorch token", 19);
          goto LABEL_312;
        }

        goto LABEL_313;
      }

      if (**__str != 1279871043 || *(*__str + 4) != 68)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (__str[23] > 5u)
      {
        if (__str[23] == 6)
        {
          if (*__str == 1095781716 && *&__str[4] == 21588)
          {
            goto LABEL_131;
          }

          goto LABEL_153;
        }

        if (__str[23] != 7)
        {
          if (__str[23] == 9)
          {
            if (*__str == 0x53494C54524F4853 && __str[8] == 84)
            {
              goto LABEL_163;
            }

            goto LABEL_153;
          }

LABEL_149:
          if (__str[23] != 4 || *__str != 1416916804)
          {
            goto LABEL_153;
          }

LABEL_151:
          *(a1 + 3914) = 1;
          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1248);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found DotT token", 16);
            goto LABEL_312;
          }

          goto LABEL_313;
        }

        if (*__str != 1867807056 || *&__str[3] != 1751347823)
        {
          goto LABEL_153;
        }

        goto LABEL_139;
      }

      if (__str[23] == 3)
      {
        if (*__str == 20546 && __str[2] == 69)
        {
          goto LABEL_146;
        }

LABEL_153:
        v44 = __str[23];
LABEL_154:
        if (v44 <= 8)
        {
          goto LABEL_174;
        }

        std::string::basic_string(&v111, __str, 0, 7uLL, &v110);
        if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) == 7)
          {
            v50 = LODWORD(v111.__r_.__value_.__l.__data_) == 1415865409 && *(v111.__r_.__value_.__r.__words + 3) == 979853652;
            LODWORD(v38) = __str[23];
            v51 = *&__str[8];
            if (v50)
            {
              goto LABEL_230;
            }

            goto LABEL_175;
          }

          LODWORD(v38) = __str[23];
LABEL_174:
          v51 = *&__str[8];
          goto LABEL_175;
        }

        v53 = v111.__r_.__value_.__l.__size_ == 7 && *v111.__r_.__value_.__l.__data_ == 1415865409 && *(v111.__r_.__value_.__r.__words[0] + 3) == 979853652;
        operator delete(v111.__r_.__value_.__l.__data_);
        LODWORD(v38) = __str[23];
        v51 = *&__str[8];
        if (v53)
        {
LABEL_230:
          v38 = v38;
          if ((v38 & 0x80u) != 0)
          {
            v38 = v51;
          }

          std::string::basic_string(&v111, __str, 7uLL, v38 - 7, &v110);
          if (*(a1 + 3951) < 0)
          {
            operator delete(*v101);
          }

          *v101 = *&v111.__r_.__value_.__l.__data_;
          *(a1 + 3944) = *(&v111.__r_.__value_.__l + 2);
          MEMORY[0x1C692A640](&v105, "AddTag");
          if (*(a1 + 3951) < 0)
          {
            std::string::__init_copy_ctor_external(&v111, *(a1 + 3928), *(a1 + 3936));
          }

          else
          {
            *&v111.__r_.__value_.__l.__data_ = *v101;
            v111.__r_.__value_.__r.__words[2] = *(a1 + 3944);
          }

          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v104, &v111, v112, 1uLL);
          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v111.__r_.__value_.__l.__data_);
          }

          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1254);
            v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Extracted add tag : ", 20);
            v75 = *(a1 + 3951);
            if (v75 >= 0)
            {
              v76 = a1 + 3928;
            }

            else
            {
              v76 = *(a1 + 3928);
            }

            if (v75 >= 0)
            {
              v77 = *(a1 + 3951);
            }

            else
            {
              v77 = *(a1 + 3936);
            }

            v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v76, v77);
            v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, " from ", 6);
            if (__str[23] >= 0)
            {
              v80 = __str;
            }

            else
            {
              v80 = *__str;
            }

            if (__str[23] >= 0)
            {
              v81 = __str[23];
            }

            else
            {
              v81 = *&__str[8];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v80, v81);
            kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
          }

          LODWORD(v110) = kaldi::quasar::ToAddTag(v101);
          kaldi::quasar::FromAddTag(&v110, &v111);
          if (*(a1 + 3951) < 0)
          {
            operator delete(*v101);
          }

          *v101 = *&v111.__r_.__value_.__l.__data_;
          *(a1 + 3944) = *(&v111.__r_.__value_.__l + 2);
          *(a1 + 3921) = 1;
          if (kaldi::g_kaldi_verbose_level < 0)
          {
            goto LABEL_313;
          }

          kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1257);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "AddTag value ", 13);
          v83 = *(a1 + 3951);
          if (v83 >= 0)
          {
            v84 = a1 + 3928;
          }

          else
          {
            v84 = *(a1 + 3928);
          }

          if (v83 >= 0)
          {
            v85 = *(a1 + 3951);
          }

          else
          {
            v85 = *(a1 + 3936);
          }

          goto LABEL_311;
        }

LABEL_175:
        if ((v38 & 0x80u) == 0)
        {
          v51 = v38;
        }

        if (v51 >= 0xC)
        {
          std::string::basic_string(&v111, __str, 0, 0xAuLL, &v110);
          if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) == 10)
            {
              v54 = v111.__r_.__value_.__r.__words[0] == 0x616D726F46676154 && LOWORD(v111.__r_.__value_.__r.__words[1]) == 14964;
              LODWORD(v38) = __str[23];
              if (v54)
              {
                goto LABEL_206;
              }

              goto LABEL_184;
            }

LABEL_237:
            LODWORD(v38) = __str[23];
            if ((__str[23] & 0x80) != 0)
            {
LABEL_238:
              if (*&__str[8] == 6)
              {
                if (**__str == 1348693573 && *(*__str + 4) == 29551)
                {
LABEL_263:
                  *(a1 + 3915) = 1;
                  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
                  {
                    kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1271);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found encoder position embedding token", 38);
                    goto LABEL_312;
                  }

                  goto LABEL_313;
                }
              }

              else if (*&__str[8] == 10 && **__str == 0x626D456572616853 && *(*__str + 8) == 25701)
              {
LABEL_265:
                *(a1 + 3920) = 1;
                if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
                {
                  kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1268);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found shared embeddings token", 29);
                  goto LABEL_312;
                }

                goto LABEL_313;
              }

              if (*&__str[8] == 6)
              {
                v57 = *__str;
                goto LABEL_251;
              }

              goto LABEL_255;
            }

LABEL_185:
            if (v38 == 6)
            {
              if (*__str == 1348693573 && *&__str[4] == 29551)
              {
                goto LABEL_263;
              }

              v57 = __str;
LABEL_251:
              v70 = *v57;
              v71 = *(v57 + 2);
              if (v70 == 1348691268 && v71 == 29551)
              {
                *(a1 + 3916) = 1;
                if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
                {
                  kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1274);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found decoder position embedding token", 38);
                  goto LABEL_312;
                }

                goto LABEL_313;
              }
            }

            else if (v38 == 10 && *__str == 0x626D456572616853 && *&__str[8] == 25701)
            {
              goto LABEL_265;
            }

LABEL_255:
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, "AddSrcBos"))
            {
              *(a1 + 3917) = 1;
              if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
              {
                kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1277);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found add beginning of sentence tag", 35);
                goto LABEL_312;
              }
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, "AddSrcEos"))
            {
              *(a1 + 3918) = 1;
              if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
              {
                kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1280);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found add end of sentence tag", 29);
                goto LABEL_312;
              }
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, "AlignModel"))
            {
              *(a1 + 3922) = 1;
            }

            else
            {
              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, "ShiftedAlignments"))
              {
                *(a1 + 3923) = 1;
                if ((*(a1 + 3922) & 1) == 0)
                {
                  kaldi::KaldiAssertFailure_("Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x505, "supervised_align_model_", v73);
                }

                goto LABEL_313;
              }

              if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, "MultipleDecoders"))
              {
                *(a1 + 3924) = 1;
                if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
                {
                  kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1288);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found multiple decoders token", 29);
                  goto LABEL_312;
                }
              }

              else
              {
                if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__str, "NoSymbolTables"))
                {
                  if (kaldi::g_kaldi_verbose_level >= -1)
                  {
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1293);
                    v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Unknown model sub tag ", 22);
                    if (__str[23] >= 0)
                    {
                      v89 = __str;
                    }

                    else
                    {
                      v89 = *__str;
                    }

                    if (__str[23] >= 0)
                    {
                      v90 = __str[23];
                    }

                    else
                    {
                      v90 = *&__str[8];
                    }

                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, v89, v90);
                    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v111);
                  }

                  goto LABEL_313;
                }

                *(a1 + 3925) = 1;
                if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
                {
                  kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1291);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found 'NoSymbolTables' token", 28);
                  goto LABEL_312;
                }
              }
            }

            goto LABEL_313;
          }

          if (v111.__r_.__value_.__l.__size_ != 10)
          {
            operator delete(v111.__r_.__value_.__l.__data_);
            goto LABEL_237;
          }

          v59 = *v111.__r_.__value_.__l.__data_ != 0x616D726F46676154 || *(v111.__r_.__value_.__r.__words[0] + 8) != 14964;
          operator delete(v111.__r_.__value_.__l.__data_);
          LODWORD(v38) = __str[23];
          if (!v59)
          {
LABEL_206:
            v38 = v38;
            if ((v38 & 0x80u) != 0)
            {
              v38 = *&__str[8];
            }

            std::string::basic_string(&v111, __str, 0xAuLL, v38 - 10, &v110);
            if (*(a1 + 3975) < 0)
            {
              operator delete(*v100);
            }

            *v100 = *&v111.__r_.__value_.__l.__data_;
            *(a1 + 3968) = *(&v111.__r_.__value_.__l + 2);
            if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
            {
              kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1260);
              v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Extracted tag format : ", 23);
              v61 = *(a1 + 3975);
              if (v61 >= 0)
              {
                v62 = a1 + 3952;
              }

              else
              {
                v62 = *(a1 + 3952);
              }

              if (v61 >= 0)
              {
                v63 = *(a1 + 3975);
              }

              else
              {
                v63 = *(a1 + 3960);
              }

              v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v62, v63);
              v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " from ", 6);
              if (__str[23] >= 0)
              {
                v66 = __str;
              }

              else
              {
                v66 = *__str;
              }

              if (__str[23] >= 0)
              {
                v67 = __str[23];
              }

              else
              {
                v67 = *&__str[8];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
              kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
            }

            LODWORD(v110) = kaldi::quasar::ToTagFormat(v100);
            kaldi::quasar::FromTagFormat(&v110, &v111);
            if (*(a1 + 3975) < 0)
            {
              operator delete(*v100);
            }

            *v100 = *&v111.__r_.__value_.__l.__data_;
            *(a1 + 3968) = *(&v111.__r_.__value_.__l + 2);
            MEMORY[0x1C692A640](&v105, "TagFormat");
            if (*(a1 + 3975) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, *(a1 + 3952), *(a1 + 3960));
            }

            else
            {
              *&v111.__r_.__value_.__l.__data_ = *v100;
              v111.__r_.__value_.__r.__words[2] = *(a1 + 3968);
            }

            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v104, &v111, v112, 1uLL);
            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

            *(a1 + 3921) = 1;
            if (kaldi::g_kaldi_verbose_level < 0)
            {
              goto LABEL_313;
            }

            kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1265);
            v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "TagFormat value ", 16);
            v86 = *(a1 + 3975);
            if (v86 >= 0)
            {
              v84 = a1 + 3952;
            }

            else
            {
              v84 = *(a1 + 3952);
            }

            if (v86 >= 0)
            {
              v85 = *(a1 + 3975);
            }

            else
            {
              v85 = *(a1 + 3960);
            }

LABEL_311:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, v84, v85);
LABEL_312:
            kaldi::KaldiLogMessage::~KaldiLogMessage(&v111);
            goto LABEL_313;
          }
        }

LABEL_184:
        if ((v38 & 0x80) != 0)
        {
          goto LABEL_238;
        }

        goto LABEL_185;
      }

      if (__str[23] != 5)
      {
        goto LABEL_149;
      }

      if (*__str != 1279871043 || __str[4] != 68)
      {
        goto LABEL_153;
      }
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&v111, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1242);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Found CHILD token", 17);
      goto LABEL_312;
    }

LABEL_313:
    v110 = &v105;
    v87 = (std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 3600), &v105.__r_.__value_.__l.__data_, &std::piecewise_construct, &v110, &v109) + 7);
    if (v87 != &v104)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v87, v104.__begin_, v104.__end_, 0xAAAAAAAAAAAAAAABLL * ((v104.__end_ - v104.__begin_) >> 3));
    }

    v111.__r_.__value_.__r.__words[0] = &v104;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v111);
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    ++v32;
    v30 = v106;
    ++v31;
    if (0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 3) <= v32)
    {
      goto LABEL_332;
    }
  }
}

void sub_1C3130BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::locale a31)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a31);
  a31.__locale_ = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void sub_1C3130C10(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C3130D34);
}

void sub_1C3130C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::locale a31)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a31);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&a15);
  JUMPOUT(0x1C3130D24);
}

void sub_1C3130C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  kaldi::quasar::TorchEncoderDecoder::AttentionModel::~AttentionModel(&a31);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&a15);
  JUMPOUT(0x1C3130D24);
}

void sub_1C3130C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  a31 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void sub_1C3130C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&a15);
  a31 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void sub_1C3130CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x1C3130CD0);
  }

  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&a15);
  JUMPOUT(0x1C3130D24);
}

void sub_1C3130CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t *a37)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a37);
  a37 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  a37 = &a32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TorchEncoderDecoder::SetMappedFile(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 3640))
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v5, "SetMappedFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 1193, 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Nnet already mapped from a file - ignoring", 42);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v5);
    }
  }

  else
  {
    v2 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 3640) = v2;
    v4 = *(a1 + 3648);
    *(a1 + 3648) = v3;
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1C3130E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BPE::Read(uint64_t a1, uint64_t *a2, int a3)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(a1 + 24);
  std::vector<std::string>::clear[abi:ne200100]((a1 + 64));
  v61 = 0;
  v62 = 0;
  v63 = 0;
  kaldi::ReadToken(a2, a3, &v61, v6, v7);
  v10 = HIBYTE(v63);
  if (SHIBYTE(v63) < 0)
  {
    if (v62 != 9)
    {
      goto LABEL_16;
    }

    v11 = v61;
  }

  else
  {
    if (HIBYTE(v63) != 9)
    {
LABEL_11:
      if (v10 != 10)
      {
LABEL_23:
        if (v10 != 9)
        {
LABEL_33:
          if (v10 != 8)
          {
            goto LABEL_73;
          }

          v27 = &v61;
          goto LABEL_38;
        }

        v21 = &v61;
        goto LABEL_28;
      }

      v15 = &v61;
      goto LABEL_18;
    }

    v11 = &v61;
  }

  v12 = *v11;
  v13 = *(v11 + 8);
  if (v12 == 0x65646F4D6B6E553CLL && v13 == 62)
  {
    memset(__p, 0, 24);
    kaldi::ReadToken(a2, a3, __p, v8, v9);
    *(a1 + 184) = kaldi::quasar::BPE::StringToUnkMode(__p);
    kaldi::ReadToken(a2, a3, &v61, v16, v17);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v10 = HIBYTE(v63);
    if ((v63 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v63 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (v62 != 10)
  {
    goto LABEL_26;
  }

  v15 = v61;
LABEL_18:
  v18 = *v15;
  v19 = *(v15 + 4);
  if (v18 == 0x656B6F546B6E553CLL && v19 == 15982)
  {
    kaldi::ReadToken(a2, a3, a1 + 192, v8, v9);
    kaldi::ReadToken(a2, a3, &v61, v22, v23);
    v10 = HIBYTE(v63);
    if ((v63 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  if (v62 != 9)
  {
    goto LABEL_36;
  }

  v21 = v61;
LABEL_28:
  v24 = *v21;
  v25 = *(v21 + 8);
  if (v24 == 0x6E6F69737265563CLL && v25 == 62)
  {
    kaldi::ReadToken(a2, a3, a1 + 216, v8, v9);
    kaldi::ReadToken(a2, a3, &v61, v28, v29);
    v10 = HIBYTE(v63);
    if ((v63 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  if (v62 != 8)
  {
    goto LABEL_73;
  }

  v27 = v61;
LABEL_38:
  if (*v27 != 0x3E6570426D754E3CLL)
  {
LABEL_73:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Read", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 201);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Expected to read number of BPE units now, but got ", 50);
    if (v63 >= 0)
    {
      v54 = &v61;
    }

    else
    {
      v54 = v61;
    }

    if (v63 >= 0)
    {
      v55 = HIBYTE(v63);
    }

    else
    {
      v55 = v62;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  v59 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v59);
  if ((a3 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v59)
  {
    v30 = 0;
    v31 = MEMORY[0x1E69E5318];
    do
    {
      memset(__p, 0, 24);
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v32 = std::locale::use_facet(&v56, v31);
      v33 = (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v56);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, __p, v33);
      std::vector<std::string>::push_back[abi:ne200100](a1 + 64, __p);
      kaldi::quasar::BPE::ProcessLine(a1, __p, v30);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      ++v30;
    }

    while (v30 != v59);
  }

  kaldi::quasar::BPE::GetUniqueChars(a1);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(__p, "Read", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 215);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "BPE model version: ", 19);
    v35 = *(a1 + 239);
    v36 = v35 >= 0 ? a1 + 216 : *(a1 + 216);
    v37 = v35 >= 0 ? *(a1 + 239) : *(a1 + 224);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(__p, "Read", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 216);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# of BPE model entries : ", 25);
      v39 = MEMORY[0x1C692A980](v38, *(a1 + 48));
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " # of chars ", 12);
      MEMORY[0x1C692A980](v40, *(a1 + 16));
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiLogMessage::KaldiLogMessage(__p, "Read", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 217);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "BPE model unk mode = ", 21);
        kaldi::quasar::BPE::UnkModeToString(*(a1 + 184), &v56);
        if ((v58 & 0x80u) == 0)
        {
          locale = &v56;
        }

        else
        {
          locale = v56.__locale_;
        }

        if ((v58 & 0x80u) == 0)
        {
          v43 = v58;
        }

        else
        {
          v43 = v57;
        }

        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, locale, v43);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", unk token = ", 14);
        v48 = *(a1 + 192);
        v47 = a1 + 192;
        v46 = v48;
        v49 = *(v47 + 23);
        if (v49 >= 0)
        {
          v50 = v47;
        }

        else
        {
          v50 = v46;
        }

        if (v49 >= 0)
        {
          v51 = *(v47 + 23);
        }

        else
        {
          v51 = *(v47 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v50, v51);
        if (v58 < 0)
        {
          operator delete(v56.__locale_);
        }

        kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
      }
    }
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v61);
  }

  return 1;
}

void sub_1C31313B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  if (*(v11 - 49) < 0)
  {
    operator delete(*(v11 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1C31313CC(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BPE::StringToUnkMode(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (v1 != 4)
    {
      if (v1 != 8)
      {
        goto LABEL_26;
      }

      v2 = *a1;
      if (*a1 != 0x6B6E753264726F77)
      {
        if (v2 != 0x6B6E753272616863)
        {
          v3 = a1;
          if (v2 == 0x72616863706F7264)
          {
            return 3;
          }

LABEL_19:
          if (*v3 == 0x64726F77706F7264)
          {
            return 4;
          }

LABEL_26:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "StringToUnkMode", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 97);
          v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unknown unk mode : ", 19);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
        }

        return 1;
      }

      return 2;
    }

    if (*a1 != 1885693291)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (*(a1 + 8) == 4 && **a1 == 1885693291)
  {
    return 0;
  }

  if (*(a1 + 8) == 8 && **a1 == 0x6B6E753272616863)
  {
    return 1;
  }

  if (*(a1 + 8) == 8 && **a1 == 0x6B6E753264726F77)
  {
    return 2;
  }

  if (*(a1 + 8) != 8)
  {
LABEL_17:
    if (*(a1 + 8) != 8)
    {
      goto LABEL_26;
    }

    v3 = *a1;
    goto LABEL_19;
  }

  if (**a1 != 0x72616863706F7264)
  {
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  return 3;
}

void kaldi::quasar::TorchEncoderDecoder::SelectModel(uint64_t **a1@<X0>, const void **a2@<X2>, uint64_t **a3@<X8>)
{
  if (a1 + 145 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>((a1 + 144), a2))
  {
    v10 = a1[144];
    v12 = v10[7];
    v11 = v10[8];
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    a1[142] = v12;
    v13 = a1[143];
    a1[143] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v15 = a2;
    v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 144, a2, &std::piecewise_construct, &v15, &v14);
    v8 = v6[7];
    v7 = v6[8];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    a1[142] = v8;
    v9 = a1[143];
    a1[143] = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      v7 = a1[143];
      v8 = a1[142];
    }

    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }
  }
}

uint64_t kaldi::quasar::BPE::BPE(uint64_t a1, int a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 2139095039;
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "@@");
  std::string::basic_string[abi:ne200100]<0>((a1 + 160), "</w>");
  *(a1 + 184) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 192), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 208) = *(a3 + 2);
    *(a1 + 192) = v6;
  }

  std::string::basic_string[abi:ne200100]<0>((a1 + 216), "0.1");
  return a1;
}

void sub_1C31317E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 183) < 0)
  {
    operator delete(*(v3 + 160));
  }

  if (*(v3 + 159) < 0)
  {
    operator delete(*(v3 + 136));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v3 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v4);
  std::__tree<std::string>::destroy(v3, *(v3 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void kaldi::quasar::BPE::~BPE(kaldi::quasar::BPE *this)
{
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 88);
  v2 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(this + 3);
  std::__tree<std::string>::destroy(this, *(this + 1));
}

void *fst::SymbolTable::Read(void *a1)
{
  result = fst::SymbolTableImpl::Read(a1);
  if (result)
  {
    operator new();
  }

  return result;
}

void fst::SymbolTableReadOptions::~SymbolTableReadOptions(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void kaldi::quasar::BPE::ProcessLine(uint64_t a1, const std::string *a2, float a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kaldi::SplitStringToVector(a2, " ", 1, &v12);
  if (v13 - v12 == 48)
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, v12 + 3, __p);
    v15 = __p;
    *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 24), __p, &std::piecewise_construct, &v15) + 10) = a3;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p, "ProcessLine", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 145);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Wrong number of fields, ignoring : ", 35);
    v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, size);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
  }

  __p[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1C3131B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __p = (v15 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void kaldi::quasar::BPE::GetUniqueChars(kaldi::quasar::BPE *this)
{
  v1 = *(this + 8);
  for (i = *(this + 9); v1 != i; ++v1)
  {
    kaldi::quasar::BPE::StripSeparator(this, v1, &__p);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    kaldi::quasar::BPE::SplitUtfString(this, &__p, &v6);
    v4 = v6;
    v5 = v7;
    while (v4 != v5)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this, v4, v4);
      v4 += 3;
    }

    v10 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1C3131C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *kaldi::quasar::BPE::UnkModeToString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 >= 5)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "UnkModeToString", "../engine/common/libquasar/libkaldi/src/nnmt/bpe.h", 114);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Unknown BPE unknown mode");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  v2 = off_1E81A1270[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void kaldi::quasar::BPE::StripSeparator(uint64_t a1@<X0>, const std::string *a2@<X1>, std::string *a3@<X8>)
{
  v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if ((v5 & 0x80u) == 0)
  {
    v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = a2->__r_.__value_.__l.__size_;
  }

  v8 = *(a1 + 159);
  if (v8 >= 0)
  {
    v9 = *(a1 + 159);
  }

  else
  {
    v9 = *(a1 + 144);
  }

  v10 = v7 - v9;
  if (v7 < v9)
  {
    goto LABEL_34;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v9 == -1 || size < v10)
    {
LABEL_41:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = size - v10 >= v9 ? v9 : size - v10;
    v13 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v9 == -1 || v5 < v10)
    {
      goto LABEL_41;
    }

    v12 = v5 - v10 >= v9 ? v9 : v5 - v10;
    v13 = a2;
  }

  v15 = v8 >= 0 ? (a1 + 136) : *(a1 + 136);
  v16 = memcmp(v13 + v10, v15, v12);
  if (v12 >= v9 && v16 == 0)
  {
    std::string::basic_string(a3, a2, 0, v10, &v19);
  }

  else
  {
LABEL_34:
    if ((v5 & 0x80) != 0)
    {
      v18 = a2->__r_.__value_.__r.__words[0];

      std::string::__init_copy_ctor_external(a3, v18, size);
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    }
  }
}

unint64_t kaldi::quasar::BPE::SplitUtfString(int a1, std::string *__str, uint64_t a3)
{
  v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  size = __str->__r_.__value_.__l.__size_;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __str->__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = __str->__r_.__value_.__r.__words[0];
      if (!v5)
      {
        v10 = __str;
      }

      v11 = v10->__r_.__value_.__s.__data_[v9];
      if ((v11 & 0xF8) == 0xF0)
      {
        v12 = 4;
      }

      else if ((v11 & 0xF0) == 0xE0)
      {
        v12 = 3;
      }

      else
      {
        v13 = (v11 & 0xE0) == 192;
        v12 = 1;
        if (v13)
        {
          v12 = 2;
        }
      }

      if (v5)
      {
        v4 = size;
      }

      if (v12 + v9 > v4)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12;
      }

      std::string::basic_string(&__p, __str, v9, v14, &v33);
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v19;
        }

        v33.__end_cap_.__value_ = a3;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v21);
        }

        v22 = 24 * v18;
        v23 = *&__p.__r_.__value_.__l.__data_;
        *(v22 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v22 = v23;
        memset(&__p, 0, sizeof(__p));
        v24 = 24 * v18 + 24;
        v25 = *(a3 + 8) - *a3;
        v26 = 24 * v18 - v25;
        memcpy((v22 - v25), *a3, v25);
        v27 = *a3;
        *a3 = v26;
        *(a3 + 8) = v24;
        v28 = *(a3 + 16);
        *(a3 + 16) = 0;
        v33.__end_ = v27;
        v33.__end_cap_.__value_ = v28;
        v33.__first_ = v27;
        v33.__begin_ = v27;
        std::__split_buffer<std::string>::~__split_buffer(&v33);
        v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a3 + 8) = v24;
        if (v29 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v17 = *&__p.__r_.__value_.__l.__data_;
        *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v16 = v17;
        *(a3 + 8) = v16 + 24;
      }

      v9 += v14;
      v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v5 = (__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = __str->__r_.__value_.__l.__size_;
      }
    }

    while (v9 < v30);
  }

  return 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3);
}

void sub_1C31320E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_1C3132218(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C31322D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<kaldi::nnet1::Nnet>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *std::unique_ptr<kaldi::quasar::Shortlist>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      (*(*v3 + 64))(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1C692AE10);
  }

  return result;
}

uint64_t **std::map<std::string,double>::map[abi:ne200100](uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,double> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,double> const&>(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__construct_node<std::pair<std::string const,double> const&>();
  }

  return result;
}

void sub_1C3132584(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1C3132608(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::MappedFile>::shared_ptr[abi:ne200100]<fst::MappedFile,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::MappedFile *,std::shared_ptr<fst::MappedFile>::__shared_ptr_default_delete<fst::MappedFile,fst::MappedFile>,std::allocator<fst::MappedFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C692AE10);
}

uint64_t std::__shared_ptr_pointer<fst::MappedFile *,std::shared_ptr<fst::MappedFile>::__shared_ptr_default_delete<fst::MappedFile,fst::MappedFile>,std::allocator<fst::MappedFile>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::MappedFile *,std::shared_ptr<fst::MappedFile>::__shared_ptr_default_delete<fst::MappedFile,fst::MappedFile>,std::allocator<fst::MappedFile>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void sub_1C3132A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](va, 0, a3, a4, a5);
  _Unwind_Resume(a1);
}

kaldi::nnet1::Nnet *std::__shared_ptr_pointer<kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::nnet1::Nnet>::__shared_ptr_default_delete<kaldi::nnet1::Nnet,kaldi::nnet1::Nnet>,std::allocator<kaldi::nnet1::Nnet>>::__on_zero_shared(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  result = *(a1 + 24);
  if (result)
  {
    kaldi::nnet1::Nnet::~Nnet(result, a2, a3, a4, a5);

    JUMPOUT(0x1C692AE10);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::nnet1::Nnet *,std::shared_ptr<kaldi::nnet1::Nnet>::__shared_ptr_default_delete<kaldi::nnet1::Nnet,kaldi::nnet1::Nnet>,std::allocator<kaldi::nnet1::Nnet>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<kaldi::nnet1::Nnet>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void kaldi::quasar::TorchEncoderDecoder::TorchEncoderDecoder(uint64_t a1, void **a2, void **a3, kaldi::quasar::BPE *this)
{
  if (*(a1 + 3975) < 0)
  {
    operator delete(*a2);
  }

  if (*(a1 + 3951) < 0)
  {
    operator delete(*a3);
  }

  kaldi::quasar::BPE::~BPE(this);
}

uint64_t kaldi::quasar::ToAddTag(void *a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (*a1 == 1752461122)
        {
          return 2;
        }

        goto LABEL_51;
      }

      if (v2 != 5 || (*a1 == 1768383810 ? (v3 = *(a1 + 4) == 110) : (v3 = 0), !v3 && (*a1 == 1768383842 ? (v4 = *(a1 + 4) == 110) : (v4 = 0), !v4)))
      {
LABEL_51:
        if (v2 != 4 || *a1 != 1752461154)
        {
LABEL_55:
          v13 = *(a1 + 23);
          goto LABEL_60;
        }

        return 2;
      }

      return 0;
    }

    if ((*a1 != 28229 || *(a1 + 2) != 100) && (*a1 != 28261 || *(a1 + 2) != 100))
    {
      goto LABEL_55;
    }

    return 1;
  }

  if (a1[1] == 5 && **a1 == 1768383810 && *(*a1 + 4) == 110)
  {
    return 0;
  }

  if (a1[1] == 5 && **a1 == 1768383842 && *(*a1 + 4) == 110)
  {
    return 0;
  }

  if (a1[1] == 3 && **a1 == 28229 && *(*a1 + 2) == 100)
  {
    return 1;
  }

  if (a1[1] == 3 && **a1 == 28261 && *(*a1 + 2) == 100)
  {
    return 1;
  }

  if (a1[1] == 4)
  {
    if (**a1 == 1752461122)
    {
      return 2;
    }

    if ((v2 & 0x80) == 0)
    {
      goto LABEL_51;
    }
  }

  v13 = a1[1];
  if (v13 == 4)
  {
    if (**a1 != 1752461154)
    {
      goto LABEL_61;
    }

    return 2;
  }

LABEL_60:
  if (v13)
  {
LABEL_61:
    if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "None") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "none"))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "ToAddTag", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/input-hammer.cc", 20);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Unknown AddTag format");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
    }
  }

  return 3;
}

unsigned int *kaldi::quasar::FromAddTag@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *result;
  if (v3 < 4)
  {
    return MEMORY[0x1C692A640](a2, off_1E81A1298[v3]);
  }

  return result;
}

void sub_1C3132FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ToTagFormat(uint64_t a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (v2 != 3)
    {
      if (v2 != 9)
      {
        if (v2 == 12)
        {
          if (*a1 != 0x6170655368746F62 || *(a1 + 8) != 1702125938)
          {
LABEL_9:
            if (*a1 != 0x6170657368746F62 || *(a1 + 8) != 1702125938)
            {
              goto LABEL_63;
            }
          }

          return 3;
        }

        goto LABEL_63;
      }

      if ((*a1 != 0x6E4F734168746F62 || *(a1 + 8) != 101) && (*a1 != 0x6E6F736168746F62 || *(a1 + 8) != 101))
      {
        goto LABEL_63;
      }

      return 2;
    }

    if (*a1 != 29299 || *(a1 + 2) != 99)
    {
      if (*a1 != 24948 || *(a1 + 2) != 114)
      {
        goto LABEL_63;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 8) == 3 && **a1 == 29299 && *(*a1 + 2) == 99)
  {
    return 0;
  }

  if (*(a1 + 8) != 3 || (**a1 == 24948 ? (v6 = *(*a1 + 2) == 114) : (v6 = 0), !v6))
  {
    if (*(a1 + 8) != 9 || (**a1 == 0x6E4F734168746F62 ? (v7 = *(*a1 + 8) == 101) : (v7 = 0), !v7))
    {
      if (*(a1 + 8) != 9 || (**a1 == 0x6E6F736168746F62 ? (v8 = *(*a1 + 8) == 101) : (v8 = 0), !v8))
      {
        if (*(a1 + 8) != 12)
        {
          goto LABEL_69;
        }

        if (**a1 == 0x6170655368746F62 && *(*a1 + 8) == 1702125938)
        {
          return 3;
        }

        if ((v2 & 0x80) != 0)
        {
LABEL_69:
          v15 = *(a1 + 8);
          if (v15 != 12)
          {
LABEL_64:
            if (!v15)
            {
              return 4;
            }

LABEL_65:
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "None") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "none"))
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "ToTagFormat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/input-hammer.cc", 56);
              v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unknown tag format ", 19);
              std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, a1);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
            }

            return 4;
          }

          if (**a1 != 0x6170657368746F62 || *(*a1 + 8) != 1702125938)
          {
            goto LABEL_65;
          }

          return 3;
        }

        if (v2 == 12)
        {
          goto LABEL_9;
        }

LABEL_63:
        v15 = *(a1 + 23);
        goto LABEL_64;
      }
    }

    return 2;
  }

  return 1;
}

unsigned int *kaldi::quasar::FromTagFormat@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *result;
  if (v3 < 5)
  {
    return MEMORY[0x1C692A640](a2, off_1E81A12B8[v3]);
  }

  return result;
}

void sub_1C3133388(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::ModelFileMap(kaldi::quasar::Encdec *this)
{
  {
    operator new();
  }

  return kaldi::quasar::Encdec::ModelFileMap(void)::model_file_map;
}

uint64_t kaldi::quasar::Encdec::ComputeEngineFileMap(kaldi::quasar::Encdec *this)
{
  v1 = *(this + 67);
  if (v1)
  {

    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::ComputeEngineItf>(v1);
  }

  {
    operator new();
  }

  return kaldi::quasar::Encdec::ComputeEngineFileMap(void)::compute_engine_file_map;
}

void kaldi::quasar::Encdec::Encdec(uint64_t a1, std::string *a2, char a3, char a4)
{
  v7 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v10, a2);
  v8 = std::__fs::filesystem::path::remove_filename[abi:ne200100](v7);
  if (SHIBYTE(v8->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v8->__pn_.__r_.__value_.__l.__data_, v8->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = *&v8->__pn_.__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v8->__pn_.__r_.__value_.__l + 2);
    *a1 = v9;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *(a1 + 32) = 0u;
  *(a1 + 24) = a3;
  *(a1 + 256) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 25) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 400;
  *(a1 + 416) = a1 + 424;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = a1 + 448;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = a1 + 472;
  *(a1 + 488) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = a1 + 504;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 520) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v10, "UNK");
  kaldi::quasar::BPE::BPE(a1 + 568, 1, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *(a1 + 808) = 953267991;
  *(a1 + 812) = -1;
  *(a1 + 820) = -1;
  *(a1 + 828) = -1;
  *(a1 + 836) = 0x100000004;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 1024;
  std::string::basic_string[abi:ne200100]<0>((a1 + 912), "main");
  std::string::basic_string[abi:ne200100]<0>((a1 + 936), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 960), "CPU");
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 1056), "CPU");
  *(a1 + 1080) = xmmword_1C378C220;
  *(a1 + 1096) = 0x100000002;
  *(a1 + 1112) = 0u;
  *(a1 + 1104) = a1 + 1112;
  kaldi::nnet1::Nnet::Nnet((a1 + 1128));
}

void sub_1C3133D3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, const char *a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27)
{
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((v27 + 2248), 0, a3, a4, a5);
  std::unique_ptr<kaldi::quasar::Shortlist>::reset[abi:ne200100]((v27 + 2240), 0);
  kaldi::CuMatrix<float>::~CuMatrix(v31);
  v38 = *(v27 + 2168);
  if (v38)
  {
    *(v27 + 2176) = v38;
    operator delete(v38);
  }

  *(v37 - 112) = v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  if (*(v27 + 2031) < 0)
  {
    operator delete(*v29);
  }

  if (*(v27 + 2007) < 0)
  {
    operator delete(*v30);
  }

  if (*(v27 + 1983) < 0)
  {
    operator delete(*v36);
  }

  if (*(v27 + 1959) < 0)
  {
    operator delete(*a11);
  }

  if (*(v27 + 1935) < 0)
  {
    operator delete(*a12);
  }

  if (*(v27 + 1911) < 0)
  {
    operator delete(*a13);
  }

  if (*(v27 + 1887) < 0)
  {
    operator delete(*a14);
  }

  if (*(v27 + 1863) < 0)
  {
    operator delete(*a15);
  }

  if (*(v27 + 1839) < 0)
  {
    operator delete(*a16);
  }

  if (*(v27 + 1815) < 0)
  {
    operator delete(*a17);
  }

  if (*(v27 + 1791) < 0)
  {
    operator delete(*a18);
  }

  if (*(v27 + 1767) < 0)
  {
    operator delete(*a19);
  }

  if (*(v27 + 1743) < 0)
  {
    operator delete(*a20);
  }

  *(v37 - 112) = v27 + 1696;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  if (*(v27 + 1695) < 0)
  {
    operator delete(*a21);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(v27 + 1648, *a27);
  std::__tree<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<kaldi::nnet1::Nnet>>>>::destroy(v27 + 1624, **(v37 - 136));
  *(v37 - 112) = v27 + 1600;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v27 + 1576;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v27 + 1552;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v28;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  kaldi::nnet1::Nnet::~Nnet((v27 + 1128), v39, v40, v41, v42);
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(v27 + 1104, *(v27 + 1112));
  if (*(v27 + 1079) < 0)
  {
    operator delete(*a22);
  }

  if (*(v27 + 1055) < 0)
  {
    operator delete(*(v27 + 1032));
  }

  if (*(v27 + 1031) < 0)
  {
    operator delete(*(v27 + 1008));
  }

  if (*(v27 + 1007) < 0)
  {
    operator delete(*a23);
  }

  if (*(v27 + 983) < 0)
  {
    operator delete(*a24);
  }

  if (*(v27 + 959) < 0)
  {
    operator delete(*a25);
  }

  if (*(v27 + 935) < 0)
  {
    operator delete(*a26);
  }

  *(v37 - 112) = v27 + 880;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  v43 = **(v37 - 128);
  if (v43)
  {
    *(v27 + 864) = v43;
    operator delete(v43);
  }

  kaldi::quasar::BPE::~BPE((v32 + 67));
  v44 = *(v27 + 560);
  *(v27 + 560) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(v27 + 552);
  *(v27 + 552) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(v27 + 544);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v47 = *(v27 + 528);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy((v32 + 58), *(v27 + 504));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 54), *(v27 + 472));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 51), *(v27 + 448));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 48), *(v27 + 424));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 45), *(v27 + 400));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 42), *(v27 + 376));
  *(v37 - 112) = v32 + 39;
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::destroy((v32 + 36), *(v27 + 328));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::destroy((v32 + 33), *(v27 + 304));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::destroy((v32 + 30), *(v27 + 280));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::destroy(*(v37 - 120), *(v27 + 256));
  v48 = *(v27 + 240);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v27 + 224);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v50 = *(v27 + 208);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v51 = *(v27 + 192);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v52 = *(v27 + 176);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v53 = *(v27 + 160);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (*(v27 + 151) < 0)
  {
    operator delete(*(v27 + 128));
  }

  if (*(v27 + 127) < 0)
  {
    operator delete(*(v27 + 104));
  }

  if (*(v27 + 103) < 0)
  {
    operator delete(*(v27 + 80));
  }

  if (*(v27 + 79) < 0)
  {
    operator delete(*(v27 + 56));
  }

  if (*(v27 + 55) < 0)
  {
    operator delete(*v32);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

void sub_1C3134218()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1C3134010);
}

void sub_1C3134238()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x1C31341B4);
  }

  JUMPOUT(0x1C31341B8);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::remove_filename[abi:ne200100](std::__fs::filesystem::path *a1)
{
  v2 = std::__fs::filesystem::path::__filename(a1);
  if (v2.__size_)
  {
    v3 = a1;
    if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = a1->__pn_.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&a1->__pn_, &v2.__data_[-v3], 0xFFFFFFFFFFFFFFFFLL);
  }

  return a1;
}

uint64_t kaldi::quasar::Encdec::ModelCompilationSpec::Compile(kaldi::quasar::Encdec::ModelCompilationSpec *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 2) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "Compile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 99);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Pre-compilation only supported for E5 models!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 5), *(this + 6));
  }

  else
  {
    v6 = *(this + 40);
  }

  memset(v4, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v4, &v6, &v7, 1uLL);
  v2 = kaldi::quasar::onDeviceCompile(this + 2, v4, this + 8);
  v5 = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_1C31343C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::ModelCompilationSpec::IsCompileRequired(kaldi::quasar::Encdec::ModelCompilationSpec *this)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(this + 2) != 1)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "");
  v2 = *(this + 8);
  for (i = *(this + 9); v2 != i; v2 += 3)
  {
    if (*(v2 + 23) >= 0)
    {
      v4 = *(v2 + 23);
    }

    else
    {
      v4 = v2[1];
    }

    std::string::basic_string[abi:ne200100](&__p, v4 + 1);
    if (v31 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v4)
    {
      if (*(v2 + 23) >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      memmove(p_p, v6, v4);
    }

    *&p_p[v4] = 32;
    if (v31 >= 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p;
    }

    if (v31 >= 0)
    {
      v8 = HIBYTE(v31);
    }

    else
    {
      v8 = v30;
    }

    std::string::append(&v32, v7, v8);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *(this + 5), *(this + 6));
  }

  else
  {
    v34 = *(this + 40);
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v34, &v35, 1uLL);
  v10 = kaldi::quasar::checkCompiledCacheWithProgramLibrary(this + 2, &__p, this + 8);
  v33 = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "IsCompileRequired", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 125, 5);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Checking if need compile: ", 26);
    v12 = *(this + 39);
    if (v12 >= 0)
    {
      v13 = this + 16;
    }

    else
    {
      v13 = *(this + 2);
    }

    if (v12 >= 0)
    {
      v14 = *(this + 39);
    }

    else
    {
      v14 = *(this + 3);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
    v17 = *(this + 63);
    if (v17 >= 0)
    {
      v18 = this + 40;
    }

    else
    {
      v18 = *(this + 5);
    }

    if (v17 >= 0)
    {
      v19 = *(this + 63);
    }

    else
    {
      v19 = *(this + 6);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, size);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    if (v10)
    {
      v26 = "NO!";
    }

    else
    {
      v26 = "YES!";
    }

    if (v10)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  v9 = v10 ^ 1u;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1C31346EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 - 121) < 0)
  {
    operator delete(*(v15 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::ModelCompilationSpec::PurgeCompiledModel(uint64_t **this)
{
  if (*(this + 2) == 1)
  {
    return kaldi::quasar::purgeE5BundlesForMil(this + 2);
  }

  else
  {
    return 1;
  }
}

BOOL kaldi::quasar::Encdec::ModelCompilationSpec::Compare(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Compare", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 155);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "Mismatched comparison!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  v4 = v3;
  v5 = *(v3 + 39);
  v6 = *(a1 + 39);
  if (v6 >= 0)
  {
    v7 = *(a1 + 39);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  if (v6 >= 0)
  {
    v8 = (a1 + 16);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v5 >= 0)
  {
    v9 = *(v3 + 39);
  }

  else
  {
    v9 = v3[3];
  }

  if (v5 >= 0)
  {
    v10 = v3 + 2;
  }

  else
  {
    v10 = v3[2];
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    return 0;
  }

  v18 = *(v4 + 63);
  v19 = *(a1 + 63);
  if (v19 >= 0)
  {
    v20 = *(a1 + 63);
  }

  else
  {
    v20 = *(a1 + 48);
  }

  if (v19 >= 0)
  {
    v21 = (a1 + 40);
  }

  else
  {
    v21 = *(a1 + 40);
  }

  if (v18 >= 0)
  {
    v22 = *(v4 + 63);
  }

  else
  {
    v22 = v4[6];
  }

  if (v18 >= 0)
  {
    v23 = v4 + 5;
  }

  else
  {
    v23 = v4[5];
  }

  if (v22 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v21, v23, v24);
  v26 = v20 < v22;
  if (v25)
  {
    v26 = v25 < 0;
  }

  if (v26)
  {
    return 1;
  }

  v27 = memcmp(v23, v21, v24);
  v28 = v22 < v20;
  if (v27)
  {
    v28 = v27 < 0;
  }

  if (v28)
  {
    return 0;
  }

  v29 = *(a1 + 64);
  v30 = v4[8];
  v31 = (v4[9] - v30) >> 3;
  v32 = 0xAAAAAAAAAAAAAAABLL * v31;
  v44 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - v29) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * v31 >= v44)
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - v29) >> 3);
  }

  else
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * v31;
  }

  if (!v33)
  {
    return v44 < v32;
  }

  while (1)
  {
    v34 = *(v30 + 23);
    v35 = *(v29 + 23);
    v36 = v35 >= 0 ? *(v29 + 23) : *(v29 + 8);
    v37 = v35 >= 0 ? v29 : *v29;
    v38 = v34 >= 0 ? *(v30 + 23) : *(v30 + 8);
    v39 = v34 >= 0 ? v30 : *v30;
    v40 = v38 >= v36 ? v36 : v38;
    v41 = memcmp(v37, v39, v40);
    v14 = v41 ? v41 < 0 : v36 < v38;
    if (v14)
    {
      break;
    }

    v42 = memcmp(v39, v37, v40);
    v43 = v38 < v36;
    if (v42)
    {
      v43 = v42 < 0;
    }

    if (v43)
    {
      break;
    }

    v30 += 24;
    v29 += 24;
    if (!--v33)
    {
      return v44 < v32;
    }
  }

  return v14;
}

void kaldi::quasar::Encdec::CreateEspressoModel(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, std::vector<std::string> *a6@<X5>, char a7@<W6>, __int128 *a8@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = a3;
  v81 = 0;
  v82 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  kaldi::SplitStringToVector(a2, ",", 1, &v81);
  v14 = v81;
  v13 = v82;
  while (v14 != v13)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v69, a1);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v77, v14);
    std::__fs::filesystem::operator/[abi:ne200100](&__p, &v77, &v69);
    v15 = v79;
    if (v79 >= v80)
    {
      v17 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v78, &__p);
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v79, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = *&__p.__r_.__value_.__l.__data_;
        v79->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        *&v15->__r_.__value_.__l.__data_ = v16;
      }

      v17 = v15 + 1;
    }

    v79 = v17;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    ++v14;
  }

  if (v79 - v78 == 24)
  {
    if (SHIBYTE(v78->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, v78->__r_.__value_.__l.__data_, v78->__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = *&v78->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v18;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v77, "");
  }

  kaldi::JoinVectorToString<std::string>(&v78, ",");
  *a8 = 0;
  *(a8 + 1) = 0;
  v19 = kaldi::quasar::Encdec::ComputeEngineFileMap(a1);
  __p.__r_.__value_.__r.__words[0] = v75;
  v20 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v19, v75, &std::piecewise_construct, &__p, &v68);
  v21 = v20[8];
  if (!v21 || (v22 = std::__shared_weak_count::lock(v21)) == 0)
  {
    *(a8 + 1) = 0;
    *a8 = 0;
LABEL_33:
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "CreateEspressoModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 196, 2);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading: ", 9);
      if ((v76 & 0x80u) == 0)
      {
        v33 = v75;
      }

      else
      {
        v33 = v75[0];
      }

      if ((v76 & 0x80u) == 0)
      {
        v34 = v76;
      }

      else
      {
        v34 = v75[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    if (v84 != 1)
    {
      kaldi::quasar::ESNetworkConfig::ESNetworkConfig(&v69, v75);
      std::string::operator=(&v71, a4);
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig(&v69, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
    }

    else
    {
      __p = *a4;
    }

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(v72, &__p, v86, 1uLL);
    v67 = a6;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v36 = *a5;
    v35 = a5[1];
    if (*a5 != v35)
    {
      do
      {
        begin = v67->__begin_;
        end = v67->__end_;
        if (v67->__begin_ == end)
        {
          if (*(a1 + 935) >= 0)
          {
            v47 = *(a1 + 935);
          }

          else
          {
            v47 = *(a1 + 920);
          }

          std::string::basic_string[abi:ne200100](&v68, v47 + 1);
          if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v68;
          }

          else
          {
            v48 = v68.__r_.__value_.__r.__words[0];
          }

          if (v47)
          {
            if (*(a1 + 935) >= 0)
            {
              v49 = (a1 + 912);
            }

            else
            {
              v49 = *(a1 + 912);
            }

            memmove(v48, v49, v47);
          }

          *(&v48->__r_.__value_.__l.__data_ + v47) = 95;
          v50 = *(v36 + 23);
          if (v50 >= 0)
          {
            v51 = v36;
          }

          else
          {
            v51 = *v36;
          }

          if (v50 >= 0)
          {
            v52 = *(v36 + 23);
          }

          else
          {
            v52 = *(v36 + 8);
          }

          v53 = std::string::append(&v68, v51, v52);
          v54 = *&v53->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](v73, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          do
          {
            if ((begin->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = begin->__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v68, size + 1);
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v40 = &v68;
            }

            else
            {
              v40 = v68.__r_.__value_.__r.__words[0];
            }

            if (size)
            {
              if ((begin->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = begin;
              }

              else
              {
                v41 = begin->__r_.__value_.__r.__words[0];
              }

              memmove(v40, v41, size);
            }

            *(&v40->__r_.__value_.__l.__data_ + size) = 95;
            v42 = *(v36 + 23);
            if (v42 >= 0)
            {
              v43 = v36;
            }

            else
            {
              v43 = *v36;
            }

            if (v42 >= 0)
            {
              v44 = *(v36 + 23);
            }

            else
            {
              v44 = *(v36 + 8);
            }

            v45 = std::string::append(&v68, v43, v44);
            v46 = *&v45->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v46;
            v45->__r_.__value_.__l.__size_ = 0;
            v45->__r_.__value_.__r.__words[2] = 0;
            v45->__r_.__value_.__r.__words[0] = 0;
            std::vector<std::string>::push_back[abi:ne200100](v73, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }

            ++begin;
          }

          while (begin != end);
        }

        v36 += 24;
      }

      while (v36 != v35);
    }

    if (a7)
    {
      v55 = v73[0];
      v56 = v73[1];
LABEL_101:
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v74, v55, v56, 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 3));
      goto LABEL_102;
    }

    v55 = v67->__begin_;
    v56 = v67->__end_;
    if (v67->__begin_ != v56)
    {
      if (&v74 == v67)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    v62 = (a1 + 912);
    v63 = *(a1 + 935);
    if (v63 < 0)
    {
      v64 = *(a1 + 920);
      if (v64 == 4)
      {
        v65 = *v62;
        if (**v62 == 1852399981)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v65 = *v62;
      }

      std::string::__init_copy_ctor_external(&__p, v65, v64);
    }

    else
    {
      if (v63 == 4 && *v62 == 1852399981)
      {
        goto LABEL_102;
      }

      *&__p.__r_.__value_.__l.__data_ = *v62;
      __p.__r_.__value_.__r.__words[2] = *(a1 + 928);
    }

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v74, &__p, v86, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_102:
    memset(&v68, 0, sizeof(v68));
    if (v78 != v79)
    {
      std::string::operator=(v70, v78);
      operator new();
    }

    operator new();
  }

  v23 = v20[7];
  *a8 = v23;
  *(a8 + 1) = v22;
  if (!v23)
  {
    goto LABEL_33;
  }

  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "CreateEspressoModel", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 251, 2);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ModelSharing: cache id ", 23);
    v25 = kaldi::quasar::Encdec::ComputeEngineFileMap(a1);
    v26 = MEMORY[0x1C692A910](v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", reusing already created compute engine for ", 45);
    if ((v76 & 0x80u) == 0)
    {
      v28 = v75;
    }

    else
    {
      v28 = v75[0];
    }

    if ((v76 & 0x80u) == 0)
    {
      v29 = v76;
    }

    else
    {
      v29 = v75[1];
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", id: ", 6);
    MEMORY[0x1C692A910](v31, v23);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::push_back[abi:ne200100]((a1 + 344), a8);
  }

  if (*(a1 + 25) == 1)
  {
    v57 = kaldi::quasar::Encdec::ComputeEngineFileMap(a1);
    __p.__r_.__value_.__r.__words[0] = v75;
    v58 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::ComputeEngineItf>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v57, v75, &std::piecewise_construct, &__p, &v68);
    v60 = *a8;
    v59 = *(a8 + 1);
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 16), 1uLL, memory_order_relaxed);
    }

    v61 = v58[8];
    v58[7] = v60;
    v58[8] = v59;
    if (v61)
    {
      std::__shared_weak_count::__release_weak(v61);
    }
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v78;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v81;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C3135660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  a22 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t kaldi::JoinVectorToString<std::string>(uint64_t *a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v5 + v6;
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v10, v11);
      ++v7;
      v5 = *a1;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      if (v7 < v12)
      {
        v13 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a2, v13);
        v5 = *a1;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      }

      v6 += 24;
    }

    while (v7 < v12);
  }

  std::stringbuf::str();
  v16[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v17 = v14;
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C692AD30](&v21);
}

void sub_1C3135B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<kaldi::quasar::EspressoV2Plan>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void *kaldi::quasar::ReadSymbolTable@<X0>(void *a1@<X0>, int a2@<W1>, const std::string *a3@<X2>, void *a4@<X8>)
{
  if (!a2)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v26);
    memset(&__p, 0, sizeof(__p));
    v7 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v8 = std::locale::use_facet(v24, v7);
      v9 = (v8->__vftable[2].~facet_0)(v8, 10);
      std::locale::~locale(v24);
      v10 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__p, v9);
      if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
      {
        v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_32:
        if (v18 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
        fst::SymbolTable::ReadText(v26);
      }

      kaldi::Trim(&__p);
      std::operator+<char>();
      v11 = std::string::append(&v23, ">");
      v25 = v11->__r_.__value_.__r.__words[2];
      *&v24[0].__locale_ = *&v11->__r_.__value_.__l.__data_;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      locale = HIBYTE(v25);
      v14 = SHIBYTE(v25);
      if (v25 < 0)
      {
        locale = v24[1].__locale_;
      }

      if (size != locale)
      {
        break;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v25 >= 0)
      {
        v16 = v24;
      }

      else
      {
        v16 = v24[0].__locale_;
      }

      v17 = memcmp(p_p, v16, size) == 0;
      if (v14 < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v17)
      {
        goto LABEL_32;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
    }

    v17 = 0;
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    operator delete(v24[0].__locale_);
    goto LABEL_21;
  }

  result = fst::SymbolTable::Read(a1, a3);
  *a4 = result;
  return result;
}

void sub_1C3136030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::locale a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a30);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::SetMappedFile(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 520))
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v5, "SetMappedFile", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 334, 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Nnet already mapped from a file - ignoring", 42);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v5);
    }
  }

  else
  {
    v2 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 520) = v2;
    v4 = *(a1 + 528);
    *(a1 + 528) = v3;
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1C3136164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::Encdec::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v242 = a5;
  v272 = *MEMORY[0x1E69E9840];
  memset(v268, 0, sizeof(v268));
  memset(&v267, 0, sizeof(v267));
  memset(&v266, 0, sizeof(v266));
  memset(&v265, 0, sizeof(v265));
  *(a1 + 1507) = 0;
  v8 = *(a1 + 552);
  *(a1 + 552) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 560);
  *(a1 + 560) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v244 = 0;
  v240 = (a1 + 1008);
  v241 = (a1 + 984);
  __str = (a1 + 960);
  while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
  {
    kaldi::ReadToken(a2, a3, v268, a4, a5);
    if ((SHIBYTE(v268[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v268[2]) <= 0xFu)
      {
        if (HIBYTE(v268[2]) <= 0xBu)
        {
          if (HIBYTE(v268[2]) == 10)
          {
            if (v268[0] == 0x636F567475706E49 && LOWORD(v268[1]) == 25185)
            {
              goto LABEL_203;
            }
          }

          else if (HIBYTE(v268[2]) == 11 && v268[0] == 0x6F5674757074754FLL && *(v268 + 3) == 0x6261636F56747570)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (HIBYTE(v268[2]) != 12)
          {
            if (HIBYTE(v268[2]) != 14)
            {
              if (HIBYTE(v268[2]) == 15)
              {
                v19 = v268[0] == 0x5374756F64616552 && *(v268 + 7) == 0x7864497472617453;
                v20 = a1 + 2124;
                if (v19)
                {
                  goto LABEL_411;
                }

                v21 = v268[0] == 0x4974756F64616552 && *(v268 + 7) == 0x7274537475706E49;
                v22 = a1 + 1984;
                if (v21)
                {
                  goto LABEL_292;
                }
              }

              goto LABEL_395;
            }

            if (v268[0] == 0x6F73736572707345 && *(v268 + 6) == 0x656E69676E456F73)
            {
              goto LABEL_289;
            }

            if (v268[0] == 0x6E69646465626D45 && *(v268 + 6) == 0x6870617247676E69)
            {
              goto LABEL_151;
            }

LABEL_278:
            v72 = v268;
LABEL_391:
            v96 = *v72;
            v97 = *(v72 + 6);
            if (v96 == 0x6E614C7475706E49 && v97 == 0x6870617247676E61)
            {
              memset(&__s, 0, sizeof(__s));
              memset(&v264, 0, sizeof(v264));
              kaldi::ReadToken(a2, a3, &__s, v10, v11);
              kaldi::ReadToken(a2, a3, &v264, v110, v111);
              std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v264);
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>((a1 + 440), &__p.__r_.__value_.__l.__data_, &__p);
              goto LABEL_397;
            }

            goto LABEL_395;
          }

          if (v268[0] == 0x4774756F64616552 && LODWORD(v268[1]) == 1752195442)
          {
            goto LABEL_291;
          }

          v46 = v268[0] == 0x477265646F636E45 && LODWORD(v268[1]) == 1752195442;
          v22 = a1 + 80;
          if (v46)
          {
            goto LABEL_292;
          }

          v47 = v268[0] == 0x477265646F636544 && LODWORD(v268[1]) == 1752195442;
          v22 = a1 + 104;
          if (v47)
          {
            goto LABEL_292;
          }
        }
      }

      else if (HIBYTE(v268[2]) > 0x12u)
      {
        switch(HIBYTE(v268[2]))
        {
          case 0x13u:
            if (v268[0] == 0x5374757074754F3CLL && v268[1] == 0x6261546C6F626D79 && *(&v268[1] + 3) == 0x3E656C6261546C6FLL)
            {
              goto LABEL_192;
            }

            break;
          case 0x14u:
            if (v268[0] == 0x6D79537475706E49 && v268[1] == 0x656C6261546C6F62 && LODWORD(v268[2]) == 1701603654)
            {
              goto LABEL_287;
            }

            break;
          case 0x15u:
            if (v268[0] == 0x795374757074754FLL && v268[1] == 0x6C6261546C6F626DLL && *(&v268[1] + 5) == 0x656C6946656C6261)
            {
              goto LABEL_293;
            }

            if (v268[0] == 0x457265646F636E45 && v268[1] == 0x456F737365727073 && *(&v268[1] + 5) == 0x656E69676E456F73)
            {
              goto LABEL_295;
            }

            if (v268[0] == 0x457265646F636544 && v268[1] == 0x456F737365727073 && *(&v268[1] + 5) == 0x656E69676E456F73)
            {
              goto LABEL_134;
            }

            break;
        }
      }

      else if (HIBYTE(v268[2]) == 16)
      {
        v48 = v268[0] == 0x4F74756F64616552 && v268[1] == 0x7274537475707475;
        v22 = a1 + 2008;
        if (v48)
        {
          goto LABEL_292;
        }

        if (v268[0] == 0x4C7265646F636E45 && v268[1] == 0x6870617247676E61)
        {
LABEL_297:
          memset(&__s, 0, sizeof(__s));
          memset(&v264, 0, sizeof(v264));
          kaldi::ReadToken(a2, a3, &__s, v10, v11);
          kaldi::ReadToken(a2, a3, &v264, v75, v76);
          std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v264);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>((a1 + 368), &__p.__r_.__value_.__l.__data_, &__p);
          goto LABEL_385;
        }

        if (v268[0] == 0x4C7265646F636544 && v268[1] == 0x6870617247676E61)
        {
          goto LABEL_384;
        }
      }

      else if (HIBYTE(v268[2]) == 17)
      {
        if (v268[0] == 0x7265766F646E6148 && v268[1] == 0x70617247676E614CLL && LOBYTE(v268[2]) == 104)
        {
          goto LABEL_373;
        }
      }

      else
      {
        v12 = v268[0] == 0x79537475706E493CLL && v268[1] == 0x6C6261546C6F626DLL;
        if (v12 && LOWORD(v268[2]) == 15973)
        {
          goto LABEL_213;
        }

        v15 = v268[0] == 0x5774756F64616552 && v268[1] == 0x6D74666F53687469 && LOWORD(v268[2]) == 30817;
        v16 = (a1 + 2128);
        if (v15)
        {
          goto LABEL_409;
        }
      }

      goto LABEL_395;
    }

    v17 = v268[1];
    if (v268[1] <= 17)
    {
      if (v268[1] <= 11)
      {
        if (v268[1] == 10)
        {
          if (*v268[0] == 0x636F567475706E49 && *(v268[0] + 4) == 25185)
          {
LABEL_203:
            kaldi::ReadToken(a2, a3, &v267, v10, v11);
            LOBYTE(v256) = 0;
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v264, a1);
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, &v267);
            std::__fs::filesystem::operator/[abi:ne200100](&__s, &v263, &v264);
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __s;
            }

            kaldi::Input::Input(&v262, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v263.__pn_.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v264.__r_.__value_.__l.__data_);
            }

            v79 = kaldi::Input::Stream(&v262);
            kaldi::quasar::Vocab::Vocab(&__s, v79, v256, 1);
            operator new();
          }

          goto LABEL_395;
        }

        if (v268[1] == 11)
        {
          if (*v268[0] == 0x6F5674757074754FLL && *(v268[0] + 3) == 0x6261636F56747570)
          {
LABEL_96:
            kaldi::ReadToken(a2, a3, &v266, v10, v11);
            LOBYTE(v256) = 0;
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v264, a1);
            std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, &v266);
            std::__fs::filesystem::operator/[abi:ne200100](&__s, &v263, &v264);
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __s;
            }

            kaldi::Input::Input(&v262, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v263.__pn_.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v264.__r_.__value_.__l.__data_);
            }

            v80 = kaldi::Input::Stream(&v262);
            kaldi::quasar::Vocab::Vocab(&__s, v80, v256, 1);
            operator new();
          }

          goto LABEL_395;
        }

LABEL_224:
        if (v17 == 15)
        {
          v62 = *v268[0] == 0x5374756F64616552 && *(v268[0] + 7) == 0x7864497472617453;
          v20 = a1 + 2124;
          if (v62)
          {
            goto LABEL_411;
          }

          v17 = v268[1];
        }

        if (v17 != 18)
        {
          goto LABEL_238;
        }

        goto LABEL_231;
      }

      if (v268[1] == 12)
      {
        if (*v268[0] == 0x4774756F64616552 && *(v268[0] + 2) == 1752195442)
        {
LABEL_291:
          *(a1 + 1507) = 1;
          v22 = a1 + 128;
          goto LABEL_292;
        }
      }

      else
      {
        if (v268[1] != 14)
        {
          goto LABEL_224;
        }

        if (*v268[0] == 0x6F73736572707345 && *(v268[0] + 6) == 0x656E69676E456F73)
        {
LABEL_289:
          memset(&__s, 0, sizeof(__s));
          kaldi::ReadToken(a2, a3, &__s, v10, v11);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v261, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            v261 = __s;
          }

          kaldi::quasar::Encdec::ParseEnginePlatform(&v261, &__p);
          *(a1 + 1080) = __p.__r_.__value_.__r.__words[0];
          if (*(a1 + 983) < 0)
          {
            operator delete(__str->__r_.__value_.__l.__data_);
          }

          *&__str->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__r.__words[1];
          *(a1 + 976) = v270;
          HIBYTE(v270) = 0;
          __p.__r_.__value_.__s.__data_[8] = 0;
          if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
          {
            v78 = v261.__r_.__value_.__r.__words[0];
LABEL_400:
            operator delete(v78);
            goto LABEL_401;
          }

          goto LABEL_401;
        }

        if (*v268[0] == 0x6E69646465626D45 && *(v268[0] + 6) == 0x6870617247676E69)
        {
LABEL_151:
          *(a1 + 1508) = 1;
          v22 = a1 + 56;
LABEL_292:
          kaldi::ReadToken(a2, a3, v22, v10, v11);
          goto LABEL_412;
        }
      }

LABEL_223:
      v17 = v268[1];
      goto LABEL_224;
    }

    if (v268[1] > 19)
    {
      if (v268[1] == 20)
      {
        if (*v268[0] == 0x6D79537475706E49 && *(v268[0] + 1) == 0x656C6261546C6F62 && *(v268[0] + 4) == 1701603654)
        {
LABEL_287:
          kaldi::ReadToken(a2, a3, &v267, v10, v11);
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, a1);
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v262.__pn_, &v267);
          std::__fs::filesystem::operator/[abi:ne200100](&v264, &v262, &v263);
          if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__s, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
          }

          else
          {
            __s = v264;
          }

          fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
          Text = fst::SymbolTable::ReadText(&__s);
          v82 = *(a1 + 552);
          *(a1 + 552) = Text;
          if (v82)
          {
            (*(*v82 + 8))(v82);
          }

          if (SHIBYTE(v270) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v264.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v262.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v262.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__pn_.__r_.__value_.__l.__data_);
          }

          *(a1 + 812) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<s>");
          *(a1 + 816) = (*(**(a1 + 552) + 104))(*(a1 + 552), "</s>");
          *(a1 + 820) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<unk>");
          if (kaldi::g_kaldi_verbose_level >= 2)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 420, 2);
            v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input symbol table size ", 24);
            v84 = (*(**(a1 + 552) + 120))(*(a1 + 552));
            MEMORY[0x1C692A980](v83, v84);
            goto LABEL_359;
          }

          goto LABEL_412;
        }

        goto LABEL_395;
      }

      if (v268[1] != 21)
      {
        goto LABEL_224;
      }

      if (*v268[0] == 0x795374757074754FLL && *(v268[0] + 1) == 0x6C6261546C6F626DLL && *(v268[0] + 13) == 0x656C6946656C6261)
      {
LABEL_293:
        kaldi::ReadToken(a2, a3, &v266, v10, v11);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v262.__pn_, &v266);
        std::__fs::filesystem::operator/[abi:ne200100](&v264, &v262, &v263);
        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
        }

        else
        {
          __s = v264;
        }

        fst::SymbolTableTextOptions::SymbolTableTextOptions(&__p);
        v85 = fst::SymbolTable::ReadText(&__s);
        v86 = *(a1 + 560);
        *(a1 + 560) = v85;
        if (v86)
        {
          (*(*v86 + 8))(v86);
        }

        if (SHIBYTE(v270) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v264.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v262.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v263.__pn_.__r_.__value_.__l.__data_);
        }

        *(a1 + 824) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<s>");
        *(a1 + 828) = (*(**(a1 + 560) + 104))(*(a1 + 560), "</s>");
        *(a1 + 832) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<unk>");
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 428, 2);
          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Output symbol table size ", 25);
          v88 = (*(**(a1 + 560) + 120))(*(a1 + 560));
          MEMORY[0x1C692A980](v87, v88);
          goto LABEL_359;
        }

        goto LABEL_412;
      }

      if (*v268[0] == 0x457265646F636E45 && *(v268[0] + 1) == 0x456F737365727073 && *(v268[0] + 13) == 0x656E69676E456F73)
      {
LABEL_295:
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s, v10, v11);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v260, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v260 = __s;
        }

        kaldi::quasar::Encdec::ParseEnginePlatform(&v260, &__p);
        *(a1 + 1088) = __p.__r_.__value_.__r.__words[0];
        if (*(a1 + 1007) < 0)
        {
          operator delete(v241->__r_.__value_.__l.__data_);
        }

        *&v241->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__r.__words[1];
        *(a1 + 1000) = v270;
        HIBYTE(v270) = 0;
        __p.__r_.__value_.__s.__data_[8] = 0;
        if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
        {
          v78 = v260.__r_.__value_.__r.__words[0];
          goto LABEL_400;
        }

LABEL_401:
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_412;
        }

        v103 = __s.__r_.__value_.__r.__words[0];
LABEL_403:
        operator delete(v103);
        goto LABEL_412;
      }

      if (*v268[0] == 0x457265646F636544 && *(v268[0] + 1) == 0x456F737365727073 && *(v268[0] + 13) == 0x656E69676E456F73)
      {
LABEL_134:
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s, v10, v11);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v259, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v259 = __s;
        }

        kaldi::quasar::Encdec::ParseEnginePlatform(&v259, &__p);
        *(a1 + 1096) = __p.__r_.__value_.__r.__words[0];
        if (*(a1 + 1031) < 0)
        {
          operator delete(v240->__r_.__value_.__l.__data_);
        }

        *&v240->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__r.__words[1];
        *(a1 + 1024) = v270;
        HIBYTE(v270) = 0;
        __p.__r_.__value_.__s.__data_[8] = 0;
        if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
        {
          v78 = v259.__r_.__value_.__r.__words[0];
          goto LABEL_400;
        }

        goto LABEL_401;
      }

      goto LABEL_223;
    }

    if (v268[1] != 18)
    {
      if (*v268[0] == 0x5374757074754F3CLL && *(v268[0] + 1) == 0x6261546C6F626D79 && *(v268[0] + 11) == 0x3E656C6261546C6FLL)
      {
LABEL_192:
        std::string::basic_string[abi:ne200100]<0>(&__p, "OutputSymbolTable");
        kaldi::quasar::ReadSymbolTable(a2, a3, &__p, &__s);
        v52 = *(a1 + 560);
        *(a1 + 560) = __s.__r_.__value_.__r.__words[0];
        if (v52)
        {
          (*(*v52 + 8))(v52);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *(a1 + 824) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<s>");
        *(a1 + 828) = (*(**(a1 + 560) + 104))(*(a1 + 560), "</s>");
        *(a1 + 832) = (*(**(a1 + 560) + 104))(*(a1 + 560), "<unk>");
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 440, 2);
          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Output symbol table size ", 25);
          v54 = (*(**(a1 + 560) + 120))(*(a1 + 560));
          MEMORY[0x1C692A980](v53, v54);
LABEL_359:
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
          goto LABEL_412;
        }

        goto LABEL_412;
      }

      goto LABEL_395;
    }

    if (*v268[0] == 0x79537475706E493CLL && *(v268[0] + 1) == 0x6C6261546C6F626DLL && *(v268[0] + 8) == 15973)
    {
LABEL_213:
      std::string::basic_string[abi:ne200100]<0>(&__p, "InputSymbolTable");
      kaldi::quasar::ReadSymbolTable(a2, a3, &__p, &__s);
      v58 = *(a1 + 552);
      *(a1 + 552) = __s.__r_.__value_.__r.__words[0];
      if (v58)
      {
        (*(*v58 + 8))(v58);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *(a1 + 812) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<s>");
      *(a1 + 816) = (*(**(a1 + 552) + 104))(*(a1 + 552), "</s>");
      *(a1 + 820) = (*(**(a1 + 552) + 104))(*(a1 + 552), "<unk>");
      if (kaldi::g_kaldi_verbose_level >= 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 434, 2);
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input symbol table size ", 24);
        v60 = (*(**(a1 + 552) + 120))(*(a1 + 552));
        MEMORY[0x1C692A980](v59, v60);
        goto LABEL_359;
      }

      goto LABEL_412;
    }

LABEL_231:
    v64 = *v268[0] == 0x5774756F64616552 && *(v268[0] + 1) == 0x6D74666F53687469 && *(v268[0] + 8) == 30817;
    v16 = (a1 + 2128);
    if (v64)
    {
      goto LABEL_409;
    }

LABEL_238:
    if (v268[1] == 16)
    {
      v66 = *v268[0] == 0x4F74756F64616552 && *(v268[0] + 1) == 0x7274537475707475;
      v22 = a1 + 2008;
      if (v66)
      {
        goto LABEL_292;
      }
    }

    else if (v268[1] == 15)
    {
      v65 = *v268[0] == 0x4974756F64616552 && *(v268[0] + 7) == 0x7274537475706E49;
      v22 = a1 + 1984;
      if (v65)
      {
        goto LABEL_292;
      }
    }

    if (v268[1] == 16)
    {
      if (*v268[0] == 0x4C7265646F636E45 && *(v268[0] + 1) == 0x6870617247676E61)
      {
        goto LABEL_297;
      }
    }

    else if (v268[1] == 12)
    {
      v67 = *v268[0] == 0x477265646F636E45 && *(v268[0] + 2) == 1752195442;
      v22 = a1 + 80;
      if (v67)
      {
        goto LABEL_292;
      }
    }

    if (v268[1] != 12)
    {
      goto LABEL_276;
    }

    v77 = *v268[0] == 0x477265646F636544 && *(v268[0] + 2) == 1752195442;
    v22 = a1 + 104;
    if (v77)
    {
      goto LABEL_292;
    }

    if ((HIBYTE(v268[2]) & 0x80) != 0)
    {
LABEL_276:
      if (v268[1] == 16)
      {
        if (*v268[0] == 0x4C7265646F636544 && *(v268[0] + 1) == 0x6870617247676E61)
        {
LABEL_384:
          memset(&__s, 0, sizeof(__s));
          memset(&v264, 0, sizeof(v264));
          kaldi::ReadToken(a2, a3, &__s, v10, v11);
          kaldi::ReadToken(a2, a3, &v264, v94, v95);
          std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v264);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>((a1 + 392), &__p.__r_.__value_.__l.__data_, &__p);
LABEL_385:
          if (v271 < 0)
          {
            operator delete(v270);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_398:
          if ((SHIBYTE(v264.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_401;
          }

          v78 = v264.__r_.__value_.__r.__words[0];
          goto LABEL_400;
        }

        if ((HIBYTE(v268[2]) & 0x80) == 0)
        {
          goto LABEL_277;
        }
      }

      if (v268[1] == 14)
      {
        v72 = v268[0];
        goto LABEL_391;
      }

      if (v268[1] == 17)
      {
        if (*v268[0] == 0x7265766F646E6148 && *(v268[0] + 1) == 0x70617247676E614CLL && *(v268[0] + 16) == 104)
        {
LABEL_373:
          memset(&__s, 0, sizeof(__s));
          memset(&v264, 0, sizeof(v264));
          kaldi::ReadToken(a2, a3, &__s, v10, v11);
          kaldi::ReadToken(a2, a3, &v264, v91, v92);
          std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v264);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>((a1 + 416), &__p.__r_.__value_.__l.__data_, &__p);
          goto LABEL_385;
        }

        if ((HIBYTE(v268[2]) & 0x80) == 0)
        {
LABEL_277:
          if (HIBYTE(v268[2]) == 14)
          {
            goto LABEL_278;
          }
        }
      }
    }

LABEL_395:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "EncoderLangFunc"))
    {
      memset(&__s, 0, sizeof(__s));
      memset(&v264, 0, sizeof(v264));
      kaldi::ReadToken(a2, a3, &__s, v99, v100);
      kaldi::ReadToken(a2, a3, &v264, v101, v102);
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__p, &__s, &v264);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>((a1 + 464), &__p.__r_.__value_.__l.__data_, &__p);
LABEL_397:
      std::pair<std::string,std::string>::~pair(&__p);
      goto LABEL_398;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "Mmap"))
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      kaldi::ReadBasicType<BOOL>(a2, a3, &__p);
      goto LABEL_412;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "AddSrcBos"))
    {
      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 1510));
      v244 = 1;
      goto LABEL_412;
    }

    v104 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "AddSrcEos");
    v16 = (a1 + 1511);
    if (v104)
    {
      goto LABEL_409;
    }

    v105 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "PadSrc");
    v20 = a1 + 848;
    if (v105)
    {
      goto LABEL_411;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "PadSrcConfigs"))
    {
      memset(&__p, 0, sizeof(__p));
      memset(&__s, 0, sizeof(__s));
      kaldi::ReadToken(a2, a3, &__p, v106, v107);
      kaldi::SplitStringToVector(&__p, ",", 1, &__s);
      size = __s.__r_.__value_.__l.__size_;
      for (i = __s.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        LODWORD(v264.__r_.__value_.__l.__data_) = std::stoi(i, 0, 10);
        std::vector<int>::push_back[abi:ne200100]((a1 + 856), &v264);
      }

      v264.__r_.__value_.__r.__words[0] = &__s;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v264);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ConfigNames"))
    {
      memset(&__p, 0, sizeof(__p));
      kaldi::ReadToken(a2, a3, &__p, v112, v113);
      kaldi::SplitStringToVector(&__p, ",", 1, a1 + 880);
    }

    else
    {
      v114 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "MaxSrcTokens");
      v20 = a1 + 904;
      if (v114)
      {
        goto LABEL_411;
      }

      v115 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "Reverse");
      v16 = (a1 + 1504);
      if (v115)
      {
        goto LABEL_409;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "IsRNN"))
      {
        __s.__r_.__value_.__s.__data_[0] = 0;
        kaldi::ReadBasicType<BOOL>(a2, a3, &__s);
        if (__s.__r_.__value_.__s.__data_[0] == 1)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 549);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model type.", 35);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "UseAttention"))
      {
        __s.__r_.__value_.__s.__data_[0] = 0;
        kaldi::ReadBasicType<BOOL>(a2, a3, &__s);
        if (__s.__r_.__value_.__s.__data_[0] == 1)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 553);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model type.", 35);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "UseTopK"))
      {
        __s.__r_.__value_.__s.__data_[0] = 0;
        kaldi::ReadBasicType<BOOL>(a2, a3, &__s);
        if (__s.__r_.__value_.__s.__data_[0] == 1)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 557);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model type.", 35);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ModelBatchSize"))
      {
        kaldi::ReadBasicType<int>(a2, a3, a1 + 840);
        *(a1 + 844) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "BPEEncoder"))
      {
        kaldi::ReadToken(a2, a3, &v265, v116, v117);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v262.__pn_, &v265);
        std::__fs::filesystem::operator/[abi:ne200100](&v264, &v262, &v263);
        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
        }

        else
        {
          __s = v264;
        }

        std::ifstream::basic_ifstream(&__p, &__s, 8);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v264.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v262.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v263.__pn_.__r_.__value_.__l.__data_);
        }

        if ((kaldi::quasar::BPE::Read(a1 + 568, &__p, 1) & 1) == 0)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__s, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 565);
          v236 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__s, "Failed to read BPE model from : ", 32);
          if ((v265.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v237 = &v265;
          }

          else
          {
            v237 = v265.__r_.__value_.__r.__words[0];
          }

          if ((v265.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v238 = HIBYTE(v265.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v238 = v265.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v236, v237, v238);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__s);
        }

        *(a1 + 1505) = 1;
        std::ifstream::~ifstream(&__p);
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "<BPE>"))
      {
        if ((kaldi::quasar::BPE::Read(a1 + 568, a2, a3) & 1) == 0)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 570);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to read embedded BPE model", 33);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 572, 2);
          v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "BPE read - entries: ", 20);
          MEMORY[0x1C692A960](v118, *(a1 + 616));
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        *(a1 + 1505) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "AddTag"))
      {
        kaldi::ReadToken(a2, a3, a1 + 2384, v119, v120);
LABEL_459:
        *(a1 + 2376) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "TagFormat"))
      {
        kaldi::ReadToken(a2, a3, a1 + 2408, v121, v122);
        goto LABEL_459;
      }

      v123 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "IsEspresso");
      v16 = (a1 + 1512);
      if (v123)
      {
        goto LABEL_409;
      }

      v124 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "SourceInputStr");
      v22 = a1 + 1744;
      if (v124)
      {
        goto LABEL_292;
      }

      v125 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "TargetInputStr");
      v22 = a1 + 1768;
      if (v125)
      {
        goto LABEL_292;
      }

      v126 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "EncoderValuesStr");
      v22 = a1 + 1672;
      if (v126)
      {
        goto LABEL_292;
      }

      v127 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "InputNetValuesStr");
      v22 = a1 + 1960;
      if (v127)
      {
        goto LABEL_292;
      }

      v128 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ScoresStr");
      v22 = a1 + 1720;
      if (v128)
      {
        goto LABEL_292;
      }

      v129 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ShortlistStr");
      v22 = a1 + 1888;
      if (v129)
      {
        goto LABEL_292;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ShortlistFile"))
      {
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s, v130, v131);
        v257 = 0;
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v262.__pn_, &__s);
        std::__fs::filesystem::operator/[abi:ne200100](&v264, &v262, &v263);
        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v264;
        }

        kaldi::Input::Input(&v256, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v264.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v262.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v263.__pn_.__r_.__value_.__l.__data_);
        }

        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 599, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading Shortlist file...", 25);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        v135 = kaldi::Input::Stream(&v256);
        kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataInOneFile(v135, v257, 0);
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "<Shortlist>"))
      {
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 603, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading Shortlist...", 20);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&exception_object, a1);
        kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataBasedOnTagInInput(a2, a3, a4, &exception_object, v132);
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ReadoutNnetFile"))
      {
        memset(&__s, 0, sizeof(__s));
        kaldi::ReadToken(a2, a3, &__s, v133, v134);
        v257 = 0;
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v263.__pn_, a1);
        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v262.__pn_, &__s);
        std::__fs::filesystem::operator/[abi:ne200100](&v264, &v262, &v263);
        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v264;
        }

        kaldi::Input::Input(&v256, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v264.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v262.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v263.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v263.__pn_.__r_.__value_.__l.__data_);
        }

        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 612, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading readout Nnet file...", 28);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        v138 = kaldi::Input::Stream(&v256);
        kaldi::nnet1::Nnet::Read((a1 + 1128), v138, v257, 0);
        *(a1 + 1506) = 1;
        kaldi::Input::~Input(&v256);
        goto LABEL_401;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "<ReadoutNnet>"))
      {
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 616, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading readout Nnet...", 23);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
        }

        kaldi::nnet1::Nnet::Read((a1 + 1128), a2, a3, a4);
        *(a1 + 1506) = 1;
        goto LABEL_412;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "AlignmentLayerStr"))
      {
        kaldi::ReadToken(a2, a3, a1 + 1912, v136, v137);
        *(a1 + 2164) = 1;
        goto LABEL_412;
      }

      v139 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "AlignmentHeads");
      v20 = a1 + 2152;
      if (v139)
      {
        goto LABEL_411;
      }

      v140 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ShiftedAlignments");
      v16 = (a1 + 2165);
      if (v140)
      {
        goto LABEL_409;
      }

      v141 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "TransposeSourceInput");
      v16 = (a1 + 1513);
      if (v141)
      {
        goto LABEL_409;
      }

      v142 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "TwoDimSourceInput");
      v16 = (a1 + 1514);
      if (v142)
      {
        goto LABEL_409;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "HandoverStrings"))
      {
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, a3, &__p, v143, v144);
        kaldi::SplitStringToVector(&__p, ",", 1, a1 + 2056);
      }

      else
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "StateStrings"))
        {
          v147 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "StateWidth");
          v20 = a1 + 2456;
          if (!v147)
          {
            v148 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "StateLayoutND");
            v16 = (a1 + 2460);
            if (!v148)
            {
              v149 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "NeedsPosition");
              v16 = (a1 + 1515);
              if (!v149)
              {
                v150 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "NeedsEncoderPositions");
                v16 = (a1 + 1516);
                if (!v150)
                {
                  v151 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "NeedsEncoderOut");
                  v16 = (a1 + 1517);
                  if (!v151)
                  {
                    v152 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "PositionZeroBased");
                    v16 = (a1 + 1518);
                    if (!v152)
                    {
                      v153 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "ApplyLog");
                      v16 = (a1 + 1519);
                      if (!v153)
                      {
                        v154 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "PositionScaleStr");
                        v22 = a1 + 1864;
                        if (v154)
                        {
                          goto LABEL_292;
                        }

                        v155 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "NoSymbolTables");
                        v16 = (a1 + 2461);
                        if (!v155)
                        {
                          v156 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "EncoderExplicitConfigFunctions");
                          v16 = (a1 + 1520);
                          if (!v156)
                          {
                            v157 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v268, "EncoderLangSrcOnly");
                            v16 = (a1 + 1521);
                            if (!v157)
                            {
                              kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 661);
                              v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
                              if (SHIBYTE(v268[2]) >= 0)
                              {
                                v159 = v268;
                              }

                              else
                              {
                                v159 = v268[0];
                              }

                              if (SHIBYTE(v268[2]) >= 0)
                              {
                                v160 = HIBYTE(v268[2]);
                              }

                              else
                              {
                                v160 = v268[1];
                              }

                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v158, v159, v160);
                              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_409:
            kaldi::ReadBasicType<BOOL>(a2, a3, v16);
            goto LABEL_412;
          }

LABEL_411:
          kaldi::ReadBasicType<int>(a2, a3, v20);
          goto LABEL_412;
        }

        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a2, a3, &__p, v145, v146);
        kaldi::SplitStringToVector(&__p, ",", 1, a1 + 2080);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v103 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_403;
    }

LABEL_412:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v242)
  {
    goto LABEL_534;
  }

  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_548;
    }

    goto LABEL_549;
  }

  if (*(a1 + 103))
  {
    goto LABEL_549;
  }

LABEL_548:
  if (!*(a1 + 456))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      goto LABEL_558;
    }

    goto LABEL_557;
  }

LABEL_549:
  if ((*(a1 + 127) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 127))
    {
      goto LABEL_553;
    }

    goto LABEL_558;
  }

  if (*(a1 + 112))
  {
    goto LABEL_558;
  }

LABEL_553:
  if (!*(a1 + 408) && kaldi::g_kaldi_verbose_level > -2)
  {
LABEL_557:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 672);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Both EncoderGraph (or at least one InputLangGraph) and DecoderGraph (or at least one DecoderLangGraph) must be specified in model file", 134);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  }

LABEL_558:
  if (!*(a1 + 552))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 677);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input symbol table must be specified", 36);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    goto LABEL_534;
  }

  if (!*(a1 + 560))
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 682);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Output symbol table must be specified", 37);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    goto LABEL_534;
  }

  if ((v244 & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 687);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "AddSrcBos must be set in model config file", 42);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

LABEL_534:
    v161 = 0;
    goto LABEL_535;
  }

  if ((*(a1 + 1517) & 1) == 0 && !*(a1 + 432))
  {
    v165 = (a1 + 1696);
    v167 = *(a1 + 1704);
    v245 = (a1 + 2104);
    v246 = (a1 + 432);
    *(a1 + 2104) = -1431655765 * ((v167 - *(a1 + 1696)) >> 3);
    goto LABEL_584;
  }

  if (*(a1 + 1695) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 1672), *(a1 + 1680));
  }

  else
  {
    __p = *(a1 + 1672);
  }

  if (*(a1 + 1088) == 1)
  {
    v163 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v163 = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    for (; v163; --v163)
    {
      if (p_p->__r_.__value_.__s.__data_[0] == 46)
      {
        p_p->__r_.__value_.__s.__data_[0] = 95;
      }

      p_p = (p_p + 1);
    }
  }

  v165 = (a1 + 1696);
  std::vector<std::string>::push_back[abi:ne200100](a1 + 1696, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v166 = *(a1 + 432);
  v167 = *(a1 + 1704);
  v245 = (a1 + 2104);
  v246 = (a1 + 432);
  *(a1 + 2104) = -1431655765 * ((v167 - *(a1 + 1696)) >> 3);
  if (!v166)
  {
LABEL_584:
    v168 = *(a1 + 2056);
    v169 = *(a1 + 2064);
    if (v168 != v169)
    {
      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(v165, v167, v168, v169, 0xAAAAAAAAAAAAAAABLL * ((v169 - v168) >> 3));
    }
  }

  std::vector<std::string>::push_back[abi:ne200100](a1 + 2032, (a1 + 1720));
  *(a1 + 2156) = 0;
  if (*(a1 + 2164) == 1)
  {
    std::vector<std::string>::push_back[abi:ne200100](a1 + 2032, (a1 + 1912));
    *(a1 + 2148) = 1;
  }

  v170 = *(a1 + 2080);
  v171 = *(a1 + 2088);
  if (v170 == v171)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 717);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unsupported MT Espresso model: Missing required StateStrings field!", 67);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  *(a1 + 2108) = -1431655765 * ((*(a1 + 2040) - *(a1 + 2032)) >> 3);
  do
  {
    if (*(v170 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v170, *(v170 + 1));
    }

    else
    {
      v172 = *v170;
      __p.__r_.__value_.__r.__words[2] = *(v170 + 2);
      *&__p.__r_.__value_.__l.__data_ = v172;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v173 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v173 = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&__s, v173 + 5);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v173)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v175 = &__p;
      }

      else
      {
        v175 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(p_s, v175, v173);
    }

    strcpy(p_s + v173, ".next");
    std::vector<std::string>::push_back[abi:ne200100](a1 + 2032, &__s);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v170 = (v170 + 24);
  }

  while (v170 != v171);
  v176 = *(a1 + 1007);
  if (v176 < 0)
  {
    v176 = *(a1 + 992);
  }

  if (!v176 && *(a1 + 1088) == 2)
  {
    std::string::operator=(v241, __str);
    *(a1 + 1088) = *(a1 + 1080);
  }

  v177 = *(a1 + 1031);
  if (v177 < 0)
  {
    v177 = *(a1 + 1016);
  }

  if (!v177 && *(a1 + 1096) == 2)
  {
    std::string::operator=(v240, __str);
    *(a1 + 1096) = *(a1 + 1080);
  }

  if (*(a1 + 1506) == 1 && *(a1 + 1507) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 736);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Either Readout Espresso Graph or Readout Nnet is supported", 58);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  if (*(a1 + 1512) != 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 806);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "TensorFlow not supported", 24);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v178 = *(a1 + 103);
  if (v178 < 0)
  {
    v178 = *(a1 + 88);
  }

  if (v178 && (*(a1 + 24) != 1 || !*(a1 + 408)))
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 743, 2);
      v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading ENCODER ", 16);
      v180 = *(a1 + 103);
      if (v180 >= 0)
      {
        v181 = a1 + 80;
      }

      else
      {
        v181 = *(a1 + 80);
      }

      if (v180 >= 0)
      {
        v182 = *(a1 + 103);
      }

      else
      {
        v182 = *(a1 + 88);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v179, v181, v182);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    memset(&__p, 0, sizeof(__p));
    v183 = *(a1 + 464);
    if (v183 != (a1 + 472))
    {
      do
      {
        std::vector<std::string>::push_back[abi:ne200100](&__p, (v183 + 7));
        v184 = v183[1];
        if (v184)
        {
          do
          {
            v185 = v184;
            v184 = *v184;
          }

          while (v184);
        }

        else
        {
          do
          {
            v185 = v183[2];
            v12 = *v185 == v183;
            v183 = v185;
          }

          while (!v12);
        }

        v183 = v185;
      }

      while (v185 != (a1 + 472));
    }

    v186 = *(a1 + 1088);
    memset(v254, 0, sizeof(v254));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v254, *(a1 + 880), *(a1 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - *(a1 + 880)) >> 3));
    memset(&v253, 0, sizeof(v253));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v253, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[1], 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 80), v186, v241, v254, &v253, *(a1 + 1520), &__s);
    v187 = *&__s.__r_.__value_.__l.__data_;
    *&__s.__r_.__value_.__l.__data_ = 0uLL;
    v188 = *(a1 + 160);
    *(a1 + 152) = v187;
    if (v188)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v188);
      if (__s.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__s.__r_.__value_.__l.__size_);
      }
    }

    v264.__r_.__value_.__r.__words[0] = &v253;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v264);
    v264.__r_.__value_.__r.__words[0] = v254;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v264);
    v189 = *(a1 + 152);
    if (v189)
    {
    }

    else
    {
      v190 = 0;
    }

    *(a1 + 488) = v190;
    __s.__r_.__value_.__r.__words[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  if (*(a1 + 1508) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 758, 2);
      v191 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading EMBEDDING ", 18);
      v192 = *(a1 + 79);
      if (v192 >= 0)
      {
        v193 = a1 + 56;
      }

      else
      {
        v193 = *(a1 + 56);
      }

      if (v192 >= 0)
      {
        v194 = *(a1 + 79);
      }

      else
      {
        v194 = *(a1 + 64);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v191, v193, v194);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    v195 = *(a1 + 1096);
    memset(v252, 0, sizeof(v252));
    memset(&v251, 0, sizeof(v251));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 56), v195, v240, v252, &v251, 0, &__p);
    v196 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v197 = *(a1 + 176);
    *(a1 + 168) = v196;
    if (v197)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v197);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    __s.__r_.__value_.__r.__words[0] = &v251;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
    __s.__r_.__value_.__r.__words[0] = v252;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  if (*(a1 + 1507) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 764, 2);
      v198 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading READOUT ", 16);
      v199 = *(a1 + 151);
      if (v199 >= 0)
      {
        v200 = a1 + 128;
      }

      else
      {
        v200 = *(a1 + 128);
      }

      if (v199 >= 0)
      {
        v201 = *(a1 + 151);
      }

      else
      {
        v201 = *(a1 + 136);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v198, v200, v201);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    v202 = *(a1 + 1096);
    memset(v250, 0, sizeof(v250));
    memset(&v249, 0, sizeof(v249));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 128), v202, v240, v250, &v249, 0, &__p);
    v203 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v204 = *(a1 + 208);
    *(a1 + 200) = v203;
    if (v204)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v204);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    __s.__r_.__value_.__r.__words[0] = &v249;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
    __s.__r_.__value_.__r.__words[0] = v250;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  if (*(a1 + 408))
  {
    if (*(a1 + 24) == 1)
    {
      v205 = *(a1 + 192);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      if (v205)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v205);
      }

      v206 = *(a1 + 224);
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      if (v206)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v206);
      }

      v207 = *(a1 + 240);
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      v208 = v246;
      if (v207)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v207);
      }
    }

    else
    {
      if (*(a1 + 456))
      {
        v216 = *(a1 + 440);
        if (*(v216 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v216 + 32), *(v216 + 40));
        }

        else
        {
          __p = *(v216 + 32);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
      }

      v217 = *(a1 + 392);
      if (v217 != (a1 + 400))
      {
        do
        {
          kaldi::quasar::Encdec::LoadSubmodels(a1, &__p, (v217 + 4));
          v218 = v217[1];
          if (v218)
          {
            do
            {
              v219 = v218;
              v218 = *v218;
            }

            while (v218);
          }

          else
          {
            do
            {
              v219 = v217[2];
              v12 = *v219 == v217;
              v217 = v219;
            }

            while (!v12);
          }

          v217 = v219;
        }

        while (v219 != (a1 + 400));
      }

      v220 = *(a1 + 272);
      v221 = *(v220 + 64);
      if (v221 && (v221 = std::__shared_weak_count::lock(v221)) != 0)
      {
        v222 = *(v220 + 56);
      }

      else
      {
        v222 = 0;
      }

      v223 = *(a1 + 192);
      *(a1 + 184) = v222;
      *(a1 + 192) = v221;
      if (v223)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v223);
      }

      if (*(a1 + 312))
      {
        v224 = *(a1 + 296);
        v225 = *(v224 + 64);
        if (v225 && (v225 = std::__shared_weak_count::lock(v225)) != 0)
        {
          v226 = *(v224 + 56);
        }

        else
        {
          v226 = 0;
        }

        v227 = *(a1 + 224);
        *(a1 + 216) = v226;
        *(a1 + 224) = v225;
        if (v227)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v227);
        }
      }

      if (*(a1 + 456))
      {
        v228 = *(a1 + 392);
        if (*(v228 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, *(v228 + 32), *(v228 + 40));
        }

        else
        {
          __s = *(v228 + 32);
        }

        v229 = *(a1 + 440);
        if (v229 != (a1 + 448))
        {
          do
          {
            kaldi::quasar::Encdec::LoadSubmodels(a1, (v229 + 4), &__s);
            v230 = v229[1];
            if (v230)
            {
              do
              {
                v231 = v230;
                v230 = *v230;
              }

              while (v230);
            }

            else
            {
              do
              {
                v231 = v229[2];
                v12 = *v231 == v229;
                v229 = v231;
              }

              while (!v12);
            }

            v229 = v231;
          }

          while (v231 != (a1 + 448));
        }

        v232 = *(a1 + 320);
        v233 = *(v232 + 64);
        if (v233 && (v233 = std::__shared_weak_count::lock(v233)) != 0)
        {
          v234 = *(v232 + 56);
        }

        else
        {
          v234 = 0;
        }

        v235 = *(a1 + 240);
        *(a1 + 232) = v234;
        *(a1 + 240) = v233;
        if (v235)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v235);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v208 = v246;
    }

    if (*v208)
    {
      *v245 = 0;
    }
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/encdec.cc", 770, 2);
      v209 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading DECODER ", 16);
      v210 = *(a1 + 127);
      if (v210 >= 0)
      {
        v211 = a1 + 104;
      }

      else
      {
        v211 = *(a1 + 104);
      }

      if (v210 >= 0)
      {
        v212 = *(a1 + 127);
      }

      else
      {
        v212 = *(a1 + 112);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v209, v211, v212);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    v213 = *(a1 + 1096);
    memset(v248, 0, sizeof(v248));
    memset(&v247, 0, sizeof(v247));
    kaldi::quasar::Encdec::CreateEspressoModel(a1, (a1 + 104), v213, v240, v248, &v247, 0, &__p);
    v214 = *&__p.__r_.__value_.__l.__data_;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v215 = *(a1 + 192);
    *(a1 + 184) = v214;
    if (v215)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v215);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }
    }

    __s.__r_.__value_.__r.__words[0] = &v247;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
    __s.__r_.__value_.__r.__words[0] = v248;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s);
  }

  v161 = 1;
LABEL_535:
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v268[2]) < 0)
  {
    operator delete(v268[0]);
  }

  return v161;
}