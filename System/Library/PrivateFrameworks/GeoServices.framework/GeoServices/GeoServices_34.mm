void sub_1868DD43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
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

  if (v2 >= 0)
  {
    v7 = (a1 + 48);
  }

  else
  {
    v7 = *(a1 + 48);
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v7, a2, v3))
  {
    return 0;
  }

  AddrObjGoogle::protobuf::io::Tokenizer::Next((a1 + 40));
  return 1;
}

BOOL AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(uint64_t a1, std::string *this)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == 2)
  {
    std::string::operator=(this, (a1 + 48));
    AddrObjGoogle::protobuf::io::Tokenizer::Next(v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Expected identifier.");
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72), *(a1 + 76), __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4 == 2;
}

void sub_1868DD708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(uint64_t a1, void *a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_13;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 48);
  }

  else
  {
    v8 = *v3;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(v8, a2, v5))
  {
    AddrObjGoogle::protobuf::io::Tokenizer::Next((a1 + 40));
    return 1;
  }

  else
  {
LABEL_13:
    std::operator+<char>();
    v9 = std::string::append(&v19, ", found ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *(a1 + 71);
    if (v11 >= 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 48);
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 71);
    }

    else
    {
      v13 = *(a1 + 56);
    }

    v14 = std::string::append(&v20, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v21, ".");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v23 = v16->__r_.__value_.__r.__words[2];
    v22 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72), *(a1 + 76), &v22);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    return 0;
  }
}

void sub_1868DD8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
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

  v8 = *(a1 + 48);
  v6 = (a1 + 48);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this)
{
  v1 = (this + 40);
  if (*(this + 10) == 5)
  {
    do
    {
      AddrObjGoogle::protobuf::io::Tokenizer::Next(v1);
    }

    while (*v1 == 5);
    return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "-");
  v3 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*v1 - 3) < 2)
  {
LABEL_7:
    AddrObjGoogle::protobuf::io::Tokenizer::Next(v1);
    return 1;
  }

  if (*v1 == 2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    if (*(this + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
    }

    else
    {
      __p = *(this + 2);
    }

    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    v7 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      v7 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
    }

    if (p_p != v7)
    {
      do
      {
        v8 = p_p->__r_.__value_.__s.__data_[0];
        if ((v8 - 65) <= 0x19)
        {
          p_p->__r_.__value_.__s.__data_[0] = v8 | 0x20;
        }

        p_p = (p_p + 1);
      }

      while (p_p != v7);
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v5 < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 3 && *__p.__r_.__value_.__l.__data_ == 28265 && *(__p.__r_.__value_.__r.__words[0] + 2) == 102)
      {
        goto LABEL_50;
      }

      if (__p.__r_.__value_.__l.__size_ == 8 && *__p.__r_.__value_.__l.__data_ == 0x7974696E69666E69)
      {
        goto LABEL_50;
      }

      if (__p.__r_.__value_.__l.__size_ != 3)
      {
LABEL_45:
        std::operator+<char>();
        AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), &v15);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      v10 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v5 != 3)
      {
        if (v5 == 8 && __p.__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
        {
          goto LABEL_7;
        }

        goto LABEL_45;
      }

      if (LOWORD(__p.__r_.__value_.__l.__data_) == 28265 && __p.__r_.__value_.__s.__data_[2] == 102)
      {
        goto LABEL_7;
      }

      v10 = &__p;
    }

    data_low = LOWORD(v10->__r_.__value_.__l.__data_);
    v13 = v10->__r_.__value_.__s.__data_[2];
    if (data_low != 24942 || v13 != 110)
    {
      goto LABEL_45;
    }

LABEL_50:
    if (v5 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_7;
  }

  return 0;
}

void sub_1868DDBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "<");
  v2 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v3 = v2;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    v4 = ">";
    goto LABEL_10;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "{");
  v5 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
  v6 = v5;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 1) == 0)
    {
LABEL_20:
      v9 = 0;
      goto LABEL_22;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = "}";
LABEL_10:
  MEMORY[0x18CFD1A60](v15, v4);
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, ">");
    if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, __p))
    {
      v7 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "}");
      v8 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

      v7 = !v8;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v7)
    {
      break;
    }

    if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipField(this) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(this, v15);
LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return v9;
}

void sub_1868DDD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(AddrObjGoogle::protobuf::TextFormat::ParseInfoTree **a1, uint64_t a2, uint64_t *a3, FieldDescriptor *a4)
{
  if (a1[2])
  {
    AddrObjGoogle::protobuf::TextFormat::ParseInfoTree::CreateNested(a1[2], a4);
  }

  memset(&v24, 0, sizeof(v24));
  std::string::basic_string[abi:ne200100]<0>(__p, "<");
  v8 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(a1, __p);
  v9 = v8;
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    v10 = ">";
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "{");
  v11 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(a1, __p);
  v12 = v11;
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v10 = "}";
LABEL_12:
  MEMORY[0x18CFD1A60](&v24, v10);
  v13 = *a3;
  if (a4[3].MangledTypeName == 3)
  {
    v14 = (*(v13 + 520))(a3, a2, a4, 0);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = v24;
    }

    v16 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(a1, v14, &v21);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v21.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else
  {
    v15 = (*(v13 + 264))(a3, a2, a4, 0);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = v24;
    }

    v16 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(a1, v15, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
LABEL_25:
      operator delete(v17);
      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      a1[2] = 0;
      v18 = 1;
      goto LABEL_27;
    }
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_26:
  v18 = 0;
LABEL_27:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_1868DE01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 44)];
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        __p[0].__r_.__value_.__r.__words[0] = 0;
        result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(a1, __p, 0x7FFFFFFFLL);
        if (!result)
        {
          return result;
        }

        v15 = *a3;
        if (*(a4 + 48) == 3)
        {
          (*(v15 + 448))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
        }

        else
        {
          (*(v15 + 192))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
        }
      }

      else if (v8 == 2)
      {
        __p[0].__r_.__value_.__r.__words[0] = 0;
        result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(a1, __p, 0x7FFFFFFFFFFFFFFFLL);
        if (!result)
        {
          return result;
        }

        v13 = *a3;
        if (*(a4 + 48) == 3)
        {
          (*(v13 + 456))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
        }

        else
        {
          (*(v13 + 200))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
        }
      }
    }

    else if (v8 == 3)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(a1, __p, 0xFFFFFFFFuLL);
      if (!result)
      {
        return result;
      }

      v18 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v18 + 464))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
      }

      else
      {
        (*(v18 + 208))(a3, a2, a4, LODWORD(__p[0].__r_.__value_.__l.__data_));
      }
    }

    else if (v8 == 4)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(a1, __p, 0xFFFFFFFFFFFFFFFFLL);
      if (!result)
      {
        return result;
      }

      v21 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v21 + 472))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
      }

      else
      {
        (*(v21 + 216))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0]);
      }
    }

    else
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeDouble(a1, __p);
      if (!result)
      {
        return result;
      }

      v10.n128_u64[0] = __p[0].__r_.__value_.__r.__words[0];
      v11 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v11 + 488))(a3, a2, a4, v10);
      }

      else
      {
        (*(v11 + 232))(a3, a2, a4, v10);
      }
    }

    return 1;
  }

  if (v8 <= 7)
  {
    if (v8 == 6)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeDouble(a1, __p);
      if (!result)
      {
        return result;
      }

      v16.n128_u32[1] = HIDWORD(__p[0].__r_.__value_.__r.__words[0]);
      v16.n128_f32[0] = *&__p[0].__r_.__value_.__l.__data_;
      v17 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v17 + 480))(a3, a2, a4, v16);
      }

      else
      {
        (*(v17 + 224))(a3, a2, a4, v16);
      }

      return 1;
    }

    if (*(a1 + 10) == 3)
    {
      __p[0].__r_.__value_.__r.__words[0] = 0;
      result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(a1, __p, 1uLL);
      if (!result)
      {
        return result;
      }

      v14 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v14 + 496))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0] != 0);
      }

      else
      {
        (*(v14 + 240))(a3, a2, a4, __p[0].__r_.__value_.__r.__words[0] != 0);
      }

      return 1;
    }

    memset(__p, 0, 24);
    if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(a1, __p))
    {
      goto LABEL_126;
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p[0].__r_.__value_.__l.__size_ == 4)
      {
        v25 = __p[0].__r_.__value_.__r.__words[0];
LABEL_99:
        if (LODWORD(v25->__r_.__value_.__l.__data_) == 1702195828)
        {
LABEL_101:
          v41 = *a3;
          if (*(a4 + 48) == 3)
          {
            v42 = (v41 + 496);
          }

          else
          {
            v42 = (v41 + 240);
          }

          v43 = 1;
LABEL_111:
          (*v42)(a3, a2, a4, v43);
          v45 = 1;
          goto LABEL_127;
        }
      }
    }

    else if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) == 4)
    {
      v25 = __p;
      goto LABEL_99;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "t"))
    {
      goto LABEL_101;
    }

    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "false") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "f"))
    {
      v44 = *a3;
      if (*(a4 + 48) == 3)
      {
        v42 = (v44 + 496);
      }

      else
      {
        v42 = (v44 + 240);
      }

      v43 = 0;
      goto LABEL_111;
    }

    std::operator+<char>();
    v46 = std::string::append(&v55, ". Value: ");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    v50 = std::string::append(&v56, v48, size);
    v51 = *&v50->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = std::string::append(&v57, ".");
    v53 = *&v52->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 18), *(a1 + 19), &v58);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

LABEL_126:
    v45 = 0;
LABEL_127:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    return (v45 & 1) != 0;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      if (v8 == 10)
      {
        AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 646);
        v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "Reached an unintended state: CPPTYPE_MESSAGE");
        AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v58, v12);
        AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      }

      return 1;
    }

    memset(__p, 0, 24);
    v22 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeString(a1, __p);
    if (v22)
    {
      v23 = *a3;
      if (*(a4 + 48) == 3)
      {
        v24 = (v23 + 504);
      }

      else
      {
        v24 = (v23 + 248);
      }

      (*v24)(a3, a2, a4, __p);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v22)
      {
        return 1;
      }
    }

    else if (v22)
    {
      return 1;
    }

    return 0;
  }

  memset(__p, 0, 24);
  v19 = *(a4 + 80);
  if (*(a1 + 10) == 2)
  {
    if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(a1, __p))
    {
      ValueByName = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByName(v19, __p);
      goto LABEL_68;
    }

LABEL_91:
    v30 = 1;
    goto LABEL_92;
  }

  std::string::basic_string[abi:ne200100]<0>(&v58, "-");
  if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(a1, &v58))
  {
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v26 = *(a1 + 10);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (v26 != 3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v58, "Expected integer or identifier.");
      AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 18), *(a1 + 19), &v58);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        v40 = v58.__r_.__value_.__r.__words[0];
LABEL_90:
        operator delete(v40);
        goto LABEL_91;
      }

      goto LABEL_91;
    }
  }

  v57.__r_.__value_.__r.__words[0] = 0;
  if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(a1, &v57, 0x7FFFFFFFLL) & 1) == 0)
  {
    goto LABEL_91;
  }

  AddrObjGoogle::protobuf::SimpleItoa(&v58, v57.__r_.__value_.__l.__data_, v27);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0] = v58;
  ValueByName = AddrObjGoogle::protobuf::EnumDescriptor::FindValueByNumber(v19, v57.__r_.__value_.__l.__data_);
LABEL_68:
  if (!ValueByName)
  {
    std::operator+<char>();
    v31 = std::string::append(&v55, " for field ");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = *(*a4 + 23);
    if (v33 >= 0)
    {
      v34 = *a4;
    }

    else
    {
      v34 = **a4;
    }

    if (v33 >= 0)
    {
      v35 = *(*a4 + 23);
    }

    else
    {
      v35 = *(*a4 + 8);
    }

    v36 = std::string::append(&v56, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v57, ".");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 18), *(a1 + 19), &v58);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    v40 = v55.__r_.__value_.__r.__words[0];
    goto LABEL_90;
  }

  v28 = *a3;
  if (*(a4 + 48) == 3)
  {
    v29 = (v28 + 512);
  }

  else
  {
    v29 = (v28 + 256);
  }

  (*v29)(a3, a2, a4, ValueByName);
  v30 = 0;
LABEL_92:
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v30)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  return 1;
}

void sub_1868DEB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipField(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this)
{
  memset(&v16, 0, sizeof(v16));
  std::string::basic_string[abi:ne200100]<0>(&__p, "[");
  v2 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v16))
    {
      goto LABEL_35;
    }

    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, ".");
      v4 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v4)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &__p))
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_35;
      }

      std::string::append(&v16, ".");
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

      std::string::append(&v16, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "]");
    v7 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v16))
  {
    goto LABEL_35;
  }

LABEL_22:
  std::string::basic_string[abi:ne200100]<0>(&__p, ":");
  if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "{");
    if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v13))
    {
      v8 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "<");
      v8 = !AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, v11);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_34;
    }

LABEL_40:
    if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(this))
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(this) & 1) == 0)
  {
LABEL_35:
    v9 = 0;
    goto LABEL_36;
  }

LABEL_41:
  std::string::basic_string[abi:ne200100]<0>(&__p, ";");
  if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, ",");
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, v13);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = 1;
LABEL_36:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1868DEE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeMessage(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *a1, AddrObjGoogle::protobuf::Message *a2, void *a3)
{
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, ">");
    if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(a1, v11))
    {
      v6 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "}");
      v7 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(a1, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = !v7;
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (!v6)
    {
      break;
    }

    if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(a1, a3);
}

void sub_1868DEFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeSignedInteger(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this, uint64_t *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "-");
  v6 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, __p, a3 + v6);
  if (result)
  {
    v8 = __p[0];
    if (v6)
    {
      v8 = -__p[0];
    }

    *a2 = v8;
  }

  return result;
}

void sub_1868DF09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this, unint64_t *a2, unint64_t a3)
{
  v4 = (this + 40);
  if (*(this + 10) == 3)
  {
    if (AddrObjGoogle::protobuf::io::Tokenizer::ParseInteger(this + 48, a3, a2))
    {
      AddrObjGoogle::protobuf::io::Tokenizer::Next(v4);
      return 1;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Integer out of range.");
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), __p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Expected integer.");
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), __p);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1868DF170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeDouble(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this, double *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "-");
  v6 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(this + 10);
  switch(v7)
  {
    case 2:
      if (*(this + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
      }

      else
      {
        __p = *(this + 2);
      }

      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      v11 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        v11 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
      }

      if (p_p != v11)
      {
        do
        {
          v12 = p_p->__r_.__value_.__s.__data_[0];
          if ((v12 - 65) <= 0x19)
          {
            p_p->__r_.__value_.__s.__data_[0] = v12 | 0x20;
          }

          p_p = (p_p + 1);
        }

        while (p_p != v11);
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v9 < 0)
      {
        if (__p.__r_.__value_.__l.__size_ == 3 && *__p.__r_.__value_.__l.__data_ == 28265 && *(__p.__r_.__value_.__r.__words[0] + 2) == 102)
        {
          goto LABEL_49;
        }

        if (__p.__r_.__value_.__l.__size_ == 8 && *__p.__r_.__value_.__l.__data_ == 0x7974696E69666E69)
        {
          goto LABEL_49;
        }

        if (__p.__r_.__value_.__l.__size_ != 3)
        {
          goto LABEL_44;
        }

        v14 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (v9 != 3)
        {
          if (v9 == 8 && __p.__r_.__value_.__r.__words[0] == 0x7974696E69666E69)
          {
LABEL_49:
            v19 = 0x7FF0000000000000;
            goto LABEL_51;
          }

LABEL_44:
          std::string::basic_string[abi:ne200100]<0>(v20, "Expected double.");
          AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), v20);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

          goto LABEL_46;
        }

        if (LOWORD(__p.__r_.__value_.__l.__data_) == 28265 && __p.__r_.__value_.__s.__data_[2] == 102)
        {
          goto LABEL_49;
        }

        v14 = &__p;
      }

      data_low = LOWORD(v14->__r_.__value_.__l.__data_);
      v17 = v14->__r_.__value_.__s.__data_[2];
      if (data_low == 24942 && v17 == 110)
      {
        v19 = 0x7FF8000000000000;
LABEL_51:
        *a2 = v19;
        AddrObjGoogle::protobuf::io::Tokenizer::Next((this + 40));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_53;
      }

      goto LABEL_44;
    case 3:
      __p.__r_.__value_.__r.__words[0] = 0;
      result = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeUnsignedInteger(this, &__p, 0xFFFFFFFFFFFFFFFFLL);
      if (!result)
      {
        return result;
      }

      *a2 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_53;
    case 4:
      *a2 = AddrObjGoogle::protobuf::io::Tokenizer::ParseFloat(this + 48, v4, v5);
      AddrObjGoogle::protobuf::io::Tokenizer::Next((this + 40));
LABEL_53:
      if (v6)
      {
        *a2 = -*a2;
      }

      return 1;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Expected double.");
  AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), &__p);
LABEL_46:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1868DF458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeString(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == 5)
  {
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

    while (*v3 == 5)
    {
      AddrObjGoogle::protobuf::io::Tokenizer::ParseStringAppend((a1 + 48), a2);
      AddrObjGoogle::protobuf::io::Tokenizer::Next(v3);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Expected string.");
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a1, *(a1 + 72), *(a1 + 76), __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4 == 5;
}

void sub_1868DF55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), "");
  *(a1 + 48) = a3;
  std::string::resize((a1 + 24), 2 * a3, 32);
  return a1;
}

void sub_1868DF5D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator *this)
{
  if ((*(this + 21) & 1) == 0 && *(this + 4) >= 1)
  {
    (*(**this + 24))();
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator *this, const char *a2, int a3)
{
  if (a3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (a2[v6] == 10)
      {
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Write(this, &a2[v7], v6++ - v7 + 1);
        *(this + 20) = 1;
        v7 = v6;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 != a3);
  }

  return AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Write(this, &a2[v7], a3 - v7);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Write(uint64_t this, const char *a2, int a3)
{
  if (a3)
  {
    v3 = this;
    if ((*(this + 21) & 1) == 0)
    {
      v4 = a3;
      if (*(this + 20) != 1 || ((*(this + 20) = 0, v6 = *(this + 47), v6 < 0) ? (v7 = *(this + 24), v6 = *(this + 32)) : (v7 = (this + 24)), this = AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Write(this, v7, v6), (*(v3 + 21) & 1) == 0))
      {
        v8 = *(v3 + 4);
        v9 = v3[1];
        if (v8 >= v4)
        {
LABEL_11:
          this = memcpy(v9, a2, v4);
          v3[1] += v4;
          *(v3 + 4) -= v4;
        }

        else
        {
          while (1)
          {
            memcpy(v9, a2, v8);
            v10 = *(v3 + 4);
            __dst = 0;
            this = (*(**v3 + 16))(*v3, &__dst, v3 + 2);
            *(v3 + 21) = this ^ 1;
            if ((this & 1) == 0)
            {
              break;
            }

            v4 -= v10;
            a2 += v10;
            v9 = __dst;
            v3[1] = __dst;
            v8 = *(v3 + 4);
            if (v4 <= v8)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t *std::__tree<std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<AddrObjGoogle::protobuf::FieldDescriptor const*,std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseLocation>>,std::less<AddrObjGoogle::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseLocation>>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<AddrObjGoogle::protobuf::FieldDescriptor const* const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseInfoTree *>>,std::__map_value_compare<AddrObjGoogle::protobuf::FieldDescriptor const*,std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseInfoTree *>>,std::less<AddrObjGoogle::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseInfoTree *>>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<AddrObjGoogle::protobuf::FieldDescriptor const* const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t addr_obj::AddressObjectException::AddressObjectException(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v6 + 2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(p_p, v8, v6);
  }

  strcpy(p_p + v6, ": ");
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&__p, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v12->__r_.__value_.__l + 2);
  *a1 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1868DFADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *addr_obj::AddressObjectException::what(char *this)
{
  if (this[23] < 0)
  {
    return *this;
  }

  return this;
}

std::string *addr_obj::AddressObjectException::append(std::string *a1, const std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v7 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
    do
    {
      v8 = v7[size];
      v9 = v8 >= 0x3B;
      v11 = v8 == 59;
      v10 = (1 << v8) & 0x800100100000000;
      v11 = !v11 && v9 || v10 == 0;
      if (v11)
      {
        break;
      }

      --size;
    }

    while (size);
  }

  std::string::basic_string(&v17, a2, 0, size, &v20);
  v12 = std::string::insert(&v17, 0, "; ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v19 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v19 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v19 >= 0)
  {
    v15 = HIBYTE(v19);
  }

  else
  {
    v15 = __p[1];
  }

  std::string::append(a1, v14, v15);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1868DFC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto(AddrObjGoogle::protobuf *this, uint64_t a2, uint64_t a3, const char *a4)
{
  AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(this, a2, a3, a4);
  AddrObjGoogle::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

uint64_t AddrObjGoogle::protobuf::protobuf_ShutdownFile_google_2fprotobuf_2fdescriptor_2eproto(AddrObjGoogle::protobuf *this)
{
  v1 = AddrObjGoogle::protobuf::FileDescriptorSet::default_instance_(this);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = qword_1EA905790;
  if (qword_1EA905790)
  {
    v2 = (*(*qword_1EA905790 + 8))(qword_1EA905790);
  }

  v3 = AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(v2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = qword_1EA9057A0;
  if (qword_1EA9057A0)
  {
    v4 = (*(*qword_1EA9057A0 + 8))(qword_1EA9057A0);
  }

  v5 = AddrObjGoogle::protobuf::DescriptorProto::default_instance_(v4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = qword_1EA9057B0;
  if (qword_1EA9057B0)
  {
    v6 = (*(*qword_1EA9057B0 + 8))(qword_1EA9057B0);
  }

  v7 = AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance_(v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = qword_1EA9057C0;
  if (qword_1EA9057C0)
  {
    v8 = (*(*qword_1EA9057C0 + 8))(qword_1EA9057C0);
  }

  v9 = AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(v8);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = qword_1EA9057D0;
  if (qword_1EA9057D0)
  {
    v10 = (*(*qword_1EA9057D0 + 8))(qword_1EA9057D0);
  }

  v11 = AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(v10);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = qword_1EA9057F0;
  if (qword_1EA9057F0)
  {
    v12 = (*(*qword_1EA9057F0 + 8))(qword_1EA9057F0);
  }

  v13 = AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(v12);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = qword_1EA905800;
  if (qword_1EA905800)
  {
    v14 = (*(*qword_1EA905800 + 8))(qword_1EA905800);
  }

  v15 = AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(v14);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = qword_1EA905810;
  if (qword_1EA905810)
  {
    v16 = (*(*qword_1EA905810 + 8))(qword_1EA905810);
  }

  v17 = AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(v16);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = qword_1EA905820;
  if (qword_1EA905820)
  {
    v18 = (*(*qword_1EA905820 + 8))(qword_1EA905820);
  }

  v19 = AddrObjGoogle::protobuf::FileOptions::default_instance_(v18);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = qword_1EA905830;
  if (qword_1EA905830)
  {
    v20 = (*(*qword_1EA905830 + 8))(qword_1EA905830);
  }

  v21 = AddrObjGoogle::protobuf::MessageOptions::default_instance_(v20);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = qword_1EA905848;
  if (qword_1EA905848)
  {
    v22 = (*(*qword_1EA905848 + 8))(qword_1EA905848);
  }

  v23 = AddrObjGoogle::protobuf::FieldOptions::default_instance_(v22);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = qword_1EA905858;
  if (qword_1EA905858)
  {
    v24 = (*(*qword_1EA905858 + 8))(qword_1EA905858);
  }

  v25 = AddrObjGoogle::protobuf::EnumOptions::default_instance_(v24);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = qword_1EA905870;
  if (qword_1EA905870)
  {
    v26 = (*(*qword_1EA905870 + 8))(qword_1EA905870);
  }

  v27 = AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(v26);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = qword_1EA905880;
  if (qword_1EA905880)
  {
    v28 = (*(*qword_1EA905880 + 8))(qword_1EA905880);
  }

  v29 = AddrObjGoogle::protobuf::ServiceOptions::default_instance_(v28);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = qword_1EA905890;
  if (qword_1EA905890)
  {
    v30 = (*(*qword_1EA905890 + 8))(qword_1EA905890);
  }

  v31 = AddrObjGoogle::protobuf::MethodOptions::default_instance_(v30);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = qword_1EA9058A0;
  if (qword_1EA9058A0)
  {
    v32 = (*(*qword_1EA9058A0 + 8))(qword_1EA9058A0);
  }

  v33 = AddrObjGoogle::protobuf::UninterpretedOption::default_instance_(v32);
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = qword_1EA9058B0;
  if (qword_1EA9058B0)
  {
    v34 = (*(*qword_1EA9058B0 + 8))(qword_1EA9058B0);
  }

  v35 = AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance_(v34);
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = qword_1EA9058C0;
  if (qword_1EA9058C0)
  {
    v36 = (*(*qword_1EA9058C0 + 8))(qword_1EA9058C0);
  }

  v37 = AddrObjGoogle::protobuf::SourceCodeInfo::default_instance_(v36);
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = qword_1EA9058D0;
  if (qword_1EA9058D0)
  {
    v38 = (*(*qword_1EA9058D0 + 8))(qword_1EA9058D0);
  }

  v39 = AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance_(v38);
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  result = qword_1EA9058E0;
  if (qword_1EA9058E0)
  {
    v41 = *(*qword_1EA9058E0 + 8);

    return v41();
  }

  return result;
}

void AddrObjGoogle::protobuf::FileDescriptorSet::MergeFrom(AddrObjGoogle::protobuf::FileDescriptorSet *this, const AddrObjGoogle::protobuf::FileDescriptorSet *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 860);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, *(a2 + 6) + *(this + 6));
  if (*(a2 + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v7 + 1);
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FileDescriptorProto>::New();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      AddrObjGoogle::protobuf::FileDescriptorProto::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 6));
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868E0F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FileDescriptorSet::~FileDescriptorSet(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  *this = &unk_1EF7E0C40;
  AddrObjGoogle::protobuf::FileDescriptorSet::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 2);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::FileDescriptorSet::~FileDescriptorSet(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorSet::default_instance(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  v1 = AddrObjGoogle::protobuf::FileDescriptorSet::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::FileDescriptorSet::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::FileDescriptorSet::Clear(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 16);
  v4 = *(this + 1);
  v3 = this + 8;
  *(v3 + 9) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorSet::MergePartialFromCodedStream(AddrObjGoogle::protobuf::FileDescriptorSet *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v6 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v8 = *(this + 7);
        v9 = *(this + 6);
        if (v9 >= v8)
        {
          if (v8 == *(this + 8))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v8 + 1);
            v8 = *(this + 7);
          }

          *(this + 7) = v8 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FileDescriptorProto>::New();
        }

        v10 = *(this + 2);
        *(this + 6) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v24 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
          {
            return 0;
          }
        }

        else
        {
          v24 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v24);
        if (!AddrObjGoogle::protobuf::FileDescriptorProto::MergePartialFromCodedStream(v11, a2, v16, v17) || *(a2 + 36) != 1)
        {
          return 0;
        }

        AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v15);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v21 >= v22 || *v21 != 10)
        {
          if (v21 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v21 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::FileDescriptorSet::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v4 + 16) + 8 * v5++), a2);
    }

    while (v5 < *(v4 + 24));
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::FileDescriptorSet::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::FileDescriptorSet *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v8 = v7[50];
      if (v8 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = (a2 + 2);
      }

      a2 = AddrObjGoogle::protobuf::FileDescriptorProto::SerializeWithCachedSizesToArray(v7, v9, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorSet::ByteSize(AddrObjGoogle::protobuf::FileDescriptorSet *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 6);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = AddrObjGoogle::protobuf::FileDescriptorProto::ByteSize(*(*(this + 2) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 6));
  }

  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v3 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v3;
  }

  *(this + 10) = v3;
  return v3;
}

void AddrObjGoogle::protobuf::FileDescriptorSet::MergeFrom(AddrObjGoogle::protobuf::FileDescriptorSet *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 848);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::FileDescriptorSet::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E1604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::FileDescriptorSet::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorSet::IsInitialized(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  if (*(this + 6) < 1)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = *(*(this + 2) + 8 * v2);
    result = (*(*v3 + 40))(v3);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v2;
  }

  while (v2 < *(this + 6));
  return result;
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorSet::GetMetadata(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905788;
}

void sub_1868E17B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FileDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::FileDescriptorProto *this, const AddrObjGoogle::protobuf::FileDescriptorProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 1511);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v44, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v43, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v44[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 8, *(a2 + 10) + *(this + 10));
  if (*(a2 + 10) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 4) + 8 * v6);
      v8 = *(this + 11);
      v9 = *(this + 10);
      if (v9 >= v8)
      {
        if (v8 == *(this + 12))
        {
          v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 8, v8 + 1);
          v8 = *(this + 11);
        }

        *(this + 11) = v8 + 1;
        AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v5);
      }

      v10 = *(this + 4);
      *(this + 10) = v9 + 1;
      v5 = std::string::operator=(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 10));
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(this + 14, *(this + 16) + v11);
    memcpy((*(this + 7) + 4 * *(this + 16)), *(a2 + 7), 4 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(this + 18, *(this + 20) + v12);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 22, *(a2 + 24) + *(this + 24));
  if (*(a2 + 24) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a2 + 11) + 8 * v13);
      v15 = *(this + 25);
      v16 = *(this + 24);
      if (v16 >= v15)
      {
        if (v15 == *(this + 26))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 22, v15 + 1);
          v15 = *(this + 25);
        }

        *(this + 25) = v15 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto>::New();
      }

      v17 = *(this + 11);
      *(this + 24) = v16 + 1;
      AddrObjGoogle::protobuf::DescriptorProto::MergeFrom(*(v17 + 8 * v16), v14);
      ++v13;
    }

    while (v13 < *(a2 + 24));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 28, *(a2 + 30) + *(this + 30));
  if (*(a2 + 30) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(a2 + 14) + 8 * v18);
      v20 = *(this + 31);
      v21 = *(this + 30);
      if (v21 >= v20)
      {
        if (v20 == *(this + 32))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 28, v20 + 1);
          v20 = *(this + 31);
        }

        *(this + 31) = v20 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumDescriptorProto>::New();
      }

      v22 = *(this + 14);
      *(this + 30) = v21 + 1;
      AddrObjGoogle::protobuf::EnumDescriptorProto::MergeFrom(*(v22 + 8 * v21), v19);
      ++v18;
    }

    while (v18 < *(a2 + 30));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 34, *(a2 + 36) + *(this + 36));
  if (*(a2 + 36) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = *(*(a2 + 17) + 8 * v23);
      v25 = *(this + 37);
      v26 = *(this + 36);
      if (v26 >= v25)
      {
        if (v25 == *(this + 38))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 34, v25 + 1);
          v25 = *(this + 37);
        }

        *(this + 37) = v25 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::ServiceDescriptorProto>::New();
      }

      v27 = *(this + 17);
      *(this + 36) = v26 + 1;
      AddrObjGoogle::protobuf::ServiceDescriptorProto::MergeFrom(*(v27 + 8 * v26), v24);
      ++v23;
    }

    while (v23 < *(a2 + 36));
  }

  v28 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, *(a2 + 42) + *(this + 42));
  if (*(a2 + 42) >= 1)
  {
    v29 = 0;
    do
    {
      v30 = *(*(a2 + 20) + 8 * v29);
      v31 = *(this + 43);
      v32 = *(this + 42);
      if (v32 >= v31)
      {
        if (v31 == *(this + 44))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v31 + 1);
          v31 = *(this + 43);
        }

        *(this + 43) = v31 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
      }

      v33 = *(this + 20);
      *(this + 42) = v32 + 1;
      AddrObjGoogle::protobuf::FieldDescriptorProto::MergeFrom(*(v33 + 8 * v32), v30);
      ++v29;
    }

    while (v29 < *(a2 + 42));
  }

  v34 = *(a2 + 51);
  if (v34)
  {
    if (v34)
    {
      v35 = *(a2 + 2);
      *(this + 51) |= 1u;
      v36 = *(this + 2);
      if (v36 == AddrObjGoogle::protobuf::internal::kEmptyString(v28))
      {
        operator new();
      }

      v28 = std::string::operator=(*(this + 2), v35);
      v34 = *(a2 + 51);
    }

    if ((v34 & 2) != 0)
    {
      v37 = *(a2 + 3);
      *(this + 51) |= 2u;
      v38 = *(this + 3);
      if (v38 == AddrObjGoogle::protobuf::internal::kEmptyString(v28))
      {
        operator new();
      }

      v28 = std::string::operator=(*(this + 3), v37);
      v34 = *(a2 + 51);
    }
  }

  if ((v34 & 0x1FE00) != 0)
  {
    if ((v34 & 0x200) != 0)
    {
      *(this + 51) |= 0x200u;
      v39 = *(this + 23);
      if (!v39)
      {
        operator new();
      }

      v40 = *(a2 + 23);
      if (!v40)
      {
        v40 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(v28) + 184);
      }

      AddrObjGoogle::protobuf::FileOptions::MergeFrom(v39, v40);
      v34 = *(a2 + 51);
    }

    if ((v34 & 0x400) != 0)
    {
      *(this + 51) |= 0x400u;
      v41 = *(this + 24);
      if (!v41)
      {
        operator new();
      }

      v42 = *(a2 + 24);
      if (!v42)
      {
        v42 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(v28) + 192);
      }

      AddrObjGoogle::protobuf::SourceCodeInfo::MergeFrom(v41, v42);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorProto::default_instance(AddrObjGoogle::protobuf::FileDescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::FileOptions::Clear(AddrObjGoogle::protobuf::FileOptions *this)
{
  v2 = AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  v3 = *(this + 26);
  if (v3)
  {
    if (v3)
    {
      v4 = *(this + 5);
      v2 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
      if (v4 != v2)
      {
        v5 = *(this + 5);
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(this + 104) & 2) != 0)
    {
      v6 = *(this + 6);
      v2 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
      if (v6 != v2)
      {
        v7 = *(this + 6);
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    *(this + 30) = 0;
    *(this + 14) = 1;
    if ((*(this + 104) & 0x20) != 0)
    {
      v8 = *(this + 8);
      if (v8 != AddrObjGoogle::protobuf::internal::kEmptyString(v2))
      {
        v9 = *(this + 8);
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    *(this + 31) = 0;
    v3 = *(this + 26);
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 96) = 0;
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 72);
  v12 = *(this + 4);
  v11 = this + 32;
  *(v11 + 18) = 0;
  if (v12)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v11);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::SourceCodeInfo::Clear(AddrObjGoogle::protobuf::SourceCodeInfo *this)
{
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 16);
  v4 = *(this + 1);
  v3 = this + 8;
  *(v3 + 9) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)5>(AddrObjGoogle::protobuf::io::CodedInputStream *this, _DWORD *a2)
{
  v12 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
    if (!result)
    {
      return result;
    }

    v5 = v12;
  }

  else
  {
    v12 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v13 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v9 = v13;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      v10 = a2[2];
      if (v10 == a2[3])
      {
        AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(a2, v10 + 1);
        v10 = a2[2];
      }

      v11 = *a2;
      a2[2] = v10 + 1;
      *(v11 + 4 * v10) = v9;
    }

    while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t **AddrObjGoogle::protobuf::FileDescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 51);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v6 = *(v5 + 51);
  }

  if ((v6 & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, v5[3], a2);
  }

  if (*(v5 + 10) >= 1)
  {
    v7 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, v5[4][v7++], a2);
    }

    while (v7 < *(v5 + 10));
  }

  if (*(v5 + 24) >= 1)
  {
    v8 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v5[11][v8++], a2);
    }

    while (v8 < *(v5 + 24));
  }

  if (*(v5 + 30) >= 1)
  {
    v9 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v5[14][v9++], a2);
    }

    while (v9 < *(v5 + 30));
  }

  if (*(v5 + 36) >= 1)
  {
    v10 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v5[17][v10++], a2);
    }

    while (v10 < *(v5 + 36));
  }

  if (*(v5 + 42) >= 1)
  {
    v11 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v5[20][v11++], a2);
    }

    while (v11 < *(v5 + 42));
  }

  v12 = *(v5 + 51);
  if ((v12 & 0x200) != 0)
  {
    v13 = v5[23];
    if (!v13)
    {
      v13 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(this) + 184);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v13, a2);
    v12 = *(v5 + 51);
  }

  if ((v12 & 0x400) != 0)
  {
    v14 = v5[24];
    if (!v14)
    {
      v14 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(this) + 192);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v14, a2);
  }

  if (*(v5 + 16) >= 1)
  {
    v15 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5[7] + v15++), a2, a4);
    }

    while (v15 < *(v5 + 16));
  }

  if (*(v5 + 20) >= 1)
  {
    v16 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5[9] + v16++), a2, a4);
    }

    while (v16 < *(v5 + 20));
  }

  v19 = v5[1];
  v18 = v5 + 1;
  v17 = v19;
  if (v19 && *v17 != v17[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v18, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::FileDescriptorProto::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::FileDescriptorProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 51);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v4 = this;
    v6 = *(v5 + 51);
  }

  if ((v6 & 2) != 0)
  {
    v14 = *(v5 + 3);
    *v4 = 18;
    v15 = *(v14 + 23);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15 > 0x7F)
    {
      v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v16 = v4 + 2;
    }

    v17 = *(v14 + 23);
    if (v17 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = *v14;
    }

    if (v17 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, a4);
    v4 = this;
  }

  if (*(v5 + 10) >= 1)
  {
    v20 = 0;
    do
    {
      v21 = *(*(v5 + 4) + 8 * v20);
      *v4 = 26;
      v22 = *(v21 + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v22 = *(v21 + 8);
      }

      if (v22 > 0x7F)
      {
        v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v22;
        v23 = v4 + 2;
      }

      v24 = *(v21 + 23);
      if (v24 >= 0)
      {
        v25 = v21;
      }

      else
      {
        v25 = *v21;
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 23);
      }

      else
      {
        v26 = *(v21 + 8);
      }

      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v25, v26, v23, a4);
      v4 = this;
      ++v20;
    }

    while (v20 < *(v5 + 10));
  }

  if (*(v5 + 24) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = *(*(v5 + 11) + 8 * v27);
      *v4 = 34;
      v29 = v28[38];
      if (v29 > 0x7F)
      {
        v30 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v29;
        v30 = v4 + 2;
      }

      this = AddrObjGoogle::protobuf::DescriptorProto::SerializeWithCachedSizesToArray(v28, v30, a3, a4);
      v4 = this;
      ++v27;
    }

    while (v27 < *(v5 + 24));
  }

  if (*(v5 + 30) >= 1)
  {
    v31 = 0;
    do
    {
      v32 = *(*(v5 + 14) + 8 * v31);
      *v4 = 42;
      v33 = v32[14];
      if (v33 > 0x7F)
      {
        v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v33;
        v34 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::EnumDescriptorProto::SerializeWithCachedSizesToArray(v32, v34, a3, a4);
      v4 = this;
      ++v31;
    }

    while (v31 < *(v5 + 30));
  }

  if (*(v5 + 36) >= 1)
  {
    v35 = 0;
    do
    {
      v36 = *(*(v5 + 17) + 8 * v35);
      *v4 = 50;
      v37 = v36[14];
      if (v37 > 0x7F)
      {
        v38 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v37;
        v38 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::ServiceDescriptorProto::SerializeWithCachedSizesToArray(v36, v38, a3, a4);
      v4 = this;
      ++v35;
    }

    while (v35 < *(v5 + 36));
  }

  if (*(v5 + 42) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = *(*(v5 + 20) + 8 * v39);
      *v4 = 58;
      v41 = *(v40 + 68);
      if (v41 > 0x7F)
      {
        v42 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v41;
        v42 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::FieldDescriptorProto::SerializeWithCachedSizesToArray(v40, v42, a3, a4);
      v4 = this;
      ++v39;
    }

    while (v39 < *(v5 + 42));
  }

  v43 = *(v5 + 51);
  if ((v43 & 0x200) != 0)
  {
    v44 = *(v5 + 23);
    if (!v44)
    {
      v44 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(this) + 184);
    }

    *v4 = 66;
    v45 = v44[25];
    if (v45 > 0x7F)
    {
      v46 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v45;
      v46 = v4 + 2;
    }

    this = AddrObjGoogle::protobuf::FileOptions::SerializeWithCachedSizesToArray(v44, v46, a3);
    v4 = this;
    v43 = *(v5 + 51);
  }

  if ((v43 & 0x400) != 0)
  {
    v47 = *(v5 + 24);
    if (!v47)
    {
      v47 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(this) + 192);
    }

    *v4 = 74;
    v48 = v47[10];
    if (v48 > 0x7F)
    {
      v49 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v48, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v48;
      v49 = (v4 + 2);
    }

    v4 = AddrObjGoogle::protobuf::SourceCodeInfo::SerializeWithCachedSizesToArray(v47, v49, a3, a4);
  }

  if (*(v5 + 16) >= 1)
  {
    v50 = 0;
    while (1)
    {
      v51 = *(*(v5 + 7) + 4 * v50);
      *v4 = 80;
      v52 = v4 + 1;
      if ((v51 & 0x80000000) != 0)
      {
        break;
      }

      if (v51 > 0x7F)
      {
        v53 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v52, a3);
        goto LABEL_86;
      }

      *(v4 + 1) = v51;
      v4 = (v4 + 2);
LABEL_87:
      if (++v50 >= *(v5 + 16))
      {
        goto LABEL_88;
      }
    }

    v53 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v51, v52, a3);
LABEL_86:
    v4 = v53;
    goto LABEL_87;
  }

LABEL_88:
  if (*(v5 + 20) >= 1)
  {
    v54 = 0;
    while (1)
    {
      v55 = *(*(v5 + 9) + 4 * v54);
      *v4 = 88;
      v56 = v4 + 1;
      if ((v55 & 0x80000000) != 0)
      {
        break;
      }

      if (v55 > 0x7F)
      {
        v57 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v55, v56, a3);
        goto LABEL_95;
      }

      *(v4 + 1) = v55;
      v4 = (v4 + 2);
LABEL_96:
      if (++v54 >= *(v5 + 20))
      {
        goto LABEL_97;
      }
    }

    v57 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v55, v56, a3);
LABEL_95:
    v4 = v57;
    goto LABEL_96;
  }

LABEL_97:
  v60 = *(v5 + 1);
  v59 = (v5 + 8);
  v58 = v60;
  if (!v60 || *v58 == v58[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v59, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorProto::ByteSize(AddrObjGoogle::protobuf::FileDescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 51);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 51);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 51);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 += v17 + v13 + 1;
  }

LABEL_24:
  if ((v3 & 0x1FE00) != 0)
  {
    if ((v3 & 0x200) != 0)
    {
      v18 = *(this + 23);
      if (!v18)
      {
        v18 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(0) + 184);
      }

      v19 = AddrObjGoogle::protobuf::FileOptions::ByteSize(v18, a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v4 += v20 + v21 + 1;
      v3 = *(this + 51);
    }

    if ((v3 & 0x400) != 0)
    {
      v22 = *(this + 24);
      if (!v22)
      {
        v22 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(0) + 192);
      }

      v23 = AddrObjGoogle::protobuf::SourceCodeInfo::ByteSize(v22, a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v4 += v24 + v25 + 1;
    }
  }

  v26 = *(this + 10);
  v27 = v26 + v4;
  if (v26 >= 1)
  {
    for (i = 0; i < v26; ++i)
    {
      v29 = *(*(this + 4) + 8 * i);
      v30 = *(v29 + 23);
      v31 = v30;
      v32 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v33 = *(v29 + 23);
      }

      else
      {
        v33 = v32;
      }

      if (v33 >= 0x80)
      {
        v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
        v30 = *(v29 + 23);
        v32 = *(v29 + 8);
        v26 = *(this + 10);
        v31 = *(v29 + 23);
      }

      else
      {
        v34 = 1;
      }

      if (v31 < 0)
      {
        v30 = v32;
      }

      v27 += v34 + v30;
    }
  }

  v35 = *(this + 16);
  if (v35 < 1)
  {
    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(*(this + 7) + 4 * v36);
      if ((v38 & 0x80000000) != 0)
      {
        v39 = 10;
      }

      else if (v38 >= 0x80)
      {
        v39 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(this + 16);
      }

      else
      {
        v39 = 1;
      }

      v37 += v39;
      ++v36;
    }

    while (v36 < v35);
  }

  v40 = *(this + 20);
  if (v40 < 1)
  {
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *(*(this + 9) + 4 * v41);
      if ((v43 & 0x80000000) != 0)
      {
        v44 = 10;
      }

      else if (v43 >= 0x80)
      {
        v44 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
        v40 = *(this + 20);
      }

      else
      {
        v44 = 1;
      }

      v42 += v44;
      ++v41;
    }

    while (v41 < v40);
  }

  v45 = *(this + 24);
  v46 = v37 + v27 + v35 + v42 + v40 + v45;
  if (v45 >= 1)
  {
    v47 = 0;
    do
    {
      v48 = AddrObjGoogle::protobuf::DescriptorProto::ByteSize(*(*(this + 11) + 8 * v47), a2);
      v49 = v48;
      if (v48 >= 0x80)
      {
        v50 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
      }

      else
      {
        v50 = 1;
      }

      v46 += v49 + v50;
      ++v47;
    }

    while (v47 < *(this + 24));
  }

  v51 = *(this + 30);
  v52 = v51 + v46;
  if (v51 >= 1)
  {
    v53 = 0;
    do
    {
      v54 = AddrObjGoogle::protobuf::EnumDescriptorProto::ByteSize(*(*(this + 14) + 8 * v53), a2);
      v55 = v54;
      if (v54 >= 0x80)
      {
        v56 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
      }

      else
      {
        v56 = 1;
      }

      v52 += v55 + v56;
      ++v53;
    }

    while (v53 < *(this + 30));
  }

  v57 = *(this + 36);
  v58 = v57 + v52;
  if (v57 >= 1)
  {
    v59 = 0;
    do
    {
      v60 = AddrObjGoogle::protobuf::ServiceDescriptorProto::ByteSize(*(*(this + 17) + 8 * v59), a2);
      v61 = v60;
      if (v60 >= 0x80)
      {
        v62 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
      }

      else
      {
        v62 = 1;
      }

      v58 += v61 + v62;
      ++v59;
    }

    while (v59 < *(this + 36));
  }

  v63 = *(this + 42);
  v64 = (v63 + v58);
  if (v63 >= 1)
  {
    v65 = 0;
    do
    {
      v66 = AddrObjGoogle::protobuf::FieldDescriptorProto::ByteSize(*(*(this + 20) + 8 * v65), a2);
      v67 = v66;
      if (v66 >= 0x80)
      {
        v68 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
      }

      else
      {
        v68 = 1;
      }

      v64 = (v67 + v64 + v68);
      ++v65;
    }

    while (v65 < *(this + 42));
  }

  v69 = *(this + 1);
  if (v69 && *v69 != v69[1])
  {
    v64 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v64;
  }

  *(this + 50) = v64;
  return v64;
}

void AddrObjGoogle::protobuf::FileDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::FileDescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 1499);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::FileDescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E2D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FileOptions::MergeFrom(AddrObjGoogle::protobuf::FileOptions *this, const AddrObjGoogle::protobuf::FileOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 4879);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v24, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, *(a2 + 20) + *(this + 20));
  if (*(a2 + 20) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 9) + 8 * v6);
      v8 = *(this + 21);
      v9 = *(this + 20);
      if (v9 >= v8)
      {
        if (v8 == *(this + 22))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v8 + 1);
          v8 = *(this + 21);
        }

        *(this + 21) = v8 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v10 = *(this + 9);
      *(this + 20) = v9 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 20));
  }

  v11 = *(a2 + 26);
  if (!v11)
  {
    goto LABEL_21;
  }

  if (v11)
  {
    v14 = *(a2 + 5);
    *(this + 26) |= 1u;
    v15 = *(this + 5);
    if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
    {
      operator new();
    }

    v5 = std::string::operator=(*(this + 5), v14);
    v11 = *(a2 + 26);
    if ((v11 & 2) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a2 + 6);
  *(this + 26) |= 2u;
  v17 = *(this + 6);
  if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
  {
    operator new();
  }

  v5 = std::string::operator=(*(this + 6), v16);
  v11 = *(a2 + 26);
  if ((v11 & 4) == 0)
  {
LABEL_15:
    if ((v11 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(a2 + 60);
  *(this + 26) |= 4u;
  *(this + 60) = v18;
  v11 = *(a2 + 26);
  if ((v11 & 8) == 0)
  {
LABEL_16:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(a2 + 61);
  *(this + 26) |= 8u;
  *(this + 61) = v19;
  v11 = *(a2 + 26);
  if ((v11 & 0x10) == 0)
  {
LABEL_17:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    v21 = *(a2 + 8);
    *(this + 26) |= 0x20u;
    v22 = *(this + 8);
    if (v22 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
    {
      operator new();
    }

    std::string::operator=(*(this + 8), v21);
    v11 = *(a2 + 26);
    if ((v11 & 0x40) == 0)
    {
LABEL_19:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_34:
  v20 = *(a2 + 14);
  *(this + 26) |= 0x10u;
  *(this + 14) = v20;
  v11 = *(a2 + 26);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_39:
  v23 = *(a2 + 62);
  *(this + 26) |= 0x40u;
  *(this + 62) = v23;
  v11 = *(a2 + 26);
  if ((v11 & 0x80) != 0)
  {
LABEL_20:
    v12 = *(a2 + 63);
    *(this + 26) |= 0x80u;
    *(this + 63) = v12;
    v11 = *(a2 + 26);
  }

LABEL_21:
  if ((v11 & 0x100) != 0)
  {
    v13 = *(a2 + 96);
    *(this + 26) |= 0x100u;
    *(this + 96) = v13;
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E3048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::SourceCodeInfo::MergeFrom(AddrObjGoogle::protobuf::SourceCodeInfo *this, const AddrObjGoogle::protobuf::SourceCodeInfo *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 8035);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, *(a2 + 6) + *(this + 6));
  if (*(a2 + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v7 + 1);
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::SourceCodeInfo_Location>::New();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      AddrObjGoogle::protobuf::SourceCodeInfo_Location::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 6));
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868E3188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::FileDescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorProto::GetMetadata(AddrObjGoogle::protobuf::FileDescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905798;
}

void sub_1868E32C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::MergeFrom(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this, const AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 1796);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 4);
      *(this + 7) |= 1u;
      *(this + 4) = v6;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 5);
      *(this + 7) |= 2u;
      *(this + 5) = v7;
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868E338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this)
{
  v1 = AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::Clear(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this)
{
  if (*(this + 28))
  {
    *(this + 2) = 0;
  }

  v2 = *(this + 1);
  result = (this + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 7);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 4), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 20), a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 4);
    *a2 = 8;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(a2 + 1) = v5;
        a2 = (a2 + 2);
        goto LABEL_8;
      }

      v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    a2 = v6;
  }

LABEL_8:
  if ((*(this + 28) & 2) != 0)
  {
    v7 = *(this + 5);
    *a2 = 16;
    if ((v7 & 0x80000000) != 0)
    {
      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, a2 + 1, a3);
    }

    else
    {
      if (v7 <= 0x7F)
      {
        *(a2 + 1) = v7;
        a2 = (a2 + 2);
        goto LABEL_15;
      }

      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    a2 = v8;
  }

LABEL_15:
  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::ByteSize(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 28);
  if (v3)
  {
    if ((*(this + 28) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v6 = *(this + 5);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v4 = (v7 + v4);
      goto LABEL_19;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    if ((*(this + 7) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 6) = v4;
  return v4;
}

void AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::MergeFrom(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 1784);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E3778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::GetMetadata(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9057B8;
}

void sub_1868E38B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorProto::MergeFrom(AddrObjGoogle::protobuf::DescriptorProto *this, const AddrObjGoogle::protobuf::DescriptorProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v37, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 2254);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v37, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v36, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v37[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, *(a2 + 8) + *(this + 8));
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 3) + 8 * v5);
      v7 = *(this + 9);
      v8 = *(this + 8);
      if (v8 >= v7)
      {
        if (v7 == *(this + 10))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v7 + 1);
          v7 = *(this + 9);
        }

        *(this + 9) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
      }

      v9 = *(this + 3);
      *(this + 8) = v8 + 1;
      AddrObjGoogle::protobuf::FieldDescriptorProto::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, *(a2 + 14) + *(this + 14));
  if (*(a2 + 14) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(a2 + 6) + 8 * v10);
      v12 = *(this + 15);
      v13 = *(this + 14);
      if (v13 >= v12)
      {
        if (v12 == *(this + 16))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v12 + 1);
          v12 = *(this + 15);
        }

        *(this + 15) = v12 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
      }

      v14 = *(this + 6);
      *(this + 14) = v13 + 1;
      AddrObjGoogle::protobuf::FieldDescriptorProto::MergeFrom(*(v14 + 8 * v13), v11);
      ++v10;
    }

    while (v10 < *(a2 + 14));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, *(a2 + 20) + *(this + 20));
  if (*(a2 + 20) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(a2 + 9) + 8 * v15);
      v17 = *(this + 21);
      v18 = *(this + 20);
      if (v18 >= v17)
      {
        if (v17 == *(this + 22))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v17 + 1);
          v17 = *(this + 21);
        }

        *(this + 21) = v17 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto>::New();
      }

      v19 = *(this + 9);
      *(this + 20) = v18 + 1;
      AddrObjGoogle::protobuf::DescriptorProto::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
    }

    while (v15 < *(a2 + 20));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, *(a2 + 26) + *(this + 26));
  if (*(a2 + 26) >= 1)
  {
    v20 = 0;
    do
    {
      v21 = *(*(a2 + 12) + 8 * v20);
      v22 = *(this + 27);
      v23 = *(this + 26);
      if (v23 >= v22)
      {
        if (v22 == *(this + 28))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v22 + 1);
          v22 = *(this + 27);
        }

        *(this + 27) = v22 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumDescriptorProto>::New();
      }

      v24 = *(this + 12);
      *(this + 26) = v23 + 1;
      AddrObjGoogle::protobuf::EnumDescriptorProto::MergeFrom(*(v24 + 8 * v23), v21);
      ++v20;
    }

    while (v20 < *(a2 + 26));
  }

  v25 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, *(a2 + 32) + *(this + 32));
  if (*(a2 + 32) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = *(*(a2 + 15) + 8 * v26);
      v28 = *(this + 33);
      v29 = *(this + 32);
      if (v29 >= v28)
      {
        if (v28 == *(this + 34))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v28 + 1);
          v28 = *(this + 33);
        }

        *(this + 33) = v28 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange>::New();
      }

      v30 = *(this + 15);
      *(this + 32) = v29 + 1;
      AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::MergeFrom(*(v30 + 8 * v29), v27);
      ++v26;
    }

    while (v26 < *(a2 + 32));
  }

  LOBYTE(v31) = *(a2 + 156);
  if (v31)
  {
    if (*(a2 + 156))
    {
      v32 = *(a2 + 2);
      *(this + 39) |= 1u;
      v33 = *(this + 2);
      if (v33 == AddrObjGoogle::protobuf::internal::kEmptyString(v25))
      {
        operator new();
      }

      v25 = std::string::operator=(*(this + 2), v32);
      v31 = *(a2 + 39);
    }

    if ((v31 & 0x40) != 0)
    {
      *(this + 39) |= 0x40u;
      v34 = *(this + 18);
      if (!v34)
      {
        operator new();
      }

      v35 = *(a2 + 18);
      if (!v35)
      {
        v35 = *(AddrObjGoogle::protobuf::DescriptorProto::default_instance_(v25) + 144);
      }

      AddrObjGoogle::protobuf::MessageOptions::MergeFrom(v34, v35);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto::default_instance(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::DescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::DescriptorProto::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::DescriptorProto::Clear(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  if (*(this + 156))
  {
    if (*(this + 156))
    {
      v2 = *(this + 2);
      if (v2 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v3 = *(this + 2);
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 156) & 0x40) != 0)
    {
      v4 = *(this + 18);
      if (v4)
      {
        AddrObjGoogle::protobuf::MessageOptions::Clear(v4);
      }
    }
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 24);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 48);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 72);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 96);
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 120);
  v7 = *(this + 1);
  v6 = this + 8;
  *(v6 + 37) = 0;
  if (v7)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::MessageOptions::Clear(AddrObjGoogle::protobuf::MessageOptions *this)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  if (*(this + 72))
  {
    *(this + 32) = 0;
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 40);
  v4 = *(this + 4);
  v3 = this + 32;
  *(v3 + 10) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::DescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 156))
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
  }

  if (*(v4 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v4[3][v5++], a2);
    }

    while (v5 < *(v4 + 8));
  }

  if (*(v4 + 20) >= 1)
  {
    v6 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v4[9][v6++], a2);
    }

    while (v6 < *(v4 + 20));
  }

  if (*(v4 + 26) >= 1)
  {
    v7 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v4[12][v7++], a2);
    }

    while (v7 < *(v4 + 26));
  }

  if (*(v4 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v4[15][v8++], a2);
    }

    while (v8 < *(v4 + 32));
  }

  if (*(v4 + 14) >= 1)
  {
    v9 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v4[6][v9++], a2);
    }

    while (v9 < *(v4 + 14));
  }

  if ((*(v4 + 156) & 0x40) != 0)
  {
    v10 = v4[18];
    if (!v10)
    {
      v10 = *(AddrObjGoogle::protobuf::DescriptorProto::default_instance_(this) + 144);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v10, a2);
  }

  v13 = v4[1];
  v12 = v4 + 1;
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

const AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::DescriptorProto::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::DescriptorProto *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  if (*(this + 156))
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v6 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v9 = v4 + 2;
    }

    v10 = *(v6 + 23);
    if (v10 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
    v4 = this;
  }

  if (*(v5 + 8) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(v5 + 3) + 8 * v13);
      *v4 = 18;
      v15 = *(v14 + 68);
      if (v15 > 0x7F)
      {
        v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v15;
        v16 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::FieldDescriptorProto::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
      v4 = this;
      ++v13;
    }

    while (v13 < *(v5 + 8));
  }

  if (*(v5 + 20) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = *(*(v5 + 9) + 8 * v17);
      *v4 = 26;
      v19 = v18[38];
      if (v19 > 0x7F)
      {
        v20 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v19;
        v20 = v4 + 2;
      }

      this = AddrObjGoogle::protobuf::DescriptorProto::SerializeWithCachedSizesToArray(v18, v20, a3, a4);
      v4 = this;
      ++v17;
    }

    while (v17 < *(v5 + 20));
  }

  if (*(v5 + 26) >= 1)
  {
    v21 = 0;
    do
    {
      v22 = *(*(v5 + 12) + 8 * v21);
      *v4 = 34;
      v23 = v22[14];
      if (v23 > 0x7F)
      {
        v24 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v23;
        v24 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::EnumDescriptorProto::SerializeWithCachedSizesToArray(v22, v24, a3, a4);
      v4 = this;
      ++v21;
    }

    while (v21 < *(v5 + 26));
  }

  if (*(v5 + 32) >= 1)
  {
    v25 = 0;
    do
    {
      v26 = *(*(v5 + 15) + 8 * v25);
      *v4 = 42;
      v27 = v26[6];
      if (v27 > 0x7F)
      {
        v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v27;
        v28 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::SerializeWithCachedSizesToArray(v26, v28, a3, a4);
      v4 = this;
      ++v25;
    }

    while (v25 < *(v5 + 32));
  }

  if (*(v5 + 14) >= 1)
  {
    v29 = 0;
    do
    {
      v30 = *(*(v5 + 6) + 8 * v29);
      *v4 = 50;
      v31 = *(v30 + 68);
      if (v31 > 0x7F)
      {
        v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v31;
        v32 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::FieldDescriptorProto::SerializeWithCachedSizesToArray(v30, v32, a3, a4);
      v4 = this;
      ++v29;
    }

    while (v29 < *(v5 + 14));
  }

  if ((*(v5 + 156) & 0x40) != 0)
  {
    v33 = *(v5 + 18);
    if (!v33)
    {
      v33 = *(AddrObjGoogle::protobuf::DescriptorProto::default_instance_(this) + 144);
    }

    *v4 = 58;
    v34 = v33[17];
    if (v34 > 0x7F)
    {
      v35 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v34;
      v35 = v4 + 2;
    }

    v4 = AddrObjGoogle::protobuf::MessageOptions::SerializeWithCachedSizesToArray(v33, v35, a3);
  }

  v38 = *(v5 + 1);
  v37 = (v5 + 8);
  v36 = v38;
  if (!v38 || *v36 == v36[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v37, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto::ByteSize(AddrObjGoogle::protobuf::DescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 156);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(this + 156) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 156) & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 39);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 0x40) != 0)
  {
LABEL_15:
    v12 = *(this + 18);
    if (!v12)
    {
      v12 = *(AddrObjGoogle::protobuf::DescriptorProto::default_instance_(0) + 144);
    }

    v13 = AddrObjGoogle::protobuf::MessageOptions::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
  }

LABEL_21:
  v16 = *(this + 8);
  v17 = v16 + v4;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = AddrObjGoogle::protobuf::FieldDescriptorProto::ByteSize(*(*(this + 3) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 += v20 + v21;
      ++v18;
    }

    while (v18 < *(this + 8));
  }

  v22 = *(this + 14);
  v23 = v22 + v17;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = AddrObjGoogle::protobuf::FieldDescriptorProto::ByteSize(*(*(this + 6) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(this + 14));
  }

  v28 = *(this + 20);
  v29 = v28 + v23;
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = AddrObjGoogle::protobuf::DescriptorProto::ByteSize(*(*(this + 9) + 8 * v30), a2);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v29 += v32 + v33;
      ++v30;
    }

    while (v30 < *(this + 20));
  }

  v34 = *(this + 26);
  v35 = v34 + v29;
  if (v34 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = AddrObjGoogle::protobuf::EnumDescriptorProto::ByteSize(*(*(this + 12) + 8 * v36), a2);
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      }

      else
      {
        v39 = 1;
      }

      v35 += v38 + v39;
      ++v36;
    }

    while (v36 < *(this + 26));
  }

  v40 = *(this + 32);
  v41 = (v40 + v35);
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v43 = AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::ByteSize(*(*(this + 15) + 8 * v42), a2);
      v44 = v43;
      if (v43 >= 0x80)
      {
        v45 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
      }

      else
      {
        v45 = 1;
      }

      v41 = (v44 + v41 + v45);
      ++v42;
    }

    while (v42 < *(this + 32));
  }

  v46 = *(this + 1);
  if (v46 && *v46 != v46[1])
  {
    v41 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v41;
  }

  *(this + 38) = v41;
  return v41;
}

void AddrObjGoogle::protobuf::DescriptorProto::MergeFrom(AddrObjGoogle::protobuf::DescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 2242);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::DescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E4768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::MessageOptions::MergeFrom(AddrObjGoogle::protobuf::MessageOptions *this, const AddrObjGoogle::protobuf::MessageOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 5213);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v13, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  LOBYTE(v10) = *(a2 + 72);
  if (v10)
  {
    if (*(a2 + 72))
    {
      v11 = *(a2 + 64);
      *(this + 18) |= 1u;
      *(this + 64) = v11;
      v10 = *(a2 + 18);
    }

    if ((v10 & 2) != 0)
    {
      v12 = *(a2 + 65);
      *(this + 18) |= 2u;
      *(this + 65) = v12;
    }
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E48F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::DescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto::GetMetadata(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9057A8;
}

void sub_1868E4A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FieldDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::FieldDescriptorProto *this, const AddrObjGoogle::protobuf::FieldDescriptorProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 2902);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v19, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 72);
  if (!v5)
  {
    goto LABEL_37;
  }

  if (*(a2 + 72))
  {
    v6 = *(a2 + 2);
    *(v3 + 18) |= 1u;
    v7 = *(v3 + 2);
    if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 2), v6);
    v5 = *(a2 + 18);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 6);
  *(v3 + 18) |= 2u;
  *(v3 + 6) = v8;
  v5 = *(a2 + 18);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 7);
  *(v3 + 18) |= 4u;
  *(v3 + 7) = v9;
  v5 = *(a2 + 18);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 16);
  *(v3 + 18) |= 8u;
  *(v3 + 16) = v10;
  v5 = *(a2 + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 5);
    *(v3 + 18) |= 0x20u;
    v14 = *(v3 + 5);
    if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 5), v13);
    v5 = *(a2 + 18);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_20:
  v11 = *(a2 + 4);
  *(v3 + 18) |= 0x10u;
  v12 = *(v3 + 4);
  if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 4), v11);
  v5 = *(a2 + 18);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v15 = *(a2 + 6);
  *(v3 + 18) |= 0x40u;
  v16 = *(v3 + 6);
  if (v16 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 6), v15);
  if ((*(a2 + 18) & 0x80) != 0)
  {
LABEL_32:
    *(v3 + 18) |= 0x80u;
    v17 = *(v3 + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      v18 = *(AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(this) + 56);
    }

    AddrObjGoogle::protobuf::FieldOptions::MergeFrom(v17, v18);
  }

LABEL_37:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

uint64_t AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(v1);
}

uint64_t *AddrObjGoogle::protobuf::FieldDescriptorProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 72))
  {
    if (this[9])
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    v1[3] = 0x100000000;
    *(v1 + 16) = 1;
    if ((v1[9] & 0x10) != 0)
    {
      v4 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[4];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((v1[9] & 0x20) != 0)
    {
      v6 = v1[5];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[5];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((v1[9] & 0x40) != 0)
    {
      v8 = v1[6];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v8 != this)
      {
        v9 = v1[6];
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((v1[9] & 0x80) != 0)
    {
      this = v1[7];
      if (this)
      {
        this = AddrObjGoogle::protobuf::FieldOptions::Clear(this);
      }
    }
  }

  v11 = v1[1];
  v10 = v1 + 1;
  *(v10 + 16) = 0;
  if (v11)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return this;
}

uint64_t **AddrObjGoogle::protobuf::FieldOptions::Clear(AddrObjGoogle::protobuf::FieldOptions *this)
{
  v2 = AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  v3 = *(this + 84);
  if (v3)
  {
    *(this + 43) = 0;
    *(this + 10) = 0;
    if ((v3 & 0x10) != 0)
    {
      v4 = *(this + 6);
      if (v4 != AddrObjGoogle::protobuf::internal::kEmptyString(v2))
      {
        v5 = *(this + 6);
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(this + 47) = 0;
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 56);
  v8 = *(this + 4);
  v7 = this + 32;
  *(v7 + 13) = 0;
  if (v8)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::FieldDescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 18);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v6 = *(v5 + 18);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, v5[5], a2);
  v6 = *(v5 + 18);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 6), a2, a4);
  v6 = *(v5 + 18);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 7), a2, a4);
  v6 = *(v5 + 18);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 16), a2, a4);
  v6 = *(v5 + 18);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(7, v5[6], a2);
    if ((v5[9] & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(6, v5[4], a2);
  v6 = *(v5 + 18);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v7 = v5[7];
  if (!v7)
  {
    v7 = *(AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(this) + 56);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v7, a2);
LABEL_20:
  v10 = v5[1];
  v9 = v5 + 1;
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::FieldDescriptorProto::SerializeWithCachedSizesToArray(unint64_t this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 72);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v14 = *(v5 + 40);
    *v4 = 18;
    v15 = *(v14 + 23);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15 > 0x7F)
    {
      v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v16 = v4 + 2;
    }

    v17 = *(v14 + 23);
    if (v17 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = *v14;
    }

    if (v17 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, a4);
    v4 = this;
    if ((*(v5 + 72) & 2) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v7 = *(this + 16);
  *a2 = 10;
  v8 = a2 + 1;
  v9 = *(v7 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v7 + 8);
  }

  if (v9 > 0x7F)
  {
    v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
  }

  else
  {
    *(v4 + 1) = v9;
    v10 = v4 + 2;
  }

  v11 = *(v7 + 23);
  if (v11 >= 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *v7;
  }

  if (v11 >= 0)
  {
    v13 = *(v7 + 23);
  }

  else
  {
    v13 = *(v7 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  v4 = this;
  v6 = *(v5 + 72);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  this = *(v5 + 24);
  *v4 = 24;
  v20 = v4 + 1;
  if ((this & 0x80000000) != 0)
  {
    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(this, v20, a3);
  }

  else
  {
    if (this <= 0x7F)
    {
      *(v4 + 1) = this;
      v4 = (v4 + 2);
      goto LABEL_35;
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(this, v20, a3);
  }

  v4 = this;
LABEL_35:
  if ((*(v5 + 72) & 4) == 0)
  {
    goto LABEL_42;
  }

  this = *(v5 + 28);
  *v4 = 32;
  v21 = v4 + 1;
  if ((this & 0x80000000) != 0)
  {
    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(this, v21, a3);
  }

  else
  {
    if (this <= 0x7F)
    {
      *(v4 + 1) = this;
      v4 = (v4 + 2);
      goto LABEL_42;
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(this, v21, a3);
  }

  v4 = this;
LABEL_42:
  if ((*(v5 + 72) & 8) == 0)
  {
    goto LABEL_49;
  }

  this = *(v5 + 64);
  *v4 = 40;
  v22 = v4 + 1;
  if ((this & 0x80000000) != 0)
  {
    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(this, v22, a3);
  }

  else
  {
    if (this <= 0x7F)
    {
      *(v4 + 1) = this;
      v4 = (v4 + 2);
      goto LABEL_49;
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(this, v22, a3);
  }

  v4 = this;
LABEL_49:
  v23 = *(v5 + 72);
  if ((v23 & 0x10) != 0)
  {
    v24 = *(v5 + 32);
    *v4 = 50;
    v25 = *(v24 + 23);
    if ((v25 & 0x8000000000000000) != 0)
    {
      v25 = *(v24 + 8);
    }

    if (v25 > 0x7F)
    {
      v26 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v25;
      v26 = v4 + 2;
    }

    v27 = *(v24 + 23);
    if (v27 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = *v24;
    }

    if (v27 >= 0)
    {
      v29 = *(v24 + 23);
    }

    else
    {
      v29 = *(v24 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v28, v29, v26, a4);
    v4 = this;
    v23 = *(v5 + 72);
    if ((v23 & 0x40) == 0)
    {
LABEL_51:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_77;
    }
  }

  else if ((v23 & 0x40) == 0)
  {
    goto LABEL_51;
  }

  v30 = *(v5 + 48);
  *v4 = 58;
  v31 = *(v30 + 23);
  if ((v31 & 0x8000000000000000) != 0)
  {
    v31 = *(v30 + 8);
  }

  if (v31 > 0x7F)
  {
    v32 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v31;
    v32 = v4 + 2;
  }

  v33 = *(v30 + 23);
  if (v33 >= 0)
  {
    v34 = v30;
  }

  else
  {
    v34 = *v30;
  }

  if (v33 >= 0)
  {
    v35 = *(v30 + 23);
  }

  else
  {
    v35 = *(v30 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v34, v35, v32, a4);
  v4 = this;
  if ((*(v5 + 72) & 0x80) != 0)
  {
LABEL_77:
    v36 = *(v5 + 56);
    if (!v36)
    {
      v36 = *(AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(this) + 56);
    }

    *v4 = 66;
    v37 = v36[20];
    if (v37 > 0x7F)
    {
      v38 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v37;
      v38 = v4 + 2;
    }

    v4 = AddrObjGoogle::protobuf::FieldOptions::SerializeWithCachedSizesToArray(v36, v38, a3);
  }

LABEL_83:
  v41 = *(v5 + 8);
  v40 = (v5 + 8);
  v39 = v41;
  if (!v41 || *v39 == v39[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v40, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::FieldDescriptorProto::ByteSize(AddrObjGoogle::protobuf::FieldDescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_73;
  }

  if ((*(this + 72) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 18);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_21:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 7);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 18);
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_23:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_23;
  }

  v16 = *(this + 16);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 18);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_24:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_40:
  v18 = *(this + 4);
  v19 = *(v18 + 23);
  v20 = v19;
  v21 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 0x80)
  {
    v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v3 = *(this + 18);
    v20 = *(v18 + 23);
  }

  else
  {
    v23 = 1;
  }

  if (v20 < 0)
  {
    v19 = v21;
  }

  v4 = (v4 + v23 + v19 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_25:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_49:
  v24 = *(this + 5);
  v25 = *(v24 + 23);
  v26 = v25;
  v27 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = v27;
  }

  if (v28 >= 0x80)
  {
    v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    v25 = *(v24 + 23);
    v27 = *(v24 + 8);
    v3 = *(this + 18);
    v26 = *(v24 + 23);
  }

  else
  {
    v29 = 1;
  }

  if (v26 < 0)
  {
    v25 = v27;
  }

  v4 = (v4 + v29 + v25 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_26:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

LABEL_58:
  v30 = *(this + 6);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v3 = *(this + 18);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v4 = (v4 + v35 + v31 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_67:
    v36 = *(this + 7);
    if (!v36)
    {
      v36 = *(AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(0) + 56);
    }

    v37 = AddrObjGoogle::protobuf::FieldOptions::ByteSize(v36, a2);
    v38 = v37;
    if (v37 >= 0x80)
    {
      v39 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
    }

    else
    {
      v39 = 1;
    }

    v4 = (v4 + v38 + v39 + 1);
  }

LABEL_73:
  v40 = *(this + 1);
  if (v40 && *v40 != v40[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 17) = v4;
  return v4;
}

void AddrObjGoogle::protobuf::FieldDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::FieldDescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 2890);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::FieldDescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E57DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FieldOptions::MergeFrom(AddrObjGoogle::protobuf::FieldOptions *this, const AddrObjGoogle::protobuf::FieldOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 5703);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v19, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, *(a2 + 16) + *(this + 16));
  if (*(a2 + 16) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 7) + 8 * v6);
      v8 = *(this + 17);
      v9 = *(this + 16);
      if (v9 >= v8)
      {
        if (v8 == *(this + 18))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, v8 + 1);
          v8 = *(this + 17);
        }

        *(this + 17) = v8 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v10 = *(this + 7);
      *(this + 16) = v9 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 16));
  }

  LOBYTE(v11) = *(a2 + 84);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (*(a2 + 84))
  {
    v13 = *(a2 + 10);
    *(this + 21) |= 1u;
    *(this + 10) = v13;
    v11 = *(a2 + 21);
    if ((v11 & 2) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a2 + 84) & 2) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a2 + 44);
  *(this + 21) |= 2u;
  *(this + 44) = v14;
  v11 = *(a2 + 21);
  if ((v11 & 4) == 0)
  {
LABEL_15:
    if ((v11 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(a2 + 45);
  *(this + 21) |= 4u;
  *(this + 45) = v15;
  v11 = *(a2 + 21);
  if ((v11 & 8) == 0)
  {
LABEL_16:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v17 = *(a2 + 6);
    *(this + 21) |= 0x10u;
    v18 = *(this + 6);
    if (v18 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
    {
      operator new();
    }

    std::string::operator=(*(this + 6), v17);
    if ((*(a2 + 21) & 0x20) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_23:
  v16 = *(a2 + 46);
  *(this + 21) |= 8u;
  *(this + 46) = v16;
  v11 = *(a2 + 21);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if ((v11 & 0x20) != 0)
  {
LABEL_18:
    v12 = *(a2 + 47);
    *(this + 21) |= 0x20u;
    *(this + 47) = v12;
  }

LABEL_19:
  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E5A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::FieldDescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::FieldDescriptorProto::GetMetadata(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9057C8;
}

void sub_1868E5B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::EnumDescriptorProto *this, const AddrObjGoogle::protobuf::EnumDescriptorProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 3235);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, *(a2 + 8) + *(this + 8));
  if (*(a2 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 3) + 8 * v6);
      v8 = *(this + 9);
      v9 = *(this + 8);
      if (v9 >= v8)
      {
        if (v8 == *(this + 10))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v8 + 1);
          v8 = *(this + 9);
        }

        *(this + 9) = v8 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumValueDescriptorProto>::New();
      }

      v10 = *(this + 3);
      *(this + 8) = v9 + 1;
      AddrObjGoogle::protobuf::EnumValueDescriptorProto::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  LOBYTE(v11) = *(a2 + 60);
  if (v11)
  {
    if (*(a2 + 60))
    {
      v12 = *(a2 + 2);
      *(this + 15) |= 1u;
      v13 = *(this + 2);
      if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
      {
        operator new();
      }

      v5 = std::string::operator=(*(this + 2), v12);
      v11 = *(a2 + 15);
    }

    if ((v11 & 4) != 0)
    {
      *(this + 15) |= 4u;
      v14 = *(this + 6);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 6);
      if (!v15)
      {
        v15 = *(AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(v5) + 48);
      }

      AddrObjGoogle::protobuf::EnumOptions::MergeFrom(v14, v15);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::EnumDescriptorProto::Clear(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
{
  if (*(this + 60))
  {
    if (*(this + 60))
    {
      v2 = *(this + 2);
      if (v2 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v3 = *(this + 2);
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 60) & 4) != 0)
    {
      v4 = *(this + 6);
      if (v4)
      {
        AddrObjGoogle::protobuf::EnumOptions::Clear(v4);
      }
    }
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 24);
  v7 = *(this + 1);
  v6 = this + 8;
  *(v6 + 13) = 0;
  if (v7)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::EnumOptions::Clear(AddrObjGoogle::protobuf::EnumOptions *this)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  if (*(this + 72))
  {
    *(this + 64) = 1;
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 40);
  v4 = *(this + 4);
  v3 = this + 32;
  *(v3 + 10) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::EnumDescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 60))
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
  }

  if (*(v4 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v4[3][v5++], a2);
    }

    while (v5 < *(v4 + 8));
  }

  if ((*(v4 + 60) & 4) != 0)
  {
    v6 = v4[6];
    if (!v6)
    {
      v6 = *(AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(this) + 48);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v6, a2);
  }

  v9 = v4[1];
  v8 = v4 + 1;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::EnumDescriptorProto::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::EnumDescriptorProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  if (*(this + 60))
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v6 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v9 = v4 + 2;
    }

    v10 = *(v6 + 23);
    if (v10 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
    v4 = this;
  }

  if (*(v5 + 8) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(v5 + 3) + 8 * v13);
      *v4 = 18;
      v15 = *(v14 + 36);
      if (v15 > 0x7F)
      {
        v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v15;
        v16 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::EnumValueDescriptorProto::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
      v4 = this;
      ++v13;
    }

    while (v13 < *(v5 + 8));
  }

  if ((*(v5 + 60) & 4) != 0)
  {
    v17 = *(v5 + 6);
    if (!v17)
    {
      v17 = *(AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(this) + 48);
    }

    *v4 = 26;
    v18 = v17[17];
    if (v18 > 0x7F)
    {
      v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v18;
      v19 = v4 + 2;
    }

    v4 = AddrObjGoogle::protobuf::EnumOptions::SerializeWithCachedSizesToArray(v17, v19, a3);
  }

  v22 = *(v5 + 1);
  v21 = (v5 + 8);
  v20 = v22;
  if (!v22 || *v20 == v20[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptorProto::ByteSize(AddrObjGoogle::protobuf::EnumDescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 60) & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 15);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 4) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
    if (!v12)
    {
      v12 = *(AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(0) + 48);
    }

    v13 = AddrObjGoogle::protobuf::EnumOptions::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
  }

LABEL_21:
  v16 = *(this + 8);
  v17 = (v16 + v4);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = AddrObjGoogle::protobuf::EnumValueDescriptorProto::ByteSize(*(*(this + 3) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(this + 8));
  }

  v22 = *(this + 1);
  if (v22 && *v22 != v22[1])
  {
    v17 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v17;
  }

  *(this + 14) = v17;
  return v17;
}

void AddrObjGoogle::protobuf::EnumDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::EnumDescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 3223);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::EnumDescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E63C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumOptions::MergeFrom(AddrObjGoogle::protobuf::EnumOptions *this, const AddrObjGoogle::protobuf::EnumOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 5989);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  if (*(a2 + 72))
  {
    v10 = *(a2 + 64);
    *(this + 18) |= 1u;
    *(this + 64) = v10;
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E6530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::EnumDescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptorProto::GetMetadata(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9057E8;
}

void sub_1868E6668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumValueDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this, const AddrObjGoogle::protobuf::EnumValueDescriptorProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 3547);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v11, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 2);
      *(v3 + 10) |= 1u;
      v7 = *(v3 + 2);
      if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = std::string::operator=(*(v3 + 2), v6);
      v5 = *(a2 + 10);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_18;
        }

LABEL_13:
        *(v3 + 10) |= 4u;
        v9 = *(v3 + 3);
        if (!v9)
        {
          operator new();
        }

        v10 = *(a2 + 3);
        if (!v10)
        {
          v10 = *(AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(this) + 24);
        }

        AddrObjGoogle::protobuf::EnumValueOptions::MergeFrom(v9, v10);
        goto LABEL_18;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 8);
    *(v3 + 10) |= 2u;
    *(v3 + 8) = v8;
    if ((*(a2 + 10) & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

uint64_t AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(v1);
}

uint64_t *AddrObjGoogle::protobuf::EnumValueDescriptorProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 40))
  {
    if (this[5])
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(v1 + 8) = 0;
    if ((v1[5] & 4) != 0)
    {
      this = v1[3];
      if (this)
      {
        this = AddrObjGoogle::protobuf::EnumValueOptions::Clear(this);
      }
    }
  }

  v5 = v1[1];
  v4 = v1 + 1;
  *(v4 + 8) = 0;
  if (v5)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t **AddrObjGoogle::protobuf::EnumValueOptions::Clear(AddrObjGoogle::protobuf::EnumValueOptions *this)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 40);
  v4 = *(this + 4);
  v3 = this + 32;
  *(v3 + 9) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::EnumValueDescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 10);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 8), a2, a4);
    if ((v5[5] & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
  v6 = *(v5 + 10);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = v5[3];
  if (!v7)
  {
    v7 = *(AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(this) + 24);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v7, a2);
LABEL_10:
  v10 = v5[1];
  v9 = v5 + 1;
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::EnumValueDescriptorProto::SerializeWithCachedSizesToArray(unint64_t this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 16);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v4 = this;
    v6 = *(v5 + 40);
  }

  if ((v6 & 2) != 0)
  {
    this = *(v5 + 32);
    *v4 = 16;
    v14 = v4 + 1;
    if ((this & 0x80000000) != 0)
    {
      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(this, v14, a3);
    }

    else
    {
      if (this <= 0x7F)
      {
        *(v4 + 1) = this;
        v4 = (v4 + 2);
        goto LABEL_21;
      }

      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(this, v14, a3);
    }

    v4 = this;
  }

LABEL_21:
  if ((*(v5 + 40) & 4) != 0)
  {
    v15 = *(v5 + 24);
    if (!v15)
    {
      v15 = *(AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(this) + 24);
    }

    *v4 = 26;
    v16 = v15[16];
    if (v16 > 0x7F)
    {
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v16;
      v17 = v4 + 2;
    }

    v4 = AddrObjGoogle::protobuf::EnumValueOptions::SerializeWithCachedSizesToArray(v15, v17, a3);
  }

  v20 = *(v5 + 8);
  v19 = (v5 + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::EnumValueDescriptorProto::ByteSize(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 40))
  {
    v5 = *(this + 2);
    v6 = *(v5 + 23);
    v7 = v6;
    v8 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x80)
    {
      v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(this + 10);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 2;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v4 = (v10 + v6);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = *(this + 8);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(0) + 24);
    }

    v15 = AddrObjGoogle::protobuf::EnumValueOptions::ByteSize(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_28:
  v18 = *(this + 1);
  if (v18 && *v18 != v18[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 9) = v4;
  return v4;
}

void AddrObjGoogle::protobuf::EnumValueDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 3535);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::EnumValueDescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E6DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumValueOptions::MergeFrom(AddrObjGoogle::protobuf::EnumValueOptions *this, const AddrObjGoogle::protobuf::EnumValueOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6218);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E6F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::EnumValueDescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::EnumValueDescriptorProto::GetMetadata(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9057F8;
}

void sub_1868E7058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::ServiceDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::ServiceDescriptorProto *this, const AddrObjGoogle::protobuf::ServiceDescriptorProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 3860);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, *(a2 + 8) + *(this + 8));
  if (*(a2 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 3) + 8 * v6);
      v8 = *(this + 9);
      v9 = *(this + 8);
      if (v9 >= v8)
      {
        if (v8 == *(this + 10))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v8 + 1);
          v8 = *(this + 9);
        }

        *(this + 9) = v8 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::MethodDescriptorProto>::New();
      }

      v10 = *(this + 3);
      *(this + 8) = v9 + 1;
      AddrObjGoogle::protobuf::MethodDescriptorProto::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  LOBYTE(v11) = *(a2 + 60);
  if (v11)
  {
    if (*(a2 + 60))
    {
      v12 = *(a2 + 2);
      *(this + 15) |= 1u;
      v13 = *(this + 2);
      if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(v5))
      {
        operator new();
      }

      v5 = std::string::operator=(*(this + 2), v12);
      v11 = *(a2 + 15);
    }

    if ((v11 & 4) != 0)
    {
      *(this + 15) |= 4u;
      v14 = *(this + 6);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 6);
      if (!v15)
      {
        v15 = *(AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(v5) + 48);
      }

      AddrObjGoogle::protobuf::ServiceOptions::MergeFrom(v14, v15);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void AddrObjGoogle::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  *this = &unk_1EF7E1110;
  AddrObjGoogle::protobuf::ServiceDescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

AddrObjGoogle::protobuf::ServiceDescriptorProto *AddrObjGoogle::protobuf::ServiceDescriptorProto::SharedDtor(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  result = AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(v3);
  if (result != this)
  {
    result = *(this + 6);
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(v1);
}

uint64_t **AddrObjGoogle::protobuf::ServiceDescriptorProto::Clear(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  if (*(this + 60))
  {
    if (*(this + 60))
    {
      v2 = *(this + 2);
      if (v2 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v3 = *(this + 2);
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 60) & 4) != 0)
    {
      v4 = *(this + 6);
      if (v4)
      {
        AddrObjGoogle::protobuf::ServiceOptions::Clear(v4);
      }
    }
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 24);
  v7 = *(this + 1);
  v6 = this + 8;
  *(v6 + 13) = 0;
  if (v7)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return result;
}

uint64_t **AddrObjGoogle::protobuf::ServiceOptions::Clear(AddrObjGoogle::protobuf::ServiceOptions *this)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 40);
  v4 = *(this + 4);
  v3 = this + 32;
  *(v3 + 9) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::ServiceDescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v7 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_16;
        }

LABEL_24:
        v12 = *(v5 + 36);
        v13 = *(v5 + 32);
        if (v13 >= v12)
        {
          if (v12 == *(v5 + 40))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v12 + 1);
            v12 = *(v5 + 36);
          }

          *(v5 + 36) = v12 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::MethodDescriptorProto>::New();
        }

        v14 = *(v5 + 24);
        *(v5 + 32) = v13 + 1;
        v15 = *(v14 + 8 * v13);
        v35 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v35);
        if (!AddrObjGoogle::protobuf::MethodDescriptorProto::MergePartialFromCodedStream(v15, a2, v20, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2))
        {
          v25 = *v11;
          if (v25 == 18)
          {
            goto LABEL_47;
          }

          if (v25 == 26)
          {
            *(a2 + 1) = v11 + 1;
LABEL_42:
            *(v5 + 60) |= 4u;
            v26 = *(v5 + 48);
            if (!v26)
            {
              operator new();
            }

            v36 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
              {
                return 0;
              }
            }

            else
            {
              v36 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            v30 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v36);
            if (!AddrObjGoogle::protobuf::ServiceOptions::MergePartialFromCodedStream(v26, a2, v31, v32) || *(a2 + 36) != 1)
            {
              return 0;
            }

            this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v30);
            v33 = *(a2 + 14);
            v23 = __OFSUB__(v33, 1);
            v34 = v33 - 1;
            if (v34 < 0 == v23)
            {
              *(a2 + 14) = v34;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              this = 1;
              *(a2 + 36) = 1;
              return this;
            }
          }
        }
      }

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_16;
        }

        *(v5 + 60) |= 1u;
        v10 = *(v5 + 16);
        if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
        if (!this)
        {
          return this;
        }

        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 18)
        {
LABEL_47:
          *(a2 + 1) = v11 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_42;
    }

LABEL_16:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::ServiceDescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 60))
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
  }

  if (*(v4 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v4[3][v5++], a2);
    }

    while (v5 < *(v4 + 8));
  }

  if ((*(v4 + 60) & 4) != 0)
  {
    v6 = v4[6];
    if (!v6)
    {
      v6 = *(AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(this) + 48);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v6, a2);
  }

  v9 = v4[1];
  v8 = v4 + 1;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::ServiceDescriptorProto::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::ServiceDescriptorProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  if (*(this + 60))
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v6 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v9 = v4 + 2;
    }

    v10 = *(v6 + 23);
    if (v10 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
    v4 = this;
  }

  if (*(v5 + 8) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(v5 + 3) + 8 * v13);
      *v4 = 18;
      v15 = v14[12];
      if (v15 > 0x7F)
      {
        v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v15;
        v16 = (v4 + 2);
      }

      this = AddrObjGoogle::protobuf::MethodDescriptorProto::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
      v4 = this;
      ++v13;
    }

    while (v13 < *(v5 + 8));
  }

  if ((*(v5 + 60) & 4) != 0)
  {
    v17 = *(v5 + 6);
    if (!v17)
    {
      v17 = *(AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(this) + 48);
    }

    *v4 = 26;
    v18 = v17[16];
    if (v18 > 0x7F)
    {
      v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v18;
      v19 = v4 + 2;
    }

    v4 = AddrObjGoogle::protobuf::ServiceOptions::SerializeWithCachedSizesToArray(v17, v19, a3);
  }

  v22 = *(v5 + 1);
  v21 = (v5 + 8);
  v20 = v22;
  if (!v22 || *v20 == v20[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::ServiceDescriptorProto::ByteSize(AddrObjGoogle::protobuf::ServiceDescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 60) & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 15);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 4) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
    if (!v12)
    {
      v12 = *(AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(0) + 48);
    }

    v13 = AddrObjGoogle::protobuf::ServiceOptions::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
  }

LABEL_21:
  v16 = *(this + 8);
  v17 = (v16 + v4);
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = AddrObjGoogle::protobuf::MethodDescriptorProto::ByteSize(*(*(this + 3) + 8 * v18), a2);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 = (v20 + v17 + v21);
      ++v18;
    }

    while (v18 < *(this + 8));
  }

  v22 = *(this + 1);
  if (v22 && *v22 != v22[1])
  {
    v17 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v17;
  }

  *(this + 14) = v17;
  return v17;
}

void AddrObjGoogle::protobuf::ServiceDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::ServiceDescriptorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 3848);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    AddrObjGoogle::protobuf::ServiceDescriptorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868E7D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::ServiceOptions::MergeFrom(AddrObjGoogle::protobuf::ServiceOptions *this, const AddrObjGoogle::protobuf::ServiceOptions *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 6441);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, *(a2 + 12) + *(this + 12));
  if (*(a2 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 5) + 8 * v5);
      v7 = *(this + 13);
      v8 = *(this + 12);
      if (v8 >= v7)
      {
        if (v7 == *(this + 14))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v7 + 1);
          v7 = *(this + 13);
        }

        *(this + 13) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
      }

      v9 = *(this + 5);
      *(this + 12) = v8 + 1;
      AddrObjGoogle::protobuf::UninterpretedOption::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 12));
  }

  AddrObjGoogle::protobuf::internal::ExtensionSet::MergeFrom((this + 8), a2 + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 32), (a2 + 32));
}

void sub_1868E7EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *AddrObjGoogle::protobuf::ServiceDescriptorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::ServiceDescriptorProto::IsInitialized(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  if (*(this + 8) < 1)
  {
LABEL_5:
    if ((*(this + 60) & 4) == 0)
    {
      return 1;
    }

    v4 = *(this + 6);
    if (!v4)
    {
      v4 = *(AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(0) + 48);
    }

    result = (*(*v4 + 40))(v4);
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(*(this + 3) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 8))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::ServiceDescriptorProto::GetMetadata(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905808;
}

void sub_1868E80DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::MethodDescriptorProto::MergeFrom(AddrObjGoogle::protobuf::MethodDescriptorProto *this, const AddrObjGoogle::protobuf::MethodDescriptorProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", 4242);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v14, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    goto LABEL_26;
  }

  if ((*(a2 + 52) & 1) == 0)
  {
    if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v8 = *(a2 + 3);
    *(v3 + 13) |= 2u;
    v9 = *(v3 + 3);
    if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 3), v8);
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v6 = *(a2 + 2);
  *(v3 + 13) |= 1u;
  v7 = *(v3 + 2);
  if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 2), v6);
  v5 = *(a2 + 13);
  if ((v5 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  v10 = *(a2 + 4);
  *(v3 + 13) |= 4u;
  v11 = *(v3 + 4);
  if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 4), v10);
  if ((*(a2 + 13) & 8) != 0)
  {
LABEL_21:
    *(v3 + 13) |= 8u;
    v12 = *(v3 + 5);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 5);
    if (!v13)
    {
      v13 = *(AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(this) + 40);
    }

    AddrObjGoogle::protobuf::MethodOptions::MergeFrom(v12, v13);
  }

LABEL_26:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

void AddrObjGoogle::protobuf::MethodDescriptorProto::~MethodDescriptorProto(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  *this = &unk_1EF7E11C0;
  AddrObjGoogle::protobuf::MethodDescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::MethodDescriptorProto::~MethodDescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

AddrObjGoogle::protobuf::MethodDescriptorProto *AddrObjGoogle::protobuf::MethodDescriptorProto::SharedDtor(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 3);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 4);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 4);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  result = AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(v9);
  if (result != this)
  {
    result = *(this + 5);
    if (result)
    {
      v12 = *(*result + 8);

      return v12();
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  v1 = AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(v1);
}

uint64_t *AddrObjGoogle::protobuf::MethodDescriptorProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 52) & 2) != 0)
    {
      v4 = v1[3];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[3];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 52) & 4) != 0)
    {
      v6 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[4];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 52) & 8) != 0)
    {
      this = v1[5];
      if (this)
      {
        this = AddrObjGoogle::protobuf::MethodOptions::Clear(this);
      }
    }
  }

  v9 = v1[1];
  v8 = v1 + 1;
  *(v8 + 11) = 0;
  if (v9)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v8);
  }

  return this;
}

uint64_t **AddrObjGoogle::protobuf::MethodOptions::Clear(AddrObjGoogle::protobuf::MethodOptions *this)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::Clear(this + 8);
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 40);
  v4 = *(this + 4);
  v3 = this + 32;
  *(v3 + 9) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::MethodDescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          v7 = this;
          *(a2 + 8) = this;
          if (!this)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = v7;
          *(a2 + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 >> 3;
        v9 = v7 & 7;
        if (v7 >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_20;
          }

          *(v5 + 52) |= 1u;
          v10 = *(v5 + 16);
          if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 18)
          {
            *(a2 + 1) = v11 + 1;
LABEL_28:
            *(v5 + 52) |= 2u;
            v12 = *(v5 + 24);
            if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 24));
            if (!this)
            {
              return this;
            }

            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 26)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_35;
            }
          }
        }

        else
        {
          if (v8 == 2 && v9 == 2)
          {
            goto LABEL_28;
          }

LABEL_20:
          if (v9 == 4)
          {
            return 1;
          }

          this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
          if ((this & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_20;
      }

LABEL_35:
      *(v5 + 52) |= 4u;
      v14 = *(v5 + 32);
      if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
      if (!this)
      {
        return this;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 34)
      {
        *(a2 + 1) = v15 + 1;
        goto LABEL_42;
      }
    }

    if (v8 != 4 || v9 != 2)
    {
      goto LABEL_20;
    }

LABEL_42:
    *(v5 + 52) |= 8u;
    v16 = *(v5 + 40);
    if (!v16)
    {
      operator new();
    }

    v26 = 0;
    v17 = *(a2 + 1);
    if (v17 >= *(a2 + 2) || *v17 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v17;
      *(a2 + 1) = v17 + 1;
    }

    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    *(a2 + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    v20 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v26);
    if (!AddrObjGoogle::protobuf::MethodOptions::MergePartialFromCodedStream(v16, a2, v21, v22) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v20);
    v23 = *(a2 + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(a2 + 14) = v25;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      this = 1;
      *(a2 + 36) = 1;
      return this;
    }
  }
}

uint64_t **AddrObjGoogle::protobuf::MethodDescriptorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 13);
  if (v5)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v5 = *(v4 + 13);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, v4[4], a2);
      if ((*(v4 + 13) & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, v4[3], a2);
  v5 = *(v4 + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = v4[5];
  if (!v6)
  {
    v6 = *(AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(this) + 40);
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v6, a2);
LABEL_12:
  v9 = v4[1];
  v8 = v4 + 1;
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *AddrObjGoogle::protobuf::MethodDescriptorProto::SerializeWithCachedSizesToArray(AddrObjGoogle::protobuf::MethodDescriptorProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 13);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v4 = this;
    v6 = *(v5 + 13);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v5 + 3);
  *v4 = 18;
  v15 = *(v14 + 23);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15 > 0x7F)
  {
    v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = v4 + 2;
  }

  v17 = *(v14 + 23);
  if (v17 >= 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = *v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v14 + 23);
  }

  else
  {
    v19 = *(v14 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, a4);
  v4 = this;
  v6 = *(v5 + 13);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_30:
  v20 = *(v5 + 4);
  *v4 = 26;
  v21 = *(v20 + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(v20 + 8);
  }

  if (v21 > 0x7F)
  {
    v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v21;
    v22 = v4 + 2;
  }

  v23 = *(v20 + 23);
  if (v23 >= 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = *v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 8);
  }

  this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
  v4 = this;
  if ((*(v5 + 13) & 8) != 0)
  {
LABEL_42:
    v26 = *(v5 + 5);
    if (!v26)
    {
      v26 = *(AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(this) + 40);
    }

    *v4 = 34;
    v27 = v26[16];
    if (v27 > 0x7F)
    {
      v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v27;
      v28 = v4 + 2;
    }

    v4 = AddrObjGoogle::protobuf::MethodOptions::SerializeWithCachedSizesToArray(v26, v28, a3);
  }

LABEL_48:
  v31 = *(v5 + 1);
  v30 = (v5 + 8);
  v29 = v31;
  if (!v31 || *v29 == v29[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, v4, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::MethodDescriptorProto::ByteSize(AddrObjGoogle::protobuf::MethodDescriptorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 13);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 3);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 13);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v18 = *(this + 4);
  v19 = *(v18 + 23);
  v20 = v19;
  v21 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 0x80)
  {
    v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v3 = *(this + 13);
    v20 = *(v18 + 23);
  }

  else
  {
    v23 = 1;
  }

  if (v20 < 0)
  {
    v19 = v21;
  }

  v4 = (v4 + v23 + v19 + 1);
  if ((v3 & 8) != 0)
  {
LABEL_36:
    v24 = *(this + 5);
    if (!v24)
    {
      v24 = *(AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(0) + 40);
    }

    v25 = AddrObjGoogle::protobuf::MethodOptions::ByteSize(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v4 = (v4 + v26 + v27 + 1);
  }

LABEL_42:
  v28 = *(this + 1);
  if (v28 && *v28 != v28[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 12) = v4;
  return v4;
}