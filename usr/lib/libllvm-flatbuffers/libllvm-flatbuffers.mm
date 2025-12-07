void flatbuffers::MakeScreamingCamel(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  if (v4)
  {
    v6 = 0;
    v7 = v3 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a1;
      }

      else
      {
        v8 = a1;
      }

      v9 = *(v8 + v6);
      if (v9 == 95)
      {
        v10 = 95;
      }

      else
      {
        v10 = __toupper(v9);
      }

      std::string::push_back(a2, v10);
      ++v6;
      v11 = *(a1 + 23);
      v7 = v11 >> 63;
      if ((v11 & 0x80000000) != 0)
      {
        v11 = a1[1];
      }
    }

    while (v6 < v11);
  }
}

void flatbuffers::DeserializeDoc(unint64_t *a1, _DWORD *a2)
{
  if (a2 && *a2)
  {
    v14 = v2;
    v15 = v3;
    v5 = 0;
    v6 = a2 + 1;
    v7 = (a2 + 2);
    do
    {
      v8 = a2;
      std::string::__init(&v13, &v7[*(v7 - 1)], *(&v6[v5] + *(v7 - 1)));
      v9 = a1[1];
      if (v9 >= a1[2])
      {
        v11 = sub_213CBFAA0(a1, &v13);
        v12 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
        a1[1] = v11;
        if (v12 < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = *&v13.__r_.__value_.__l.__data_;
        *(v9 + 16) = *(&v13.__r_.__value_.__l + 2);
        *v9 = v10;
        a1[1] = v9 + 24;
      }

      ++v5;
      a2 = v8;
      v7 += 4;
    }

    while (v5 < *v8);
  }
}

uint64_t sub_213C8A4E8(uint64_t a1)
{
  sub_213C98FF0(v4);
  MEMORY[0x21604D0A0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x21604D160](&v9);
}

uint64_t sub_213C8A670(uint64_t a1)
{
  sub_213C98FF0(v4);
  MEMORY[0x21604D0F0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x21604D160](&v9);
}

unint64_t sub_213C8A7F8(std::string *this, int a2)
{
  if (a2 > 255)
  {
    v4 = off_278171C30[a2 - 256];
    result = strlen(v4);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_213C97BD4();
    }

    v5 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(&this->__r_.__value_.__s + 23) = result;
    if (result)
    {
      result = memmove(this, v4, result);
    }

    this->__r_.__value_.__s.__data_[v5] = 0;
  }

  else
  {
    *&this->__r_.__value_.__l.__data_ = 0uLL;
    this->__r_.__value_.__r.__words[2] = 0;

    return std::string::append(this, 1uLL, a2);
  }

  return result;
}

std::string *sub_213C8A8E8(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = a3 - __src;
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    v6 = a3 - __src;
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v13 = this;
    if ((v8 & 0x80) != 0)
    {
      v13 = this->__r_.__value_.__r.__words[0];
    }

    v14 = v13 + size;
    memmove(v13 + size, __src, v6);
    v14[v6] = 0;
    v15 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }
  }

  else
  {
    sub_213C9DF08(__p, __src, a3, v6);
    if (v18 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v18 >= 0)
    {
      v12 = v18;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(this, v11, v12);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

BOOL flatbuffers::Parser::IsIdent(flatbuffers::Parser *this, const char *__s)
{
  if (*(this + 5) != 260)
  {
    return 0;
  }

  v4 = strlen(__s);
  v5 = *(this + 55);
  v6 = (v5 & 0x80u) == 0 ? *(this + 55) : *(this + 5);
  if (v4 != v6)
  {
    return 0;
  }

  v7 = v4;
  v8 = (this + 32);
  if ((v5 & 0x80) != 0)
  {
    if (v7 != -1)
    {
      v8 = *v8;
      v5 = *(this + 5);
      goto LABEL_8;
    }

LABEL_17:
    sub_213C97BD4();
  }

  if (v7 == -1)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v5 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  v10 = memcmp(v8, __s, v9) == 0;
  return v5 == v7 && v10;
}

BOOL sub_213C8AAF4(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  v6 = a1[1];
  if ((v5 & 0x80u) == 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (v4 != v7)
  {
    return 0;
  }

  v8 = v4;
  if ((v5 & 0x80) != 0)
  {
    if (v4 != -1)
    {
      a1 = *a1;
      v5 = v6;
      goto LABEL_7;
    }

LABEL_16:
    sub_213C97BD4();
  }

  if (v4 == -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v5 >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = memcmp(a1, __s, v9) == 0;
  return v5 == v8 && v10;
}

uint64_t flatbuffers::Parser::LookupStruct(uint64_t a1, uint64_t a2)
{
  v3 = sub_213C9DFB8(a1 + 128, a2);
  if (a1 + 136 == v3)
  {
    return 0;
  }

  result = *(v3 + 56);
  if (result)
  {
    ++*(result + 144);
  }

  return result;
}

uint64_t flatbuffers::Parser::LookupCreateStruct(uint64_t a1, const std::string *a2, int a3, int a4)
{
  flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 296), a2, 0x3E8uLL, &__p);
  v8 = sub_213C9DFB8(a1 + 128, a2);
  v9 = a1 + 136;
  if (a1 + 136 != v8)
  {
    v10 = *(v8 + 56);
    if (v10)
    {
      ++*(v10 + 144);
      if (*(v10 + 201) == 1)
      {
        if (a4)
        {
          *(v10 + 128) = *(a1 + 296);
          sub_213CB63E4((a1 + 128), a2, &__p);
        }

        goto LABEL_15;
      }
    }
  }

  v11 = sub_213C9DFB8(a1 + 128, &__p);
  if (v9 == v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v11 + 56);
    if (v10)
    {
      ++*(v10 + 144);
      if (*(v10 + 201) == 1)
      {
        if (a4)
        {
          *(v10 + 128) = *(a1 + 296);
        }

        goto LABEL_15;
      }
    }
  }

  if ((a4 & 1) == 0 && !v10)
  {
    v13 = *(*(a1 + 296) + 8) - **(a1 + 296);
    if (v13)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) - 1;
      do
      {
        flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 296), a2, v14, &v17);
        v15 = sub_213C9DFB8(a1 + 128, &v17);
        if (v9 == v15)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v15 + 56);
          if (v10)
          {
            ++*(v10 + 144);
          }
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v16 = v14-- != 0;
      }

      while (v16 && !v10);
    }
  }

  if (!v10 && a3)
  {
    operator new();
  }

LABEL_15:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

uint64_t sub_213C8AF54(uint64_t **a1, const void **a2, uint64_t a3)
{
  v7 = a1[4];
  v6 = a1[5];
  if (v7 >= v6)
  {
    v39 = a1[3];
    v40 = v7 - v39;
    v41 = v7 - v39;
    v42 = v41 + 1;
    if ((v41 + 1) >> 61)
    {
      sub_213C97BD4();
    }

    v43 = v6 - v39;
    if (v43 >> 2 > v42)
    {
      v42 = v43 >> 2;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      v44 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      if (!(v44 >> 61))
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v47 = v7 - v39;
    v45 = (8 * v41);
    v46 = (8 * v41 - 8 * v47);
    *v45 = a3;
    v8 = v45 + 1;
    memcpy(v46, v39, v40);
    a1[3] = v46;
    a1[4] = v8;
    a1[5] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v7 = a3;
    v8 = v7 + 1;
  }

  v48 = a3;
  v9 = a1[1];
  a1[4] = v8;
  if (!v9)
  {
LABEL_57:
    operator new();
  }

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

  v13 = v9;
  v14 = a1 + 1;
  do
  {
    v15 = *(v13 + 55);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v16 = v13[4];
      v15 = v13[5];
    }

    else
    {
      v16 = (v13 + 4);
    }

    if (v12 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    v18 = memcmp(v16, v11, v17);
    if (v15 < v12)
    {
      v19 = -1;
    }

    else
    {
      v19 = v12 < v15;
    }

    if (v18)
    {
      v19 = v18;
    }

    if (v19 >= 0)
    {
      v14 = v13;
    }

    v13 = *(v13 + ((v19 >> 28) & 8));
  }

  while (v13);
  if (v14 != a1 + 1)
  {
    v22 = v14[4];
    v21 = v14 + 4;
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
      v25 = v21[1];
    }

    if (v25 >= v12)
    {
      v26 = v12;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v11, v24, v26);
    v28 = v12 < v25;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (!v28)
    {
      return 1;
    }
  }

  while (1)
  {
    while (1)
    {
      v29 = v9;
      v30 = *(v9 + 55);
      if (v30 >= 0)
      {
        v31 = v9 + 4;
      }

      else
      {
        v31 = v9[4];
      }

      if (v30 >= 0)
      {
        v32 = *(v9 + 55);
      }

      else
      {
        v32 = v9[5];
      }

      if (v32 >= v12)
      {
        v33 = v12;
      }

      else
      {
        v33 = v32;
      }

      v34 = memcmp(v11, v31, v33);
      v35 = v12 < v32;
      if (v34)
      {
        v35 = v34 < 0;
      }

      if (!v35)
      {
        break;
      }

      v9 = *v29;
      if (!*v29)
      {
        goto LABEL_57;
      }
    }

    v36 = memcmp(v31, v11, v33);
    v37 = v32 < v12;
    if (v36)
    {
      v37 = v36 < 0;
    }

    if (!v37)
    {
      break;
    }

    v9 = v29[1];
    if (!v9)
    {
      goto LABEL_57;
    }
  }

  result = 0;
  v29[7] = v48;
  return result;
}

void *sub_213C8B29C(void ***a1, const void **a2, char *__s)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = sub_213C9E0BC(a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t sub_213C8B3B8(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  if (v6 <= a3 || v7 == 0)
  {
    return -1;
  }

  v10 = v5 + v6;
  v11 = v5 + a3;
LABEL_9:
  v12 = v7;
  v13 = __s;
  while (*v11 != *v13)
  {
    ++v13;
    if (!--v12)
    {
      if (++v11 != v10)
      {
        goto LABEL_9;
      }

      v11 = v5 + v6;
      break;
    }
  }

  if (v11 == v10)
  {
    return -1;
  }

  else
  {
    return v11 - v5;
  }
}

void flatbuffers::Parser::ParseMetaData(uint64_t a1@<X0>, unsigned __int8 *a3@<X8>)
{
  if (*(a1 + 20) == 40)
  {
    flatbuffers::Parser::Next(a1, a3);
    a3[1] = 1;
    if ((*a3 & 1) == 0)
    {
      if (*(a1 + 55) < 0)
      {
        sub_213C9D958(v8, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        *v8 = *(a1 + 32);
        v9 = *(a1 + 48);
      }

      v5 = *(a1 + 20);
      if ((v5 == 257 || v5 == 260) && a1 + 712 != sub_213CBBD28(a1 + 704, v8))
      {
        flatbuffers::Parser::Next(a1, a3);
        a3[1] = 1;
        if ((*a3 & 1) == 0)
        {
          operator new();
        }
      }

      else
      {
        std::operator+<char>();
        flatbuffers::Parser::Error(a1, a3);
        if (v7 < 0)
        {
          operator delete(__p);
        }
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(v8[0]);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t sub_213C8B69C(uint64_t a1)
{
  sub_213C98FF0(v4);
  MEMORY[0x21604D0B0](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x21604D160](&v9);
}

void flatbuffers::Parser::ParseComma(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 954) & 1) != 0 || (flatbuffers::Parser::Expect(a2, this, 44), *(a2 + 1) = 1, (*a2 & 1) == 0))
  {
    *a2 = 0;
  }
}

void flatbuffers::Parser::ParseAnyValue(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, char *a8@<X8>)
{
  v13 = *a2;
  if (*a2 > 14)
  {
    switch(v13)
    {
      case 16:
        v14 = a7;
        memset(&v79, 0, sizeof(v79));
        v15 = a6;
        v16 = -72 * a6;
        v17 = -72 * (a4 + a6);
        if (v16 == v17)
        {
LABEL_19:
          v29 = 0;
          goto LABEL_28;
        }

        v18 = *(a1 + 1184);
        v19 = (v17 + v18);
        v20 = v16 + v18;
        v21 = *(a2 + 16);
        v22 = (v20 - 40);
        while (1)
        {
          size = v22[1].__r_.__value_.__l.__size_;
          if (*(size + 168) == v21)
          {
            v24 = *(size + 152);
            if (a7)
            {
              if (v24 == 14)
              {
                v25 = *(size + 156) + 3;
                if (v25 <= 4 && v25 != 3)
                {
                  *__p = 0;
                  if (SHIBYTE(v22->__r_.__value_.__r.__words[2]) < 0)
                  {
                    v22 = v22->__r_.__value_.__r.__words[0];
                  }

                  sub_213CB0108(a8, v22, a1, __p);
                  a8[1] = 1;
                  if ((*a8 & 1) == 0)
                  {
                    v33 = *(a1 + 384) + *(a1 + 368) - *(a1 + 384) + *(a1 + 376) - *__p;
                    goto LABEL_30;
                  }

                  goto LABEL_114;
                }
              }
            }

            else if ((v24 + 3) <= 4 && v24 != 0)
            {
              std::string::operator=(&v79, v22);
              v32 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
              if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v32 = v79.__r_.__value_.__l.__size_;
              }

              v29 = v32 != 0;
LABEL_28:
              v33 = 0;
              if (v29 || (v14 & 1) != 0)
              {
LABEL_30:
                v34 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
                if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v34 = v79.__r_.__value_.__l.__size_;
                }

                if (v34)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = v33 == 0;
                }

                if (!v35)
                {
                  v36 = *(a3[21] + 38);
                  if (!v33)
                  {
                    if (v36 > -2)
                    {
                      if (v36 == -1)
                      {
                        *__p = 0;
                        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v60 = &v79;
                        }

                        else
                        {
                          v60 = v79.__r_.__value_.__r.__words[0];
                        }

                        sub_213CB09D8(a8, v60, a1, __p);
                        v45 = 1;
                        a8[1] = 1;
                        if ((*a8 & 1) == 0)
                        {
                          v37 = *__p;
                          goto LABEL_46;
                        }
                      }

                      else
                      {
                        if (v36 != 1)
                        {
                          goto LABEL_185;
                        }

                        __p[0] = 0;
                        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v58 = &v79;
                        }

                        else
                        {
                          v58 = v79.__r_.__value_.__r.__words[0];
                        }

                        sub_213CB076C(a8, v58, a1, __p);
                        v45 = 1;
                        a8[1] = 1;
                        if ((*a8 & 1) == 0)
                        {
                          v37 = __p[0];
                          goto LABEL_46;
                        }
                      }
                    }

                    else if (v36 == -3)
                    {
                      *__p = 0;
                      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v59 = &v79;
                      }

                      else
                      {
                        v59 = v79.__r_.__value_.__r.__words[0];
                      }

                      sub_213CB0C44(a8, v59, a1, __p);
                      v45 = 1;
                      a8[1] = 1;
                      if ((*a8 & 1) == 0)
                      {
                        v37 = *__p;
                        goto LABEL_46;
                      }
                    }

                    else
                    {
                      if (v36 != -2)
                      {
                        goto LABEL_185;
                      }

                      *__p = 0;
                      if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v53 = &v79;
                      }

                      else
                      {
                        v53 = v79.__r_.__value_.__r.__words[0];
                      }

                      sub_213CB0108(a8, v53, a1, __p);
                      v45 = 1;
                      a8[1] = 1;
                      if ((*a8 & 1) == 0)
                      {
                        v37 = *__p;
                        goto LABEL_46;
                      }
                    }

                    goto LABEL_115;
                  }

                  if (v36 > -2)
                  {
                    if (v36 == -1)
                    {
                      v37 = *(v33 + 2 * v15 + 4);
                    }

                    else
                    {
                      if (v36 != 1)
                      {
                        goto LABEL_185;
                      }

                      v37 = *(v33 + v15 + 4);
                    }
                  }

                  else
                  {
                    if (v36 != -3)
                    {
                      if (v36 == -2)
                      {
                        v37 = *(v33 + 4 * v15 + 4);
                        goto LABEL_46;
                      }

LABEL_185:
                      abort();
                    }

                    v37 = *(v33 + 8 * v15 + 4);
                  }

LABEL_46:
                  v38 = *(a2 + 16);
                  v39 = 8;
                  if (!*(v38 + 148))
                  {
                    v39 = 0;
                  }

                  v41 = *(v38 + 208);
                  v40 = *(v38 + 216);
                  v42 = (v39 + v41);
                  if (v40 != v42)
                  {
                    while (1)
                    {
                      v43 = *v42;
                      if (*(*v42 + 136) == v37)
                      {
                        break;
                      }

                      if (++v42 == v40)
                      {
                        goto LABEL_78;
                      }
                    }

                    v44 = *(v43 + 48);
                    if (v44 == 13)
                    {
                      flatbuffers::Parser::ParseString(a1, a2, a8);
                      a8[1] = 1;
                      v45 = *a8;
                    }

                    else
                    {
                      if (v44 != 15)
                      {
                        goto LABEL_54;
                      }

                      flatbuffers::Parser::ParseTable(a1, *(v43 + 56), a2 + 32, 0, a8);
                      v45 = 1;
                      a8[1] = 1;
                      if ((*a8 & 1) == 0)
                      {
                        v55 = *(v43 + 56);
                        if (*(v55 + 200) == 1)
                        {
                          flatbuffers::Parser::SerializeStruct(v54, a1 + 336, v55, a2);
                          *(a1 + 392) -= 8 * *(a1 + 400);
                          *(a1 + 400) = 0;
                          *(a1 + 404) = 0;
                          sub_213C8B69C((*(a1 + 368) - *(a1 + 384) + *(a1 + 376)));
                          if (*(a2 + 55) < 0)
                          {
                            operator delete(*(a2 + 32));
                          }

                          v45 = 0;
                          *(a2 + 32) = *__p;
                          *(a2 + 48) = *&__p[16];
                        }

                        else
                        {
LABEL_54:
                          v45 = 0;
                        }
                      }
                    }

LABEL_115:
                    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v79.__r_.__value_.__l.__data_);
                    }

                    if ((v45 & 1) == 0)
                    {
LABEL_118:
                      *a8 = 0;
                    }

                    return;
                  }
                }

LABEL_78:
                std::operator+<char>();
                flatbuffers::Parser::Error(a1, a8);
                if ((__p[23] & 0x80000000) != 0)
                {
                  v52 = *__p;
                  goto LABEL_113;
                }

                goto LABEL_114;
              }

              if (*(a3 + 23) >= 0)
              {
                v47 = *(a3 + 23);
              }

              else
              {
                v47 = a3[1];
              }

              v48 = v77;
              sub_213C9E0BC(v77, v47 + 5);
              if ((v78 & 0x80u) != 0)
              {
                v48 = v77[0];
              }

              if (v47)
              {
                if (*(a3 + 23) >= 0)
                {
                  v49 = a3;
                }

                else
                {
                  v49 = *a3;
                }

                memmove(v48, v49, v47);
              }

              strcpy(v48 + v47, "_type");
              v50 = sub_213CBBD28(a5 + 152, v77);
              if (a5 + 160 == v50)
              {
                v51 = 0;
              }

              else
              {
                v51 = *(v50 + 56);
              }

              sub_213CBA5E4(__p, a1);
              flatbuffers::Parser::SkipAnyJsonValue(a1, a8);
              a8[1] = 1;
              if ((*a8 & 1) == 0)
              {
                if ((*(a1 + 954) & 1) != 0 || (flatbuffers::Parser::Expect(a8, a1, 44), a8[1] = 1, (*a8 & 1) == 0))
                {
                  *a8 = 256;
                  if (*(a1 + 55) < 0)
                  {
                    sub_213C9D958(v70, *(a1 + 32), *(a1 + 40));
                  }

                  else
                  {
                    *v70 = *(a1 + 32);
                    v71 = *(a1 + 48);
                  }

                  if (*(a1 + 20) == 257)
                  {
                    flatbuffers::Parser::Next(a1, a8);
                  }

                  else
                  {
                    flatbuffers::Parser::Expect(a8, a1, 260);
                  }

                  a8[1] = 1;
                  if (*a8)
                  {
                    goto LABEL_151;
                  }

                  v61 = HIBYTE(v71);
                  if (v71 >= 0)
                  {
                    v62 = HIBYTE(v71);
                  }

                  else
                  {
                    v62 = v70[1];
                  }

                  v63 = v78;
                  if ((v78 & 0x80u) != 0)
                  {
                    v63 = v77[1];
                  }

                  if (v62 != v63 || (v71 >= 0 ? (v64 = v70) : (v64 = v70[0]), (v78 & 0x80u) == 0 ? (v65 = v77) : (v65 = v77[0]), memcmp(v64, v65, v62)))
                  {
                    if (v61 < 0)
                    {
                      goto LABEL_168;
                    }

                    goto LABEL_169;
                  }

                  flatbuffers::Parser::Expect(a8, a1, 58);
                  a8[1] = 1;
                  if ((*a8 & 1) == 0)
                  {
                    v66 = *(v51 + 168);
                    v67[0] = *(v51 + 152);
                    v67[1] = v66;
                    if (*(v51 + 207) < 0)
                    {
                      sub_213C9D958(&v68, *(v51 + 184), *(v51 + 192));
                    }

                    else
                    {
                      v68 = *(v51 + 184);
                    }

                    v69 = *(v51 + 208);
                    flatbuffers::Parser::ParseAnyValue(a1, v67, v51, 0, 0, 0, 0, a8);
                    a8[1] = 1;
                    if ((*a8 & 1) == 0)
                    {
                      std::string::operator=(&v79, &v68);
                      sub_213CB0704(a1, __p);
                      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v68.__r_.__value_.__l.__data_);
                      }

                      if (v71 < 0)
                      {
LABEL_168:
                        operator delete(v70[0]);
                      }

LABEL_169:
                      *&v67[0] = v76;
                      sub_213C9DC58(v67);
                      if (v75 < 0)
                      {
                        operator delete(v74);
                      }

                      if (v78 < 0)
                      {
                        operator delete(v77[0]);
                      }

                      v33 = 0;
                      goto LABEL_30;
                    }

                    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v68.__r_.__value_.__l.__data_);
                    }
                  }

LABEL_151:
                  if (SHIBYTE(v71) < 0)
                  {
                    operator delete(v70[0]);
                  }
                }
              }

              *&v67[0] = v76;
              sub_213C9DC58(v67);
              if (v75 < 0)
              {
                operator delete(v74);
              }

              if (v78 < 0)
              {
                v52 = v77[0];
LABEL_113:
                operator delete(v52);
              }

LABEL_114:
              v45 = 1;
              goto LABEL_115;
            }
          }

          v28 = &v22[-2].__r_.__value_.__r.__words[2];
          v22 -= 3;
          if (v28 == v19)
          {
            goto LABEL_19;
          }
        }

      case 15:
        flatbuffers::Parser::ParseTable(a1, *(a2 + 8), a2 + 32, 0, a8);
        goto LABEL_105;
      case 17:
        flatbuffers::Parser::ParseArray(a1, a2, a8);
        goto LABEL_105;
    }

    goto LABEL_104;
  }

  if ((v13 - 7) < 4)
  {
    if (a3)
    {
      __p[23] = 4;
      strcpy(__p, "hash");
      v30 = sub_213C9E148((a3 + 9), __p);
      if (a3 + 10 != v30 && *(v30 + 56))
      {
        v56 = *(a1 + 20);
        v31 = v56 == 260 || v56 == 257;
      }

      else
      {
        v31 = 0;
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v31)
      {
        flatbuffers::Parser::ParseHash(a1, a2, a3, a8);
        goto LABEL_105;
      }
    }

LABEL_104:
    flatbuffers::Parser::ParseSingleValue(a1, a3, a2, 0, a8);
LABEL_105:
    a8[1] = 1;
    if ((*a8 & 1) == 0)
    {
      goto LABEL_118;
    }

    return;
  }

  if (v13 == 13)
  {
    flatbuffers::Parser::ParseString(a1, a2, a8);
    goto LABEL_105;
  }

  if (v13 != 14)
  {
    goto LABEL_104;
  }

  LODWORD(v67[0]) = 0;
  v46 = *(a2 + 24);
  *__p = *(a2 + 4);
  *&__p[8] = *(a2 + 8);
  v73 = v46;
  flatbuffers::Parser::ParseVector(a1, __p, v67, a3, a4, a8);
  a8[1] = 1;
  if ((*a8 & 1) == 0)
  {
    sub_213C8B69C(LODWORD(v67[0]));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    *(a2 + 32) = *__p;
    *(a2 + 48) = *&__p[16];
    goto LABEL_118;
  }
}

BOOL sub_213C8C1C8(void *a1, void *a2)
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

uint64_t flatbuffers::EnumDef::ReverseLookup(flatbuffers::EnumDef *this, uint64_t a2, unsigned __int8 a3)
{
  if ((*(this + 148) & a3) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 27);
  v5 = v3 + *(this + 26);
  if (v4 == v5)
  {
    return 0;
  }

  while (1)
  {
    result = *v5;
    if (*(*v5 + 136) == a2)
    {
      break;
    }

    v5 += 8;
    if (v5 == v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_213C8C398(uint64_t result, unint64_t a2)
{
  if (*(result + 72) < a2)
  {
    *(result + 72) = a2;
  }

  v2 = *(result + 48);
  v3 = (a2 - 1) & -(*(result + 32) - v2 + *(result + 40));
  if (v2 - *(result + 56) < v3)
  {
    v5 = (a2 - 1) & -(*(result + 32) - v2 + *(result + 40));
    v6 = result;
    sub_213C97F80(result, v3);
    v3 = v5;
    result = v6;
    *(v6 + 48) -= v5;
  }

  else
  {
    *(result + 48) = v2 - v3;
    if (!v3)
    {
      return result;
    }
  }

  v4 = 0;
  do
  {
    *(*(result + 48) + v4++) = 0;
  }

  while (v3 != v4);
  return result;
}

uint64_t sub_213C8C438(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) <= 7uLL)
  {
    *(a1 + 72) = 8;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = (v4 - (*(a1 + 32) + *(a1 + 40))) & 7;
  if (v4 - v5 < v6)
  {
    v11 = (v4 - (*(a1 + 32) + *(a1 + 40))) & 7;
    sub_213C97F80(a1, v6);
    v6 = v11;
    *(a1 + 48) -= v11;
  }

  else
  {
    v7 = v4 - v6;
    *(a1 + 48) = v7;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v10 = 0;
  do
  {
    *(*(a1 + 48) + v10++) = 0;
  }

  while (v6 != v10);
  v7 = *(a1 + 48);
  v5 = *(a1 + 56);
LABEL_5:
  if ((v7 - v5) <= 7)
  {
    sub_213C97F80(a1, 8uLL);
    v7 = *(a1 + 48);
  }

  *(v7 - 8) = a2;
  v8 = v7 - 8;
  *(a1 + 48) = v8;
  return (*(a1 + 32) - v8 + *(a1 + 40));
}

uint64_t sub_213C8C524(uint64_t a1, int a2)
{
  if (*(a1 + 72) <= 3uLL)
  {
    *(a1 + 72) = 4;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = (v4 - (*(a1 + 32) + *(a1 + 40))) & 3;
  if (v4 - v5 < v6)
  {
    v11 = (v4 - (*(a1 + 32) + *(a1 + 40))) & 3;
    sub_213C97F80(a1, v6);
    v6 = v11;
    *(a1 + 48) -= v11;
  }

  else
  {
    v7 = v4 - v6;
    *(a1 + 48) = v7;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v10 = 0;
  do
  {
    *(*(a1 + 48) + v10++) = 0;
  }

  while (v6 != v10);
  v7 = *(a1 + 48);
  v5 = *(a1 + 56);
LABEL_5:
  if ((v7 - v5) <= 3)
  {
    sub_213C97F80(a1, 4uLL);
    v7 = *(a1 + 48);
  }

  *(v7 - 4) = a2;
  v8 = v7 - 4;
  *(a1 + 48) = v8;
  return (*(a1 + 32) - v8 + *(a1 + 40));
}

uint64_t sub_213C8C610(uint64_t a1, char a2)
{
  if (!*(a1 + 72))
  {
    *(a1 + 72) = 1;
  }

  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    sub_213C97F80(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t *sub_213C8C688(uint64_t *result, uint64_t a2, int a3)
{
  if (!a3)
  {
    return result;
  }

  v4 = result;
  if (result[9] <= 3)
  {
    result[9] = 4;
  }

  v5 = result[4];
  v6 = result[5];
  v7 = result[6];
  v8 = (v7 - (v5 + v6)) & 3;
  if (v7 - result[7] < v8)
  {
    v21 = (v7 - (v5 + v6)) & 3;
    v18 = a3;
    result = sub_213C97F80(result, v21);
    v8 = v21;
    a3 = v18;
    v4[6] -= v21;
  }

  else
  {
    v9 = v7 - v8;
    result[6] = v9;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
  do
  {
    *(v4[6] + v19++) = 0;
  }

  while (v8 != v19);
  v6 = v4[5];
  v9 = v4[6];
  v5 = v4[4];
LABEL_6:
  v10 = v6 - v9 + v5 - a3;
  v11 = v10 + 4;
  if (v10 == -4 && *(v4 + 80) != 1)
  {
    return result;
  }

  if (v4[9] <= 3)
  {
    v4[9] = 4;
  }

  v12 = (v9 - (v5 + v6)) & 3;
  v13 = v4[7];
  if (v9 - v13 < v12)
  {
    v22 = v12;
    result = sub_213C97F80(v4, v12);
    v12 = v22;
    v4[6] -= v22;
LABEL_24:
    v20 = 0;
    do
    {
      *(v4[6] + v20++) = 0;
    }

    while (v12 != v20);
    v14 = v4[6];
    v13 = v4[7];
    goto LABEL_11;
  }

  v14 = v9 - v12;
  v4[6] = v9 - v12;
  if (v12)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v14 - v13) <= 3)
  {
    result = sub_213C97F80(v4, 4uLL);
    v14 = v4[6];
    v13 = v4[7];
  }

  *(v14 - 4) = v11;
  v15 = v14 - 4;
  v4[6] = v15;
  v16 = v4[4] - v15 + v4[5];
  if ((v15 - v13) <= 7)
  {
    result = sub_213C97F80(v4, 8uLL);
    v13 = v4[7];
  }

  *v13 = v16 | (a2 << 32);
  v4[7] += 8;
  ++*(v4 + 16);
  v17 = *(v4 + 34);
  if (v17 <= a2)
  {
    LOWORD(v17) = a2;
  }

  *(v4 + 34) = v17;
  return result;
}

uint64_t sub_213C8C880(uint64_t a1, __int16 a2)
{
  v4 = sub_213C8C524(a1, 0);
  if ((*(a1 + 68) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(a1 + 68) + 2);
  }

  *(a1 + 68) = v5;
  v6 = *(a1 + 48);
  if (v6 - *(a1 + 56) < v5)
  {
    sub_213C97F80(a1, v5);
    v6 = *(a1 + 48);
  }

  *(a1 + 48) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[1] = v7;
  *v9 = *(a1 + 68);
  v10 = *(a1 + 64);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = (v8 - 8 * v10);
    do
    {
      *(v9 + v12[2]) = v4 - *v12;
      v12 += 4;
    }

    while (v12 < v8);
  }

  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (*(a1 + 81) != 1 || v14 >= v11)
  {
LABEL_19:
    v20 = v13 - v9 + v14;
  }

  else
  {
    v16 = *v9;
    v17 = v14 + v13;
    v18 = *(a1 + 40);
    while (1)
    {
      v19 = *v18;
      if (v16 == *(v17 - v19) && !memcmp((v17 - v19), v9, v16))
      {
        break;
      }

      if (++v18 >= v11)
      {
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v13 - v9 + v14 - v4));
    *(a1 + 48) = v9;
    v20 = v19;
  }

  if (v20 == v13 + v14 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      sub_213C97F80(a1, 4uLL);
      v11 = *(a1 + 56);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
    }

    *v11 = v20;
    *(a1 + 56) = v11 + 4;
  }

  *(v14 + v13 - v4) = v20 - v4;
  *(a1 + 70) = 0;
  return v4;
}

uint64_t sub_213C8CA44(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - result) > a3)
  {
    v7 = result;
    v8 = -a3;
    do
    {
      v9 = v7 + a3;
      v10 = a2;
      while (v9 < v10)
      {
        if (sub_213C9E8DC((v7 + word_27C8E92F0), (v9 + word_27C8E92F0), dword_27C8E92F4))
        {
          v10 += v8;
          if (*(*(a4 + 8) + 216))
          {
            v11 = 0;
            do
            {
              v12 = *(v9 + v11);
              *(v9 + v11) = *(v10 + v11);
              *(v10 + v11++) = v12;
            }

            while (v11 < *(*(a4 + 8) + 216));
          }
        }

        else
        {
          ++v9;
        }
      }

      v13 = v9 + v8;
      if (*(*(a4 + 8) + 216))
      {
        v14 = 0;
        do
        {
          v15 = *(v7 + v14);
          *(v7 + v14) = *(v13 + v14);
          *(v13 + v14++) = v15;
        }

        while (v14 < *(*(a4 + 8) + 216));
      }

      result = sub_213C8CA44(v7, v13, a3, a4);
      v7 = v10;
    }

    while ((a2 - v10) > a3);
  }

  return result;
}

int *sub_213C8CB6C(int *result, unint64_t a2)
{
  if ((a2 - result) >= 5)
  {
    v3 = result;
    while (1)
    {
      v4 = v3 + 1;
      v5 = a2;
      if ((v3 + 1) < a2)
      {
        break;
      }

LABEL_21:
      v17 = v4 - 4 - v3;
      *v3 -= v17;
      v18 = *(v4 - 1) + v17;
      *(v4 - 1) = v18;
      v19 = *v3;
      *v3 = v18;
      *(v4 - 1) = v19;
      result = sub_213C8CB6C(v3, (v4 - 1));
      v3 = v5;
      if ((a2 - v5) <= 4)
      {
        return result;
      }
    }

    while (1)
    {
      v6 = (v3 + *v3);
      v7 = (v6 - *v6);
      v8 = *v7 <= word_27C8E92F0 ? 0 : *(v7 + word_27C8E92F0);
      v9 = (v4 + *v4);
      v10 = (v9 - *v9);
      v11 = (v6 + v8);
      if (*v10 <= word_27C8E92F0)
      {
        break;
      }

      if (v8)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (!*(v10 + word_27C8E92F0))
      {
        goto LABEL_16;
      }

      v13 = (v9 + *(v10 + word_27C8E92F0));
LABEL_17:
      if (sub_213C9E8DC(v12, v13, dword_27C8E92F4))
      {
        v14 = v5 - 4 - v4;
        *v4 -= v14;
        v15 = *(v5 - 4) + v14;
        *(v5 - 4) = v15;
        v16 = *v4;
        *v4 = v15;
        *(v5 - 4) = v16;
        v5 -= 4;
      }

      else
      {
        ++v4;
      }

      if (v4 >= v5)
      {
        goto LABEL_21;
      }
    }

    if (v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_213C8CCCC(uint64_t a1, void *__src, size_t __n)
{
  *(a1 + 70) = 1;
  v6 = *(a1 + 72);
  if (v6 <= 3)
  {
    v6 = 4;
    *(a1 + 72) = 4;
  }

  v7 = *(a1 + 48);
  v8 = (v7 - *(a1 + 40) - (*(a1 + 32) + __n)) & 3;
  if (v7 - *(a1 + 56) < v8)
  {
    sub_213C97F80(a1, (v7 - *(a1 + 40) - (*(a1 + 32) + __n)) & 3);
    *(a1 + 48) -= v8;
  }

  else
  {
    *(a1 + 48) = v7 - v8;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v16 = 0;
  do
  {
    *(*(a1 + 48) + v16++) = 0;
  }

  while (v8 != v16);
  v6 = *(a1 + 72);
  if (!v6)
  {
    v6 = 1;
    *(a1 + 72) = 1;
  }

LABEL_5:
  if (__n)
  {
    v9 = *(a1 + 48);
    if (v9 - *(a1 + 56) < __n)
    {
      sub_213C97F80(a1, __n);
      v9 = *(a1 + 48);
    }

    *(a1 + 48) = v9 - __n;
    memcpy((v9 - __n), __src, __n);
    v6 = *(a1 + 72);
  }

  *(a1 + 70) = 0;
  if (v6 <= 3)
  {
    *(a1 + 72) = 4;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = (v10 - (*(a1 + 32) + *(a1 + 40))) & 3;
  if (v10 - v11 < v12)
  {
    sub_213C97F80(a1, (v10 - (*(a1 + 32) + *(a1 + 40))) & 3);
    *(a1 + 48) -= v12;
  }

  else
  {
    v13 = v10 - v12;
    *(a1 + 48) = v13;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v17 = 0;
  do
  {
    *(*(a1 + 48) + v17++) = 0;
  }

  while (v12 != v17);
  v13 = *(a1 + 48);
  v11 = *(a1 + 56);
LABEL_13:
  if ((v13 - v11) <= 3)
  {
    sub_213C97F80(a1, 4uLL);
    v13 = *(a1 + 48);
  }

  *(v13 - 4) = __n;
  v14 = v13 - 4;
  *(a1 + 48) = v14;
  return (*(a1 + 32) - v14 + *(a1 + 40));
}

uint64_t sub_213C8CE90(uint64_t a1)
{
  sub_213C98FF0(v4);
  MEMORY[0x21604D100](&v5, a1);
  std::stringbuf::str();
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5 = v2;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x21604D160](&v9);
}

uint64_t *sub_213C8D018(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x21604D1A0);
  }

  return result;
}

uint64_t flatbuffers::EnumDef::MinValue(flatbuffers::EnumDef *this)
{
  v1 = *(this + 26);
  if (v1 == *(this + 27))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t flatbuffers::EnumDef::MaxValue(flatbuffers::EnumDef *this)
{
  v1 = *(this + 27);
  if (*(this + 26) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 8);
  }
}

uint64_t flatbuffers::EnumDef::Distance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  if (v3 == 10 || v3 == -3)
  {
    v5 = *(a2 + 136);
    v6 = *(a3 + 136);
    if (v5 <= v6)
    {
      v7 = *(a3 + 136);
    }

    else
    {
      v7 = *(a2 + 136);
    }

    if (v5 >= v6)
    {
      v5 = *(a3 + 136);
    }
  }

  else
  {
    v5 = *(a2 + 136);
    v8 = *(a3 + 136);
    if (v5 <= v8)
    {
      v7 = *(a3 + 136);
    }

    else
    {
      v7 = *(a2 + 136);
    }

    if (v5 >= v8)
    {
      v5 = *(a3 + 136);
    }
  }

  return v7 - v5;
}

uint64_t flatbuffers::EnumDef::AllFlags(flatbuffers::EnumDef *this)
{
  v1 = *(this + 26);
  v2 = *(this + 27);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v1++;
      v3 |= *(v4 + 136);
    }

    while (v1 != v2);
  }

  v5 = *(this + 38);
  if (v5 == -3 || v5 == 10)
  {
    return sub_213C8CE90(v3);
  }

  else
  {
    return sub_213C8A670(v3);
  }
}

uint64_t flatbuffers::EnumDef::Count(flatbuffers::EnumDef *this)
{
  v1 = *(this + 38);
  if (v1 == 10 || v1 == -3)
  {
    return sub_213C8CE90((*(this + 27) - *(this + 26)) >> 3);
  }

  else
  {
    return sub_213C8A670((*(this + 27) - *(this + 26)) >> 3);
  }
}

BOOL sub_213C8D174(char *a1, flatbuffers::ClassicLocale *a2)
{
  result = sub_213C97BE4(a2, a1, 0, 1);
  if (result)
  {
    if (!*a2)
    {
      return 1;
    }

    v5 = a1 - 1;
    do
    {
      v6 = *++v5;
      v7 = v6 - 48;
      if (v6)
      {
        v8 = v7 > 9;
      }

      else
      {
        v8 = 0;
      }
    }

    while (v8);
    if (*((__PAIR128__(v5, a1) - v5) >> 64) == 45)
    {
      result = 0;
      *a2 = -1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_213C8D1FC(uint64_t **a1, const void ***a2, uint64_t a3)
{
  v37 = a3;
  v6 = a1[4];
  if (v6 >= a1[5])
  {
    v7 = sub_213CC0840((a1 + 3), &v37);
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 1;
  }

  v8 = a1 + 1;
  v9 = a1[1];
  a1[4] = v7;
  if (!v9)
  {
    goto LABEL_50;
  }

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

  v13 = v9;
  v14 = a1 + 1;
  do
  {
    v15 = *(v13 + 55);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v16 = v13[4];
      v15 = v13[5];
    }

    else
    {
      v16 = (v13 + 4);
    }

    if (v12 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    v18 = memcmp(v16, v11, v17);
    if (v15 < v12)
    {
      v19 = -1;
    }

    else
    {
      v19 = v12 < v15;
    }

    if (v18)
    {
      v19 = v18;
    }

    if (v19 >= 0)
    {
      v14 = v13;
    }

    v13 = *(v13 + ((v19 >> 28) & 8));
  }

  while (v13);
  if (v14 != v8)
  {
    v35 = v14[4];
    v34 = v14 + 4;
    v33 = v35;
    v36 = *(v34 + 23);
    if (v36 >= 0)
    {
      v33 = v34;
    }

    if (v36 < 0)
    {
      v36 = v34[1];
    }

    v38[0] = v33;
    v38[1] = v36;
    if ((sub_213C986FC(a2, v38) & 0x80000000) == 0)
    {
      return 1;
    }

    v9 = *v8;
  }

  if (!v9)
  {
LABEL_50:
    operator new();
  }

  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  if (v20 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v23 = v9;
      v24 = *(v9 + 55);
      if (v24 >= 0)
      {
        v25 = v9 + 4;
      }

      else
      {
        v25 = v9[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v9 + 55);
      }

      else
      {
        v26 = v9[5];
      }

      if (v26 >= v21)
      {
        v27 = v21;
      }

      else
      {
        v27 = v26;
      }

      v28 = memcmp(v22, v25, v27);
      v29 = v21 < v26;
      if (v28)
      {
        v29 = v28 < 0;
      }

      if (!v29)
      {
        break;
      }

      v9 = *v23;
      if (!*v23)
      {
        goto LABEL_50;
      }
    }

    v30 = memcmp(v25, v22, v27);
    v31 = v26 < v21;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (!v31)
    {
      break;
    }

    v9 = v23[1];
    if (!v9)
    {
      goto LABEL_50;
    }
  }

  result = 0;
  v23[7] = a3;
  return result;
}

void ***flatbuffers::Parser::UniqueNamespace(void *a1, void ***a2)
{
  v2 = a2;
  v4 = a1[34];
  v5 = a1[35];
  if (v4 != v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = v6 - *a2;
    for (i = a1[34]; i != v5; i += 8)
    {
      v10 = **i;
      if (v8 == *(*i + 8) - v10)
      {
        if (v7 == v6)
        {
LABEL_24:
          v29 = v2;
          sub_213C9DC58(&v29);
          MEMORY[0x21604D1A0](v2, 0x1020C4016EE4530);
          return *i;
        }

        v11 = v7;
        while (1)
        {
          v12 = *(v11 + 23);
          if (v12 >= 0)
          {
            v13 = *(v11 + 23);
          }

          else
          {
            v13 = v11[1];
          }

          v14 = *(v10 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v10 + 8);
          }

          if (v13 != v14)
          {
            break;
          }

          v16 = v12 >= 0 ? v11 : *v11;
          v17 = v15 >= 0 ? v10 : *v10;
          if (memcmp(v16, v17, v13))
          {
            break;
          }

          v11 += 3;
          v10 += 24;
          if (v11 == v6)
          {
            goto LABEL_24;
          }
        }
      }
    }
  }

  v18 = a1[36];
  if (v5 >= v18)
  {
    v20 = v5 - v4;
    v21 = (v5 - v4) >> 3;
    v22 = v21 + 1;
    if ((v21 + 1) >> 61)
    {
      sub_213C97BD4();
    }

    v23 = v18 - v4;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 61))
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v25 = (v5 - v4) >> 3;
    v26 = (8 * v21);
    v27 = (8 * v21 - 8 * v25);
    *v26 = v2;
    v19 = v26 + 1;
    memcpy(v27, v4, v20);
    a1[34] = v27;
    a1[35] = v19;
    a1[36] = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v5 = v2;
    v19 = v5 + 8;
  }

  a1[35] = v19;
  return v2;
}

void flatbuffers::Parser::ParseDecl(flatbuffers::Parser *this@<X0>, uint64_t a2@<X8>)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_213C9DCE4(&v53, *(this + 7), *(this + 8), 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
  if (*(this + 5) != 260)
  {
    goto LABEL_26;
  }

  v4 = (this + 32);
  v5 = *(this + 55);
  if ((v5 & 0x80u) == 0)
  {
    v6 = *(this + 55);
  }

  else
  {
    v6 = *(this + 5);
  }

  if (v6 != 5)
  {
    if (v6 == 6)
    {
      v7 = this + 32;
      if ((v5 & 0x80) != 0)
      {
        v7 = *v4;
        v5 = *(this + 5);
      }

      v8 = v5 >= 6 ? 6 : v5;
      v9 = memcmp(v7, "struct", v8);
      if (v5 == 6 && !v9)
      {
        v10 = 1;
        goto LABEL_23;
      }
    }

LABEL_26:
    *(&__p.__r_.__value_.__s + 23) = 20;
    strcpy(&__p, "declaration expected");
    flatbuffers::Parser::Error(this, a2);
    goto LABEL_27;
  }

  v11 = this + 32;
  if ((v5 & 0x80) != 0)
  {
    v11 = *v4;
    v5 = *(this + 5);
  }

  if (v5 >= 5)
  {
    v12 = 5;
  }

  else
  {
    v12 = v5;
  }

  v13 = memcmp(v11, "table", v12);
  if (v5 != 5 || v13)
  {
    goto LABEL_26;
  }

  v10 = 0;
LABEL_23:
  flatbuffers::Parser::Next(this, a2);
  *(a2 + 1) = 1;
  if (*a2)
  {
    goto LABEL_29;
  }

  if (*(this + 55) < 0)
  {
    sub_213C9D958(&__p, *(this + 4), *(this + 5));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v4;
    __p.__r_.__value_.__r.__words[2] = *(this + 6);
  }

  flatbuffers::Parser::Expect(a2, this, 260);
  *(a2 + 1) = 1;
  if ((*a2 & 1) == 0)
  {
    v51 = 0;
    flatbuffers::Parser::StartStruct(this, &__p, &v51, a2);
    *(a2 + 1) = 1;
    if ((*a2 & 1) == 0)
    {
      v14 = v51;
      if (&v51[2] != &v53)
      {
        sub_213C9E228(&v51[2], v53, v54, 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3));
      }

      v14[8].__r_.__value_.__s.__data_[8] = v10;
      flatbuffers::Parser::ParseMetaData(this, a2);
      *(a2 + 1) = 1;
      if ((*a2 & 1) == 0)
      {
        *(&v50.__r_.__value_.__s + 23) = 14;
        strcpy(&v50, "original_order");
        v15 = sub_213C9E148(&v14[3], &v50);
        v16 = &v14[3].__r_.__value_.__r.__words[1] == v15 || *(v15 + 56) == 0;
        v14[8].__r_.__value_.__s.__data_[10] = v16 & (v10 ^ 1);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        flatbuffers::Parser::Expect(a2, this, 123);
        while (1)
        {
          *(a2 + 1) = 1;
          if (*a2)
          {
            goto LABEL_27;
          }

          if (*(this + 5) == 125)
          {
            break;
          }

          flatbuffers::Parser::ParseField(this, v14, a2);
        }

        *(&v50.__r_.__value_.__s + 23) = 11;
        strcpy(&v50, "force_align");
        v17 = sub_213C9E148(&v14[3], &v50);
        if (&v14[3].__r_.__value_.__r.__words[1] == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v17 + 56);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (v10)
        {
          if (v18)
          {
            v39 = (v18 + 32);
            if (*(v18 + 55) < 0)
            {
              v39 = *v39;
            }

            v40 = atoi(v39);
            if (*v18 != 7 || v40 > 0x10 || v14[8].__r_.__value_.__r.__words[2] > v40 || ((v40 + 31) & v40) != 0)
            {
              sub_213C8A4E8(16);
              v41 = std::string::insert(&v49, 0, "force_align must be a power of two integer ranging from thestruct's natural alignment to ");
              v42 = v41->__r_.__value_.__r.__words[2];
              *&v50.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
              v50.__r_.__value_.__r.__words[2] = v42;
              v41->__r_.__value_.__l.__size_ = 0;
              v41->__r_.__value_.__r.__words[2] = 0;
              v41->__r_.__value_.__r.__words[0] = 0;
              flatbuffers::Parser::Error(this, a2);
              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
              {
                v43 = v49.__r_.__value_.__r.__words[0];
LABEL_97:
                operator delete(v43);
                goto LABEL_27;
              }

              goto LABEL_27;
            }

            v14[8].__r_.__value_.__r.__words[2] = v40;
          }

          data = v14[9].__r_.__value_.__l.__data_;
          if (!data)
          {
            operator new();
          }
        }

        else
        {
          data = v14[9].__r_.__value_.__l.__data_;
        }

        p_size = &v14[7].__r_.__value_.__l.__size_;
        size = v14[7].__r_.__value_.__l.__size_;
        v22 = (v14[8].__r_.__value_.__r.__words[2] - 1) & -data;
        v14[9].__r_.__value_.__r.__words[0] = &data[v22];
        v23 = v14[7].__r_.__value_.__r.__words[2];
        if (v23 == size)
        {
          goto LABEL_77;
        }

        *(*(v23 - 1) + 232) = v22;
        if (v10)
        {
          goto LABEL_77;
        }

        v24 = 0;
        v25 = -size;
        do
        {
          v26 = *size;
          *(&v50.__r_.__value_.__s + 23) = 2;
          strcpy(&v50, "id");
          v27 = sub_213C9E148(v26 + 72, &v50);
          v28 = v26 + 80 != v27 && *(v27 + 56) != 0;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          v24 += v28;
          size += 8;
          v29 = v14[7].__r_.__value_.__r.__words[2];
          v25 -= 8;
        }

        while (size != v29);
        if (!v24)
        {
          goto LABEL_77;
        }

        v30 = *p_size;
        if (v24 != -(*p_size + v25) >> 3)
        {
          operator new();
        }

        v50.__r_.__value_.__r.__words[0] = sub_213C8E060;
        v31 = 126 - 2 * __clz(v24);
        v32 = size == v30 ? 0 : v31;
        sub_213CC0988(v30, v29, &v50, v32, 1);
        v33 = v14[7].__r_.__value_.__l.__size_;
        if (((v14[7].__r_.__value_.__r.__words[2] - v33) >> 3) < 1)
        {
LABEL_77:
          flatbuffers::Parser::CheckClash("_type", this, &v14[7].__r_.__value_.__l.__size_, v14, 16, a2);
          *(a2 + 1) = 1;
          if ((*a2 & 1) == 0)
          {
            flatbuffers::Parser::CheckClash("Type", this, &v14[7].__r_.__value_.__l.__size_, v14, 16, a2);
            *(a2 + 1) = 1;
            if ((*a2 & 1) == 0)
            {
              flatbuffers::Parser::CheckClash("_length", this, &v14[7].__r_.__value_.__l.__size_, v14, 14, a2);
              *(a2 + 1) = 1;
              if ((*a2 & 1) == 0)
              {
                flatbuffers::Parser::CheckClash("Length", this, &v14[7].__r_.__value_.__l.__size_, v14, 14, a2);
                *(a2 + 1) = 1;
                if ((*a2 & 1) == 0)
                {
                  flatbuffers::Parser::CheckClash("_byte_vector", this, &v14[7].__r_.__value_.__l.__size_, v14, 13, a2);
                  *(a2 + 1) = 1;
                  if ((*a2 & 1) == 0)
                  {
                    flatbuffers::Parser::CheckClash("ByteVector", this, &v14[7].__r_.__value_.__l.__size_, v14, 13, a2);
                    *(a2 + 1) = 1;
                    if ((*a2 & 1) == 0)
                    {
                      flatbuffers::Parser::Expect(a2, this, 125);
                      *(a2 + 1) = 1;
                      if ((*a2 & 1) == 0)
                      {
                        flatbuffers::Namespace::GetFullyQualifiedName(*(this + 37), v14, 0x3E8uLL, &v50);
                        operator new();
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v34 = 0;
          while (1)
          {
            v35 = *(v33 + 8 * v34);
            *(&v50.__r_.__value_.__s + 23) = 2;
            strcpy(&v50, "id");
            v36 = *(sub_213C9E148(v35 + 72, &v50) + 56);
            v37 = (v36 + 32);
            if (*(v36 + 55) < 0)
            {
              v37 = *v37;
            }

            v38 = atoi(v37);
            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            if (v34 != v38)
            {
              break;
            }

            v33 = v14[7].__r_.__value_.__l.__size_;
            *(*(v33 + 8 * v34) + 208) = 2 * v34 + 4;
            if (++v34 >= ((v14[7].__r_.__value_.__r.__words[2] - v33) >> 3))
            {
              goto LABEL_77;
            }
          }

          sub_213C8A4E8(v34);
          v44 = std::string::insert(&v48, 0, "field id's must be consecutive from 0, id ");
          v45 = v44->__r_.__value_.__r.__words[2];
          *&v49.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
          v49.__r_.__value_.__r.__words[2] = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v49, " missing or set twice");
          v47 = v46->__r_.__value_.__r.__words[2];
          *&v50.__r_.__value_.__l.__data_ = *&v46->__r_.__value_.__l.__data_;
          v50.__r_.__value_.__r.__words[2] = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          flatbuffers::Parser::Error(this, a2);
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            v43 = v48.__r_.__value_.__r.__words[0];
            goto LABEL_97;
          }
        }
      }
    }
  }

LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_29:
  __p.__r_.__value_.__r.__words[0] = &v53;
  sub_213C9DC58(&__p);
}

BOOL sub_213C8E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 2;
  strcpy(__p, "id");
  v6 = *(sub_213C9E148(a1 + 72, __p) + 56);
  v7 = (v6 + 32);
  if (*(v6 + 55) < 0)
  {
    v7 = *v7;
  }

  v8 = atoi(v7);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = 2;
  strcpy(__p, "id");
  v9 = *(sub_213C9E148(a2 + 72, __p) + 56);
  v10 = (v9 + 32);
  if (*(v9 + 55) < 0)
  {
    v10 = *v10;
  }

  v11 = atoi(v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v8 < v11;
}

void flatbuffers::Parser::ParseService(flatbuffers::Parser *this@<X0>, uint64_t *a2@<X8>)
{
  memset(v7, 0, 24);
  sub_213C9DCE4(v7, *(this + 7), *(this + 8), 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3));
  flatbuffers::Parser::Next(this, a2);
  *(a2 + 1) = 1;
  if ((*a2 & 1) == 0)
  {
    if (*(this + 55) < 0)
    {
      sub_213C9D958(__p, *(this + 4), *(this + 5));
    }

    else
    {
      *__p = *(this + 2);
      v6 = *(this + 6);
    }

    flatbuffers::Parser::Expect(a2, this, 260);
    *(a2 + 1) = 1;
    if ((*a2 & 1) == 0)
    {
      operator new();
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = v7;
  sub_213C9DC58(&v4);
}

void *flatbuffers::Parser::MarkGenerated(void *this)
{
  v1 = this[25];
  for (i = this[26]; v1 != i; *(v3 + 120) = 1)
  {
    v3 = *v1++;
  }

  v4 = this[19];
  for (j = this[20]; v4 != j; v4 += 8)
  {
    if ((*(*v4 + 201) & 1) == 0)
    {
      *(*v4 + 120) = 1;
    }
  }

  v6 = this[31];
  for (k = this[32]; v6 != k; *(v8 + 120) = 1)
  {
    v8 = *v6++;
  }

  return this;
}

void flatbuffers::Parser::ParseProtoFields(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  flatbuffers::Parser::Expect(a5, a1, 123);
  *(a5 + 1) = 1;
  if (*a5)
  {
    return;
  }

  v10 = (a1 + 32);
  v103 = a2 + 160;
  while (1)
  {
    while (1)
    {
      v11 = *(a1 + 20);
      if (v11 == 260)
      {
        break;
      }

      if (v11 == 125)
      {
        flatbuffers::Parser::Next(a1, a5);
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          *a5 = 0;
        }

        return;
      }

LABEL_5:
      v139 = 0;
      v140 = 0;
      v141 = 0;
      sub_213C9DCE4(&v139, *(a1 + 56), *(a1 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3));
      if ((a4 & 1) != 0 || *(a1 + 20) != 260)
      {
        goto LABEL_20;
      }

      v12 = *(a1 + 55);
      v13 = *(a1 + 40);
      if ((v12 & 0x80u) == 0)
      {
        v14 = *(a1 + 55);
      }

      else
      {
        v14 = *(a1 + 40);
      }

      if (v14 == 5)
      {
        v61 = (a1 + 32);
        if ((v12 & 0x80) != 0)
        {
          v61 = *v10;
          v12 = *(a1 + 40);
        }

        if (v12 >= 5)
        {
          v62 = 5;
        }

        else
        {
          v62 = v12;
        }

        v63 = memcmp(v61, "oneof", v62);
        v19 = 0;
        if (v12 != 5)
        {
LABEL_163:
          v20 = 0;
          v21 = 0;
          goto LABEL_23;
        }

        v20 = 0;
        v21 = 0;
        if (!v63)
        {
          flatbuffers::Parser::Next(a1, a5);
          v21 = 1;
          *(a5 + 1) = 1;
          if (*a5)
          {
            goto LABEL_282;
          }

          v19 = 0;
          v20 = 0;
        }
      }

      else
      {
        if (v14 != 8)
        {
          goto LABEL_20;
        }

        v15 = *(a1 + 55);
        v16 = (a1 + 32);
        if ((v12 & 0x80) != 0)
        {
          v16 = *v10;
          v15 = *(a1 + 40);
        }

        if (v15 >= 8)
        {
          v17 = 8;
        }

        else
        {
          v17 = v15;
        }

        v18 = memcmp(v16, "optional", v17);
        if (v15 == 8 && !v18)
        {
          flatbuffers::Parser::Next(a1, a5);
          *(a5 + 1) = 1;
          if (*a5)
          {
            goto LABEL_282;
          }

LABEL_20:
          v19 = 0;
LABEL_21:
          v20 = 0;
LABEL_22:
          v21 = 0;
          goto LABEL_23;
        }

        v64 = v12;
        v65 = (a1 + 32);
        if ((v12 & 0x80) != 0)
        {
          v65 = *v10;
          v64 = v13;
        }

        if (v64 >= 8)
        {
          v66 = 8;
        }

        else
        {
          v66 = v64;
        }

        v67 = memcmp(v65, "required", v66);
        if (v64 == 8 && !v67)
        {
          flatbuffers::Parser::Next(a1, a5);
          v19 = 1;
          *(a5 + 1) = 1;
          if (*a5)
          {
            goto LABEL_282;
          }

          goto LABEL_21;
        }

        v70 = (a1 + 32);
        if ((v12 & 0x80) != 0)
        {
          v70 = *v10;
          v12 = v13;
        }

        if (v12 >= 8)
        {
          v71 = 8;
        }

        else
        {
          v71 = v12;
        }

        v72 = memcmp(v70, "repeated", v71);
        v19 = 0;
        if (v12 != 8)
        {
          goto LABEL_163;
        }

        v20 = 0;
        v21 = 0;
        if (!v72)
        {
          flatbuffers::Parser::Next(a1, a5);
          v20 = 1;
          *(a5 + 1) = 1;
          if (*a5)
          {
            goto LABEL_282;
          }

          v19 = 0;
          goto LABEL_22;
        }
      }

LABEL_23:
      v137 = 0;
      v138 = 0;
      v133 = 0;
      v134 = 0;
      v136 = 0;
      v135 = 0;
      if (*(a1 + 20) == 260 && ((v22 = *(a1 + 55), (v22 & 0x80u) == 0) ? (v23 = *(a1 + 55)) : (v23 = *(a1 + 40)), v23 == 5))
      {
        v24 = a4;
        v25 = (a1 + 32);
        v26 = a2;
        v27 = a3;
        if ((v22 & 0x80) != 0)
        {
          v25 = *v10;
          v22 = *(a1 + 40);
        }

        if (v22 >= 5)
        {
          v28 = 5;
        }

        else
        {
          v28 = v22;
        }

        v29 = v22 == 5;
        v30 = !memcmp(v25, "group", v28) && v29;
        a3 = v27;
        a2 = v26;
        a4 = v24;
      }

      else
      {
        v30 = 0;
      }

      if ((v21 | v30) == 1)
      {
        if (v21)
        {
          if (*(a1 + 748) == 1)
          {
            flatbuffers::MakeCamel((a1 + 32), 1, &__str);
            v31 = std::string::append(&__str, "Union");
            v32 = v31->__r_.__value_.__r.__words[2];
            *__p = *&v31->__r_.__value_.__l.__data_;
            v110[0] = v32;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            flatbuffers::Parser::StartEnum();
          }
        }

        else
        {
          flatbuffers::Parser::Next(a1, a5);
          *(a5 + 1) = 1;
          if (*a5)
          {
            goto LABEL_282;
          }
        }

        v46 = *(a1 + 1200);
        *(a1 + 1200) = v46 + 1;
        sub_213C8A4E8(v46);
        v47 = std::string::insert(&__str, 0, "Anonymous");
        v48 = v47->__r_.__value_.__r.__words[2];
        *__p = *&v47->__r_.__value_.__l.__data_;
        v110[0] = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        flatbuffers::Parser::StartStruct(a1, __p, &v138, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          if (SHIBYTE(v110[0]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_282:
          __p[0] = &v139;
          sub_213C9DC58(__p);
          return;
        }

        v133 = 15;
        v134 = v138;
        v135 = 0;
        v136 = 0;
        if (SHIBYTE(v110[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        flatbuffers::Parser::ParseTypeFromProtoType(a1, &v133, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_282;
        }
      }

      if (v20)
      {
        v49 = v133;
        LODWORD(v133) = 14;
        HIDWORD(v133) = v49;
        if (v49 == 14)
        {
          HIDWORD(v133) = 13;
        }
      }

      if (*(a1 + 55) < 0)
      {
        sub_213C9D958(&v131, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        v131 = *v10;
        v132 = *(a1 + 48);
      }

      flatbuffers::Parser::Expect(a5, a1, 260);
      *(a5 + 1) = 1;
      if (*a5)
      {
        goto LABEL_90;
      }

      if ((v21 & 1) == 0)
      {
        flatbuffers::Parser::Expect(a5, a1, 61);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_90;
        }

        flatbuffers::Parser::Expect(a5, a1, 258);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_90;
        }
      }

      v130 = 0;
      if (!a3)
      {
        goto LABEL_168;
      }

      v68 = sub_213CBBD28(a2 + 152, &v131);
      if (v103 == v68)
      {
        v130 = 0;
LABEL_168:
        flatbuffers::Parser::AddField();
      }

      v69 = *(v68 + 56);
      v130 = v69;
      if (!v69)
      {
        goto LABEL_168;
      }

      if ((v69 + 48) != &v139)
      {
        v101 = v69;
        sub_213C9E228(v69 + 48, v139, v140, 0xAAAAAAAAAAAAAAABLL * ((v140 - v139) >> 3));
        v69 = v101;
      }

      if (v133 <= 0xFFFFFFFB && (v133 - 1) >= 0xC)
      {
        *(v69 + 217) = v19;
      }

      if (*(a1 + 20) == 91)
      {
        v102 = v69;
        flatbuffers::Parser::Next(a1, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_90;
        }

        do
        {
          if (*(a1 + 55) < 0)
          {
            sub_213C9D958(__p, *(a1 + 32), *(a1 + 40));
          }

          else
          {
            *__p = *v10;
            v110[0] = *(a1 + 48);
          }

          flatbuffers::Parser::ParseProtoKey(a1, a5);
          v76 = 1;
          *(a5 + 1) = 1;
          if ((*a5 & 1) == 0)
          {
            flatbuffers::Parser::Expect(a5, a1, 61);
            *(a5 + 1) = 1;
            if ((*a5 & 1) == 0)
            {
              if (*(a1 + 55) < 0)
              {
                sub_213C9D958(&__str, *(a1 + 32), *(a1 + 40));
              }

              else
              {
                *&__str.__r_.__value_.__l.__data_ = *v10;
                __str.__r_.__value_.__r.__words[2] = *(a1 + 48);
              }

              flatbuffers::Parser::ParseProtoCurliesOrIdent(a1, a5);
              *(a5 + 1) = 1;
              if ((*a5 & 1) == 0)
              {
                v77 = HIBYTE(v110[0]);
                if (SHIBYTE(v110[0]) >= 0)
                {
                  v78 = HIBYTE(v110[0]);
                }

                else
                {
                  v78 = __p[1];
                }

                if (v78 == 10)
                {
                  if ((HIBYTE(v110[0]) & 0x80) != 0)
                  {
                    v83 = __p[0];
                    v77 = __p[1];
                  }

                  else
                  {
                    v83 = __p;
                  }

                  if (v77 >= 0xA)
                  {
                    v84 = 10;
                  }

                  else
                  {
                    v84 = v77;
                  }

                  v85 = memcmp(v83, "deprecated", v84);
                  if (v77 == 10 && !v85)
                  {
                    v86 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = __str.__r_.__value_.__l.__size_;
                    }

                    if (size == 4)
                    {
                      if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
                      {
                        v86 = __str.__r_.__value_.__l.__size_;
                        p_str = __str.__r_.__value_.__r.__words[0];
                      }

                      else
                      {
                        p_str = &__str;
                      }

                      if (v86 >= 4)
                      {
                        v89 = 4;
                      }

                      else
                      {
                        v89 = v86;
                      }

                      v90 = v86 == 4;
                      v91 = !memcmp(p_str, "true", v89) && v90;
                    }

                    else
                    {
                      v91 = 0;
                    }

                    *(v102 + 216) = v91;
                  }
                }

                else if (v78 == 7)
                {
                  if ((HIBYTE(v110[0]) & 0x80) != 0)
                  {
                    v79 = __p[0];
                    v77 = __p[1];
                  }

                  else
                  {
                    v79 = __p;
                  }

                  v80 = v77 >= 7 ? 7 : v77;
                  v81 = memcmp(v79, "default", v80);
                  if (v77 == 7 && !v81 && (v133 > 0xFFFFFFFB || (v133 - 1) <= 0xB))
                  {
                    v82 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
                    if (strpbrk(v82, "0123456789-+.") == v82)
                    {
                      std::string::operator=((v102 + 184), &__str);
                    }
                  }
                }

                if (*(a1 + 20) == 44)
                {
                  flatbuffers::Parser::Next(a1, a5);
                  *(a5 + 1) = 1;
                  v76 = *a5;
                }

                else
                {
                  v76 = 6;
                }
              }

              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }
          }

          if (SHIBYTE(v110[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        while (!v76);
        if (v76 != 6)
        {
          goto LABEL_90;
        }

        flatbuffers::Parser::Expect(a5, a1, 93);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_90;
        }
      }

      if (v138)
      {
        flatbuffers::Parser::ParseProtoFields(a1, v138, 0, v21, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_90;
        }

        if (*(a1 + 20) != 59)
        {
          goto LABEL_194;
        }

        flatbuffers::Parser::Next(a1, a5);
        goto LABEL_276;
      }

      if (!v137)
      {
        flatbuffers::Parser::Expect(a5, a1, 59);
LABEL_276:
        *(a5 + 1) = 1;
        if ((*a5 & 1) == 0)
        {
          goto LABEL_194;
        }

        goto LABEL_90;
      }

      v111 = 0u;
      v112 = 0u;
      *__p = 0u;
      *v110 = 0u;
      memset(v115, 0, 41);
      v113 = 0;
      v114 = v115;
      v116 = 0;
      v117 = 0xFFFFFFFF00000000;
      v118 = 1;
      v120[0] = 0;
      v120[1] = 0;
      v119 = v120;
      v121 = 0;
      v122 = 0;
      v124 = 0;
      v123 = 0;
      v125 = 257;
      v126 = 0;
      v127 = 1;
      v128 = 0;
      v129 = 0;
      flatbuffers::Parser::ParseProtoFields(a1, __p, 0, v21, a5);
      *(a5 + 1) = 1;
      if (*a5)
      {
        goto LABEL_181;
      }

      if (*(a1 + 20) == 59)
      {
        flatbuffers::Parser::Next(a1, a5);
        *(a5 + 1) = 1;
        if (*a5)
        {
          goto LABEL_181;
        }
      }

      if (v121 != v122)
      {
        v74 = *v121;
        if (*(*v121 + 152) == 15)
        {
          v75 = *(v74 + 160);
          if (v75)
          {
            if (*(v75 + 200) != 1)
            {
              __str.__r_.__value_.__r.__words[0] = a1;
              *&__str.__r_.__value_.__r.__words[1] = v137;
              v105 = 1;
              sub_213CB76AC(&__str, v75);
            }
          }
        }

        std::operator+<char>();
        v92 = std::string::append(&v106, "' cannot be mapped to a union because member '");
        v93 = v92->__r_.__value_.__r.__words[2];
        *&v107.__r_.__value_.__l.__data_ = *&v92->__r_.__value_.__l.__data_;
        v107.__r_.__value_.__r.__words[2] = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = *(v74 + 23);
        if (v94 >= 0)
        {
          v95 = v74;
        }

        else
        {
          v95 = *v74;
        }

        if (v94 >= 0)
        {
          v96 = *(v74 + 23);
        }

        else
        {
          v96 = *(v74 + 8);
        }

        v97 = std::string::append(&v107, v95, v96);
        v98 = v97->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = *&v97->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v98;
        v97->__r_.__value_.__l.__size_ = 0;
        v97->__r_.__value_.__r.__words[2] = 0;
        v97->__r_.__value_.__r.__words[0] = 0;
        v99 = std::string::append(&v108, "' is not a table type.");
        v100 = v99->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = *&v99->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        flatbuffers::Parser::Error(a1, a5);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }

LABEL_181:
        v73 = 0;
        goto LABEL_189;
      }

      v73 = 1;
LABEL_189:
      sub_213C8D018(&v129, 0);
      sub_213C99840(&v119);
      sub_213C98DC4(&v114);
      __str.__r_.__value_.__r.__words[0] = &v112;
      sub_213C9DC58(&__str);
      if (SHIBYTE(v111) < 0)
      {
        operator delete(v110[1]);
      }

      if (SHIBYTE(v110[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v73)
      {
LABEL_194:
        v50 = 1;
        goto LABEL_91;
      }

LABEL_90:
      v50 = 0;
LABEL_91:
      if (SHIBYTE(v132) < 0)
      {
        operator delete(v131);
      }

      __p[0] = &v139;
      sub_213C9DC58(__p);
      if ((v50 & 1) == 0)
      {
        return;
      }
    }

    v33 = *(a1 + 55);
    v34 = *(a1 + 40);
    v35 = (v33 & 0x80u) == 0 ? *(a1 + 55) : *(a1 + 40);
    if (v35 > 6)
    {
      break;
    }

    if (v35 == 4)
    {
      v59 = (a1 + 32);
      if ((v33 & 0x80) != 0)
      {
        v59 = *v10;
        v33 = *(a1 + 40);
      }

      if (v33 >= 4)
      {
        v60 = 4;
      }

      else
      {
        v60 = v33;
      }

      v38 = memcmp(v59, "enum", v60);
      if (v33 != 4)
      {
        goto LABEL_5;
      }

      goto LABEL_126;
    }

    if (v35 != 6)
    {
      goto LABEL_5;
    }

    v39 = *(a1 + 55);
    v40 = (a1 + 32);
    if ((v33 & 0x80) != 0)
    {
      v40 = *v10;
      v39 = *(a1 + 40);
    }

    if (v39 >= 6)
    {
      v41 = 6;
    }

    else
    {
      v41 = v39;
    }

    v42 = memcmp(v40, "extend", v41);
    if (v39 != 6 || v42)
    {
      v43 = (a1 + 32);
      if ((v33 & 0x80) != 0)
      {
        v43 = *v10;
        v33 = v34;
      }

      if (v33 >= 6)
      {
        v44 = 6;
      }

      else
      {
        v44 = v33;
      }

      v45 = memcmp(v43, "option", v44);
      if (v33 != 6 || v45)
      {
        goto LABEL_5;
      }

      flatbuffers::Parser::ParseProtoOption(a1, a5);
LABEL_107:
      *(a5 + 1) = 1;
      if (*a5)
      {
        return;
      }

LABEL_108:
      flatbuffers::Parser::Expect(a5, a1, 59);
      goto LABEL_128;
    }

LABEL_127:
    flatbuffers::Parser::ParseProtoDecl(a1, a5);
LABEL_128:
    *(a5 + 1) = 1;
    v57 = *a5;
LABEL_129:
    if (v57)
    {
      return;
    }
  }

  if (v35 == 10)
  {
    v51 = (a1 + 32);
    if ((v33 & 0x80) != 0)
    {
      v51 = *v10;
      v33 = *(a1 + 40);
    }

    if (v33 >= 0xA)
    {
      v52 = 10;
    }

    else
    {
      v52 = v33;
    }

    v53 = memcmp(v51, "extensions", v52);
    if (v33 != 10 || v53)
    {
      goto LABEL_5;
    }

    flatbuffers::Parser::Next(a1, a5);
    *(a5 + 1) = 1;
    if (*a5)
    {
      return;
    }

    flatbuffers::Parser::Expect(a5, a1, 258);
    *(a5 + 1) = 1;
    if (*a5)
    {
      return;
    }

    if (*(a1 + 20) == 260)
    {
      flatbuffers::Parser::Next(a1, a5);
      *(a5 + 1) = 1;
      if (*a5)
      {
        return;
      }

      flatbuffers::Parser::Next(a1, a5);
      goto LABEL_107;
    }

    goto LABEL_108;
  }

  if (v35 != 8)
  {
    if (v35 != 7)
    {
      goto LABEL_5;
    }

    v36 = (a1 + 32);
    if ((v33 & 0x80) != 0)
    {
      v36 = *v10;
      v33 = *(a1 + 40);
    }

    v37 = v33 >= 7 ? 7 : v33;
    v38 = memcmp(v36, "message", v37);
    if (v33 != 7)
    {
      goto LABEL_5;
    }

LABEL_126:
    if (v38)
    {
      goto LABEL_5;
    }

    goto LABEL_127;
  }

  v54 = (a1 + 32);
  if ((v33 & 0x80) != 0)
  {
    v54 = *v10;
    v33 = *(a1 + 40);
  }

  if (v33 >= 8)
  {
    v55 = 8;
  }

  else
  {
    v55 = v33;
  }

  v56 = memcmp(v54, "reserved", v55);
  if (v33 != 8 || v56)
  {
    goto LABEL_5;
  }

  flatbuffers::Parser::Next(a1, a5);
  *(a5 + 1) = 1;
  v57 = *a5;
  while ((v57 & 1) == 0)
  {
    v58 = *(a1 + 20);
    flatbuffers::Parser::Next(a1, a5);
    *(a5 + 1) = 1;
    v57 = *a5;
    if (v58 == 59)
    {
      goto LABEL_129;
    }
  }
}

void flatbuffers::Parser::DoParse(flatbuffers::Parser *this@<X0>, const char *a2@<X1>, const char **a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    v75 = strlen(a4);
    if (v75 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_383;
    }

    v76 = v75;
    if (v75 >= 0x17)
    {
      operator new();
    }

    *(&v145.__r_.__value_.__s + 23) = v75;
    if (v75)
    {
      memcpy(&v145, a4, v75);
    }

    v145.__r_.__value_.__s.__data_[v76] = 0;
    v77 = sub_213CBBD28(this + 632, &v145);
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if ((this + 640) != v77)
    {
      goto LABEL_192;
    }

    v78 = a5 ? a5 : &unk_213CC7DD7;
    v79 = strlen(a4);
    if (v79 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_383;
    }

    v80 = v79;
    if (v79 >= 0x17)
    {
      operator new();
    }

    *(&v145.__r_.__value_.__s + 23) = v79;
    if (v79)
    {
      memcpy(&v145, a4, v79);
    }

    v145.__r_.__value_.__s.__data_[v80] = 0;
    v81 = *sub_213CBFD60(this + 632, &__p, &v145);
    if (!v81)
    {
      operator new();
    }

    MEMORY[0x21604CF40](v81 + 56, v78);
    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    *&v145.__r_.__value_.__r.__words[1] = 0uLL;
    v145.__r_.__value_.__r.__words[0] = &v145.__r_.__value_.__l.__size_;
    v82 = strlen(a4);
    if (v82 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_383:
      sub_213C97BD4();
    }

    v83 = v82;
    if (v82 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v82;
    if (v82)
    {
      memcpy(&__p, a4, v82);
    }

    __p.__r_.__value_.__s.__data_[v83] = 0;
    v143.__r_.__value_.__r.__words[0] = &__p;
    v84 = sub_213CC11F0(this + 656, &__p, &v143);
    v85 = (v84 + 64);
    v86 = (v84 + 56);
    sub_213CA1DC8(v84 + 56, *(v84 + 64));
    size = v145.__r_.__value_.__l.__size_;
    *(v85 - 1) = v145.__r_.__value_.__r.__words[0];
    *v85 = size;
    v88 = v145.__r_.__value_.__r.__words[2];
    v85[1] = v145.__r_.__value_.__r.__words[2];
    if (v88)
    {
      *(size + 16) = v85;
      v145.__r_.__value_.__r.__words[0] = &v145.__r_.__value_.__l.__size_;
      *&v145.__r_.__value_.__r.__words[1] = 0uLL;
      size = 0;
    }

    else
    {
      *v86 = v85;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      size = v145.__r_.__value_.__l.__size_;
    }

    sub_213CA1DC8(&v145, size);
  }

  v11 = &off_27C8E92D0;
  if (a3)
  {
    v11 = a3;
  }

  v139 = v11;
  v12 = *(this + 148);
  v13 = *(this + 147);
  while (v12 != v13)
  {
    if (*(v12 - 17) < 0)
    {
      operator delete(*(v12 - 40));
    }

    v12 -= 72;
  }

  *(this + 148) = v13;
  sub_213CB9ABC(this + 336);
  *(this + 37) = *(this + 38);
  flatbuffers::Parser::StartParseFile(a6, this, a2, a4);
  *(a6 + 1) = 1;
  if (*a6)
  {
    return;
  }

  v14 = (this + 32);
  v138 = (this + 584);
  do
  {
    while (1)
    {
      v15 = *(this + 747);
      if (v15 == 1)
      {
        v16 = *(this + 55);
        v17 = v16;
        v18 = *(this + 5);
        if ((v16 & 0x80u) == 0)
        {
          v19 = *(this + 55);
        }

        else
        {
          v19 = *(this + 5);
        }

        if (v19 == 7)
        {
          v30 = *(this + 55);
          v31 = (this + 32);
          if (v16 < 0)
          {
            v31 = *v14;
            v30 = *(this + 5);
          }

          if (v30 >= 7)
          {
            v32 = 7;
          }

          else
          {
            v32 = v30;
          }

          v27 = memcmp(v31, "package", v32);
          v28 = v30 == 7;
        }

        else
        {
          if (v19 != 6)
          {
LABEL_41:
            v29 = *(this + 5);
            if (v29 == 260)
            {
              goto LABEL_42;
            }

LABEL_201:
            if (v29 != 256)
            {
              goto LABEL_222;
            }

LABEL_192:
            *a6 = 0;
            return;
          }

          v20 = *(this + 55);
          v21 = (this + 32);
          if (v16 < 0)
          {
            v21 = *v14;
            v20 = *(this + 5);
          }

          if (v20 >= 6)
          {
            v22 = 6;
          }

          else
          {
            v22 = v20;
          }

          v23 = memcmp(v21, "option", v22);
          if (v20 == 6 && !v23)
          {
LABEL_98:
            flatbuffers::Parser::ParseProtoDecl(this, a6);
            goto LABEL_99;
          }

          v24 = v16;
          v25 = (this + 32);
          if (v16 < 0)
          {
            v25 = *v14;
            v24 = v18;
          }

          if (v24 >= 6)
          {
            v26 = 6;
          }

          else
          {
            v26 = v24;
          }

          v27 = memcmp(v25, "syntax", v26);
          v28 = v24 == 6;
        }

        if (v28 && !v27)
        {
          goto LABEL_98;
        }

        goto LABEL_41;
      }

      v29 = *(this + 5);
      if (v29 != 260)
      {
        goto LABEL_201;
      }

      v16 = *(this + 55);
      v18 = *(this + 5);
      v17 = *(this + 55);
LABEL_42:
      v33 = v17 >= 0 ? v16 : v18;
      if (v33 != 7)
      {
        break;
      }

      v37 = (this + 32);
      if (v17 < 0)
      {
        v37 = *v14;
        v16 = v18;
      }

      if (v16 >= 7)
      {
        v38 = 7;
      }

      else
      {
        v38 = v16;
      }

      v39 = memcmp(v37, "include", v38);
      v29 = 260;
      if (v16 != 7)
      {
        goto LABEL_222;
      }

LABEL_74:
      if (v39)
      {
        goto LABEL_222;
      }

      flatbuffers::Parser::Next(this, a6);
      *(a6 + 1) = 1;
      if (*a6)
      {
        return;
      }

      v43 = *(this + 55);
      v44 = *(this + 55);
      if (*(this + 747) == 1)
      {
        v45 = (v43 & 0x80u) == 0 ? *(this + 55) : *(this + 5);
        if (v45 == 6)
        {
          v46 = (this + 32);
          if (v43 < 0)
          {
            v46 = *v14;
            v43 = *(this + 5);
          }

          v47 = v43 >= 6 ? 6 : v43;
          v48 = memcmp(v46, "public", v47);
          if (v43 == 6 && !v48)
          {
            flatbuffers::Parser::Next(this, a6);
            *(a6 + 1) = 1;
            if (*a6)
            {
              return;
            }

            v44 = *(this + 55);
          }
        }
      }

      v49 = (this + 32);
      if (v44 < 0)
      {
        v49 = *v14;
      }

      flatbuffers::PosixPath(&v145, v49);
      flatbuffers::Parser::Expect(a6, this, 257);
      *(a6 + 1) = 1;
      if ((*a6 & 1) == 0)
      {
        memset(&__p, 0, sizeof(__p));
        v51 = *v139;
        if (!*v139)
        {
          goto LABEL_121;
        }

        v52 = 1;
        do
        {
          v53 = strlen(v51);
          if (v53 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_383;
          }

          v54 = v53;
          if (v53 >= 0x17)
          {
            operator new();
          }

          v142 = v53;
          if (v53)
          {
            memmove(&__dst, v51, v53);
          }

          *(&__dst + v54) = 0;
          flatbuffers::ConCatPathFileName(&__dst, &v145, &v143);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v143;
          *(&v143.__r_.__value_.__s + 23) = 0;
          v143.__r_.__value_.__s.__data_[0] = 0;
          if (v142 < 0)
          {
            operator delete(__dst);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (off_2816532A0(p_p, v55))
          {
            break;
          }

          v51 = v139[v52++];
        }

        while (v51);
        v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v57 = __p.__r_.__value_.__l.__size_;
        }

        if (v57)
        {
          if (a4)
          {
            v58 = strlen(a4);
            if (v58 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_383;
            }

            v59 = v58;
            if (v58 >= 0x17)
            {
              operator new();
            }

            *(&v143.__r_.__value_.__s + 23) = v58;
            if (v58)
            {
              memcpy(&v143, a4, v58);
            }

            v143.__r_.__value_.__s.__data_[v59] = 0;
            __dst = &v143;
            v60 = sub_213CC11F0(this + 656, &v143, &__dst);
            sub_213CC147C(v60 + 56, &__p, &__p);
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }
          }

          if ((this + 640) != sub_213CBBD28(this + 632, &__p))
          {
            flatbuffers::Parser::Expect(a6, this, 59);
            *(a6 + 1) = 1;
            v50 = *a6 == 0;
LABEL_125:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_94;
          }

          memset(&v143, 0, sizeof(v143));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = &__p;
          }

          else
          {
            v61 = __p.__r_.__value_.__r.__words[0];
          }

          if (off_281653298(v61, 1, &v143))
          {
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = &v143;
            }

            else
            {
              v62 = v143.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v63 = &__p;
            }

            else
            {
              v63 = __p.__r_.__value_.__r.__words[0];
            }

            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v64 = &v145;
            }

            else
            {
              v64 = v145.__r_.__value_.__r.__words[0];
            }

            flatbuffers::Parser::DoParse(this, v62, v139, v63, v64, a6);
            *(a6 + 1) = 1;
            if ((*a6 & 1) == 0)
            {
              if ((*(this + 749) & 1) == 0)
              {
                v65 = *(this + 25);
                v66 = *(this + 26);
                while (v65 != v66)
                {
                  v67 = *v65++;
                  *(v67 + 120) = 1;
                }

                v68 = *(this + 19);
                v69 = *(this + 20);
                while (v68 != v69)
                {
                  if ((*(*v68 + 201) & 1) == 0)
                  {
                    *(*v68 + 120) = 1;
                  }

                  v68 += 8;
                }

                v70 = *(this + 31);
                v71 = *(this + 32);
                while (v70 != v71)
                {
                  v72 = *v70++;
                  *(v72 + 120) = 1;
                }
              }

              *(this + 72) = 0;
              if (*(this + 607) < 0)
              {
                **(this + 73) = 0;
                *(this + 74) = 0;
              }

              else
              {
                *(this + 584) = 0;
                *(this + 607) = 0;
              }

              if (*(this + 631) < 0)
              {
                **(this + 76) = 0;
                *(this + 77) = 0;
              }

              else
              {
                *(this + 608) = 0;
                *(this + 631) = 0;
              }

              if (a4)
              {
                v73 = strlen(a4);
                if (v73 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_383;
                }

                v74 = v73;
                if (v73 >= 0x17)
                {
                  operator new();
                }

                v142 = v73;
                if (v73)
                {
                  memcpy(&__dst, a4, v73);
                }

                *(&__dst + v74) = 0;
                sub_213CC15EC(this + 79, &__dst);
                if (v142 < 0)
                {
                  operator delete(__dst);
                }
              }

              flatbuffers::Parser::DoParse(this, a2, v139, a4, a5, a6);
            }
          }

          else
          {
            std::operator+<char>();
            flatbuffers::Parser::Error(this, a6);
            if (v142 < 0)
            {
              operator delete(__dst);
            }
          }
        }

        else
        {
LABEL_121:
          std::operator+<char>();
          flatbuffers::Parser::Error(this, a6);
        }

        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        v50 = 0;
        goto LABEL_125;
      }

      v50 = 0;
LABEL_94:
      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
      }

      if (!v50)
      {
        return;
      }
    }

    if (v33 != 14)
    {
      if (v33 != 6 || v15 == 0)
      {
        v29 = 260;
        goto LABEL_222;
      }

      v41 = (this + 32);
      if (v17 < 0)
      {
        v41 = *v14;
        v16 = v18;
      }

      if (v16 >= 6)
      {
        v42 = 6;
      }

      else
      {
        v42 = v16;
      }

      v39 = memcmp(v41, "import", v42);
      v29 = 260;
      if (v16 == 6)
      {
        goto LABEL_74;
      }

      while (1)
      {
LABEL_222:
        if (*(this + 747) == 1)
        {
          flatbuffers::Parser::ParseProtoDecl(this, a6);
          goto LABEL_226;
        }

        if (v29 != 260)
        {
          if (v29 == 123)
          {
            v127 = *(this + 72);
            if (!v127)
            {
              operator new();
            }

            if (*(this + 92) - *(this + 96) + *(this + 94))
            {
              operator new();
            }

            LODWORD(v145.__r_.__value_.__l.__data_) = 0;
            flatbuffers::Parser::ParseTable(this, v127, 0, &v145, a6);
            *(a6 + 1) = 1;
            if (*a6)
            {
              return;
            }

            if (*(this + 955) == 1)
            {
              if ((*(this + 607) & 0x80) != 0)
              {
                if (*(this + 74))
                {
                  v128 = v138->__r_.__value_.__r.__words[0];
                }

                else
                {
                  v128 = 0;
                }
              }

              else if (*(this + 607))
              {
                v128 = (this + 584);
              }

              else
              {
                v128 = 0;
              }

              v129 = this + 336;
              v130 = 1;
            }

            else
            {
              if ((*(this + 607) & 0x80) != 0)
              {
                if (*(this + 74))
                {
                  v128 = v138->__r_.__value_.__r.__words[0];
                }

                else
                {
                  v128 = 0;
                }
              }

              else if (*(this + 607))
              {
                v128 = (this + 584);
              }

              else
              {
                v128 = 0;
              }

              v129 = this + 336;
              v130 = 0;
            }

            sub_213C9D9FC(v129, v145.__r_.__value_.__l.__data_, v128, v130);
            v121 = a6;
            v122 = this;
            v123 = 256;
            goto LABEL_347;
          }

          goto LABEL_225;
        }

        v89 = *(this + 55);
        v90 = *(this + 5);
        if ((v89 & 0x80u) == 0)
        {
          v91 = *(this + 55);
        }

        else
        {
          v91 = *(this + 5);
        }

        if (v91 <= 8)
        {
          if (v91 == 4)
          {
            v102 = (this + 32);
            if ((v89 & 0x80) != 0)
            {
              v102 = *v14;
              v89 = *(this + 5);
            }

            if (v89 >= 4)
            {
              v103 = 4;
            }

            else
            {
              v103 = v89;
            }

            v104 = memcmp(v102, "enum", v103);
            if (v89 != 4 || v104)
            {
              goto LABEL_225;
            }

            v105 = a6;
            v106 = this;
          }

          else
          {
            if (v91 != 5)
            {
              if (v91 == 7)
              {
                v95 = (this + 32);
                if ((v89 & 0x80) != 0)
                {
                  v95 = *v14;
                  v89 = *(this + 5);
                }

                if (v89 >= 7)
                {
                  v96 = 7;
                }

                else
                {
                  v96 = v89;
                }

                v97 = memcmp(v95, "include", v96);
                if (v89 == 7 && !v97)
                {
                  operator new();
                }
              }

              goto LABEL_225;
            }

            v124 = (this + 32);
            if ((v89 & 0x80) != 0)
            {
              v124 = *v14;
              v89 = *(this + 5);
            }

            if (v89 >= 5)
            {
              v125 = 5;
            }

            else
            {
              v125 = v89;
            }

            v126 = memcmp(v124, "union", v125);
            if (v89 != 5 || v126)
            {
              goto LABEL_225;
            }

            v105 = a6;
            v106 = this;
          }

          flatbuffers::Parser::ParseEnum(v106, v105);
          goto LABEL_226;
        }

        if (v91 > 13)
        {
          if (v91 == 14)
          {
            v118 = (this + 32);
            if ((v89 & 0x80) != 0)
            {
              v118 = *v14;
              v89 = *(this + 5);
            }

            if (v89 >= 0xE)
            {
              v119 = 14;
            }

            else
            {
              v119 = v89;
            }

            v120 = memcmp(v118, "file_extension", v119);
            if (v89 == 14 && !v120)
            {
              flatbuffers::Parser::Next(this, a6);
              *(a6 + 1) = 1;
              if (*a6)
              {
                return;
              }

              std::string::operator=((this + 608), (this + 32));
              flatbuffers::Parser::Expect(a6, this, 257);
              *(a6 + 1) = 1;
              if (*a6)
              {
                return;
              }

              goto LABEL_312;
            }
          }

          else if (v91 == 15)
          {
            v98 = (this + 32);
            if ((v89 & 0x80) != 0)
            {
              v98 = *v14;
              v89 = *(this + 5);
            }

            v99 = v89 >= 0xF ? 15 : v89;
            v100 = memcmp(v98, "file_identifier", v99);
            if (v89 == 15 && !v100)
            {
              flatbuffers::Parser::Next(this, a6);
              *(a6 + 1) = 1;
              if (*a6)
              {
                return;
              }

              std::string::operator=(v138, (this + 32));
              flatbuffers::Parser::Expect(a6, this, 257);
              *(a6 + 1) = 1;
              if (*a6)
              {
                return;
              }

              v101 = *(this + 607);
              if (v101 < 0)
              {
                v101 = *(this + 74);
              }

              if (v101 != 4)
              {
                sub_213CB9B2C();
                v134 = std::string::insert(&v143, 0, "file_identifier must be exactly ");
                v135 = v134->__r_.__value_.__r.__words[2];
                *&__p.__r_.__value_.__l.__data_ = *&v134->__r_.__value_.__l.__data_;
                __p.__r_.__value_.__r.__words[2] = v135;
                v134->__r_.__value_.__l.__size_ = 0;
                v134->__r_.__value_.__r.__words[2] = 0;
                v134->__r_.__value_.__r.__words[0] = 0;
                v136 = std::string::append(&__p, " characters");
                v137 = v136->__r_.__value_.__r.__words[2];
                *&v145.__r_.__value_.__l.__data_ = *&v136->__r_.__value_.__l.__data_;
                v145.__r_.__value_.__r.__words[2] = v137;
                v136->__r_.__value_.__l.__size_ = 0;
                v136->__r_.__value_.__r.__words[2] = 0;
                v136->__r_.__value_.__r.__words[0] = 0;
                flatbuffers::Parser::Error(this, a6);
                if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v145.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v143.__r_.__value_.__l.__data_);
                }

                return;
              }

LABEL_312:
              v121 = a6;
              v122 = this;
              v123 = 59;
LABEL_347:
              flatbuffers::Parser::Expect(v121, v122, v123);
LABEL_226:
              *(a6 + 1) = 1;
              if (*a6)
              {
                return;
              }

              goto LABEL_227;
            }
          }

LABEL_225:
          flatbuffers::Parser::ParseDecl(this, a6);
          goto LABEL_226;
        }

        if (v91 != 9)
        {
          if (v91 == 11)
          {
            v92 = (this + 32);
            if ((v89 & 0x80) != 0)
            {
              v92 = *v14;
              v89 = *(this + 5);
            }

            v93 = v89 >= 0xB ? 11 : v89;
            v94 = memcmp(v92, "rpc_service", v93);
            if (v89 == 11 && !v94)
            {
              flatbuffers::Parser::ParseService(this, a6);
              goto LABEL_226;
            }
          }

          goto LABEL_225;
        }

        v107 = *(this + 55);
        v108 = (this + 32);
        if ((v89 & 0x80) != 0)
        {
          v108 = *v14;
          v107 = *(this + 5);
        }

        if (v107 >= 9)
        {
          v109 = 9;
        }

        else
        {
          v109 = v107;
        }

        v110 = memcmp(v108, "namespace", v109);
        if (v107 == 9 && !v110)
        {
          flatbuffers::Parser::ParseNamespace(this, a6);
          goto LABEL_226;
        }

        v111 = v89;
        v112 = (this + 32);
        if ((v89 & 0x80) != 0)
        {
          v112 = *v14;
          v111 = v90;
        }

        if (v111 >= 9)
        {
          v113 = 9;
        }

        else
        {
          v113 = v111;
        }

        v114 = memcmp(v112, "root_type", v113);
        if (v111 == 9 && !v114)
        {
          flatbuffers::Parser::Next(this, a6);
          *(a6 + 1) = 1;
          if (*a6)
          {
            return;
          }

          if (*(this + 55) < 0)
          {
            sub_213C9D958(&v145, *(this + 4), *(this + 5));
          }

          else
          {
            *&v145.__r_.__value_.__l.__data_ = *v14;
            v145.__r_.__value_.__r.__words[2] = *(this + 6);
          }

          flatbuffers::Parser::Expect(a6, this, 260);
          *(a6 + 1) = 1;
          if (*a6)
          {
            goto LABEL_365;
          }

          flatbuffers::Parser::ParseNamespacing(this, &v145, 0, a6);
          *(a6 + 1) = 1;
          if (*a6)
          {
            goto LABEL_365;
          }

          v131 = *(this + 983);
          if (v131 < 0)
          {
            v131 = *(this + 121);
          }

          if (!v131)
          {
            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v132 = &v145;
            }

            else
            {
              v132 = v145.__r_.__value_.__r.__words[0];
            }

            if (!flatbuffers::Parser::SetRootType(this, v132))
            {
              std::operator+<char>();
              flatbuffers::Parser::Error(this, a6);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

LABEL_365:
              v133 = 0;
              goto LABEL_366;
            }

            if (*(*(this + 72) + 200) == 1)
            {
              operator new();
            }
          }

          flatbuffers::Parser::Expect(a6, this, 59);
          *(a6 + 1) = 1;
          v133 = *a6 ^ 1;
        }

        else
        {
          v115 = (this + 32);
          if ((v89 & 0x80) != 0)
          {
            v115 = *v14;
            v89 = v90;
          }

          if (v89 >= 9)
          {
            v116 = 9;
          }

          else
          {
            v116 = v89;
          }

          v117 = memcmp(v115, "attribute", v116);
          if (v89 != 9 || v117)
          {
            goto LABEL_225;
          }

          flatbuffers::Parser::Next(this, a6);
          *(a6 + 1) = 1;
          if (*a6)
          {
            return;
          }

          if (*(this + 55) < 0)
          {
            sub_213C9D958(&v145, *(this + 4), *(this + 5));
          }

          else
          {
            *&v145.__r_.__value_.__l.__data_ = *v14;
            v145.__r_.__value_.__r.__words[2] = *(this + 6);
          }

          if (*(this + 5) == 260)
          {
            flatbuffers::Parser::Next(this, a6);
          }

          else
          {
            flatbuffers::Parser::Expect(a6, this, 257);
          }

          *(a6 + 1) = 1;
          if (*a6)
          {
            goto LABEL_365;
          }

          flatbuffers::Parser::Expect(a6, this, 59);
          *(a6 + 1) = 1;
          if (*a6)
          {
            goto LABEL_365;
          }

          __p.__r_.__value_.__r.__words[0] = &v145;
          *(sub_213CC1654(this + 704, &v145.__r_.__value_.__l.__data_, &__p) + 56) = 0;
          v133 = 1;
        }

LABEL_366:
        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
        }

        if ((v133 & 1) == 0)
        {
          return;
        }

LABEL_227:
        v29 = *(this + 5);
        if (v29 == 256)
        {
          goto LABEL_192;
        }
      }
    }

    v34 = (this + 32);
    if (v17 < 0)
    {
      v34 = *v14;
      v16 = v18;
    }

    if (v16 >= 0xE)
    {
      v35 = 14;
    }

    else
    {
      v35 = v16;
    }

    v36 = memcmp(v34, "native_include", v35);
    v29 = 260;
    if (v16 != 14 || v36)
    {
      goto LABEL_222;
    }

    flatbuffers::Parser::Next(this, a6);
    *(a6 + 1) = 1;
    if (*a6)
    {
      break;
    }

    sub_213CC12C8(this + 680, this + 2);
    flatbuffers::Parser::Expect(a6, this, 257);
    *(a6 + 1) = 1;
    if (*a6)
    {
      break;
    }

    flatbuffers::Parser::Expect(a6, this, 59);
LABEL_99:
    *(a6 + 1) = 1;
  }

  while ((*a6 & 1) == 0);
}

void flatbuffers::Parser::GetIncludedFilesRecursive(uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  v4[0] = v4;
  v4[1] = v4;
  v4[2] = 0;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    sub_213CA1F4C(a2);
  }

  sub_213C9AED8(v4);
}

void flatbuffers::Parser::Serialize(flatbuffers::Parser *this)
{
  v115 = (this + 336);
  sub_213CB9ABC(this + 336);
  v3 = *(this + 19);
  v2 = *(this + 20);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v116 = flatbuffers::compareName<flatbuffers::StructDef>;
  sub_213CA2098(0, 0, &v116, 0, 1);
  v5 = *(this + 25);
  v4 = *(this + 26);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_213C97BD4();
  }

  v116 = flatbuffers::compareName<flatbuffers::EnumDef>;
  sub_213CA2098(0, 0, &v116, 0, 1);
  v6 = *(this + 19);
  if (v6 != *(this + 20))
  {
    flatbuffers::StructDef::Serialize(*v6, v115, this);
    operator new();
  }

  v7 = *(this + 25);
  if (v7 != *(this + 26))
  {
    flatbuffers::EnumDef::Serialize(*v7, v115, this);
    operator new();
  }

  v8 = *(this + 31);
  if (v8 != *(this + 32))
  {
    flatbuffers::ServiceDef::Serialize(*v8, v115, this);
    operator new();
  }

  v116 = v115;
  sub_213C9B34C(&flatbuffers::data<flatbuffers::Offset<reflection::Object>,std::allocator<flatbuffers::Offset<reflection::Object>>>(std::vector<flatbuffers::Offset<reflection::Object>> &)::t, &flatbuffers::data<flatbuffers::Offset<reflection::Object>,std::allocator<flatbuffers::Offset<reflection::Object>>>(std::vector<flatbuffers::Offset<reflection::Object>> &)::t, &v116, 0, 1);
  *(this + 406) = 1;
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v9 = *(this + 48);
  v10 = (v9 - (*(this + 92) + *(this + 94))) & 3;
  if (v9 - *(this + 49) < v10)
  {
    sub_213C97F80(v115, (v9 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v10;
  }

  else
  {
    *(this + 48) = v9 - v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = 0;
  do
  {
    *(*(this + 48) + v11++) = 0;
  }

  while (v10 != v11);
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

LABEL_21:
  v12 = *(this + 48);
  v13 = (v12 - (*(this + 92) + *(this + 94))) & 3;
  if (v12 - *(this + 49) < v13)
  {
    sub_213C97F80(v115, (v12 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v13;
  }

  else
  {
    *(this + 48) = v12 - v13;
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  v14 = 0;
  do
  {
    *(*(this + 48) + v14++) = 0;
  }

  while (v13 != v14);
LABEL_25:
  *(this + 406) = 0;
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v16 = *(this + 48);
  v15 = *(this + 49);
  v17 = (v16 - (*(this + 92) + *(this + 94))) & 3;
  if (v16 - v15 < v17)
  {
    sub_213C97F80(v115, (v16 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v17;
  }

  else
  {
    v18 = v16 - v17;
    *(this + 48) = v16 - v17;
    if (!v17)
    {
      goto LABEL_32;
    }
  }

  v19 = 0;
  do
  {
    *(*(this + 48) + v19++) = 0;
  }

  while (v17 != v19);
  v18 = *(this + 48);
  v15 = *(this + 49);
LABEL_32:
  if ((v18 - v15) <= 3)
  {
    sub_213C97F80(v115, 4uLL);
    v18 = *(this + 48);
  }

  *(v18 - 4) = 0;
  v20 = v18 - 4;
  *(this + 48) = v20;
  v112 = *(this + 46);
  v111 = *(this + 47);
  v116 = v115;
  sub_213C9B34C(&flatbuffers::data<flatbuffers::Offset<reflection::Enum>,std::allocator<flatbuffers::Offset<reflection::Enum>>>(std::vector<flatbuffers::Offset<reflection::Enum>> &)::t, &flatbuffers::data<flatbuffers::Offset<reflection::Enum>,std::allocator<flatbuffers::Offset<reflection::Enum>>>(std::vector<flatbuffers::Offset<reflection::Enum>> &)::t, &v116, 0, 1);
  *(this + 406) = 1;
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v21 = *(this + 48);
  v22 = (v21 - (*(this + 92) + *(this + 94))) & 3;
  if (v21 - *(this + 49) < v22)
  {
    sub_213C97F80(v115, (v21 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v22;
  }

  else
  {
    *(this + 48) = v21 - v22;
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  v23 = 0;
  do
  {
    *(*(this + 48) + v23++) = 0;
  }

  while (v22 != v23);
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

LABEL_42:
  v24 = *(this + 48);
  v25 = (v24 - (*(this + 92) + *(this + 94))) & 3;
  if (v24 - *(this + 49) < v25)
  {
    sub_213C97F80(v115, (v24 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v25;
  }

  else
  {
    *(this + 48) = v24 - v25;
    if (!v25)
    {
      goto LABEL_46;
    }
  }

  v26 = 0;
  do
  {
    *(*(this + 48) + v26++) = 0;
  }

  while (v25 != v26);
LABEL_46:
  *(this + 406) = 0;
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v28 = *(this + 48);
  v27 = *(this + 49);
  v29 = (v28 - (*(this + 92) + *(this + 94))) & 3;
  if (v28 - v27 < v29)
  {
    sub_213C97F80(v115, (v28 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v29;
  }

  else
  {
    v30 = v28 - v29;
    *(this + 48) = v28 - v29;
    if (!v29)
    {
      goto LABEL_53;
    }
  }

  v31 = 0;
  do
  {
    *(*(this + 48) + v31++) = 0;
  }

  while (v29 != v31);
  v30 = *(this + 48);
  v27 = *(this + 49);
LABEL_53:
  if ((v30 - v27) <= 3)
  {
    sub_213C97F80(v115, 4uLL);
    v30 = *(this + 48);
  }

  *(v30 - 4) = 0;
  v32 = v30 - 4;
  *(this + 48) = v32;
  v33 = *(this + 46);
  v108 = *(this + 47);
  v34 = *(this + 607);
  if (v34 >= 0)
  {
    v35 = this + 584;
  }

  else
  {
    v35 = *(this + 73);
  }

  if (v34 >= 0)
  {
    v36 = *(this + 607);
  }

  else
  {
    v36 = *(this + 74);
  }

  v110 = sub_213C97D08(v115, v35, v36);
  v37 = *(this + 631);
  if (v37 >= 0)
  {
    v38 = this + 608;
  }

  else
  {
    v38 = *(this + 76);
  }

  if (v37 >= 0)
  {
    v39 = *(this + 631);
  }

  else
  {
    v39 = *(this + 77);
  }

  v109 = sub_213C97D08(v115, v38, v39);
  v116 = v115;
  sub_213C9B34C(&flatbuffers::data<flatbuffers::Offset<reflection::Service>,std::allocator<flatbuffers::Offset<reflection::Service>>>(std::vector<flatbuffers::Offset<reflection::Service>> &)::t, &flatbuffers::data<flatbuffers::Offset<reflection::Service>,std::allocator<flatbuffers::Offset<reflection::Service>>>(std::vector<flatbuffers::Offset<reflection::Service>> &)::t, &v116, 0, 1);
  *(this + 406) = 1;
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v40 = *(this + 48);
  v41 = (v40 - (*(this + 92) + *(this + 94))) & 3;
  if (v40 - *(this + 49) < v41)
  {
    sub_213C97F80(v115, (v40 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v41;
  }

  else
  {
    *(this + 48) = v40 - v41;
    if (!v41)
    {
      goto LABEL_75;
    }
  }

  v42 = 0;
  do
  {
    *(*(this + 48) + v42++) = 0;
  }

  while (v41 != v42);
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

LABEL_75:
  v43 = *(this + 48);
  v44 = (v43 - (*(this + 92) + *(this + 94))) & 3;
  if (v43 - *(this + 49) < v44)
  {
    sub_213C97F80(v115, (v43 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v44;
  }

  else
  {
    *(this + 48) = v43 - v44;
    if (!v44)
    {
      goto LABEL_79;
    }
  }

  v45 = 0;
  do
  {
    *(*(this + 48) + v45++) = 0;
  }

  while (v44 != v45);
LABEL_79:
  *(this + 406) = 0;
  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v46 = v112 - v20;
  v47 = v33 - v32;
  v49 = *(this + 48);
  v48 = *(this + 49);
  v50 = (v49 - (*(this + 92) + *(this + 94))) & 3;
  if (v49 - v48 < v50)
  {
    sub_213C97F80(v115, (v49 - (*(this + 92) + *(this + 94))) & 3);
    *(this + 48) -= v50;
    v52 = v110;
    v53 = v111;
    v54 = v109;
    v55 = v108;
  }

  else
  {
    v51 = v49 - v50;
    *(this + 48) = v49 - v50;
    v52 = v110;
    v53 = v111;
    v54 = v109;
    v55 = v108;
    if (!v50)
    {
      goto LABEL_86;
    }
  }

  v56 = 0;
  do
  {
    *(*(this + 48) + v56++) = 0;
  }

  while (v50 != v56);
  v51 = *(this + 48);
  v48 = *(this + 49);
LABEL_86:
  v57 = v46 + v53;
  v58 = v47 + v55;
  if ((v51 - v48) <= 3)
  {
    sub_213C97F80(v115, 4uLL);
    v51 = *(this + 48);
  }

  *(v51 - 4) = 0;
  v59 = v51 - 4;
  *(this + 48) = v59;
  v60 = *(this + 46);
  v61 = *(this + 47);
  v62 = v60 - v59 + v61;
  v63 = *(this + 72);
  if (v63)
  {
    v64 = *(v63 + 136);
  }

  else
  {
    v64 = 0;
  }

  *(this + 406) = 1;
  if (v62)
  {
    if (*(this + 51) <= 3uLL)
    {
      *(this + 51) = 4;
    }

    v65 = (v59 - (v60 + v61)) & 3;
    if (v59 - *(this + 49) < v65)
    {
      v113 = (v59 - (v60 + v61)) & 3;
      sub_213C97F80(v115, v113);
      v65 = v113;
      *(this + 48) -= v113;
    }

    else
    {
      v66 = v59 - v65;
      *(this + 48) = v66;
      if (!v65)
      {
        goto LABEL_99;
      }
    }

    v67 = 0;
    do
    {
      *(*(this + 48) + v67++) = 0;
    }

    while (v65 != v67);
    v61 = *(this + 47);
    v66 = *(this + 48);
    v60 = *(this + 46);
LABEL_99:
    v68 = v61 - v66 + v60 - v62;
    v69 = v68 + 4;
    if (v68 == -4 && *(this + 416) != 1)
    {
      goto LABEL_115;
    }

    if (*(this + 51) <= 3uLL)
    {
      *(this + 51) = 4;
    }

    v70 = (v66 - (v60 + v61)) & 3;
    v71 = *(this + 49);
    if (v66 - v71 < v70)
    {
      v114 = v70;
      sub_213C97F80(v115, v70);
      v70 = v114;
      *(this + 48) -= v114;
    }

    else
    {
      v72 = v66 - v70;
      *(this + 48) = v66 - v70;
      if (!v70)
      {
LABEL_108:
        if ((v72 - v71) <= 3)
        {
          sub_213C97F80(v115, 4uLL);
          v72 = *(this + 48);
          v71 = *(this + 49);
        }

        *(v72 - 4) = v69;
        v74 = v72 - 4;
        *(this + 48) = v74;
        v75 = *(this + 46) - v74 + *(this + 47);
        if ((v74 - v71) <= 7)
        {
          sub_213C97F80(v115, 8uLL);
          v71 = *(this + 49);
        }

        *v71 = v75 | 0xE00000000;
        *(this + 49) += 8;
        ++*(this + 100);
        v76 = *(this + 202);
        if (v76 <= 0xE)
        {
          LOWORD(v76) = 14;
        }

        *(this + 202) = v76;
        goto LABEL_115;
      }
    }

    v73 = 0;
    do
    {
      *(*(this + 48) + v73++) = 0;
    }

    while (v70 != v73);
    v72 = *(this + 48);
    v71 = *(this + 49);
    goto LABEL_108;
  }

LABEL_115:
  sub_213C9AF60(v115, 12, v64);
  sub_213C9B154(v115, 10, v54);
  sub_213C9B154(v115, 8, v52);
  if (!v58)
  {
    goto LABEL_139;
  }

  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v77 = *(this + 46);
  v78 = *(this + 47);
  v79 = *(this + 48);
  v80 = (v79 - (v77 + v78)) & 3;
  if (v79 - *(this + 49) < v80)
  {
    sub_213C97F80(v115, (v79 - (v77 + v78)) & 3);
    *(this + 48) -= v80;
  }

  else
  {
    v81 = v79 - v80;
    *(this + 48) = v81;
    if (!v80)
    {
      goto LABEL_123;
    }
  }

  v82 = 0;
  do
  {
    *(*(this + 48) + v82++) = 0;
  }

  while (v80 != v82);
  v78 = *(this + 47);
  v81 = *(this + 48);
  v77 = *(this + 46);
LABEL_123:
  v83 = v78 - v81 + v77 - v58;
  v84 = v83 + 4;
  if (v83 == -4 && *(this + 416) != 1)
  {
    goto LABEL_139;
  }

  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v85 = (v81 - (v77 + v78)) & 3;
  v86 = *(this + 49);
  if (v81 - v86 < v85)
  {
    sub_213C97F80(v115, v85);
    *(this + 48) -= v85;
LABEL_129:
    v88 = 0;
    do
    {
      *(*(this + 48) + v88++) = 0;
    }

    while (v85 != v88);
    v87 = *(this + 48);
    v86 = *(this + 49);
    goto LABEL_132;
  }

  v87 = v81 - v85;
  *(this + 48) = v81 - v85;
  if (v85)
  {
    goto LABEL_129;
  }

LABEL_132:
  if ((v87 - v86) <= 3)
  {
    sub_213C97F80(v115, 4uLL);
    v87 = *(this + 48);
    v86 = *(this + 49);
  }

  *(v87 - 4) = v84;
  v89 = v87 - 4;
  *(this + 48) = v89;
  v90 = *(this + 46) - v89 + *(this + 47);
  if ((v89 - v86) <= 7)
  {
    sub_213C97F80(v115, 8uLL);
    v86 = *(this + 49);
  }

  *v86 = v90 | 0x600000000;
  *(this + 49) += 8;
  ++*(this + 100);
  v91 = *(this + 202);
  if (v91 <= 6)
  {
    LOWORD(v91) = 6;
  }

  *(this + 202) = v91;
LABEL_139:
  if (!v57)
  {
    goto LABEL_163;
  }

  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v92 = *(this + 46);
  v93 = *(this + 47);
  v94 = *(this + 48);
  v95 = (v94 - (v92 + v93)) & 3;
  if (v94 - *(this + 49) < v95)
  {
    sub_213C97F80(v115, (v94 - (v92 + v93)) & 3);
    *(this + 48) -= v95;
  }

  else
  {
    v96 = v94 - v95;
    *(this + 48) = v96;
    if (!v95)
    {
      goto LABEL_147;
    }
  }

  v97 = 0;
  do
  {
    *(*(this + 48) + v97++) = 0;
  }

  while (v95 != v97);
  v93 = *(this + 47);
  v96 = *(this + 48);
  v92 = *(this + 46);
LABEL_147:
  v98 = v93 - v96 + v92 - v57;
  v99 = v98 + 4;
  if (v98 == -4 && *(this + 416) != 1)
  {
    goto LABEL_163;
  }

  if (*(this + 51) <= 3uLL)
  {
    *(this + 51) = 4;
  }

  v100 = (v96 - (v92 + v93)) & 3;
  v101 = *(this + 49);
  if (v96 - v101 < v100)
  {
    sub_213C97F80(v115, v100);
    *(this + 48) -= v100;
LABEL_153:
    v103 = 0;
    do
    {
      *(*(this + 48) + v103++) = 0;
    }

    while (v100 != v103);
    v102 = *(this + 48);
    v101 = *(this + 49);
    goto LABEL_156;
  }

  v102 = v96 - v100;
  *(this + 48) = v96 - v100;
  if (v100)
  {
    goto LABEL_153;
  }

LABEL_156:
  if ((v102 - v101) <= 3)
  {
    sub_213C97F80(v115, 4uLL);
    v102 = *(this + 48);
    v101 = *(this + 49);
  }

  *(v102 - 4) = v99;
  v104 = v102 - 4;
  *(this + 48) = v104;
  v105 = *(this + 46) - v104 + *(this + 47);
  if ((v104 - v101) <= 7)
  {
    sub_213C97F80(v115, 8uLL);
    v101 = *(this + 49);
  }

  *v101 = v105 | 0x400000000;
  *(this + 49) += 8;
  ++*(this + 100);
  v106 = *(this + 202);
  if (v106 <= 4)
  {
    LOWORD(v106) = 4;
  }

  *(this + 202) = v106;
LABEL_163:
  v107 = sub_213C8C880(v115, v62);
  sub_213C9D9FC(v115, v107, "BFBS", *(this + 955));
}

uint64_t flatbuffers::StructDef::Serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 176);
  if (v5 != *(a1 + 184))
  {
    flatbuffers::FieldDef::Serialize(**(a1 + 176), a2, ((v5 - *(a1 + 176)) >> 3), a3);
    operator new();
  }

  flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 128), a1, 0x3E8uLL, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = sub_213C97D08(a2, p_p, size);
  v59 = a2;
  sub_213C9B34C(&flatbuffers::data<flatbuffers::Offset<reflection::Field>,std::allocator<flatbuffers::Offset<reflection::Field>>>(std::vector<flatbuffers::Offset<reflection::Field>> &)::t, &flatbuffers::data<flatbuffers::Offset<reflection::Field>,std::allocator<flatbuffers::Offset<reflection::Field>>>(std::vector<flatbuffers::Offset<reflection::Field>> &)::t, &v59, 0, 1);
  *(a2 + 70) = 1;
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

  v9 = *(a2 + 48);
  v10 = (v9 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v9 - *(a2 + 56) < v10)
  {
    sub_213C97F80(a2, (v9 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v10;
  }

  else
  {
    *(a2 + 48) = v9 - v10;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v11 = 0;
  do
  {
    *(*(a2 + 48) + v11++) = 0;
  }

  while (v10 != v11);
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

LABEL_17:
  v12 = *(a2 + 48);
  v13 = (v12 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v12 - *(a2 + 56) < v13)
  {
    sub_213C97F80(a2, (v12 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v13;
  }

  else
  {
    *(a2 + 48) = v12 - v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  v14 = 0;
  do
  {
    *(*(a2 + 48) + v14++) = 0;
  }

  while (v13 != v14);
LABEL_21:
  *(a2 + 70) = 0;
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = (v15 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v15 - v16 < v17)
  {
    sub_213C97F80(a2, (v15 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v17;
  }

  else
  {
    v18 = v15 - v17;
    *(a2 + 48) = v18;
    if (!v17)
    {
      goto LABEL_32;
    }
  }

  v19 = 0;
  do
  {
    *(*(a2 + 48) + v19++) = 0;
  }

  while (v17 != v19);
  v18 = *(a2 + 48);
  v16 = *(a2 + 56);
LABEL_32:
  if ((v18 - v16) <= 3)
  {
    sub_213C97F80(a2, 4uLL);
    v18 = *(a2 + 48);
  }

  *(v18 - 4) = 0;
  v20 = v18 - 4;
  *(a2 + 48) = v20;
  v21 = *(a2 + 32) - v20 + *(a2 + 40);
  v22 = sub_213C958E0(a2, (a1 + 72), a3);
  if (*(a3 + 897))
  {
    v23 = sub_213C940C0(a2, (a1 + 48));
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 200);
  v25 = *(a1 + 208);
  v26 = *(a1 + 216);
  *(a2 + 70) = 1;
  v55 = *(a2 + 48);
  v57 = *(a2 + 40);
  v27 = *(a2 + 32);
  sub_213CBEEDC(a2, 16, v23);
  sub_213C9AF60(a2, 14, v22);
  if (v26 || *(a2 + 80) == 1)
  {
    v28 = sub_213C8C524(a2, v26);
    v29 = *(a2 + 56);
    if (*(a2 + 48) - v29 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v29 = *(a2 + 56);
    }

    *v29 = v28 | 0xC00000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v30 = *(a2 + 68);
    if (v30 <= 0xC)
    {
      LOWORD(v30) = 12;
    }

    *(a2 + 68) = v30;
  }

  v31 = v8;
  if (v25 || *(a2 + 80) == 1)
  {
    v32 = sub_213C8C524(a2, v25);
    v33 = *(a2 + 56);
    if (*(a2 + 48) - v33 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v33 = *(a2 + 56);
    }

    *v33 = v32 | 0xA00000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v34 = *(a2 + 68);
    if (v34 <= 0xA)
    {
      LOWORD(v34) = 10;
    }

    *(a2 + 68) = v34;
  }

  if (v21)
  {
    if (*(a2 + 72) <= 3uLL)
    {
      *(a2 + 72) = 4;
    }

    v35 = *(a2 + 32);
    v36 = *(a2 + 40);
    v37 = *(a2 + 48);
    v38 = (v37 - (v35 + v36)) & 3;
    if (v37 - *(a2 + 56) < v38)
    {
      sub_213C97F80(a2, (v37 - (v35 + v36)) & 3);
      *(a2 + 48) -= v38;
    }

    else
    {
      v39 = v37 - v38;
      *(a2 + 48) = v39;
      if (!v38)
      {
        goto LABEL_59;
      }
    }

    v40 = 0;
    do
    {
      *(*(a2 + 48) + v40++) = 0;
    }

    while (v38 != v40);
    v36 = *(a2 + 40);
    v39 = *(a2 + 48);
    v35 = *(a2 + 32);
LABEL_59:
    v41 = v36 - v39 + v35 - v21;
    v42 = v41 + 4;
    if (v41 == -4 && *(a2 + 80) != 1)
    {
      goto LABEL_75;
    }

    if (*(a2 + 72) <= 3uLL)
    {
      *(a2 + 72) = 4;
    }

    v43 = (v39 - (v35 + v36)) & 3;
    v44 = *(a2 + 56);
    if (v39 - v44 < v43)
    {
      sub_213C97F80(a2, v43);
      *(a2 + 48) -= v43;
    }

    else
    {
      v45 = v39 - v43;
      *(a2 + 48) = v39 - v43;
      if (!v43)
      {
LABEL_68:
        if ((v45 - v44) <= 3)
        {
          sub_213C97F80(a2, 4uLL);
          v45 = *(a2 + 48);
          v44 = *(a2 + 56);
        }

        *(v45 - 4) = v42;
        v47 = v45 - 4;
        *(a2 + 48) = v47;
        v48 = *(a2 + 32) - v47 + *(a2 + 40);
        if ((v47 - v44) <= 7)
        {
          sub_213C97F80(a2, 8uLL);
          v44 = *(a2 + 56);
        }

        *v44 = v48 | 0x600000000;
        *(a2 + 56) += 8;
        ++*(a2 + 64);
        v49 = *(a2 + 68);
        if (v49 <= 6)
        {
          LOWORD(v49) = 6;
        }

        *(a2 + 68) = v49;
        goto LABEL_75;
      }
    }

    v46 = 0;
    do
    {
      *(*(a2 + 48) + v46++) = 0;
    }

    while (v43 != v46);
    v45 = *(a2 + 48);
    v44 = *(a2 + 56);
    goto LABEL_68;
  }

LABEL_75:
  sub_213C9B154(a2, 4, v31);
  if ((v24 & 1) != 0 || *(a2 + 80) == 1)
  {
    v50 = sub_213C8C610(a2, v24);
    v51 = *(a2 + 56);
    if (*(a2 + 48) - v51 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v51 = *(a2 + 56);
    }

    *v51 = v50 | 0x800000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v52 = *(a2 + 68);
    if (v52 <= 8)
    {
      LOWORD(v52) = 8;
    }

    *(a2 + 68) = v52;
  }

  v53 = sub_213C8C880(a2, v27 - v55 + v57);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v53;
}

uint64_t flatbuffers::EnumDef::Serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 208);
  if (v4 != *(a1 + 216))
  {
    flatbuffers::EnumVal::Serialize(*v4, a2, a3);
    operator new();
  }

  flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 128), a1, 0x3E8uLL, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = sub_213C97D08(a2, p_p, size);
  *(a2 + 70) = 1;
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

  v8 = *(a2 + 48);
  v9 = (v8 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v8 - *(a2 + 56) < v9)
  {
    sub_213C97F80(a2, (v8 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v9;
  }

  else
  {
    *(a2 + 48) = v8 - v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  do
  {
    *(*(a2 + 48) + v10++) = 0;
  }

  while (v9 != v10);
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

LABEL_17:
  v11 = *(a2 + 48);
  v12 = (v11 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v11 - *(a2 + 56) < v12)
  {
    sub_213C97F80(a2, v12);
    *(a2 + 48) -= v12;
  }

  else
  {
    *(a2 + 48) = v11 - v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = 0;
  do
  {
    *(*(a2 + 48) + v13++) = 0;
  }

  while (v12 != v13);
LABEL_21:
  *(a2 + 70) = 0;
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = (v14 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v14 - v15 < v16)
  {
    sub_213C97F80(a2, (v14 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v16;
    v18 = v7;
  }

  else
  {
    v17 = v14 - v16;
    *(a2 + 48) = v17;
    v18 = v7;
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  v19 = 0;
  do
  {
    *(*(a2 + 48) + v19++) = 0;
  }

  while (v16 != v19);
  v17 = *(a2 + 48);
  v15 = *(a2 + 56);
LABEL_28:
  if ((v17 - v15) <= 3)
  {
    sub_213C97F80(a2, 4uLL);
    v17 = *(a2 + 48);
  }

  *(v17 - 4) = 0;
  v20 = v17 - 4;
  *(a2 + 48) = v20;
  v21 = *(a2 + 32) - v20 + *(a2 + 40);
  v22 = *(a1 + 160);
  if (v22 || (v22 = *(a1 + 168)) != 0)
  {
    v23 = *(v22 + 140);
  }

  else
  {
    v23 = -1;
  }

  v24 = sub_213C96240(a2, *(a1 + 152), *(a1 + 156), v23, *(a1 + 176));
  v25 = sub_213C958E0(a2, (a1 + 72), a3);
  if (*(a3 + 897))
  {
    v26 = sub_213C940C0(a2, (a1 + 48));
  }

  else
  {
    v26 = 0;
  }

  v27 = *(a1 + 148);
  v28 = v18;
  v29 = v24;
  *(a2 + 70) = 1;
  v30 = *(a2 + 40);
  v31 = *(a2 + 48);
  v32 = *(a2 + 32);
  sub_213CBEEDC(a2, 14, v26);
  sub_213C9AF60(a2, 12, v25);
  sub_213C9AF60(a2, 10, v29);
  if (v21)
  {
    if (*(a2 + 72) <= 3uLL)
    {
      *(a2 + 72) = 4;
    }

    v33 = *(a2 + 32);
    v34 = *(a2 + 40);
    v35 = *(a2 + 48);
    v36 = (v35 - (v33 + v34)) & 3;
    if (v35 - *(a2 + 56) < v36)
    {
      sub_213C97F80(a2, (v35 - (v33 + v34)) & 3);
      *(a2 + 48) -= v36;
    }

    else
    {
      v37 = v35 - v36;
      *(a2 + 48) = v37;
      if (!v36)
      {
        goto LABEL_45;
      }
    }

    v38 = 0;
    do
    {
      *(*(a2 + 48) + v38++) = 0;
    }

    while (v36 != v38);
    v34 = *(a2 + 40);
    v37 = *(a2 + 48);
    v33 = *(a2 + 32);
LABEL_45:
    v39 = v34 - v37 + v33 - v21;
    v40 = v39 + 4;
    if (v39 == -4 && *(a2 + 80) != 1)
    {
      goto LABEL_61;
    }

    if (*(a2 + 72) <= 3uLL)
    {
      *(a2 + 72) = 4;
    }

    v41 = (v37 - (v33 + v34)) & 3;
    v42 = *(a2 + 56);
    if (v37 - v42 < v41)
    {
      sub_213C97F80(a2, v41);
      *(a2 + 48) -= v41;
    }

    else
    {
      v43 = v37 - v41;
      *(a2 + 48) = v37 - v41;
      if (!v41)
      {
LABEL_54:
        if ((v43 - v42) <= 3)
        {
          sub_213C97F80(a2, 4uLL);
          v43 = *(a2 + 48);
          v42 = *(a2 + 56);
        }

        *(v43 - 4) = v40;
        v45 = v43 - 4;
        *(a2 + 48) = v45;
        v46 = *(a2 + 32) - v45 + *(a2 + 40);
        if ((v45 - v42) <= 7)
        {
          sub_213C97F80(a2, 8uLL);
          v42 = *(a2 + 56);
        }

        *v42 = v46 | 0x600000000;
        *(a2 + 56) += 8;
        ++*(a2 + 64);
        v47 = *(a2 + 68);
        if (v47 <= 6)
        {
          LOWORD(v47) = 6;
        }

        *(a2 + 68) = v47;
        goto LABEL_61;
      }
    }

    v44 = 0;
    do
    {
      *(*(a2 + 48) + v44++) = 0;
    }

    while (v41 != v44);
    v43 = *(a2 + 48);
    v42 = *(a2 + 56);
    goto LABEL_54;
  }

LABEL_61:
  sub_213C9B154(a2, 4, v28);
  if ((v27 & 1) != 0 || *(a2 + 80) == 1)
  {
    v48 = sub_213C8C610(a2, v27);
    v49 = *(a2 + 56);
    if (*(a2 + 48) - v49 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v49 = *(a2 + 56);
    }

    *v49 = v48 | 0x800000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v50 = *(a2 + 68);
    if (v50 <= 8)
    {
      LOWORD(v50) = 8;
    }

    *(a2 + 68) = v50;
  }

  v51 = sub_213C8C880(a2, v32 - v31 + v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v51;
}

uint64_t flatbuffers::ServiceDef::Serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 184))
  {
    flatbuffers::RPCCall::Serialize(*v4, a2, a3);
    operator new();
  }

  flatbuffers::Namespace::GetFullyQualifiedName(*(a1 + 128), a1, 0x3E8uLL, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = sub_213C97D08(a2, p_p, size);
  *(a2 + 70) = 1;
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

  v8 = *(a2 + 48);
  v9 = (v8 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v8 - *(a2 + 56) < v9)
  {
    sub_213C97F80(a2, (v8 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v9;
  }

  else
  {
    *(a2 + 48) = v8 - v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  do
  {
    *(*(a2 + 48) + v10++) = 0;
  }

  while (v9 != v10);
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

LABEL_17:
  v11 = *(a2 + 48);
  v12 = (v11 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v11 - *(a2 + 56) < v12)
  {
    sub_213C97F80(a2, v12);
    *(a2 + 48) -= v12;
  }

  else
  {
    *(a2 + 48) = v11 - v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = 0;
  do
  {
    *(*(a2 + 48) + v13++) = 0;
  }

  while (v12 != v13);
LABEL_21:
  *(a2 + 70) = 0;
  if (*(a2 + 72) <= 3uLL)
  {
    *(a2 + 72) = 4;
  }

  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = (v14 - (*(a2 + 32) + *(a2 + 40))) & 3;
  if (v14 - v15 < v16)
  {
    sub_213C97F80(a2, (v14 - (*(a2 + 32) + *(a2 + 40))) & 3);
    *(a2 + 48) -= v16;
  }

  else
  {
    v17 = v14 - v16;
    *(a2 + 48) = v17;
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  do
  {
    *(*(a2 + 48) + v18++) = 0;
  }

  while (v16 != v18);
  v17 = *(a2 + 48);
  v15 = *(a2 + 56);
LABEL_28:
  if ((v17 - v15) <= 3)
  {
    sub_213C97F80(a2, 4uLL);
    v17 = *(a2 + 48);
  }

  *(v17 - 4) = 0;
  v19 = v17 - 4;
  *(a2 + 48) = v19;
  v20 = *(a2 + 32) - v19 + *(a2 + 40);
  v21 = sub_213C958E0(a2, (a1 + 72), a3);
  if (*(a3 + 897))
  {
    v22 = sub_213C940C0(a2, (a1 + 48));
  }

  else
  {
    v22 = 0;
  }

  v23 = v21;
  *(a2 + 70) = 1;
  v24 = *(a2 + 40);
  v25 = *(a2 + 32) - *(a2 + 48);
  sub_213CBEEDC(a2, 10, v22);
  sub_213C9AF60(a2, 8, v23);
  if (v20)
  {
    if (*(a2 + 72) <= 3uLL)
    {
      *(a2 + 72) = 4;
    }

    v26 = *(a2 + 32);
    v27 = *(a2 + 40);
    v28 = *(a2 + 48);
    v29 = (v28 - (v26 + v27)) & 3;
    if (v28 - *(a2 + 56) < v29)
    {
      sub_213C97F80(a2, (v28 - (v26 + v27)) & 3);
      *(a2 + 48) -= v29;
    }

    else
    {
      v30 = v28 - v29;
      *(a2 + 48) = v30;
      if (!v29)
      {
        goto LABEL_41;
      }
    }

    v31 = 0;
    do
    {
      *(*(a2 + 48) + v31++) = 0;
    }

    while (v29 != v31);
    v27 = *(a2 + 40);
    v30 = *(a2 + 48);
    v26 = *(a2 + 32);
LABEL_41:
    v32 = v27 - v30 + v26 - v20;
    v33 = v32 + 4;
    if (v32 == -4 && *(a2 + 80) != 1)
    {
      goto LABEL_57;
    }

    if (*(a2 + 72) <= 3uLL)
    {
      *(a2 + 72) = 4;
    }

    v34 = (v30 - (v26 + v27)) & 3;
    v35 = *(a2 + 56);
    if (v30 - v35 < v34)
    {
      sub_213C97F80(a2, v34);
      *(a2 + 48) -= v34;
    }

    else
    {
      v36 = v30 - v34;
      *(a2 + 48) = v30 - v34;
      if (!v34)
      {
LABEL_50:
        if ((v36 - v35) <= 3)
        {
          sub_213C97F80(a2, 4uLL);
          v36 = *(a2 + 48);
          v35 = *(a2 + 56);
        }

        *(v36 - 4) = v33;
        v38 = v36 - 4;
        *(a2 + 48) = v38;
        v39 = *(a2 + 32) - v38 + *(a2 + 40);
        if ((v38 - v35) <= 7)
        {
          sub_213C97F80(a2, 8uLL);
          v35 = *(a2 + 56);
        }

        *v35 = v39 | 0x600000000;
        *(a2 + 56) += 8;
        ++*(a2 + 64);
        v40 = *(a2 + 68);
        if (v40 <= 6)
        {
          LOWORD(v40) = 6;
        }

        *(a2 + 68) = v40;
        goto LABEL_57;
      }
    }

    v37 = 0;
    do
    {
      *(*(a2 + 48) + v37++) = 0;
    }

    while (v34 != v37);
    v36 = *(a2 + 48);
    v35 = *(a2 + 56);
    goto LABEL_50;
  }

LABEL_57:
  sub_213C9B154(a2, 4, v7);
  v41 = sub_213C8C880(a2, v25 + v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v41;
}

uint64_t flatbuffers::FieldDef::Serialize(void **a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = a1[1];
  }

  v10 = sub_213C97D08(a2, v8, v9);
  v11 = a1[20];
  if (v11 || (v11 = a1[21]) != 0)
  {
    v12 = v11[35];
  }

  else
  {
    v12 = -1;
  }

  v13 = sub_213C96240(a2, *(a1 + 38), *(a1 + 39), v12, *(a1 + 88));
  v14 = sub_213C958E0(a2, a1 + 9, a4);
  if (*(a4 + 897) == 1)
  {
    v15 = sub_213C940C0(a2, a1 + 6);
  }

  else
  {
    v15 = 0;
  }

  v58 = 0.0;
  v16 = (a1 + 23);
  v17 = (a1 + 23);
  if (*(a1 + 207) < 0)
  {
    v17 = *v16;
  }

  sub_213CBED98(&v58, v17);
  v18 = *(a1 + 104);
  v19 = *(a1 + 38);
  if (v19 > 0xFFFFFFFC || v19 - 1 <= 9)
  {
    if (*(a1 + 207) < 0)
    {
      v16 = *v16;
    }

    v59 = 0;
    if (sub_213C98C40(&v59, v16, 10, 1))
    {
      v20 = v59;
    }

    else
    {
      v20 = 0;
    }

    v19 = *(a1 + 38);
  }

  else
  {
    v20 = 0;
  }

  v21 = v19 - 11 < 2 || v19 == -4;
  v22 = v58;
  if (!v21)
  {
    v22 = 0.0;
  }

  v54 = *(a1 + 216);
  v52 = *(a1 + 217);
  v23 = *(a1 + 218);
  v24 = *(a1 + 222);
  v25 = v13;
  v26 = v14;
  *(a2 + 70) = 1;
  v55 = *(a2 + 32);
  v56 = *(a2 + 48);
  v57 = *(a2 + 40);
  if (v22 != 0.0 || *(a2 + 80) == 1)
  {
    v27 = sub_213CB51DC(a2, v22);
    v28 = *(a2 + 56);
    if (*(a2 + 48) - v28 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v28 = *(a2 + 56);
    }

    *v28 = v27 | 0xE00000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v29 = *(a2 + 68);
    if (v29 <= 0xE)
    {
      LOWORD(v29) = 14;
    }

    *(a2 + 68) = v29;
  }

  if (v20 || *(a2 + 80) == 1)
  {
    v30 = sub_213CB4C74(a2, v20);
    v31 = *(a2 + 56);
    if (*(a2 + 48) - v31 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v31 = *(a2 + 56);
    }

    *v31 = v30 | 0xC00000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v32 = *(a2 + 68);
    if (v32 <= 0xC)
    {
      LOWORD(v32) = 12;
    }

    *(a2 + 68) = v32;
  }

  sub_213CBEEDC(a2, 24, v15);
  sub_213C9AF60(a2, 22, v26);
  sub_213C9AF60(a2, 6, v25);
  sub_213C9B154(a2, 4, v10);
  if (v18 || *(a2 + 80) == 1)
  {
    v46 = sub_213CB41A8(a2, v18);
    v47 = *(a2 + 56);
    if (*(a2 + 48) - v47 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v47 = *(a2 + 56);
    }

    *v47 = v46 | 0xA00000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v48 = *(a2 + 68);
    if (v48 <= 0xA)
    {
      LOWORD(v48) = 10;
    }

    *(a2 + 68) = v48;
  }

  if (a3 || *(a2 + 80) == 1)
  {
    v49 = sub_213CB41A8(a2, a3);
    v50 = *(a2 + 56);
    if (*(a2 + 48) - v50 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v50 = *(a2 + 56);
    }

    *v50 = v49 | 0x800000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v51 = *(a2 + 68);
    if (v51 <= 8)
    {
      LOWORD(v51) = 8;
    }

    *(a2 + 68) = v51;
    if ((v24 & 1) == 0)
    {
LABEL_49:
      if (*(a2 + 80) != 1)
      {
        goto LABEL_55;
      }
    }
  }

  else if ((v24 & 1) == 0)
  {
    goto LABEL_49;
  }

  v33 = sub_213C8C610(a2, v24);
  v34 = *(a2 + 56);
  if (*(a2 + 48) - v34 <= 7uLL)
  {
    sub_213C97F80(a2, 8uLL);
    v34 = *(a2 + 56);
  }

  *v34 = v33 | 0x1A00000000;
  *(a2 + 56) += 8;
  ++*(a2 + 64);
  v35 = *(a2 + 68);
  if (v35 <= 0x1A)
  {
    LOWORD(v35) = 26;
  }

  *(a2 + 68) = v35;
LABEL_55:
  if ((v23 & 1) != 0 || *(a2 + 80) == 1)
  {
    v36 = sub_213C8C610(a2, v23);
    v37 = *(a2 + 56);
    if (*(a2 + 48) - v37 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v37 = *(a2 + 56);
    }

    *v37 = v36 | 0x1400000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v38 = *(a2 + 68);
    if (v38 <= 0x14)
    {
      LOWORD(v38) = 20;
    }

    *(a2 + 68) = v38;
  }

  if ((v52 & 1) != 0 || *(a2 + 80) == 1)
  {
    v39 = sub_213C8C610(a2, v52);
    v40 = *(a2 + 56);
    if (*(a2 + 48) - v40 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v40 = *(a2 + 56);
    }

    *v40 = v39 | 0x1200000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v41 = *(a2 + 68);
    if (v41 <= 0x12)
    {
      LOWORD(v41) = 18;
    }

    *(a2 + 68) = v41;
  }

  if ((v54 & 1) != 0 || *(a2 + 80) == 1)
  {
    v42 = sub_213C8C610(a2, v54);
    v43 = *(a2 + 56);
    if (*(a2 + 48) - v43 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v43 = *(a2 + 56);
    }

    *v43 = v42 | 0x1000000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v44 = *(a2 + 68);
    if (v44 <= 0x10)
    {
      LOWORD(v44) = 16;
    }

    *(a2 + 68) = v44;
  }

  return sub_213C8C880(a2, v55 - v56 + v57);
}

uint64_t sub_213C940C0(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3)) >> 62))
    {
      operator new();
    }

    sub_213C97BD4();
  }

  return sub_213CBEE14(a1, &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t, 0);
}

uint64_t flatbuffers::StructDef::Deserialize(uint64_t a1, void *a2, int *a3)
{
  v5 = (a3 - *a3);
  if (*v5 >= 0xFu && (v6 = v5[7]) != 0)
  {
    v7 = (a3 + v6 + *(a3 + v6));
  }

  else
  {
    v7 = 0;
  }

  if (sub_213C95E7C(a1 + 72, a2, v7))
  {
    v8 = (a3 - *a3);
    if (*v8 >= 0x11u && (v9 = v8[8]) != 0)
    {
      v10 = (a3 + v9 + *(a3 + v9));
    }

    else
    {
      v10 = 0;
    }

    flatbuffers::DeserializeDoc((a1 + 48), v10);
    v11 = *a3;
    if (*(a3 - v11) < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a3 - v11 + 4);
      LODWORD(v11) = *(a3 + *(a3 - v11 + 4));
    }

    v13 = (a3 + v12 + v11);
    v16 = *v13;
    v15 = v13 + 1;
    v14 = v16;
    if (v16 < 0x17)
    {
      v19 = v14;
      if (v14)
      {
        memcpy(&__dst, v15, v14);
      }

      *(&__dst + v14) = 0;
      flatbuffers::Parser::UnqualifiedName();
    }

    operator new();
  }

  return 0;
}

uint64_t flatbuffers::FieldDef::Deserialize(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a3;
  if (*(a3 - v6) < 5u)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 - v6 + 4);
    LODWORD(v6) = *(a3 + *(a3 - v6 + 4));
  }

  v8 = (a3 + v7 + v6);
  v11 = *v8;
  v10 = v8 + 1;
  v9 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memcpy(&__p, v10, v9);
  }

  __p.__r_.__value_.__s.__data_[v9] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __p;
  *(a1 + 128) = *(a2 + 296);
  v12 = (a3 - *a3);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (a3 + v13 + *(a3 + v13));
  }

  else
  {
    v14 = 0;
  }

  result = flatbuffers::Type::Deserialize(a1 + 152, a2, v14);
  if (result)
  {
    v16 = (a3 - *a3);
    if (*v16 < 0xBu)
    {
      LOWORD(v17) = 0;
    }

    else
    {
      v17 = v16[5];
      if (v16[5])
      {
        LOWORD(v17) = *(a3 + v17);
      }
    }

    *(a1 + 208) = v17;
    v18 = *(a1 + 152);
    if (v18 <= 0xFFFFFFFC && v18 - 1 > 9)
    {
      v31 = v18 + 4;
      if (v31 <= 0x10 && ((1 << v31) & 0x18001) != 0)
      {
        v32 = 0.0;
        if (*v16 >= 0xFu)
        {
          v33 = v16[7];
          if (v33)
          {
            v32 = *(a3 + v33);
          }
        }

        sub_213CB9B98(16, &__p, v32);
        v34 = (a1 + 184);
        if (*(a1 + 207) < 0)
        {
          operator delete(*v34);
        }

        *v34 = *&__p.__r_.__value_.__l.__data_;
        *(a1 + 200) = *(&__p.__r_.__value_.__l + 2);
        v35 = *(a1 + 207);
        if ((v35 & 0x8000000000000000) != 0)
        {
          v36 = *(a1 + 184);
          v35 = *(a1 + 192);
        }

        else
        {
          v36 = a1 + 184;
        }

        v37 = v36 - 1;
        while (v35)
        {
          v38 = *(v37 + v35--);
          if (v38 != 48)
          {
            if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              std::string::erase((a1 + 184), v35, 0xFFFFFFFFFFFFFFFFLL);
            }

            break;
          }
        }
      }
    }

    else
    {
      if (*v16 >= 0xDu && (v47 = v16[6]) != 0)
      {
        v19 = *(a3 + v47);
      }

      else
      {
        v19 = 0;
      }

      sub_213C8A670(v19);
      if (*(a1 + 207) < 0)
      {
        operator delete(*(a1 + 184));
      }

      *(a1 + 184) = __p;
    }

    v20 = (a3 - *a3);
    v21 = *v20;
    if (v21 > 0x10)
    {
      v39 = v20[8];
      if (v20[8])
      {
        LOBYTE(v39) = *(a3 + v39) != 0;
      }

      *(a1 + 216) = v39;
      if (v21 > 0x12)
      {
        v40 = v20[9];
        if (v20[9])
        {
          LOBYTE(v40) = *(a3 + v40) != 0;
        }

        *(a1 + 217) = v40;
        if (v21 > 0x14)
        {
          v41 = v20[10];
          if (v20[10])
          {
            LOBYTE(v41) = *(a3 + v41) != 0;
          }

          *(a1 + 218) = v41;
          if (v21 >= 0x17 && (v42 = v20[11]) != 0)
          {
            v22 = (a3 + v42 + *(a3 + v42));
          }

          else
          {
            v22 = 0;
          }

LABEL_28:
          result = sub_213C95E7C(a1 + 72, a2, v22);
          if (!result)
          {
            return result;
          }

          *(&__p.__r_.__value_.__s + 23) = 10;
          strcpy(&__p, "flexbuffer");
          v23 = sub_213C9E148(a1 + 72, &__p);
          v24 = a1 + 80 == v23 || *(v23 + 56) == 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (!v24)
          {
            *(a1 + 221) = 1;
            *(a2 + 1136) = 1;
            if (*(a1 + 152) != 14 || *(a1 + 156) != 4)
            {
              return 0;
            }
          }

          *(&__p.__r_.__value_.__s + 23) = 17;
          strcpy(&__p, "nested_flatbuffer");
          v25 = sub_213C9E148(a1 + 72, &__p);
          if (a1 + 80 == v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = *(v25 + 56);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (!v26)
          {
            goto LABEL_39;
          }

          flatbuffers::Namespace::GetFullyQualifiedName(*(a2 + 296), v26 + 32, 0x3E8uLL, &__p);
          v43 = sub_213C9DFB8(a2 + 128, &__p);
          if (a2 + 136 == v43)
          {
            v44 = 0;
          }

          else
          {
            v44 = *(v43 + 56);
            if (v44)
            {
              v45 = 0;
              ++*(v44 + 144);
              goto LABEL_89;
            }
          }

          v45 = 1;
LABEL_89:
          *(a1 + 224) = v44;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v45)
          {
            return 0;
          }

LABEL_39:
          v27 = (a3 - *a3);
          if (*v27 >= 0x19u && (v46 = v27[12]) != 0)
          {
            v28 = (a3 + v46 + *(a3 + v46));
          }

          else
          {
            v28 = 0;
          }

          flatbuffers::DeserializeDoc((a1 + 48), v28);
          v29 = (a3 - *a3);
          if (*v29 >= 0x1Bu)
          {
            v30 = v29[13];
            if (v30)
            {
              LOBYTE(v30) = *(a3 + v30) != 0;
            }
          }

          else
          {
            LOBYTE(v30) = 0;
          }

          *(a1 + 222) = v30;
          return 1;
        }

LABEL_27:
        v22 = 0;
        *(a1 + 218) = 0;
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 216) = 0;
    }

    *(a1 + 217) = 0;
    goto LABEL_27;
  }

  return result;
}

uint64_t flatbuffers::Type::Serialize(unsigned int *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 || (v2 = *(a1 + 2)) != 0)
  {
    v3 = *(v2 + 140);
  }

  else
  {
    v3 = -1;
  }

  return sub_213C96240(a2, *a1, a1[1], v3, *(a1 + 12));
}

uint64_t flatbuffers::Type::Deserialize(uint64_t a1, void *a2, int *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = (a3 - *a3);
  v4 = *v3;
  if (v4 > 4)
  {
    v7 = v3[2];
    if (v3[2])
    {
      LODWORD(v7) = *(a3 + v7);
    }

    *a1 = v7;
    if (v4 > 6)
    {
      v8 = v3[3];
      if (v3[3])
      {
        LODWORD(v8) = *(a3 + v8);
      }

      *(a1 + 4) = v8;
      if (v4 < 0xB)
      {
        LOWORD(v5) = 0;
      }

      else
      {
        v5 = v3[5];
        if (v3[5])
        {
          LOWORD(v5) = *(a3 + v5);
        }
      }

      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
  }

  LOWORD(v5) = 0;
  *(a1 + 4) = 0;
LABEL_5:
  *(a1 + 24) = v5;
  if (*v3 < 9u)
  {
    return 1;
  }

  if (!v3[4])
  {
    return 1;
  }

  v9 = *(a3 + v3[4]);
  if ((v9 & 0x80000000) != 0)
  {
    return 1;
  }

  if (!v3[2])
  {
    goto LABEL_21;
  }

  v10 = *(a3 + v3[2]);
  if (v10 != 14)
  {
    if (v10 == 15)
    {
      goto LABEL_25;
    }

    if (v10 != 17)
    {
      goto LABEL_21;
    }
  }

  v12 = v3[3];
  if (!v12 || *(a3 + v12) != 15)
  {
LABEL_21:
    v11 = a2[25];
    if (v9 < (a2[26] - v11) >> 3)
    {
      *(a1 + 16) = *(v11 + 8 * v9);
      return 1;
    }

    return 0;
  }

LABEL_25:
  v13 = a2[19];
  if (v9 < (a2[20] - v13) >> 3)
  {
    v14 = *(v13 + 8 * v9);
    *(a1 + 8) = v14;
    ++*(v14 + 144);
    return 1;
  }

  return 0;
}

uint64_t flatbuffers::RPCCall::Serialize(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = sub_213C97D08(a2, v7, v8);
  v10 = sub_213C958E0(a2, a1 + 9, a3);
  if (*(a3 + 897) == 1)
  {
    v11 = sub_213C940C0(a2, a1 + 6);
  }

  else
  {
    v11 = 0;
  }

  v12 = a1[20];
  v13 = *(a1[19] + 34);
  v14 = v12[34];
  *(a2 + 70) = 1;
  v15 = *(a2 + 40);
  v16 = *(a2 + 32) - *(a2 + 48);
  sub_213CBEEDC(a2, 12, v11);
  sub_213C9AF60(a2, 10, v10);
  sub_213C9AF60(a2, 8, v14);
  sub_213C9AF60(a2, 6, v13);
  sub_213C9B154(a2, 4, v9);

  return sub_213C8C880(a2, v16 + v15);
}

uint64_t flatbuffers::EnumVal::Serialize(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  LODWORD(v9) = sub_213C97D08(a2, v7, v8);
  v10 = a1[7];
  if (v10 || (v10 = a1[8]) != 0)
  {
    v11 = v10[35];
  }

  else
  {
    v11 = -1;
  }

  LODWORD(v12) = sub_213C96240(a2, *(a1 + 12), *(a1 + 13), v11, *(a1 + 36));
  if (*(a3 + 897) == 1)
  {
    v13 = sub_213C940C0(a2, a1 + 3);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_213C958E0(a2, a1 + 11, a3);
  v15 = a1[17];
  v16 = a1[7];
  if (v16)
  {
    v17 = v16[34];
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 80);
  v9 = v9;
  v12 = v12;
  *(a2 + 70) = 1;
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v14;
  if (v15 || *(a2 + 80) == 1)
  {
    v35 = v18;
    v23 = v12;
    v24 = v9;
    v25 = v17;
    v26 = v13;
    v27 = *(a2 + 32);
    v21 = *(a2 + 48);
    v20 = *(a2 + 40);
    v28 = sub_213CB4C74(a2, v15);
    v29 = *(a2 + 56);
    if (*(a2 + 48) - v29 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v29 = *(a2 + 56);
    }

    *v29 = v28 | 0x600000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v30 = *(a2 + 68);
    if (v30 <= 6)
    {
      LOWORD(v30) = 6;
    }

    *(a2 + 68) = v30;
    LOWORD(v19) = v20;
    LOWORD(v20) = v21;
    LOWORD(v21) = v27;
    v13 = v26;
    v17 = v25;
    v9 = v24;
    v12 = v23;
    v18 = v35;
  }

  sub_213C9AF60(a2, 14, v22);
  sub_213CBEEDC(a2, 12, v13);
  sub_213C9AF60(a2, 10, v12);
  sub_213C9AF60(a2, 8, v17);
  sub_213C9B154(a2, 4, v9);
  if ((v18 & 1) != 0 || *(a2 + 80) == 1)
  {
    v31 = sub_213C8C610(a2, v18);
    v32 = *(a2 + 56);
    if (*(a2 + 48) - v32 <= 7uLL)
    {
      sub_213C97F80(a2, 8uLL);
      v32 = *(a2 + 56);
    }

    *v32 = v31 | 0x1000000000;
    *(a2 + 56) += 8;
    ++*(a2 + 64);
    v33 = *(a2 + 68);
    if (v33 <= 0x10)
    {
      LOWORD(v33) = 16;
    }

    *(a2 + 68) = v33;
  }

  return sub_213C8C880(a2, v21 - v20 + v19);
}

void flatbuffers::EnumDef::Deserialize(uint64_t a1, void *a2, const std::string::value_type *a3)
{
  v3 = *a3;
  if (*&a3[-v3] < 5u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *&a3[-v3 + 4];
    LODWORD(v3) = *&a3[*&a3[-v3 + 4]];
  }

  std::string::__init(&__p, &a3[v4 + 4 + v3], *&a3[v4 + v3]);
  flatbuffers::Parser::UnqualifiedName();
}

uint64_t flatbuffers::EnumVal::Deserialize(uint64_t a1, void *a2, int *a3)
{
  v6 = *a3;
  if (*(a3 - v6) < 5u)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 - v6 + 4);
    LODWORD(v6) = *(a3 + *(a3 - v6 + 4));
  }

  v8 = (a3 + v7 + v6);
  v11 = *v8;
  v10 = v8 + 1;
  v9 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v27) = v9;
  if (v9)
  {
    memcpy(&__dst, v10, v9);
  }

  *(&__dst + v9) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __dst;
  *(a1 + 16) = v27;
  v12 = (a3 - *a3);
  v13 = *v12;
  if (v13 <= 6)
  {
    v16 = 0;
    *(a1 + 136) = 0;
  }

  else
  {
    v14 = v12[3];
    if (v12[3])
    {
      v14 = *(a3 + v14);
    }

    *(a1 + 136) = v14;
    if (v13 >= 0xB && (v15 = v12[5]) != 0)
    {
      v16 = (a3 + v15 + *(a3 + v15));
    }

    else
    {
      v16 = 0;
    }
  }

  result = flatbuffers::Type::Deserialize(a1 + 48, a2, v16);
  if (result)
  {
    v18 = (a3 - *a3);
    if (*v18 >= 0xDu && (v24 = v18[6]) != 0)
    {
      v19 = (a3 + v24 + *(a3 + v24));
    }

    else
    {
      v19 = 0;
    }

    flatbuffers::DeserializeDoc((a1 + 24), v19);
    v20 = (a3 - *a3);
    if (*v20 >= 0xFu && (v25 = v20[7]) != 0)
    {
      v21 = (a3 + v25 + *(a3 + v25));
    }

    else
    {
      v21 = 0;
    }

    result = sub_213C95E7C(a1 + 88, a2, v21);
    if (result)
    {
      v22 = (a3 - *a3);
      if (*v22 >= 0x11u)
      {
        v23 = v22[8];
        if (v23)
        {
          LOBYTE(v23) = *(a3 + v23) != 0;
        }
      }

      else
      {
        LOBYTE(v23) = 0;
      }

      *(a1 + 80) = v23;
      return 1;
    }
  }

  return result;
}

uint64_t sub_213C955A8(uint64_t **a1, const void **a2, uint64_t a3)
{
  v7 = a1[4];
  v6 = a1[5];
  if (v7 >= v6)
  {
    v39 = a1[3];
    v40 = v7 - v39;
    v41 = v7 - v39;
    v42 = v41 + 1;
    if ((v41 + 1) >> 61)
    {
      sub_213C97BD4();
    }

    v43 = v6 - v39;
    if (v43 >> 2 > v42)
    {
      v42 = v43 >> 2;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      v44 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      if (!(v44 >> 61))
      {
        operator new();
      }

      sub_213C97BD4();
    }

    v47 = v7 - v39;
    v45 = (8 * v41);
    v46 = (8 * v41 - 8 * v47);
    *v45 = a3;
    v8 = v45 + 1;
    memcpy(v46, v39, v40);
    a1[3] = v46;
    a1[4] = v8;
    a1[5] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v7 = a3;
    v8 = v7 + 1;
  }

  v48 = a3;
  v9 = a1[1];
  a1[4] = v8;
  if (!v9)
  {
LABEL_57:
    operator new();
  }

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

  v13 = v9;
  v14 = a1 + 1;
  do
  {
    v15 = *(v13 + 55);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v16 = v13[4];
      v15 = v13[5];
    }

    else
    {
      v16 = (v13 + 4);
    }

    if (v12 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    v18 = memcmp(v16, v11, v17);
    if (v15 < v12)
    {
      v19 = -1;
    }

    else
    {
      v19 = v12 < v15;
    }

    if (v18)
    {
      v19 = v18;
    }

    if (v19 >= 0)
    {
      v14 = v13;
    }

    v13 = *(v13 + ((v19 >> 28) & 8));
  }

  while (v13);
  if (v14 != a1 + 1)
  {
    v22 = v14[4];
    v21 = v14 + 4;
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
      v25 = v21[1];
    }

    if (v25 >= v12)
    {
      v26 = v12;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v11, v24, v26);
    v28 = v12 < v25;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (!v28)
    {
      return 1;
    }
  }

  while (1)
  {
    while (1)
    {
      v29 = v9;
      v30 = *(v9 + 55);
      if (v30 >= 0)
      {
        v31 = v9 + 4;
      }

      else
      {
        v31 = v9[4];
      }

      if (v30 >= 0)
      {
        v32 = *(v9 + 55);
      }

      else
      {
        v32 = v9[5];
      }

      if (v32 >= v12)
      {
        v33 = v12;
      }

      else
      {
        v33 = v32;
      }

      v34 = memcmp(v11, v31, v33);
      v35 = v12 < v32;
      if (v34)
      {
        v35 = v34 < 0;
      }

      if (!v35)
      {
        break;
      }

      v9 = *v29;
      if (!*v29)
      {
        goto LABEL_57;
      }
    }

    v36 = memcmp(v31, v11, v33);
    v37 = v32 < v12;
    if (v36)
    {
      v37 = v36 < 0;
    }

    if (!v37)
    {
      break;
    }

    v9 = v29[1];
    if (!v9)
    {
      goto LABEL_57;
    }
  }

  result = 0;
  v29[7] = v48;
  return result;
}

uint64_t sub_213C958E0(uint64_t a1, const void ****a2, uint64_t a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v7 = sub_213CBBD28(a3 + 704, v4 + 4);
      if ((*(a3 + 898) & 1) != 0 || (*(v7 + 56) & 1) == 0)
      {
        v8 = *(v4 + 55);
        if (v8 >= 0)
        {
          v9 = (v4 + 4);
        }

        else
        {
          v9 = v4[4];
        }

        if (v8 >= 0)
        {
          v10 = *(v4 + 55);
        }

        else
        {
          v10 = v4[5];
        }

        v11 = sub_213C97D08(a1, v9, v10);
        v12 = v4[7];
        v15 = v12[4];
        v13 = v12 + 4;
        v14 = v15;
        v16 = *(v13 + 23);
        if (v16 >= 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = v14;
        }

        v18 = v13[1];
        if (v16 >= 0)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = sub_213C97D08(a1, v17, v19);
        *(a1 + 70) = 1;
        v21 = *(a1 + 40);
        v22 = *(a1 + 32) - *(a1 + 48);
        sub_213C9B154(a1, 6, v20);
        sub_213C9B154(a1, 4, v11);
        sub_213C8C880(a1, v22 + v21);
        operator new();
      }

      v23 = v4[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v4[2];
          v25 = *v24 == v4;
          v4 = v24;
        }

        while (!v25);
      }

      v4 = v24;
    }

    while (v24 != v3);
  }

  return 0;
}

uint64_t sub_213C95E7C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3 && *a3)
  {
    operator new();
  }

  return 1;
}

uint64_t sub_213C96240(uint64_t a1, char a2, char a3, int a4, uint64_t a5)
{
  v5 = a5;
  *(a1 + 70) = 1;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  if (a4 != -1 || *(a1 + 80) == 1)
  {
    v12 = sub_213C8C524(a1, a4);
    v13 = *(a1 + 56);
    if (*(a1 + 48) - v13 <= 7uLL)
    {
      sub_213C97F80(a1, 8uLL);
      v13 = *(a1 + 56);
    }

    *v13 = v12 | 0x800000000;
    *(a1 + 56) += 8;
    ++*(a1 + 64);
    v14 = *(a1 + 68);
    if (v14 <= 8)
    {
      LOWORD(v14) = 8;
    }

    *(a1 + 68) = v14;
  }

  if (v5 || *(a1 + 80) == 1)
  {
    v22 = sub_213CB41A8(a1, v5);
    v23 = *(a1 + 56);
    if (*(a1 + 48) - v23 <= 7uLL)
    {
      sub_213C97F80(a1, 8uLL);
      v23 = *(a1 + 56);
    }

    *v23 = v22 | 0xA00000000;
    *(a1 + 56) += 8;
    ++*(a1 + 64);
    v24 = *(a1 + 68);
    if (v24 <= 0xA)
    {
      LOWORD(v24) = 10;
    }

    *(a1 + 68) = v24;
  }

  if (a3 || *(a1 + 80) == 1)
  {
    v15 = sub_213C8C610(a1, a3);
    v16 = *(a1 + 56);
    if (*(a1 + 48) - v16 <= 7uLL)
    {
      sub_213C97F80(a1, 8uLL);
      v16 = *(a1 + 56);
    }

    *v16 = v15 | 0x600000000;
    *(a1 + 56) += 8;
    ++*(a1 + 64);
    v17 = *(a1 + 68);
    if (v17 <= 6)
    {
      LOWORD(v17) = 6;
    }

    *(a1 + 68) = v17;
  }

  if (a2 || *(a1 + 80) == 1)
  {
    v18 = sub_213C8C610(a1, a2);
    v19 = *(a1 + 56);
    if (*(a1 + 48) - v19 <= 7uLL)
    {
      sub_213C97F80(a1, 8uLL);
      v19 = *(a1 + 56);
    }

    *v19 = v18 | 0x400000000;
    *(a1 + 56) += 8;
    ++*(a1 + 64);
    v20 = *(a1 + 68);
    if (v20 <= 4)
    {
      LOWORD(v20) = 4;
    }

    *(a1 + 68) = v20;
  }

  return sub_213C8C880(a1, v11 - v10 + v9);
}

uint64_t flatbuffers::Parser::Deserialize(uint64_t a1, unsigned int *a2)
{
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = (a2 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v73) = *(v6 + v7);
    if (v8)
    {
      memcpy(&__dst, v6 + v7 + 4, v8);
    }

    *(&__dst + v8) = 0;
  }

  else
  {
    HIBYTE(v73) = 0;
    LOBYTE(__dst) = 0;
  }

  v9 = (a1 + 584);
  if (*(a1 + 607) < 0)
  {
    operator delete(*v9);
  }

  *v9 = __dst;
  *(a1 + 600) = v73;
  v10 = (a2 - *a2);
  if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
  {
    v12 = (a2 + v11);
    v13 = *v12;
    v14 = *(v12 + v13);
    if (v14 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v73) = *(v12 + v13);
    if (v14)
    {
      memcpy(&__dst, v12 + v13 + 4, v14);
    }

    *(&__dst + v14) = 0;
  }

  else
  {
    HIBYTE(v73) = 0;
    LOBYTE(__dst) = 0;
  }

  v15 = (a1 + 608);
  if (*(a1 + 631) < 0)
  {
    operator delete(*v15);
  }

  *v15 = __dst;
  *(a1 + 624) = v73;
  *(&__dst + 1) = 0;
  v73 = 0;
  *&__dst = &__dst + 8;
  v16 = (a2 - *a2);
  if (*v16 < 5u)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16[2];
    if (v17)
    {
      v17 += a2 + *(a2 + v17);
    }
  }

  v18 = v17 + 8;
  v19 = *a2;
  v20 = a2 - v19;
  v21 = *(a2 - v19);
  if (v21 < 5)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v20 + 2);
    LODWORD(v19) = *(a2 + *(v20 + 2));
  }

  if ((v18 - 4) != (&a2[*(a2 + v22 + v19) + 1] + v22 + v19))
  {
    operator new();
  }

  if (v21 < 7)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v20 + 3);
    if (v23)
    {
      v23 += a2 + *(a2 + v23);
    }
  }

  v24 = (v23 + 4);
  v25 = *a2;
  v26 = a2 - v25;
  v27 = *(a2 - v25);
  if (v27 < 7)
  {
    v28 = 0;
    v29 = *a2;
  }

  else
  {
    v28 = *(v26 + 3);
    v29 = *(a2 + *(v26 + 3));
  }

  if (v24 != (&a2[*(a2 + v28 + v29) + 1] + v28 + v29))
  {
    operator new();
  }

  if (v27 < 5)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v26 + 2);
    if (v30)
    {
      v30 += a2 + *(a2 + v30);
    }
  }

  for (i = (v30 + 4); ; ++i)
  {
    v32 = (a2 - v25);
    v33 = *v32;
    if (v33 < 5)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32[2];
      LODWORD(v25) = *(a2 + v32[2]);
    }

    if (i == (&a2[*(a2 + v34 + v25) + 1] + v34 + v25))
    {
      break;
    }

    v35 = *i;
    v36 = *(i + v35);
    if (*(i + v35 - v36) < 5u)
    {
      LODWORD(v37) = 0;
    }

    else
    {
      v37 = *(i + v35 - v36 + 4);
      v36 = *(i + v35 + v37);
    }

    v38 = v37 + v36;
    v39 = i + v35;
    v40 = *&v39[v38];
    if (v40 >= 0x17)
    {
      operator new();
    }

    v71 = *&v39[v38];
    if (v40)
    {
      memmove(&__p, &v39[v38 + 4], v40);
    }

    *(&__p + v40) = 0;
    v41 = sub_213C9DFB8(a1 + 128, &__p);
    if (a1 + 136 == v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(v41 + 56);
    }

    *(v42 + 128) = sub_213C97308(&__p, a1 + 272, &__dst);
    if (!flatbuffers::StructDef::Deserialize(v42, a1, (i + *i)))
    {
      if (v71 < 0)
      {
        operator delete(__p);
      }

      v59 = 0;
      goto LABEL_108;
    }

    v25 = *a2;
    if (*(a2 - v25) >= 0xDu && *(a2 - v25 + 12) && i + *i == a2 + *(a2 - v25 + 12) + *(a2 + *(a2 - v25 + 12)))
    {
      *(a1 + 576) = v42;
    }

    if (v71 < 0)
    {
      operator delete(__p);
      LODWORD(v25) = *a2;
    }
  }

  if (v33 < 7)
  {
    v43 = 0;
  }

  else
  {
    v43 = v32[3];
    if (v32[3])
    {
      v43 += a2 + *(a2 + v43);
    }
  }

  v44 = (v43 + 4);
  v45 = *a2;
  v46 = a2 - v45;
  v47 = *(a2 - v45);
  if (v47 < 7)
  {
    v48 = 0;
    v49 = *a2;
  }

  else
  {
    v48 = *(v46 + 3);
    v49 = *(a2 + *(v46 + 3));
  }

  if (v44 != (&a2[*(a2 + v48 + v49) + 1] + v48 + v49))
  {
    v50 = *v44;
    v51 = *(v44 + v50);
    if (*(v44 + v50 - v51) < 5u)
    {
      LODWORD(v52) = 0;
    }

    else
    {
      v52 = *(v44 + v50 - v51 + 4);
      v51 = *(v44 + v50 + v52);
    }

    v53 = v52 + v51;
    v54 = v44 + v50;
    v55 = *&v54[v53];
    if (v55 < 0x17)
    {
      v71 = *&v54[v53];
      if (v55)
      {
        memmove(&__p, &v54[v53 + 4], v55);
      }

      *(&__p + v55) = 0;
      v56 = sub_213C9DFB8(a1 + 176, &__p);
      if (a1 + 184 == v56)
      {
        v57 = 0;
      }

      else
      {
        v57 = *(v56 + 56);
      }

      *(v57 + 128) = sub_213C97308(&__p, a1 + 272, &__dst);
      flatbuffers::EnumDef::Deserialize(v57, a1, v44 + *v44);
    }

    operator new();
  }

  if (v47 >= 0xF)
  {
    v58 = *(v46 + 7);
    if (v58)
    {
      v60 = v58 + *(a2 + v58);
      v61 = (a2 - v45);
      if (*v61 < 0xFu)
      {
        v62 = 0;
      }

      else
      {
        v62 = v61[7];
        LODWORD(v45) = *(a2 + v62);
      }

      v63 = (a2 + v60 + 4);
      if (v63 != (&a2[*(a2 + v62 + v45) + 1] + v62 + v45))
      {
        v64 = *v63;
        v65 = *(a2 + v60 + v64 + 4);
        if (*(a2 + v60 + v64 - v65 + 4) < 5u)
        {
          LODWORD(v66) = 0;
        }

        else
        {
          v66 = *(a2 + v60 + v64 - v65 + 8);
          v65 = *(a2 + v64 + v60 + v66 + 4);
        }

        v67 = a2 + v64 + v60 + v66 + v65;
        v68 = *(v67 + 1);
        if (v68 < 0x17)
        {
          v71 = *(v67 + 1);
          if (v68)
          {
            memmove(&__p, v67 + 8, v68);
          }

          *(&__p + v68) = 0;
          operator new();
        }

        operator new();
      }
    }
  }

  v59 = 1;
LABEL_108:
  sub_213C98B5C(*(&__dst + 1));
  return v59;
}

uint64_t sub_213C97308(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = std::string::rfind(a1, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v5 == -1)
  {
    v27 = 0;
    LOBYTE(__dst[0]) = 0;
  }

  else
  {
    v6 = v5;
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_213C97BD4();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v27 = v5;
    if (v5)
    {
      memmove(__dst, v7, v5);
    }

    *(__dst + v6) = 0;
  }

  v8 = a3[1];
  if (!v8)
  {
LABEL_44:
    operator new();
  }

  if ((v27 & 0x80u) == 0)
  {
    v9 = v27;
  }

  else
  {
    v9 = __dst[1];
  }

  if ((v27 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  while (1)
  {
    while (1)
    {
      v11 = v8;
      v14 = v8[4];
      v12 = v8 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      v17 = v12[1];
      if (v15 >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      if (v18 >= v9)
      {
        v19 = v9;
      }

      else
      {
        v19 = v18;
      }

      v20 = memcmp(v10, v16, v19);
      v21 = v9 < v18;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (!v21)
      {
        break;
      }

      v8 = *v11;
      if (!*v11)
      {
        goto LABEL_44;
      }
    }

    v22 = memcmp(v16, v10, v19);
    v23 = v18 < v9;
    if (v22)
    {
      v23 = v22 < 0;
    }

    if (!v23)
    {
      break;
    }

    v8 = v11[1];
    if (!v8)
    {
      goto LABEL_44;
    }
  }

  v24 = v11[7];
  if (!v24)
  {
    operator new();
  }

  if (v27 < 0)
  {
    operator delete(__dst[0]);
  }

  return v24;
}

void flatbuffers::Parser::ConformTo(flatbuffers::Parser *this@<X0>, const flatbuffers::Parser *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(this + 19);
  if (v6 == *(this + 20))
  {
    goto LABEL_97;
  }

  v7 = a2 + 136;
  while (2)
  {
    v8 = *v6;
    flatbuffers::Namespace::GetFullyQualifiedName(*(*v6 + 128), *v6, 0x3E8uLL, &__p);
    v9 = sub_213C9DFB8(a2 + 128, &__p);
    if (v7 == v9 || (v10 = *(v9 + 56)) == 0)
    {
      v56 = 4;
      goto LABEL_90;
    }

    ++*(v10 + 144);
    v11 = *(v8 + 176);
    if (v11 == *(v8 + 184))
    {
      v56 = 0;
      goto LABEL_90;
    }

    while (1)
    {
      v12 = *v11;
      v13 = sub_213CBBD28(v10 + 152, *v11);
      if (v10 + 160 == v13)
      {
        break;
      }

      v14 = *(v13 + 56);
      if (!v14)
      {
        break;
      }

      if (*(v12 + 104) != *(v14 + 208))
      {
        goto LABEL_96;
      }

      v15 = *(v12 + 207);
      if (v15 >= 0)
      {
        v16 = *(v12 + 207);
      }

      else
      {
        v16 = v12[24];
      }

      v17 = *(v14 + 207);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 192);
      }

      if (v16 != v17)
      {
        goto LABEL_96;
      }

      v19 = v15 >= 0 ? v12 + 23 : v12[23];
      v20 = v18 >= 0 ? (v14 + 184) : *(v14 + 184);
      if (memcmp(v19, v20, v16) || *(v12 + 38) != *(v14 + 152) || *(v12 + 39) != *(v14 + 156))
      {
        goto LABEL_96;
      }

      v21 = v12[20];
      v22 = *(v14 + 160);
      if (v21 != v22)
      {
        v23 = *(v21 + 23);
        if (v23 >= 0)
        {
          v24 = *(v21 + 23);
        }

        else
        {
          v24 = v21[1];
        }

        v25 = *(v22 + 23);
        v26 = v25;
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(v22 + 8);
        }

        if (v24 != v25)
        {
          goto LABEL_96;
        }

        v27 = v23 >= 0 ? v12[20] : *v21;
        v28 = v26 >= 0 ? *(v14 + 160) : *v22;
        if (memcmp(v27, v28, v24))
        {
          goto LABEL_96;
        }
      }

      v29 = v12[21];
      v30 = *(v14 + 168);
      if (v29 != v30)
      {
        v31 = *(v29 + 23);
        if (v31 >= 0)
        {
          v32 = *(v29 + 23);
        }

        else
        {
          v32 = v29[1];
        }

        v33 = *(v30 + 23);
        v34 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v33 = *(v30 + 8);
        }

        if (v32 != v33)
        {
          goto LABEL_96;
        }

        v35 = v31 >= 0 ? v12[21] : *v29;
        v36 = v34 >= 0 ? *(v14 + 168) : *v30;
        if (memcmp(v35, v36, v32))
        {
          goto LABEL_96;
        }
      }

LABEL_87:
      v56 = 0;
      if (++v11 == *(v8 + 184))
      {
        goto LABEL_90;
      }
    }

    v37 = *(v10 + 176);
    v38 = *(v10 + 184);
    if (v37 == v38)
    {
      goto LABEL_87;
    }

    while (1)
    {
      v39 = *v37;
      if (*(v12 + 104) == *(*v37 + 208))
      {
        break;
      }

      if (++v37 == v38)
      {
        goto LABEL_87;
      }
    }

    if (*(v12 + 38) == *(v39 + 152) && *(v12 + 39) == *(v39 + 156))
    {
      v40 = v12[20];
      v41 = *(v39 + 160);
      if (v40 == v41)
      {
        goto LABEL_73;
      }

      v42 = *(v40 + 23);
      if (v42 >= 0)
      {
        v43 = *(v40 + 23);
      }

      else
      {
        v43 = v40[1];
      }

      v44 = *(v41 + 23);
      v45 = v44;
      if ((v44 & 0x80u) != 0)
      {
        v44 = *(v41 + 8);
      }

      if (v43 == v44)
      {
        v46 = v42 >= 0 ? v12[20] : *v40;
        v47 = v45 >= 0 ? *(v39 + 160) : *v41;
        if (!memcmp(v46, v47, v43))
        {
LABEL_73:
          v48 = v12[21];
          v49 = *(v39 + 168);
          if (v48 == v49)
          {
            goto LABEL_87;
          }

          v50 = *(v48 + 23);
          if (v50 >= 0)
          {
            v51 = *(v48 + 23);
          }

          else
          {
            v51 = v48[1];
          }

          v52 = *(v49 + 23);
          v53 = v52;
          if ((v52 & 0x80u) != 0)
          {
            v52 = *(v49 + 8);
          }

          if (v51 == v52)
          {
            v54 = v50 >= 0 ? v12[21] : *v48;
            v55 = v53 >= 0 ? *(v39 + 168) : *v49;
            if (!memcmp(v54, v55, v51))
            {
              goto LABEL_87;
            }
          }
        }
      }
    }

LABEL_96:
    std::operator+<char>();
    v56 = 1;
LABEL_90:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v56 | 4) == 4)
    {
      if (++v6 == *(this + 20))
      {
LABEL_97:
        v57 = *(this + 25);
        if (v57 == *(this + 26))
        {
LABEL_115:
          a3[23] = 0;
          *a3 = 0;
        }

        else
        {
          while (1)
          {
            v58 = *v57;
            flatbuffers::Namespace::GetFullyQualifiedName(*(*v57 + 128), *v57, 0x3E8uLL, &__p);
            v59 = sub_213C9DFB8(a2 + 176, &__p);
            if ((a2 + 184) == v59 || (v60 = v59[7]) == 0)
            {
              v65 = 13;
            }

            else
            {
              v61 = *(v58 + 208);
              if (v61 == *(v58 + 216))
              {
                v65 = 0;
              }

              else
              {
                while (1)
                {
                  v62 = *v61;
                  v63 = sub_213CBBD28(v60 + 184, *v61);
                  if (v60 + 192 != v63)
                  {
                    v64 = *(v63 + 56);
                    if (v64)
                    {
                      if (v62[17] != *(v64 + 136))
                      {
                        break;
                      }
                    }
                  }

                  v65 = 0;
                  if (++v61 == *(v58 + 216))
                  {
                    goto LABEL_107;
                  }
                }

                std::operator+<char>();
                v65 = 1;
              }
            }

LABEL_107:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v65 != 13 && v65)
            {
              break;
            }

            if (++v57 == *(this + 26))
            {
              goto LABEL_115;
            }
          }
        }

        return;
      }

      continue;
    }

    break;
  }
}