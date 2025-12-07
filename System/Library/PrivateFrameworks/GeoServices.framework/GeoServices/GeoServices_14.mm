uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 16) + *(this + 44);
  *(this + 16) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(this + 16) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(AddrObjGoogle::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = v1 - v2;
  if (v1 - v2 > 9)
  {
    goto LABEL_4;
  }

  if (v3 >= 1)
  {
    if ((*(v1 - 1) & 0x80000000) == 0)
    {
LABEL_4:
      v4 = v2 + 1;
      v5 = *v2 & 0x7F;
      if ((*v2 & 0x80) != 0)
      {
        v6 = v2[1];
        v5 = *v2 & 0x7F | ((v6 & 0x7F) << 7);
        if (v6 < 0)
        {
          v8 = v2[2];
          v5 = v5 & 0xFFE03FFF | ((v8 & 0x7F) << 14);
          if (v8 < 0)
          {
            v12 = v2[3];
            v5 = v5 & 0xF01FFFFF | ((v12 & 0x7F) << 21);
            if (v12 < 0)
            {
              v13 = v2[4];
              v5 = v5 | (v13 << 28);
              if (v13 < 0)
              {
                v4 = v2 + 6;
                v14 = 5;
                v11 = 0;
                while (*(v4 - 1) < 0)
                {
                  ++v4;
                  if (!--v14)
                  {
                    return v11;
                  }
                }
              }

              else
              {
                v4 = v2 + 5;
              }
            }

            else
            {
              v4 = v2 + 4;
            }
          }

          else
          {
            v4 = v2 + 3;
          }
        }

        else
        {
          v4 = v2 + 2;
        }
      }

      *(this + 1) = v4;
      return v5;
    }

    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v3)
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v9 = *(this + 11);
  v10 = *(this + 6);
  if (v9 <= 0 && v10 != *(this + 10))
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v10 - v9 >= *(this + 12))
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v11 = 0;
  *(this + 36) = 1;
  return v11;
}

AddrObjGoogle::protobuf::EnumValueDescriptorProto *AddrObjGoogle::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  *this = &unk_1EF7E1060;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 9) = 0;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 10) = 0;
  return this;
}

void sub_18673856C(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorProto::IsInitialized(AddrObjGoogle::protobuf::FileDescriptorProto *this)
{
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 11) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v2 < *(this + 24));
  }

  if (*(this + 30) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 14) + 8 * v4);
      if (((*(*v5 + 40))(v5) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v4 < *(this + 30));
  }

  if (*(this + 36) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 17) + 8 * v6);
      if (((*(*v7 + 40))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v6 < *(this + 36));
  }

  if (*(this + 42) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 20) + 8 * v8);
      if (((*(*v9 + 40))(v9) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v8 < *(this + 42));
  }

  if ((*(this + 205) & 2) == 0)
  {
    return 1;
  }

  v10 = *(this + 23);
  if (!v10)
  {
    v10 = *(AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(0) + 184);
  }

  result = (*(*v10 + 40))(v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptorProto::IsInitialized(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
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
      v4 = *(AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(0) + 48);
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

uint64_t AddrObjGoogle::protobuf::EnumValueDescriptorProto::IsInitialized(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    return 1;
  }

  v1 = *(this + 3);
  if (!v1)
  {
    v1 = *(AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(0) + 24);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v23 = a3;
  *(&v23 + 1) = a4;
  if ((AddrObjGoogle::protobuf::InsertIfNotPresent<std::map<std::string,std::pair<void const*,int>>,std::string,std::pair<void const*,int>>(a1, *(a2 + 16), &v23) & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v22, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor_database.cc", 58);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v22, "File already exists in database: ");
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, *(a2 + 16));
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(__p, v7);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v22.__r_.__value_.__l.__data_);
    return 0;
  }

  if ((*(a2 + 204) & 2) != 0)
  {
    v9 = *(a2 + 24);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      v22.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v22.__r_.__value_.__l.__data_ = v10;
    }
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(&v22, 46);
  }

  if (*(a2 + 96) < 1)
  {
LABEL_19:
    if (*(a2 + 120) < 1)
    {
LABEL_25:
      if (*(a2 + 168) < 1)
      {
LABEL_32:
        if (*(a2 + 144) < 1)
        {
          v8 = 1;
        }

        else
        {
          v18 = 0;
          do
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22.__r_.__value_.__l.__data_, *(*(*(a2 + 136) + 8 * v18) + 16), __p);
            v8 = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v23, *(&v23 + 1));
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }

            if ((v8 & 1) == 0)
            {
              break;
            }

            ++v18;
          }

          while (v18 < *(a2 + 144));
        }

        goto LABEL_40;
      }

      v16 = 0;
      while (1)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22.__r_.__value_.__l.__data_, *(*(*(a2 + 160) + 8 * v16) + 16), __p);
        v17 = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v23, *(&v23 + 1));
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v17 & 1) == 0 || (AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(a1, *(*(a2 + 160) + 8 * v16), v23, *(&v23 + 1)) & 1) == 0)
        {
          break;
        }

        if (++v16 >= *(a2 + 168))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v14 = 0;
      while (1)
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22.__r_.__value_.__l.__data_, *(*(*(a2 + 112) + 8 * v14) + 16), __p);
        v15 = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v23, *(&v23 + 1));
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        if (++v14 >= *(a2 + 120))
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v12 = 0;
    while (1)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22.__r_.__value_.__l.__data_, *(*(*(a2 + 88) + 8 * v12) + 16), __p);
      v13 = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(a1, __p, v23, *(&v23 + 1));
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v13 & 1) == 0 || (AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(a1, *(*(a2 + 88) + 8 * v12), v23, *(&v23 + 1)) & 1) == 0)
      {
        break;
      }

      if (++v12 >= *(a2 + 96))
      {
        goto LABEL_19;
      }
    }
  }

  v8 = 0;
LABEL_40:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_186738B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_186738C2C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<void const*,int>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(uint64_t a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__construct_node<std::pair<std::string const,std::pair<void const*,int>>>();
  }

  return result;
}

void AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(AddrObjGoogle::protobuf::io::CodedInputStream *this)
{
  if (*this)
  {
    AddrObjGoogle::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }

  if (*(this + 13) == -2)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v5, 1, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/io/coded_stream.cc", 79);
    v2 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "The total number of bytes read was ");
    v3 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v2, *(this + 6));
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v4, v3);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::ValidateSymbolName(a1, a2))
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v27, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor_database.cc", 95);
    v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v27, "Invalid symbol name: ");
    v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, a2);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v26, v16);
    goto LABEL_6;
  }

  LastLessOrEqual = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindLastLessOrEqual(a1, a2);
  if ((a1 + 32) == LastLessOrEqual)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
    }

    else
    {
      v27 = *a2;
    }

    v28 = a3;
    v29 = a4;
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(a1 + 24, &v27.__r_.__value_.__l.__data_, &v27);
  }

  else
  {
    v9 = LastLessOrEqual;
    if (AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::IsSubSymbol(a1, LastLessOrEqual + 4, a2))
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v27, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor_database.cc", 110);
      v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v27, "Symbol name ");
      v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, a2);
      v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, " conflicts with the existing symbol ");
      v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, v9 + 32);
      v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, ".");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v26, v14);
LABEL_6:
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v27.__r_.__value_.__l.__data_);
      return 0;
    }

    v18 = v9[1];
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
        v19 = v9[2];
        v20 = *v19 == v9;
        v9 = v19;
      }

      while (!v20);
    }

    if (v19 != a1 + 32 && AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::IsSubSymbol(a1, a2, (v19 + 32)))
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v27, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor_database.cc", 123);
      v21 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v27, "Symbol name ");
      v22 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v21, a2);
      v23 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v22, " conflicts with the existing symbol ");
      v24 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v23, (v19 + 32));
      v25 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v24, ".");
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v26, v25);
      goto LABEL_6;
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
    }

    else
    {
      v27 = *a2;
    }

    v28 = a3;
    v29 = a4;
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>((a1 + 24), v19, &v27.__r_.__value_.__l.__data_, &v27);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 16);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, (v15 + 32)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 8);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(void *a1, uint64_t a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__construct_node<std::pair<std::string const,std::pair<void const*,int>>>();
  }

  return result;
}

BOOL AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::IsSubSymbol(uint64_t a1, const void **a2, const void ***a3)
{
  v5 = *(a2 + 23);
  v6 = a2[1];
  if ((v5 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = *(a3 + 23);
  v9 = a3[1];
  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = a3[1];
  }

  if (v7 == v10)
  {
    v11 = (v5 & 0x80u) == 0 ? a2 : *a2;
    v12 = (v8 & 0x80u) == 0 ? a3 : *a3;
    if (!memcmp(v11, v12, v7))
    {
      return 1;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (v10 < v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = v5;
    if (v10 < v5)
    {
      return 0;
    }
  }

  if ((v8 & 0x80) != 0)
  {
    if (v6 != -1)
    {
      if (v9 >= v6)
      {
        v9 = v6;
      }

      v14 = *a3;
      goto LABEL_30;
    }

LABEL_40:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v6 == -1)
  {
    goto LABEL_40;
  }

  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v14 = a3;
LABEL_30:
  if ((v5 & 0x80u) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  v16 = memcmp(v14, v15, v9);
  result = 0;
  if (v9 == v6 && !v16)
  {
    if ((v8 & 0x80u) == 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    return *(v17 + v7) == 46;
  }

  return result;
}

void AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(AddrObjGoogle::protobuf::FileDescriptorProto *this)
{
  *this = &unk_1EF7E0CF0;
  AddrObjGoogle::protobuf::FileDescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 20);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 17);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 14);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 11);
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x18CFD1E20](v2, 0x1000C8052888210);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x18CFD1E20](v3, 0x1000C8052888210);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 8);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x18CFD1E20);
  }

  return result;
}

AddrObjGoogle::protobuf::DescriptorProto *AddrObjGoogle::protobuf::DescriptorProto::SharedDtor(AddrObjGoogle::protobuf::DescriptorProto *this)
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

  result = AddrObjGoogle::protobuf::DescriptorProto::default_instance_(v3);
  if (result != this)
  {
    result = *(this + 18);
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

AddrObjGoogle::protobuf::EnumDescriptorProto *AddrObjGoogle::protobuf::EnumDescriptorProto::SharedDtor(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
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

  result = AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(v3);
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

uint64_t AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905690))
  {
    operator new();
  }

  return qword_1EA905688;
}

void sub_1867397F4(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C406601F8D4);
  __cxa_guard_abort(&qword_1EA905690);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905670))
  {
    operator new();
  }

  return qword_1EA905668;
}

void sub_1867398A8(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C4090AC2D2CLL);
  __cxa_guard_abort(&qword_1EA905670);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::Delete(*(*a1 + 8 * v2++));
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x18CFD1E20);
  }

  return result;
}

void AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedFile(const std::string::value_type *a1, uint64_t (*a2)())
{
  v4 = qword_1EA9054D0;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v9[0].__r_.__value_.__r.__words[0] = &unk_1EF7E2130;
    v9[0].__r_.__value_.__l.__size_ = sub_1867208B8;
    v9[0].__r_.__value_.__s.__data_[16] = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054D0, v9);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v9);
  }

  v9[0].__r_.__value_.__r.__words[0] = a1;
  v9[0].__r_.__value_.__l.__size_ = a2;
  std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,void (*)(std::string const&)>>((qword_1EA9054D8 + 8), &v9[0].__r_.__value_.__l.__data_, v9);
  if ((v5 & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message.cc", 281);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "File is already registered: ");
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, a1);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v7);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }
}

void sub_186739A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::__emplace_unique_key_args<char const*,std::pair<char const* const,void (*)(std::string const&)>>(float *a1, const char **a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 1);
    do
    {
      v5 = 5 * v5 + v4;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v5)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v13[2], v3))
  {
    goto LABEL_22;
  }

  return v13;
}

addr_obj::geo3::StructuredAddress *addr_obj::geo3::StructuredAddress::StructuredAddress(addr_obj::geo3::StructuredAddress *this)
{
  *this = &unk_1EF7E0858;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 34) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  addr_obj::geo3::StructuredAddress::SharedCtor(this);
  return this;
}

void sub_186739D84(_Unwind_Exception *a1)
{
  v7 = v4;
  if (*v7)
  {
    MEMORY[0x18CFD1E20](*v7, 0x1000C8000313F17);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v6);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v5);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise::default_instance_(addr_obj::geo3::StructuredAddress_SubPremise *this)
{
  if ((atomic_load_explicit(&qword_1EA905620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905620))
  {
    operator new();
  }

  return qword_1EA905618;
}

void sub_186739E64(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40BEA49330);
  __cxa_guard_abort(&qword_1EA905620);
  _Unwind_Resume(a1);
}

addr_obj::geo3::StructuredAddress_SubPremise *addr_obj::geo3::StructuredAddress_SubPremise::StructuredAddress_SubPremise(addr_obj::geo3::StructuredAddress_SubPremise *this)
{
  *this = &unk_1EF7E07A8;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 3) = 0;
  *(this + 2) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 8) = 0;
  return this;
}

void sub_186739F00(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

addr_obj::geo3::Address *addr_obj::geo3::Address::Address(addr_obj::geo3::Address *this)
{
  *this = &unk_1EF7E0908;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  return this;
}

AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this)
{
  *this = &unk_1EF7E0DA0;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::MergePartialFromCodedStream(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v17 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
        if (!result)
        {
          return result;
        }

        v10 = v17;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 4) = v10;
      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_22:
        v16 = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 5) = v13;
        *(this + 7) |= 2u;
        if (v14 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

AddrObjGoogle::protobuf::FileOptions *AddrObjGoogle::protobuf::FileOptions::FileOptions(AddrObjGoogle::protobuf::FileOptions *this)
{
  *this = &unk_1EF7E1270;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  AddrObjGoogle::protobuf::FileOptions::SharedCtor(this);
  return this;
}

void sub_18673A25C(_Unwind_Exception *a1)
{
  v4 = v3;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((v1 + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(void *this)
{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

uint64_t AddrObjGoogle::protobuf::FileOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 20) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[9] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 20))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 1;
  }

  while (1)
  {
    if (AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(v2 + 48)] != 10)
    {
      goto LABEL_14;
    }

    if (*(v2 + 49) == 1)
    {
      break;
    }

    if ((*(v2 + 50) & 1) == 0)
    {
      v5 = *v2[5];
      if ((*(v2 + 50) & 0x10) != 0)
      {
        if (((*(v5 + 56))() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = (*(v5 + 40))();
        if (!result)
        {
          return result;
        }
      }
    }

LABEL_14:
    v7 = v2[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
    if (v8 == v1)
    {
      return 1;
    }
  }

  v3 = v2[5];
  if (*(v3 + 2) < 1)
  {
    goto LABEL_14;
  }

  v4 = 0;
  while (((*(**(*v3 + 8 * v4) + 40))(*(*v3 + 8 * v4)) & 1) != 0)
  {
    ++v4;
    v3 = v2[5];
    if (v4 >= *(v3 + 2))
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t *std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::__find_equal<std::pair<std::string,int>>(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::pair<std::string,int>>::operator()[abi:ne200100](a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::pair<std::string,int>>::operator()[abi:ne200100](a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL std::less<std::pair<std::string,int>>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
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

  return !v16 && *(a2 + 6) < *(a3 + 6);
}

uint64_t AddrObjGoogle::protobuf::FileOptions::SharedDtor(AddrObjGoogle::protobuf::FileOptions *this)
{
  v2 = *(this + 5);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 6);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 6);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 8);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 8);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  return AddrObjGoogle::protobuf::FileOptions::default_instance_(v9);
}

void std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t addr_obj::LocalizationProto::default_instance_(addr_obj::LocalizationProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905590))
  {
    operator new();
  }

  return qword_1EA905588;
}

void sub_18673A878(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40E7EDF326);
  __cxa_guard_abort(&qword_1EA905590);
  _Unwind_Resume(a1);
}

addr_obj::LocalizationProto *addr_obj::LocalizationProto::LocalizationProto(addr_obj::LocalizationProto *this)
{
  *this = &unk_1EF7DFD80;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  addr_obj::LocalizationProto::SharedCtor(this);
  return this;
}

void sub_18673A90C(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::LocalizationProto::SharedCtor(addr_obj::LocalizationProto *this)
{
  *(this + 10) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 3) = v3;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 4) = result;
  *(this + 11) = 0;
  return result;
}

uint64_t *addr_obj::FingerprintProto::SharedCtor(addr_obj::FingerprintProto *this)
{
  *(this + 12) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  *(this + 3) = 0;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 4) = v3;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 5) = result;
  *(this + 13) = 0;
  return result;
}

uint64_t addr_obj::LocalizationProto::default_instance(addr_obj::LocalizationProto *this)
{
  v1 = addr_obj::LocalizationProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::LocalizationProto::default_instance_(v1);
}

uint64_t addr_obj::AddressObjectProto::default_instance_(addr_obj::AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905530))
  {
    operator new();
  }

  return qword_1EA905528;
}

void sub_18673AA64(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C401C489FCDLL);
  __cxa_guard_abort(&qword_1EA905530);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::V0AddressObjectProto::default_instance_(addr_obj::V0AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905540))
  {
    operator new();
  }

  return qword_1EA905538;
}

void sub_18673AB14(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40892FDF1FLL);
  __cxa_guard_abort(&qword_1EA905540);
  _Unwind_Resume(a1);
}

addr_obj::V0AddressObjectProto *addr_obj::V0AddressObjectProto::V0AddressObjectProto(addr_obj::V0AddressObjectProto *this)
{
  *this = &unk_1EF7DFF90;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  addr_obj::V0AddressObjectProto::SharedCtor(this);
  return this;
}

void sub_18673ABA8(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::V0AddressObjectProto::SharedCtor(addr_obj::V0AddressObjectProto *this)
{
  *(this + 22) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 3) = v3;
  v4 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 4) = v4;
  v5 = AddrObjGoogle::protobuf::internal::kEmptyString(v4);
  *(this + 5) = v5;
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v5);
  *(this + 6) = v6;
  v7 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  *(this + 7) = v7;
  v8 = AddrObjGoogle::protobuf::internal::kEmptyString(v7);
  *(this + 8) = v8;
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v8);
  *(this + 9) = v9;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  *(this + 10) = result;
  *(this + 23) = 0;
  return result;
}

uint64_t addr_obj::V1AddressObjectProto::default_instance_(addr_obj::V1AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905550))
  {
    operator new();
  }

  return qword_1EA905548;
}

void sub_18673ACB8(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40D9981018);
  __cxa_guard_abort(&qword_1EA905550);
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::V1AddressObjectProto::SharedCtor(addr_obj::V1AddressObjectProto *this)
{
  *(this + 24) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 5) = v2;
  *(this + 6) = 0;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 7) = v3;
  v4 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 8) = v4;
  *(this + 9) = 0;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v4);
  *(this + 10) = result;
  *(this + 11) = 0;
  *(this + 25) = 0;
  return result;
}

addr_obj::VenueInfoProto *addr_obj::VenueInfoProto::VenueInfoProto(addr_obj::VenueInfoProto *this)
{
  *this = &unk_1EF7E0460;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t addr_obj::geo3::Address::default_instance(addr_obj::geo3::Address *this)
{
  v1 = addr_obj::geo3::Address::default_instance_(this);
  if (!v1)
  {
    addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(0, v2, v3, v4);
  }

  return addr_obj::geo3::Address::default_instance_(v1);
}

uint64_t addr_obj::V2AddressObjectProto::default_instance(addr_obj::V2AddressObjectProto *this)
{
  v1 = addr_obj::V2AddressObjectProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::V2AddressObjectProto::default_instance_(v1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>>>::__emplace_unique_key_args<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::pair<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int> const,AddrObjGoogle::protobuf::internal::ExtensionInfo>>(float *a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a2 + 8);
  v4 = v3 - *a2 + (*a2 << 16);
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 - *a2 + (*a2 << 16);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t addr_obj::VenueFieldProto::default_instance_(addr_obj::VenueFieldProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9055F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9055F0))
  {
    operator new();
  }

  return qword_1EA9055E8;
}

void sub_18673B0D8(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40380937A6);
  __cxa_guard_abort(&qword_1EA9055F0);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::VenueDecoratorProto::default_instance_(addr_obj::VenueDecoratorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9055D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9055D0))
  {
    operator new();
  }

  return qword_1EA9055C8;
}

void sub_18673B18C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C4093195C21);
  __cxa_guard_abort(&qword_1EA9055D0);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::VenueTemplateProto::default_instance_(addr_obj::VenueTemplateProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9055C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9055C0))
  {
    operator new();
  }

  return qword_1EA9055B8;
}

void sub_18673B23C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10B1C40B7099809);
  __cxa_guard_abort(&qword_1EA9055C0);
  _Unwind_Resume(a1);
}

addr_obj::VenueFieldProto *addr_obj::VenueFieldProto::VenueFieldProto(addr_obj::VenueFieldProto *this)
{
  *this = &unk_1EF7E0250;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

addr_obj::VenueTemplateProto *addr_obj::VenueTemplateProto::VenueTemplateProto(addr_obj::VenueTemplateProto *this)
{
  *this = &unk_1EF7E0300;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  return this;
}

uint64_t addr_obj::V3AddressObjectProto::default_instance_(addr_obj::V3AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905570))
  {
    operator new();
  }

  return qword_1EA905568;
}

void sub_18673B3CC(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40A4A8B666);
  __cxa_guard_abort(&qword_1EA905570);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::V3AddressObjectProto::default_instance(addr_obj::V3AddressObjectProto *this)
{
  v1 = addr_obj::V3AddressObjectProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::V3AddressObjectProto::default_instance_(v1);
}

uint64_t addr_obj::V4AddressObjectProto::default_instance_(addr_obj::V4AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905580))
  {
    operator new();
  }

  return qword_1EA905578;
}

void sub_18673B4AC(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40A4A8B666);
  __cxa_guard_abort(&qword_1EA905580);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::FieldOptions *AddrObjGoogle::protobuf::FieldOptions::FieldOptions(AddrObjGoogle::protobuf::FieldOptions *this)
{
  *this = &unk_1EF7E13D0;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 20) = 0;
  *(this + 10) = 0;
  *(this + 43) = 0;
  *(this + 6) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 47) = 0;
  *(this + 21) = 0;
  return this;
}

void sub_18673B56C(_Unwind_Exception *a1)
{
  v4 = v3;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((v1 + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
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
          if (v7 >> 3 > 4)
          {
            break;
          }

          if (v8 == 1)
          {
            if ((v7 & 7) != 0)
            {
              goto LABEL_31;
            }

            v45 = 0;
            v13 = *(a2 + 1);
            if (v13 >= *(a2 + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
              if (!this)
              {
                return this;
              }

              v14 = v45;
            }

            else
            {
              *(a2 + 1) = v13 + 1;
            }

            if (v14 > 2)
            {
              AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((v5 + 32), 1, v14);
            }

            else
            {
              *(v5 + 84) |= 1u;
              *(v5 + 40) = v14;
            }

            v20 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v20 < v11 && *v20 == 16)
            {
              v19 = v20 + 1;
              *(a2 + 1) = v19;
LABEL_46:
              v45 = 0;
              if (v19 >= v11 || (v21 = *v19, (v21 & 0x80000000) != 0))
              {
                this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                if (!this)
                {
                  return this;
                }

                v21 = v45;
                v22 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v22 = v19 + 1;
                *(a2 + 1) = v22;
              }

              *(v5 + 44) = v21 != 0;
              *(v5 + 84) |= 2u;
              if (v22 < v11 && *v22 == 24)
              {
                v12 = v22 + 1;
                *(a2 + 1) = v12;
                goto LABEL_54;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if ((v7 & 7) != 0)
              {
                goto LABEL_31;
              }

              v19 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_46;
            }

            if (v8 != 3 || (v7 & 7) != 0)
            {
              goto LABEL_31;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_54:
            v45 = 0;
            if (v12 >= v11 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
              if (!this)
              {
                return this;
              }

              v23 = v45;
              v24 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v24 = v12 + 1;
              *(a2 + 1) = v24;
            }

            *(v5 + 46) = v23 != 0;
            *(v5 + 84) |= 8u;
            if (v24 < v11 && *v24 == 40)
            {
              v15 = v24 + 1;
              *(a2 + 1) = v15;
              goto LABEL_62;
            }
          }
        }

        if (v7 >> 3 > 9)
        {
          break;
        }

        if (v8 == 5)
        {
          if ((v7 & 7) != 0)
          {
            goto LABEL_31;
          }

          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_62:
          v45 = 0;
          if (v15 >= v11 || (v25 = *v15, (v25 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
            if (!this)
            {
              return this;
            }

            v25 = v45;
            v26 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            v26 = v15 + 1;
            *(a2 + 1) = v26;
          }

          *(v5 + 45) = v25 != 0;
          v10 = *(v5 + 84) | 4;
          *(v5 + 84) = v10;
          if (v26 < v11 && *v26 == 74)
          {
            *(a2 + 1) = v26 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v8 != 9 || v9 != 2)
          {
            goto LABEL_31;
          }

          v10 = *(v5 + 84);
LABEL_70:
          *(v5 + 84) = v10 | 0x10;
          v27 = *(v5 + 48);
          if (v27 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 48));
          if (!this)
          {
            return this;
          }

          v28 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v28 < v16 && *v28 == 80)
          {
            v17 = v28 + 1;
            *(a2 + 1) = v17;
LABEL_77:
            v45 = 0;
            if (v17 >= v16 || (v29 = *v17, (v29 & 0x80000000) != 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
              if (!this)
              {
                return this;
              }

              v29 = v45;
              v30 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              v30 = (v17 + 1);
              *(a2 + 1) = v30;
            }

            *(v5 + 47) = v29 != 0;
            *(v5 + 84) |= 0x20u;
            if (v16 - v30 >= 2 && *v30 == 186 && v30[1] == 62)
            {
LABEL_85:
              *(a2 + 1) = v30 + 2;
              goto LABEL_86;
            }
          }
        }
      }

      if (v8 != 10)
      {
        break;
      }

      if ((v7 & 7) == 0)
      {
        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_77;
      }

LABEL_31:
      if (v9 == 4)
      {
        return 1;
      }

      if (v7 >> 6 < 0x7D)
      {
        this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 32), a4);
        if ((this & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = AddrObjGoogle::protobuf::FieldOptions::default_instance_(this);
        this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 8), v7, a2, v18, (v5 + 32));
        if ((this & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v8 != 999 || v9 != 2)
    {
      goto LABEL_31;
    }

LABEL_86:
    v31 = *(v5 + 68);
    v32 = *(v5 + 64);
    if (v32 >= v31)
    {
      if (v31 == *(v5 + 72))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 56), v31 + 1);
        v31 = *(v5 + 68);
      }

      *(v5 + 68) = v31 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
    }

    v33 = *(v5 + 56);
    *(v5 + 64) = v32 + 1;
    v34 = *(v33 + 8 * v32);
    v45 = 0;
    v35 = *(a2 + 1);
    if (v35 >= *(a2 + 2) || *v35 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45))
      {
        return 0;
      }
    }

    else
    {
      v45 = *v35;
      *(a2 + 1) = v35 + 1;
    }

    v36 = *(a2 + 14);
    v37 = *(a2 + 15);
    *(a2 + 14) = v36 + 1;
    if (v36 >= v37)
    {
      return 0;
    }

    v38 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v45);
    if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v34, a2, v39, v40) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v38);
    v41 = *(a2 + 14);
    v42 = __OFSUB__(v41, 1);
    v43 = v41 - 1;
    if (v43 < 0 == v42)
    {
      *(a2 + 14) = v43;
    }

    v30 = *(a2 + 1);
    v44 = *(a2 + 2);
    if (v44 - v30 > 1 && *v30 == 186 && v30[1] == 62)
    {
      goto LABEL_85;
    }

    if (v30 == v44 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      this = 1;
      *(a2 + 36) = 1;
      return this;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::IsInitialized(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  if (*(this + 16) < 1)
  {
LABEL_5:

    return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this[7] + v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }

      if (++v2 >= *(this + 16))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::SharedDtor(AddrObjGoogle::protobuf::FieldOptions *this)
{
  v2 = *(this + 6);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 6);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  return AddrObjGoogle::protobuf::FieldOptions::default_instance_(v3);
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorSet::default_instance_(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  if ((atomic_load_explicit(&qword_1EA905630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905630))
  {
    operator new();
  }

  return qword_1EA905628;
}

void sub_18673BD28(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40F1948F29);
  __cxa_guard_abort(&qword_1EA905630);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo::default_instance_(AddrObjGoogle::protobuf::SourceCodeInfo *this)
{
  if ((atomic_load_explicit(&qword_1EA905760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905760))
  {
    operator new();
  }

  return qword_1EA905758;
}

void sub_18673BDDC(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40F1948F29);
  __cxa_guard_abort(&qword_1EA905760);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::SourceCodeInfo *AddrObjGoogle::protobuf::SourceCodeInfo::SourceCodeInfo(AddrObjGoogle::protobuf::SourceCodeInfo *this)
{
  *this = &unk_1EF7E1950;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

uint64_t AddrObjGoogle::protobuf::MessageOptions::default_instance(AddrObjGoogle::protobuf::MessageOptions *this)
{
  v1 = AddrObjGoogle::protobuf::MessageOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::MessageOptions::default_instance_(v1);
}

uint64_t AddrObjGoogle::protobuf::MessageOptions::default_instance_(AddrObjGoogle::protobuf::MessageOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA9056D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9056D0))
  {
    operator new();
  }

  return qword_1EA9056C8;
}

void sub_18673BF28(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40ABAA5818);
  __cxa_guard_abort(&qword_1EA9056D0);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::EnumOptions *AddrObjGoogle::protobuf::EnumOptions::EnumOptions(AddrObjGoogle::protobuf::EnumOptions *this)
{
  *this = &unk_1EF7E1480;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 64) = 1;
  return this;
}

void sub_18673BFD0(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::default_instance(AddrObjGoogle::protobuf::FieldOptions *this)
{
  v1 = AddrObjGoogle::protobuf::FieldOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::FieldOptions::default_instance_(v1);
}

AddrObjGoogle::protobuf::MessageOptions *AddrObjGoogle::protobuf::MessageOptions::MessageOptions(AddrObjGoogle::protobuf::MessageOptions *this)
{
  *this = &unk_1EF7E1320;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 68) = 0;
  *(this + 32) = 0;
  return this;
}

void sub_18673C090(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(AddrObjGoogle::protobuf::EnumValueOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA905700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905700))
  {
    operator new();
  }

  return qword_1EA9056F8;
}

void sub_18673C130(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C406A05FE54);
  __cxa_guard_abort(&qword_1EA905700);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::EnumValueOptions *AddrObjGoogle::protobuf::EnumValueOptions::EnumValueOptions(AddrObjGoogle::protobuf::EnumValueOptions *this)
{
  *this = &unk_1EF7E1530;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

void sub_18673C1D8(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::ServiceOptions::default_instance(AddrObjGoogle::protobuf::ServiceOptions *this)
{
  v1 = AddrObjGoogle::protobuf::ServiceOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::ServiceOptions::default_instance_(v1);
}

AddrObjGoogle::protobuf::ServiceOptions *AddrObjGoogle::protobuf::ServiceOptions::ServiceOptions(AddrObjGoogle::protobuf::ServiceOptions *this)
{
  *this = &unk_1EF7E15E0;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

void sub_18673C2A0(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9056B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9056B0))
  {
    operator new();
  }

  return qword_1EA9056A8;
}

void sub_18673C33C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C4093195C21);
  __cxa_guard_abort(&qword_1EA9056B0);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::MethodDescriptorProto *AddrObjGoogle::protobuf::MethodDescriptorProto::MethodDescriptorProto(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  *this = &unk_1EF7E11C0;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  AddrObjGoogle::protobuf::MethodDescriptorProto::SharedCtor(this);
  return this;
}

void sub_18673C3D0(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::MethodOptions::default_instance_(AddrObjGoogle::protobuf::MethodOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA905720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905720))
  {
    operator new();
  }

  return qword_1EA905718;
}

void sub_18673C46C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C406A05FE54);
  __cxa_guard_abort(&qword_1EA905720);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::MethodOptions *AddrObjGoogle::protobuf::MethodOptions::MethodOptions(AddrObjGoogle::protobuf::MethodOptions *this)
{
  *this = &unk_1EF7E1690;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 8) = 0;
  return this;
}

void sub_18673C518(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption::default_instance_(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  if ((atomic_load_explicit(&qword_1EA905740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905740))
  {
    operator new();
  }

  return qword_1EA905738;
}

void sub_18673C5B4(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40AD0F7D02);
  __cxa_guard_abort(&qword_1EA905740);
  _Unwind_Resume(a1);
}

uint64_t *AddrObjGoogle::protobuf::UninterpretedOption::SharedCtor(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  *(this + 22) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 5) = v2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 9) = v3;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 10) = result;
  *(this + 23) = 0;
  return result;
}

AddrObjGoogle::protobuf::UninterpretedOption *AddrObjGoogle::protobuf::UninterpretedOption::UninterpretedOption(AddrObjGoogle::protobuf::UninterpretedOption *this)
{
  *this = &unk_1EF7E17F0;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  AddrObjGoogle::protobuf::UninterpretedOption::SharedCtor(this);
  return this;
}

void sub_18673C69C(_Unwind_Exception *a1)
{
  v4 = v3;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance_(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this)
{
  if ((atomic_load_explicit(&qword_1EA905750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905750))
  {
    operator new();
  }

  return qword_1EA905748;
}

void sub_18673C748(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10B1C40E36E17E1);
  __cxa_guard_abort(&qword_1EA905750);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::SourceCodeInfo_Location *AddrObjGoogle::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(AddrObjGoogle::protobuf::SourceCodeInfo_Location *this)
{
  *this = &unk_1EF7E18A0;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 20) = 0;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 8) = v3;
  *(this + 9) = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 21) = 0;
  return this;
}

void sub_18673C848()
{

  JUMPOUT(0x18CFD1E20);
}

void sub_18673C868(void *a1, AddrObjGoogle::protobuf::UnknownFieldSet *this)
{
  if (*a1)
  {
    sub_18673C848();
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(this);
}

AddrObjGoogle::protobuf::UninterpretedOption_NamePart *AddrObjGoogle::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this)
{
  *this = &unk_1EF7E1740;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 7) = 0;
  *(this + 2) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

void sub_18673C910(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void addr_obj::AddressObjectFactory::fromBytes(addr_obj::Logger *a1, unsigned __int8 *a2)
{
  if (addr_obj::Logger::isInitialized(a1))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "input parameters: ", 18);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Base64::encodeString(bytes)", 27);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "==", 2);
    addr_obj::Base64::encodeString(a2, &__p);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(v13, "fromBytes");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(v9, "");
    addr_obj::Logger::log(2, &__p, 62, v13, &v11, v9);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = *MEMORY[0x1E69E54E8];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x18CFD1DA0](&v20);
  }

  addr_obj::AddressObjectFactory::parseBytes(a1, a2);
}

void sub_18673CBD4(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, __int128 a21, std::string::size_type a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  v37 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v38 = v37;
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "fromBytes");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v39 = (*(*v38 + 16))(v38);
    v40 = std::string::append(&a15, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    a22 = v40->__r_.__value_.__r.__words[2];
    a21 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(2, &a30, 62, &a24, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a20 < 0)
    {
      v42 = a15;
LABEL_20:
      operator delete(v42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "fromBytes");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(2, &a30, 62, &a24, &a21, &a15);
    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      v42 = a21;
      goto LABEL_20;
    }
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  __cxa_end_catch();
  JUMPOUT(0x18673CBA8);
}

void sub_18673D960(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18673D958);
}

void sub_18673D9E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18673D958);
}

void addr_obj::Base64::Internal::encodeString(unsigned __int8 *a1, std::string *this, std::string::value_type *__s, unint64_t a4)
{
  if (a4 <= 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__str);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "buffer size must be greater than 1, not ", 40);
    v21 = MEMORY[0x18CFD1C60](v20, a4);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "; library version: ", 19);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v23))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v37);
      std::stringbuf::str();
      if ((v36 & 0x80u) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if ((v36 & 0x80u) == 0)
      {
        v25 = v36;
      }

      else
      {
        v25 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v24, v25);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Base64.cpp");
      std::string::basic_string[abi:ne200100]<0>(v33, "encodeString");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v30, "");
      addr_obj::Logger::log(16, __p, 196, v33, &v32, v30);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v37);
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "; at ", 5);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Base64.cpp", 80);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ":", 1);
    MEMORY[0x18CFD1C40](v28, 196);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v37, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v37, __p);
  }

  memset(&__str, 0, sizeof(__str));
  v5 = a1[23];
  if (v5 >= 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (!v6)
  {
    goto LABEL_33;
  }

  v8 = 0;
  LOBYTE(v9) = 0;
  if (v5 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (a4 <= 3)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4 >> 1;
  }

  do
  {
    if (v11 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v11;
    }

    v13 = &v10[v12];
    v14 = __s;
    if (v8 == 2)
    {
      goto LABEL_18;
    }

    if (v8 == 1)
    {
LABEL_22:
      if (v10 == v13)
      {
        v8 = 1;
        goto LABEL_27;
      }

      v17 = *v10++;
      *v14++ = aAbcdefghijklmn[(v9 | (v17 >> 4))];
      LOBYTE(v9) = 4 * (v17 & 0xF);
LABEL_18:
      if (v10 == v13)
      {
        v8 = 2;
        goto LABEL_27;
      }

      v15 = *v10++;
      *v14 = aAbcdefghijklmn[v9 | (v15 >> 6)];
      v9 = v15 & 0x3F;
      v14[1] = aAbcdefghijklmn[v9];
      v14 += 2;
    }

    if (v10 != v13)
    {
      v16 = *v10++;
      *v14++ = aAbcdefghijklmn[v16 >> 2];
      LOBYTE(v9) = 16 * (v16 & 3);
      goto LABEL_22;
    }

    v8 = 0;
LABEL_27:
    std::string::append(&__str, __s, v14 - __s);
    v10 = v13;
    v6 -= v12;
  }

  while (v6);
  if (v8 == 2)
  {
    v18 = 1;
    std::string::append(&__str, 1uLL, aAbcdefghijklmn[v9]);
LABEL_32:
    std::string::append(&__str, v18, 61);
  }

  else if (v8 == 1)
  {
    std::string::append(&__str, 1uLL, aAbcdefghijklmn[v9]);
    v18 = 2;
    goto LABEL_32;
  }

LABEL_33:
  std::string::operator=(this, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_18673E184(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v30)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v31);
    JUMPOUT(0x18673E21CLL);
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void sub_18673E204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t addr_obj::Logger::log(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  if (addr_obj::Logger::callback_)
  {
    v11 = result;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "library version: ", 17);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "11.3.0", 6);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; ", 2);
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = a2[1];
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ":", 1);
    v20 = MEMORY[0x18CFD1C40](v19, a3);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ":", 1);
    v22 = *(a4 + 23);
    if (v22 >= 0)
    {
      v23 = a4;
    }

    else
    {
      v23 = *a4;
    }

    if (v22 >= 0)
    {
      v24 = *(a4 + 23);
    }

    else
    {
      v24 = a4[1];
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ";", 1);
    v26 = addr_obj::Logger::callback_;
    if (addr_obj::Logger::callback_)
    {
      std::stringbuf::str();
      v26(v11, &__p, a5, a6);
      if (v28 < 0)
      {
        operator delete(__p);
      }
    }

    v29 = *MEMORY[0x1E69E54E8];
    *(&v29 + *(v29 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v30 = MEMORY[0x1E69E5548] + 16;
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    v30 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v31);
    std::ostream::~ostream();
    return MEMORY[0x18CFD1DA0](&v33);
  }

  return result;
}

void sub_18673E464(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ostringstream::~ostringstream(&a12, MEMORY[0x1E69E54E8]);
  MEMORY[0x18CFD1DA0](va);
  _Unwind_Resume(a1);
}

uint64_t **addr_obj::AddressObjectProto::Clear(addr_obj::AddressObjectProto *this)
{
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 20) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v4 = *(this + 2);
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    v5 = *(this + 22);
    if ((v5 & 4) != 0)
    {
      v6 = *(this + 3);
      if (v6)
      {
        addr_obj::LocalizationProto::Clear(v6);
        v5 = *(this + 22);
      }
    }

    if ((v5 & 0x10) != 0)
    {
      v7 = *(this + 7);
      if (v7)
      {
        addr_obj::V0AddressObjectProto::Clear(v7);
        v5 = *(this + 22);
      }
    }

    if ((v5 & 0x20) != 0)
    {
      v8 = *(this + 8);
      if (v8)
      {
        addr_obj::V1AddressObjectProto::Clear(v8);
        v5 = *(this + 22);
      }
    }

    if ((v5 & 0x40) != 0)
    {
      v9 = *(this + 9);
      if (v9)
      {
        addr_obj::VenueInfoProto::Clear(v9);
      }
    }
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 32);
  v12 = *(this + 1);
  v11 = this + 8;
  *(v11 + 20) = 0;
  if (v12)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v11);
  }

  return result;
}

uint64_t addr_obj::geo3::Address::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
LABEL_2:
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
      if (v7 >> 3 != 16)
      {
        break;
      }

      if ((v7 & 7) == 0)
      {
        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_44;
      }

LABEL_30:
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

    if (v8 != 15)
    {
      break;
    }

    if (v9 != 2)
    {
      goto LABEL_30;
    }

LABEL_24:
    *(v5 + 56) |= 2u;
    v15 = *(v5 + 40);
    if (!v15)
    {
      operator new();
    }

    v30 = 0;
    v16 = *(a2 + 1);
    if (v16 >= *(a2 + 2) || *v16 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v16;
      *(a2 + 1) = v16 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v30);
    if (!addr_obj::geo3::StructuredAddress::MergePartialFromCodedStream(v15, a2, v22, v23) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    v27 = *(a2 + 1);
    v17 = *(a2 + 2);
    if (v17 - v27 > 1 && *v27 == 128 && v27[1] == 1)
    {
      v18 = (v27 + 2);
      *(a2 + 1) = v18;
LABEL_44:
      v29 = 0;
      if (v18 >= v17 || (v28 = *v18, (v28 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
        if (!this)
        {
          return this;
        }

        v28 = v29;
      }

      else
      {
        *(a2 + 1) = v18 + 1;
      }

      if (v28 > 2)
      {
        AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 16, v28);
      }

      else
      {
        *(v5 + 56) |= 4u;
        *(v5 + 48) = v28;
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

  if (v8 != 11 || v9 != 2)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v10 = *(v5 + 28);
    v11 = *(v5 + 24);
    if (v11 >= v10)
    {
      if (v10 == *(v5 + 32))
      {
        this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v10 + 1);
        v10 = *(v5 + 28);
      }

      *(v5 + 28) = v10 + 1;
      AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(this);
    }

    v12 = *(v5 + 16);
    *(v5 + 24) = v11 + 1;
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v12 + 8 * v11));
    if (!this)
    {
      return this;
    }

    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2))
    {
      goto LABEL_2;
    }

    v14 = *v13;
    if (v14 != 90)
    {
      if (v14 != 122)
      {
        goto LABEL_2;
      }

      *(a2 + 1) = v13 + 1;
      goto LABEL_24;
    }

    *(a2 + 1) = v13 + 1;
  }
}

uint64_t addr_obj::geo3::StructuredAddress::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
LABEL_2:
  while (2)
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

    v8 = v7 & 7;
    switch(v7 >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        *(v5 + 244) |= 1u;
        v9 = *(v5 + 16);
        if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
        if (this)
        {
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 18)
          {
            *(a2 + 1) = v12 + 1;
            goto LABEL_62;
          }

          continue;
        }

        return this;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_62:
        *(v5 + 244) |= 2u;
        v13 = *(v5 + 24);
        if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 24));
        if (this)
        {
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 26)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_69;
          }

          continue;
        }

        return this;
      case 3u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_69:
        *(v5 + 244) |= 4u;
        v15 = *(v5 + 32);
        if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
        if (this)
        {
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 34)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_76;
          }

          continue;
        }

        return this;
      case 4u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_76:
        *(v5 + 244) |= 8u;
        v17 = *(v5 + 40);
        if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
        if (this)
        {
          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 42)
          {
            *(a2 + 1) = v18 + 1;
            goto LABEL_83;
          }

          continue;
        }

        return this;
      case 5u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_83:
        *(v5 + 244) |= 0x10u;
        v19 = *(v5 + 48);
        if (v19 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 48));
        if (this)
        {
          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 50)
          {
            *(a2 + 1) = v20 + 1;
            goto LABEL_90;
          }

          continue;
        }

        return this;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_90:
        *(v5 + 244) |= 0x20u;
        v21 = *(v5 + 56);
        if (v21 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 56));
        if (this)
        {
          v22 = *(a2 + 1);
          if (v22 < *(a2 + 2) && *v22 == 58)
          {
            *(a2 + 1) = v22 + 1;
            goto LABEL_97;
          }

          continue;
        }

        return this;
      case 7u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_97:
        *(v5 + 244) |= 0x40u;
        v23 = *(v5 + 64);
        if (v23 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 64));
        if (this)
        {
          v24 = *(a2 + 1);
          if (v24 < *(a2 + 2) && *v24 == 66)
          {
            *(a2 + 1) = v24 + 1;
            goto LABEL_104;
          }

          continue;
        }

        return this;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_104:
        *(v5 + 244) |= 0x80u;
        v25 = *(v5 + 72);
        if (v25 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 72));
        if (this)
        {
          v26 = *(a2 + 1);
          if (v26 < *(a2 + 2) && *v26 == 74)
          {
            *(a2 + 1) = v26 + 1;
            goto LABEL_111;
          }

          continue;
        }

        return this;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_111:
        *(v5 + 244) |= 0x100u;
        v27 = *(v5 + 80);
        if (v27 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 80));
        if (this)
        {
          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 82)
          {
            *(a2 + 1) = v28 + 1;
            goto LABEL_118;
          }

          continue;
        }

        return this;
      case 0xAu:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_118:
        *(v5 + 244) |= 0x200u;
        v29 = *(v5 + 88);
        if (v29 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 88));
        if (this)
        {
          v30 = *(a2 + 1);
          if (v30 < *(a2 + 2) && *v30 == 90)
          {
            *(a2 + 1) = v30 + 1;
            goto LABEL_125;
          }

          continue;
        }

        return this;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_125:
        *(v5 + 244) |= 0x400u;
        v31 = *(v5 + 96);
        if (v31 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 96));
        if (this)
        {
          v32 = *(a2 + 1);
          if (v32 < *(a2 + 2) && *v32 == 98)
          {
            *(a2 + 1) = v32 + 1;
            goto LABEL_132;
          }

          continue;
        }

        return this;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_132:
        *(v5 + 244) |= 0x800u;
        v33 = *(v5 + 104);
        if (v33 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 104));
        if (this)
        {
          v34 = *(a2 + 1);
          if (v34 < *(a2 + 2) && *v34 == 106)
          {
            *(a2 + 1) = v34 + 1;
            goto LABEL_139;
          }

          continue;
        }

        return this;
      case 0xDu:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_139:
        *(v5 + 244) |= 0x1000u;
        v35 = *(v5 + 112);
        if (v35 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 112));
        if (this)
        {
          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2) || *v36 != 114)
          {
            continue;
          }

          goto LABEL_145;
        }

        return this;
      case 0xEu:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v37 = *(v5 + 132);
          v38 = *(v5 + 128);
          if (v38 >= v37)
          {
            if (v37 == *(v5 + 136))
            {
              this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 120), v37 + 1);
              v37 = *(v5 + 132);
            }

            *(v5 + 132) = v37 + 1;
            AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(this);
          }

          v39 = *(v5 + 120);
          *(v5 + 128) = v38 + 1;
          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v39 + 8 * v38));
          if (!this)
          {
            return this;
          }

          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v40 = *v36;
          if (v40 != 114)
          {
            if (v40 != 122)
            {
              goto LABEL_2;
            }

            *(a2 + 1) = v36 + 1;
            goto LABEL_156;
          }

LABEL_145:
          *(a2 + 1) = v36 + 1;
        }

      case 0xFu:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_156:
        *(v5 + 244) |= 0x4000u;
        v41 = *(v5 + 144);
        if (v41 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 144));
        if (this)
        {
          v42 = *(a2 + 1);
          if (*(a2 + 4) - v42 >= 2 && *v42 == 130 && v42[1] == 1)
          {
            *(a2 + 1) = v42 + 2;
            goto LABEL_164;
          }

          continue;
        }

        return this;
      case 0x10u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_164:
        *(v5 + 244) |= 0x8000u;
        v43 = *(v5 + 152);
        if (v43 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 152));
        if (this)
        {
          v44 = *(a2 + 1);
          if (*(a2 + 4) - v44 < 2 || *v44 != 138 || v44[1] != 1)
          {
            continue;
          }

          goto LABEL_171;
        }

        return this;
      case 0x11u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v45 = *(v5 + 172);
          v46 = *(v5 + 168);
          if (v46 >= v45)
          {
            if (v45 == *(v5 + 176))
            {
              this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 160), v45 + 1);
              v45 = *(v5 + 172);
            }

            *(v5 + 172) = v45 + 1;
            AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(this);
          }

          v47 = *(v5 + 160);
          *(v5 + 168) = v46 + 1;
          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v47 + 8 * v46));
          if (!this)
          {
            return this;
          }

          v44 = *(a2 + 1);
          if (*(a2 + 4) - v44 < 2)
          {
            goto LABEL_2;
          }

          v48 = *v44;
          if (v48 == 146)
          {
            if (v44[1] != 1)
            {
              goto LABEL_2;
            }

            *(a2 + 1) = v44 + 2;
            goto LABEL_185;
          }

          if (v48 != 138 || v44[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_171:
          *(a2 + 1) = v44 + 2;
        }

      case 0x12u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_185:
        *(v5 + 244) |= 0x20000u;
        v49 = *(v5 + 184);
        if (v49 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 184));
        if (this)
        {
          v50 = *(a2 + 1);
          if (*(a2 + 4) - v50 < 2 || *v50 != 154 || v50[1] != 1)
          {
            continue;
          }

          goto LABEL_192;
        }

        return this;
      case 0x13u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

        while (1)
        {
          v51 = *(v5 + 204);
          v52 = *(v5 + 200);
          if (v52 >= v51)
          {
            if (v51 == *(v5 + 208))
            {
              AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 192), v51 + 1);
              v51 = *(v5 + 204);
            }

            *(v5 + 204) = v51 + 1;
            AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::geo3::StructuredAddress_SubPremise>::New();
          }

          v53 = *(v5 + 192);
          *(v5 + 200) = v52 + 1;
          v54 = *(v53 + 8 * v52);
          v76[0] = 0;
          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2) || *v55 < 0)
          {
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v55;
            *(a2 + 1) = v55 + 1;
          }

          v56 = *(a2 + 14);
          v57 = *(a2 + 15);
          *(a2 + 14) = v56 + 1;
          if (v56 >= v57)
          {
            return 0;
          }

          v58 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v76[0]);
          if (!addr_obj::geo3::StructuredAddress_SubPremise::MergePartialFromCodedStream(v54, a2, v59, v60) || *(a2 + 36) != 1)
          {
            return 0;
          }

          this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v58);
          v61 = *(a2 + 14);
          v62 = __OFSUB__(v61, 1);
          v63 = v61 - 1;
          if (v63 < 0 == v62)
          {
            *(a2 + 14) = v63;
          }

          v50 = *(a2 + 1);
          if (*(a2 + 4) - v50 <= 1)
          {
            goto LABEL_2;
          }

          v64 = *v50;
          if (v64 == 162)
          {
            break;
          }

          if (v64 != 154 || v50[1] != 1)
          {
            goto LABEL_2;
          }

LABEL_192:
          *(a2 + 1) = v50 + 2;
        }

        if (v50[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v50 + 2;
        goto LABEL_214;
      case 0x14u:
        if (v8 != 2)
        {
          goto LABEL_53;
        }

LABEL_214:
        *(v5 + 244) |= 0x80000u;
        v65 = *(v5 + 216);
        if (v65 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 216));
        if (!this)
        {
          return this;
        }

        v66 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v66 >= 2 && *v66 == 160 && v66[1] == 6)
        {
          goto LABEL_243;
        }

        continue;
      default:
        if (v7 >> 3 != 100)
        {
          goto LABEL_53;
        }

        if ((v7 & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          while (1)
          {
            *v76 = 0;
            if (v11 >= v10 || (v67 = *v11, v67 < 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v76);
              if (!this)
              {
                return this;
              }

              v67 = *v76;
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            v68 = *(v5 + 232);
            v69 = *(v5 + 236);
            if (v68 == v69)
            {
              this = AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve((v5 + 224), v68 + 1);
              v68 = *(v5 + 232);
              v69 = *(v5 + 236);
            }

            v70 = *(v5 + 224);
            v71 = v68 + 1;
            *(v5 + 232) = v68 + 1;
            *(v70 + 8 * v68) = v67;
            if (v69 - (v68 + 1) >= 1)
            {
              v72 = v69 - v68;
              do
              {
                v73 = *(a2 + 1);
                v74 = *(a2 + 2);
                if (v74 - v73 < 2 || *v73 != 160 || v73[1] != 6)
                {
                  break;
                }

                *(a2 + 1) = v73 + 2;
                *v76 = 0;
                if ((v73 + 2) >= v74 || (v75 = v73[2], v75 < 0))
                {
                  this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v76);
                  if (!this)
                  {
                    return this;
                  }

                  v75 = *v76;
                  v70 = *(v5 + 224);
                  v71 = *(v5 + 232);
                }

                else
                {
                  *(a2 + 1) = v73 + 3;
                }

                *(v5 + 232) = v71 + 1;
                *(v70 + 8 * v71) = v75;
                --v72;
                ++v71;
              }

              while (v72 > 1);
            }

LABEL_240:
            v66 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v10 - v66 <= 1 || *v66 != 160 || v66[1] != 6)
            {
              break;
            }

LABEL_243:
            v11 = (v66 + 2);
            *(a2 + 1) = v11;
          }

          if (v66 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }

          continue;
        }

        if (v8 != 2)
        {
LABEL_53:
          if (v8 == 4)
          {
            return 1;
          }

          this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
          if ((this & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<long long,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)3>(a2, (v5 + 224));
        if (this)
        {
          goto LABEL_240;
        }

        return this;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField(AddrObjGoogle::protobuf::internal::ExtensionSet *this, uint64_t a2, AddrObjGoogle::protobuf::io::CodedInputStream *a3, const AddrObjGoogle::protobuf::Message *a4, AddrObjGoogle::protobuf::UnknownFieldSet *a5)
{
  v18[0] = &unk_1EF7E1BE0;
  v18[1] = a5;
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = *(a3 + 9);
    v10 = (*(*a4 + 152))(a4);
    v14 = &unk_1EF7E1EE0;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v11 = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, &v14, v18);
  }

  else
  {
    v14 = &unk_1EF7E1C40;
    v15 = a4;
    v11 = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, &v14, v18);
  }

  v12 = v11;
  addr_obj::Localization::getDisplayLanguage(&v14);
  return v12;
}

uint64_t AddrObjGoogle::protobuf::internal::GeneratedExtensionFinder::Find(uint64_t a1, int a2, _OWORD *a3)
{
  if (!qword_1EA9058F8)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = a2;
  v4 = std::__hash_table<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>>>::find<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>(qword_1EA9058F8, &v7);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 3);
  *a3 = *(v4 + 2);
  a3[1] = v5;
  return 1;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::MutableMessage(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v13 = a2;
  v8 = std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(a1, &v13, &v13);
  v9 = v8;
  v8[7] = a5;
  if (v10)
  {
    *(v8 + 48) = a3;
    *(v8 + 49) = 0;
    *(v8 + 50) &= 0xFu;
    result = (*(*a4 + 24))(a4);
    v9[5] = result;
    *(v9 + 50) &= 0xF0u;
  }

  else
  {
    v12 = *(v8 + 50);
    *(v8 + 50) = v12 & 0xF0;
    result = v8[5];
    if ((v12 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

uint64_t addr_obj::V1AddressObjectProto::IsInitialized(addr_obj::V1AddressObjectProto *this)
{
  v2 = *(this + 25);
  if ((v2 & 2) != 0)
  {
    v3 = *(this + 6);
    if (!v3)
    {
      v3 = *(addr_obj::V1AddressObjectProto::default_instance_(0) + 48);
    }

    if (!(*(*v3 + 40))(v3))
    {
      return 0;
    }

    v2 = *(this + 25);
  }

  if ((v2 & 0x10) != 0)
  {
    v4 = *(this + 9);
    if (!v4)
    {
      v4 = *(addr_obj::V1AddressObjectProto::default_instance_(0) + 72);
    }

    if (!(*(*v4 + 40))(v4))
    {
      return 0;
    }

    v2 = *(this + 25);
  }

  if ((v2 & 0x40) != 0)
  {
    v5 = *(this + 11);
    if (!v5)
    {
      v5 = *(addr_obj::V1AddressObjectProto::default_instance_(0) + 88);
    }

    if (!(*(*v5 + 40))(v5))
    {
      return 0;
    }
  }

  return AddrObjGoogle::protobuf::internal::ExtensionSet::IsInitialized(this + 1);
}

std::string *addr_obj::Localization::Localization(std::string *this, const addr_obj::AddressObjectProto *a2)
{
  *&this[2].__r_.__value_.__l.__data_ = 0u;
  v4 = this + 2;
  this[2].__r_.__value_.__r.__words[2] = 0;
  *&this->__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__r.__words[1] = 0u;
  *&this->__r_.__value_.__l.__data_ = 0u;
  if ((*(a2 + 88) & 4) != 0)
  {
    v6 = *(a2 + 3);
    if (!v6)
    {
      v6 = *(addr_obj::AddressObjectProto::default_instance_(this) + 24);
    }

    std::string::operator=(this, v6[2]);
    std::string::operator=(this + 1, v6[3]);
    std::string::operator=(v4, v6[4]);
  }

  else if (addr_obj::Logger::isInitialized(this))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "proto is missing localization: ", 31);
    addr_obj::operator<<(v5, a2);
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Localization.cpp");
    std::string::basic_string[abi:ne200100]<0>(v12, "Localization");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    addr_obj::Logger::log(16, v14, 30, v12, &v10, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    v16 = *MEMORY[0x1E69E54E8];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x18CFD1DA0](&v20);
  }

  return this;
}

void sub_18673FD2C(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, __int128 a21, std::string::size_type a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  v37 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v38 = v37;
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Localization.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "Localization");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v39 = (*(*v38 + 16))(v38);
    v40 = std::string::append(&a15, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    a22 = v40->__r_.__value_.__r.__words[2];
    a21 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a30, 30, &a24, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Localization.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "Localization");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(16, &a30, 30, &a24, &a21, &a15);
    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x18673FD10);
}

void sub_18673FF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 + 71) < 0)
  {
    operator delete(*v40);
  }

  if (*(v39 + 47) < 0)
  {
    operator delete(*(v39 + 24));
  }

  if (*(v39 + 23) < 0)
  {
    operator delete(*v39);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::AddressObjectFactory::fromProto(void x0_0, const addr_obj::AddressObjectProto *a1)
{
  if ((*(a1 + 88) & 2) != 0)
  {
    v4 = *(a1 + 2);
    v5 = *(v4 + 23);
    if (v5 < 0)
    {
      v5 = *(v4 + 8);
    }

    if (v5)
    {
      addr_obj::Fingerprints::Fingerprints(v43, a1);
      v6 = *(a1 + 20);
      if (v6 <= 1)
      {
        if (!v6)
        {
          operator new();
        }

        if (v6 == 1)
        {
          operator new();
        }
      }

      else
      {
        switch(v6)
        {
          case 2:
            operator new();
          case 3:
            addr_obj::AddressObjectProto::AddressObjectProto(v47);
            addr_obj::AddressObjectProto::CopyFrom(v47, a1);
            v49 |= 1u;
            v48 = 1;
            v14 = *(a1 + 8);
            if (!v14)
            {
              v13 = addr_obj::AddressObjectProto::default_instance_(v13);
              v14 = *(v13 + 8);
            }

            v15 = addr_obj::V3AddressObjectProto::v3address(v13);
            Message = AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(v14 + 8, *v15, *(v15 + 1));
            if (!*(Message + 2))
            {
              addr_obj::V3AddressObjectProto::default_instance_(Message);
            }

            std::string::basic_string[abi:ne200100]<0>(v45, "downconvert_v3_v1+venue");
            std::string::basic_string[abi:ne200100]<0>(__p, "fromProto");
            addr_obj::Fingerprints::add(v43, v45, __p);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            if (v46 < 0)
            {
              operator delete(v45[0]);
            }

            operator new();
          case 4:
            addr_obj::AddressObjectProto::AddressObjectProto(v47);
            addr_obj::AddressObjectProto::CopyFrom(v47, a1);
            v49 |= 1u;
            v48 = 2;
            v8 = *(a1 + 8);
            if (!v8)
            {
              v7 = addr_obj::AddressObjectProto::default_instance_(v7);
              v8 = *(v7 + 8);
            }

            v9 = addr_obj::V2AddressObjectProto::v2address(v7);
            v10 = AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(v8 + 8, *v9, *(v9 + 1));
            v11 = addr_obj::V4AddressObjectProto::v4address(v10);
            v12 = AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(v10 + 8, *v11, *(v11 + 1));
            if (!*(v12 + 2))
            {
              addr_obj::V4AddressObjectProto::default_instance_(v12);
            }

            std::string::basic_string[abi:ne200100]<0>(v45, "downconvert_v4_v2+venue");
            std::string::basic_string[abi:ne200100]<0>(__p, "fromProto");
            addr_obj::Fingerprints::add(v43, v45, __p);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            if (v46 < 0)
            {
              operator delete(v45[0]);
            }

            operator new();
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v47);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "unexpected proto.address_object_version in ", 43);
      v24 = addr_obj::operator<<(v23, a1);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; library version: ", 19);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "11.3.0", 6);
      if (addr_obj::Logger::isInitialized(v26))
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v45);
        std::stringbuf::str();
        if ((v42 & 0x80u) == 0)
        {
          v27 = __p;
        }

        else
        {
          v27 = __p[0];
        }

        if ((v42 & 0x80u) == 0)
        {
          v28 = v42;
        }

        else
        {
          v28 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v27, v28);
        if (v42 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v40, "fromProto");
        std::stringbuf::str();
        std::string::basic_string[abi:ne200100]<0>(v37, "");
        addr_obj::Logger::log(16, __p, 109, &v40, &v39, v37);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (v42 < 0)
        {
          operator delete(__p[0]);
        }

        std::ostringstream::~ostringstream(v45);
      }

      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "; at ", 5);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp", 94);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ":", 1);
      MEMORY[0x18CFD1C40](v31, 109);
      exception = __cxa_allocate_exception(0x28uLL);
      std::string::basic_string[abi:ne200100]<0>(v45, "DataError");
      std::stringbuf::str();
      addr_obj::Exception<std::runtime_error>::Exception(exception, v45, __p);
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v47);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "library_version is missing in proto: ", 37);
  v18 = addr_obj::operator<<(v17, a1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; library version: ", 19);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "11.3.0", 6);
  if (addr_obj::Logger::isInitialized(v20))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v45);
    std::stringbuf::str();
    if ((v44 & 0x80u) == 0)
    {
      v21 = v43;
    }

    else
    {
      v21 = v43[0];
    }

    if ((v44 & 0x80u) == 0)
    {
      v22 = v44;
    }

    else
    {
      v22 = v43[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v21, v22);
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(__p, "fromProto");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(&v39, "");
    addr_obj::Logger::log(16, v43, 72, __p, &v40, &v39);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    std::ostringstream::~ostringstream(v45);
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "; at ", 5);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp", 94);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ":", 1);
  MEMORY[0x18CFD1C40](v35, 72);
  v36 = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(v45, "DataError");
  std::stringbuf::str();
  addr_obj::Exception<std::runtime_error>::Exception(v36, v45, v43);
}

void sub_186740F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    if ((v36 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v38);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v35);
  goto LABEL_8;
}

void sub_186740FB4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::ostringstream::~ostringstream(&v2);
  _Unwind_Resume(a1);
}

void sub_186740FD4()
{
  v1 = &v0;
  std::vector<addr_obj::Fingerprints::Fingerprint>::__destroy_vector::operator()[abi:ne200100](&v1);
  JUMPOUT(0x1867410F8);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 3);
      v9 = v7[2];
      *(a4 + 48) = *(v7 + 6);
      *(a4 + 32) = v9;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      *(v7 + 4) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 9);
      *(a4 + 56) = v10;
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      *(v7 + 7) = 0;
      v7 += 5;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<addr_obj::Fingerprints::Fingerprint>>::destroy[abi:ne200100]<addr_obj::Fingerprints::Fingerprint,0>(a1, v5);
      v5 += 5;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>,std::reverse_iterator<addr_obj::Fingerprints::Fingerprint*>,std::reverse_iterator<addr_obj::Fingerprints::Fingerprint*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t addr_obj::V2AddressObject::V2AddressObject(uint64_t a1, __int128 *a2, void *a3, const addr_obj::AddressObjectProto *a4, int *a5)
{
  v7 = addr_obj::V1AddressObject::V1AddressObject(a1, a2, a3, a4, a5);
  *v7 = &unk_1EF7DFC20;
  *(v7 + 728) = 0u;
  *(v7 + 744) = 0u;
  *(v7 + 760) = 0u;
  *(v7 + 776) = 0u;
  *(v7 + 792) = 0u;
  *(v7 + 808) = 0u;
  *(v7 + 824) = 0u;
  *(v7 + 840) = 0u;
  *(v7 + 856) = 0u;
  *(v7 + 872) = 0u;
  *(v7 + 888) = 0u;
  *(v7 + 904) = 0u;
  *(v7 + 920) = 0u;
  *(v7 + 936) = 0u;
  *(v7 + 952) = 0u;
  *(v7 + 968) = 0u;
  *(v7 + 984) = 0u;
  *(v7 + 1000) = 0u;
  addr_obj::V2AddressObject::init(v7, a4);
  return a1;
}

void sub_1867412D4(_Unwind_Exception *a1)
{
  if (*(v1 + 1015) < 0)
  {
    operator delete(*(v1 + 992));
  }

  if (*(v1 + 991) < 0)
  {
    operator delete(*(v1 + 968));
  }

  if (*(v1 + 967) < 0)
  {
    operator delete(*(v1 + 944));
  }

  if (*(v1 + 943) < 0)
  {
    operator delete(*(v1 + 920));
  }

  if (*(v1 + 919) < 0)
  {
    operator delete(*(v1 + 896));
  }

  if (*(v1 + 895) < 0)
  {
    operator delete(*(v1 + 872));
  }

  if (*(v1 + 871) < 0)
  {
    operator delete(*(v1 + 848));
  }

  if (*(v1 + 847) < 0)
  {
    operator delete(*(v1 + 824));
  }

  if (*(v1 + 823) < 0)
  {
    operator delete(*(v1 + 800));
  }

  if (*(v1 + 799) < 0)
  {
    operator delete(*(v1 + 776));
  }

  if (*(v1 + 775) < 0)
  {
    operator delete(*(v1 + 752));
  }

  if (*(v1 + 751) < 0)
  {
    operator delete(*v2);
  }

  addr_obj::V1AddressObject::~V1AddressObject(v1);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::AddressObjectBase::AddressObjectBase(uint64_t a1, int *a2, __int128 *a3, void *a4)
{
  *a1 = &unk_1EF7DF790;
  v7 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = v7;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "11.3.0");
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 80) = *(a3 + 5);
    *(a1 + 64) = v9;
  }

  if (*(a3 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a3 + 6), *(a3 + 7));
  }

  else
  {
    v10 = a3[3];
    *(a1 + 104) = *(a3 + 8);
    *(a1 + 88) = v10;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<addr_obj::Fingerprints::Fingerprint>::__init_with_size[abi:ne200100]<addr_obj::Fingerprints::Fingerprint*,addr_obj::Fingerprints::Fingerprint*>((a1 + 112), *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 4));
  addr_obj::AddressObjectProto::AddressObjectProto((a1 + 136));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_1867414CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  if (*(v10 + 63) < 0)
  {
    operator delete(*(v10 + 40));
  }

  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<addr_obj::Fingerprints::Fingerprint>::__init_with_size[abi:ne200100]<addr_obj::Fingerprints::Fingerprint*,addr_obj::Fingerprints::Fingerprint*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<addr_obj::Fingerprints::Fingerprint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1867415A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<addr_obj::Fingerprints::Fingerprint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<addr_obj::Fingerprints::Fingerprint>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*,addr_obj::Fingerprints::Fingerprint*,addr_obj::Fingerprints::Fingerprint*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 32), *(v6 + 4), *(v6 + 5));
      }

      else
      {
        v8 = v6[2];
        v4[2].__r_.__value_.__r.__words[0] = *(v6 + 6);
        *&v4[1].__r_.__value_.__r.__words[1] = v8;
      }

      if (*(v6 + 79) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 56), *(v6 + 7), *(v6 + 8));
      }

      else
      {
        v9 = *(v6 + 56);
        v4[3].__r_.__value_.__r.__words[0] = *(v6 + 9);
        *&v4[2].__r_.__value_.__r.__words[1] = v9;
      }

      v6 += 5;
      v4 = (v14 + 80);
      v14 = (v14 + 80);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_186741718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void addr_obj::V1AddressObject::init(addr_obj::V1AddressObject *this, std::string::size_type *a2)
{
  if ((a2[11] & 0x20) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "v1address is missing in the ", 28);
    v11 = addr_obj::operator<<(v10, a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; base64==", 10);
    (*(*this + 200))(__p, this);
    if ((v32 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v32 & 0x80u) == 0)
    {
      v14 = v32;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; library version: ", 19);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "11.3.0", 6);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (addr_obj::Logger::isInitialized(v17))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      std::stringbuf::str();
      if ((v30 & 0x80u) == 0)
      {
        v18 = v29;
      }

      else
      {
        v18 = v29[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v19 = v30;
      }

      else
      {
        v19 = v29[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v18, v19);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V1AddressObject.cpp");
      std::string::basic_string[abi:ne200100]<0>(v27, "init");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v24, "");
      addr_obj::Logger::log(16, v29, 57, v27, &v26, v24);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      std::ostringstream::~ostringstream(__p);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "; at ", 5);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V1AddressObject.cpp", 89);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ":", 1);
    MEMORY[0x18CFD1C40](v22, 57);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, __p, v29);
  }

  v4 = addr_obj::AddressObjectBase::fromProto(this, a2);
  v5 = a2[8];
  if (!v5)
  {
    v4 = addr_obj::AddressObjectProto::default_instance_(v4);
    v5 = v4[2].__r_.__value_.__r.__words[2];
  }

  v6 = *(v5 + 100);
  if (v6)
  {
    v4 = std::string::operator=((this + 248), *(v5 + 40));
    v6 = *(v5 + 100);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 48);
    if (!v7)
    {
      v7 = *(addr_obj::V1AddressObjectProto::default_instance_(v4) + 48);
    }

    addr_obj::geo3::Address::CopyFrom((this + 272), v7);
    v6 = *(v5 + 100);
  }

  if ((v6 & 4) != 0)
  {
    v4 = std::string::operator=(this + 14, *(v5 + 56));
    v6 = *(v5 + 100);
  }

  if ((v6 & 8) != 0)
  {
    v4 = std::string::operator=(this + 15, *(v5 + 64));
    v6 = *(v5 + 100);
  }

  if ((v6 & 0x10) != 0)
  {
    v8 = *(v5 + 72);
    if (!v8)
    {
      v8 = *(addr_obj::V1AddressObjectProto::default_instance_(v4) + 72);
    }

    addr_obj::geo3::StructuredAddress::CopyFrom((this + 384), v8);
    v6 = *(v5 + 100);
  }

  if ((v6 & 0x20) != 0)
  {
    v4 = std::string::operator=((this + 632), *(v5 + 80));
    v6 = *(v5 + 100);
  }

  if ((v6 & 0x40) != 0)
  {
    v9 = *(v5 + 88);
    if (!v9)
    {
      v9 = *(addr_obj::V1AddressObjectProto::default_instance_(v4) + 88);
    }

    addr_obj::geo3::Address::CopyFrom((this + 656), v9);
  }
}

void sub_186741E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

std::string *addr_obj::AddressObjectBase::fromProto(addr_obj::AddressObjectBase *this, const std::string **a2)
{
  v3 = (this + 12);
  if (*(this + 3) != *(a2 + 20))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "major version mismatch, expected ", 33);
    v8 = addr_obj::operator<<(v7, v3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " but got: ", 10);
    v10 = addr_obj::operator<<(v9, a2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "; library version: ", 19);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v12))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v26);
      std::stringbuf::str();
      if ((v25 & 0x80u) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp");
      std::string::basic_string[abi:ne200100]<0>(v22, "fromProto");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v19, "");
      addr_obj::Logger::log(16, __p, 137, v22, &v21, v19);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v26);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "; at ", 5);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectBase.cpp", 91);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ":", 1);
    MEMORY[0x18CFD1C40](v17, 137);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v26, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v26, __p);
  }

  v4 = a2[2];
  v5 = (this + 16);

  return std::string::operator=(v5, v4);
}

void sub_186742494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void addr_obj::geo3::Address::CopyFrom(const addr_obj::geo3::Address *this, const addr_obj::geo3::Address *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    addr_obj::geo3::Address::MergeFrom(this, a2);
  }
}

uint64_t **addr_obj::geo3::Address::Clear(addr_obj::geo3::Address *this)
{
  v2 = *(this + 14);
  if ((v2 & 0x1FE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 5);
      if (v3)
      {
        addr_obj::geo3::StructuredAddress::Clear(v3);
      }
    }

    *(this + 12) = 0;
  }

  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  v6 = *(this + 1);
  v5 = this + 8;
  *(v5 + 12) = 0;
  if (v6)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return result;
}

void addr_obj::geo3::Address::MergeFrom(addr_obj::geo3::Address *this, const addr_obj::geo3::Address *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 2451);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v15, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, *(a2 + 6) + *(this + 6));
  if (*(a2 + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 2) + 8 * v6);
      v8 = *(this + 7);
      v9 = *(this + 6);
      if (v9 >= v8)
      {
        if (v8 == *(this + 8))
        {
          v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v8 + 1);
          v8 = *(this + 7);
        }

        *(this + 7) = v8 + 1;
        AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v5);
      }

      v10 = *(this + 2);
      *(this + 6) = v9 + 1;
      v5 = std::string::operator=(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 6));
  }

  v11 = *(a2 + 14);
  if ((v11 & 0x1FE) != 0)
  {
    if ((v11 & 2) != 0)
    {
      *(this + 14) |= 2u;
      v12 = *(this + 5);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 5);
      if (!v13)
      {
        v13 = *(addr_obj::geo3::Address::default_instance_(v5) + 40);
      }

      addr_obj::geo3::StructuredAddress::MergeFrom(v12, v13);
      v11 = *(a2 + 14);
    }

    if ((v11 & 4) != 0)
    {
      v14 = *(a2 + 12);
      *(this + 14) |= 4u;
      *(this + 12) = v14;
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void addr_obj::geo3::StructuredAddress::MergeFrom(addr_obj::geo3::StructuredAddress *this, const addr_obj::geo3::StructuredAddress *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v60, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 1967);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v60, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v59, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v60[0].__r_.__value_.__l.__data_);
  }

  v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, *(a2 + 32) + *(this + 32));
  if (*(a2 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 15) + 8 * v6);
      v8 = *(this + 33);
      v9 = *(this + 32);
      if (v9 >= v8)
      {
        if (v8 == *(this + 34))
        {
          v5 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v8 + 1);
          v8 = *(this + 33);
        }

        *(this + 33) = v8 + 1;
        AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v5);
      }

      v10 = *(this + 15);
      *(this + 32) = v9 + 1;
      v5 = std::string::operator=(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 32));
  }

  v11 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, *(a2 + 42) + *(this + 42));
  if (*(a2 + 42) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a2 + 20) + 8 * v12);
      v14 = *(this + 43);
      v15 = *(this + 42);
      if (v15 >= v14)
      {
        if (v14 == *(this + 44))
        {
          v11 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v14 + 1);
          v14 = *(this + 43);
        }

        *(this + 43) = v14 + 1;
        AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(v11);
      }

      v16 = *(this + 20);
      *(this + 42) = v15 + 1;
      v11 = std::string::operator=(*(v16 + 8 * v15), v13);
      ++v12;
    }

    while (v12 < *(a2 + 42));
  }

  v17 = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, *(a2 + 50) + *(this + 50));
  if (*(a2 + 50) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(a2 + 24) + 8 * v18);
      v20 = *(this + 51);
      v21 = *(this + 50);
      if (v21 >= v20)
      {
        if (v20 == *(this + 52))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v20 + 1);
          v20 = *(this + 51);
        }

        *(this + 51) = v20 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::geo3::StructuredAddress_SubPremise>::New();
      }

      v22 = *(this + 24);
      *(this + 50) = v21 + 1;
      addr_obj::geo3::StructuredAddress_SubPremise::MergeFrom(*(v22 + 8 * v21), v19);
      ++v18;
    }

    while (v18 < *(a2 + 50));
  }

  v23 = *(a2 + 58);
  if (v23)
  {
    AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(this + 56, *(this + 58) + v23);
    v17 = memcpy((*(this + 28) + 8 * *(this + 58)), *(a2 + 28), 8 * *(a2 + 58));
    *(this + 58) += *(a2 + 58);
  }

  v24 = *(a2 + 61);
  if (!v24)
  {
    goto LABEL_70;
  }

  if (v24)
  {
    v25 = *(a2 + 2);
    *(this + 61) |= 1u;
    v26 = *(this + 2);
    if (v26 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
    {
      operator new();
    }

    v17 = std::string::operator=(*(this + 2), v25);
    v24 = *(a2 + 61);
    if ((v24 & 2) == 0)
    {
LABEL_32:
      if ((v24 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_32;
  }

  v27 = *(a2 + 3);
  *(this + 61) |= 2u;
  v28 = *(this + 3);
  if (v28 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 3), v27);
  v24 = *(a2 + 61);
  if ((v24 & 4) == 0)
  {
LABEL_33:
    if ((v24 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_51;
  }

LABEL_47:
  v29 = *(a2 + 4);
  *(this + 61) |= 4u;
  v30 = *(this + 4);
  if (v30 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 4), v29);
  v24 = *(a2 + 61);
  if ((v24 & 8) == 0)
  {
LABEL_34:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_55;
  }

LABEL_51:
  v31 = *(a2 + 5);
  *(this + 61) |= 8u;
  v32 = *(this + 5);
  if (v32 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 5), v31);
  v24 = *(a2 + 61);
  if ((v24 & 0x10) == 0)
  {
LABEL_35:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_59:
    v35 = *(a2 + 7);
    *(this + 61) |= 0x20u;
    v36 = *(this + 7);
    if (v36 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
    {
      operator new();
    }

    v17 = std::string::operator=(*(this + 7), v35);
    v24 = *(a2 + 61);
    if ((v24 & 0x40) == 0)
    {
LABEL_37:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    goto LABEL_63;
  }

LABEL_55:
  v33 = *(a2 + 6);
  *(this + 61) |= 0x10u;
  v34 = *(this + 6);
  if (v34 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 6), v33);
  v24 = *(a2 + 61);
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_59;
  }

LABEL_36:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_63:
  v37 = *(a2 + 8);
  *(this + 61) |= 0x40u;
  v38 = *(this + 8);
  if (v38 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 8), v37);
  v24 = *(a2 + 61);
  if ((v24 & 0x80) != 0)
  {
LABEL_67:
    v39 = *(a2 + 9);
    *(this + 61) |= 0x80u;
    v40 = *(this + 9);
    if (v40 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
    {
      operator new();
    }

    v17 = std::string::operator=(*(this + 9), v39);
    v24 = *(a2 + 61);
  }

LABEL_70:
  if ((v24 & 0xFF00) == 0)
  {
    goto LABEL_106;
  }

  if ((v24 & 0x100) != 0)
  {
    v41 = *(a2 + 10);
    *(this + 61) |= 0x100u;
    v42 = *(this + 10);
    if (v42 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
    {
      operator new();
    }

    v17 = std::string::operator=(*(this + 10), v41);
    v24 = *(a2 + 61);
    if ((v24 & 0x200) == 0)
    {
LABEL_73:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_87;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  v43 = *(a2 + 11);
  *(this + 61) |= 0x200u;
  v44 = *(this + 11);
  if (v44 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 11), v43);
  v24 = *(a2 + 61);
  if ((v24 & 0x400) == 0)
  {
LABEL_74:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_91;
  }

LABEL_87:
  v45 = *(a2 + 12);
  *(this + 61) |= 0x400u;
  v46 = *(this + 12);
  if (v46 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 12), v45);
  v24 = *(a2 + 61);
  if ((v24 & 0x800) == 0)
  {
LABEL_75:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_95;
  }

LABEL_91:
  v47 = *(a2 + 13);
  *(this + 61) |= 0x800u;
  v48 = *(this + 13);
  if (v48 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 13), v47);
  v24 = *(a2 + 61);
  if ((v24 & 0x1000) == 0)
  {
LABEL_76:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_99;
  }

LABEL_95:
  v49 = *(a2 + 14);
  *(this + 61) |= 0x1000u;
  v50 = *(this + 14);
  if (v50 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 14), v49);
  v24 = *(a2 + 61);
  if ((v24 & 0x4000) == 0)
  {
LABEL_77:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

LABEL_99:
  v51 = *(a2 + 18);
  *(this + 61) |= 0x4000u;
  v52 = *(this + 18);
  if (v52 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
  {
    operator new();
  }

  v17 = std::string::operator=(*(this + 18), v51);
  v24 = *(a2 + 61);
  if ((v24 & 0x8000) != 0)
  {
LABEL_103:
    v53 = *(a2 + 19);
    *(this + 61) |= 0x8000u;
    v54 = *(this + 19);
    if (v54 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
    {
      operator new();
    }

    v17 = std::string::operator=(*(this + 19), v53);
    v24 = *(a2 + 61);
  }

LABEL_106:
  if ((v24 & 0x1FE0000) != 0)
  {
    if ((v24 & 0x20000) != 0)
    {
      v55 = *(a2 + 23);
      *(this + 61) |= 0x20000u;
      v56 = *(this + 23);
      if (v56 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
      {
        operator new();
      }

      v17 = std::string::operator=(*(this + 23), v55);
      v24 = *(a2 + 61);
    }

    if ((v24 & 0x80000) != 0)
    {
      v57 = *(a2 + 27);
      *(this + 61) |= 0x80000u;
      v58 = *(this + 27);
      if (v58 == AddrObjGoogle::protobuf::internal::kEmptyString(v17))
      {
        operator new();
      }

      std::string::operator=(*(this + 27), v57);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_18674303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom(AddrObjGoogle::protobuf::UnknownFieldSet *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v4 = 0;
  for (i = 0; ; ++i)
  {
    v6 = *a2;
    v7 = *a2 ? ((v6[1] - *v6) >> 4) : 0;
    if (i >= v7)
    {
      break;
    }

    AddrObjGoogle::protobuf::UnknownFieldSet::AddField(this, (*v6 + v4));
    v4 += 16;
  }
}

void addr_obj::geo3::StructuredAddress::CopyFrom(const addr_obj::geo3::StructuredAddress *this, const addr_obj::geo3::StructuredAddress *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    addr_obj::geo3::StructuredAddress::MergeFrom(this, a2);
  }
}

uint64_t **addr_obj::geo3::StructuredAddress::Clear(addr_obj::geo3::StructuredAddress **this)
{
  v1 = this;
  if (*(this + 244))
  {
    if (*(this + 244))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 1) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 2) != 0)
    {
      v4 = v1[3];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[3];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 1) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 4) != 0)
    {
      v6 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[4];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 1) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 8) != 0)
    {
      v8 = v1[5];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v8 != this)
      {
        v9 = v1[5];
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 1) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 0x10) != 0)
    {
      v10 = v1[6];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v10 != this)
      {
        v11 = v1[6];
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 1) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 0x20) != 0)
    {
      v12 = v1[7];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v12 != this)
      {
        v13 = v1[7];
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 1) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 0x40) != 0)
    {
      v14 = v1[8];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v14 != this)
      {
        v15 = v1[8];
        if (*(v15 + 23) < 0)
        {
          **v15 = 0;
          *(v15 + 1) = 0;
        }

        else
        {
          *v15 = 0;
          *(v15 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 244) & 0x80) != 0)
    {
      v16 = v1[9];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v16 != this)
      {
        v17 = v1[9];
        if (*(v17 + 23) < 0)
        {
          **v17 = 0;
          *(v17 + 1) = 0;
        }

        else
        {
          *v17 = 0;
          *(v17 + 23) = 0;
        }
      }
    }
  }

  v18 = *(v1 + 61);
  if ((v18 & 0xFF00) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      v19 = v1[10];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v19 != this)
      {
        v20 = v1[10];
        if (*(v20 + 23) < 0)
        {
          **v20 = 0;
          *(v20 + 1) = 0;
        }

        else
        {
          *v20 = 0;
          *(v20 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 245) & 2) != 0)
    {
      v21 = v1[11];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v21 != this)
      {
        v22 = v1[11];
        if (*(v22 + 23) < 0)
        {
          **v22 = 0;
          *(v22 + 1) = 0;
        }

        else
        {
          *v22 = 0;
          *(v22 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 245) & 4) != 0)
    {
      v23 = v1[12];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v23 != this)
      {
        v24 = v1[12];
        if (*(v24 + 23) < 0)
        {
          **v24 = 0;
          *(v24 + 1) = 0;
        }

        else
        {
          *v24 = 0;
          *(v24 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 245) & 8) != 0)
    {
      v25 = v1[13];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v25 != this)
      {
        v26 = v1[13];
        if (*(v26 + 23) < 0)
        {
          **v26 = 0;
          *(v26 + 1) = 0;
        }

        else
        {
          *v26 = 0;
          *(v26 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 245) & 0x10) != 0)
    {
      v27 = v1[14];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v27 != this)
      {
        v28 = v1[14];
        if (*(v28 + 23) < 0)
        {
          **v28 = 0;
          *(v28 + 1) = 0;
        }

        else
        {
          *v28 = 0;
          *(v28 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 245) & 0x40) != 0)
    {
      v29 = v1[18];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v29 != this)
      {
        v30 = v1[18];
        if (*(v30 + 23) < 0)
        {
          **v30 = 0;
          *(v30 + 1) = 0;
        }

        else
        {
          *v30 = 0;
          *(v30 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 245) & 0x80) != 0)
    {
      v31 = v1[19];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v31 != this)
      {
        v32 = v1[19];
        if (*(v32 + 23) < 0)
        {
          **v32 = 0;
          *(v32 + 1) = 0;
        }

        else
        {
          *v32 = 0;
          *(v32 + 23) = 0;
        }
      }
    }
  }

  v33 = *(v1 + 61);
  if ((v33 & 0x1FE0000) != 0)
  {
    if ((v33 & 0x20000) != 0)
    {
      v34 = v1[23];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v34 != this)
      {
        v35 = v1[23];
        if (*(v35 + 23) < 0)
        {
          **v35 = 0;
          *(v35 + 1) = 0;
        }

        else
        {
          *v35 = 0;
          *(v35 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 246) & 8) != 0)
    {
      v36 = v1[27];
      if (v36 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v37 = v1[27];
        if (*(v37 + 23) < 0)
        {
          **v37 = 0;
          *(v37 + 1) = 0;
        }

        else
        {
          *v37 = 0;
          *(v37 + 23) = 0;
        }
      }
    }
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v1 + 15));
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v1 + 20));
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((v1 + 24));
  v40 = v1[1];
  v39 = v1 + 1;
  *(v39 + 56) = 0;
  *(v39 + 59) = 0;
  if (v40)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v39);
  }

  return result;
}

std::string *addr_obj::V2AddressObject::init(addr_obj::V2AddressObject *this, const addr_obj::AddressObjectProto *a2)
{
  if ((*(a2 + 88) & 0x20) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v28);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "the incoming protobuf is missing the v1address field", 52);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; library version: ", 19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "11.3.0", 6);
    if (addr_obj::Logger::isInitialized(v13))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v27);
      std::stringbuf::str();
      if ((v26 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v15 = v26;
      }

      else
      {
        v15 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v14, v15);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V2AddressObject.cpp");
      std::string::basic_string[abi:ne200100]<0>(v23, "init");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v20, "");
      addr_obj::Logger::log(16, __p, 28, v23, &v22, v20);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      std::ostringstream::~ostringstream(v27);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "; at ", 5);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V2AddressObject.cpp", 89);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ":", 1);
    MEMORY[0x18CFD1C40](v18, 28);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v27, "DataError");
    std::stringbuf::str();
    addr_obj::Exception<std::runtime_error>::Exception(exception, v27, __p);
  }

  v3 = this;
  v4 = *(a2 + 8);
  if (!v4)
  {
    this = addr_obj::AddressObjectProto::default_instance_(this);
    v4 = *(this + 8);
  }

  v5 = addr_obj::V2AddressObjectProto::v2address(this);
  result = AddrObjGoogle::protobuf::internal::ExtensionSet::Has((v4 + 8), *v5);
  if (result)
  {
    v7 = *(a2 + 8);
    if (!v7)
    {
      result = addr_obj::AddressObjectProto::default_instance_(result);
      v7 = result[2].__r_.__value_.__r.__words[2];
    }

    v8 = addr_obj::V2AddressObjectProto::v2address(result);
    Message = AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(v7 + 8, *v8, *(v8 + 1));
    std::string::operator=((v3 + 728), *(Message + 40));
    std::string::operator=((v3 + 752), *(Message + 56));
    std::string::operator=((v3 + 776), *(Message + 88));
    std::string::operator=((v3 + 800), *(Message + 96));
    std::string::operator=((v3 + 824), *(Message + 48));
    std::string::operator=((v3 + 848), *(Message + 64));
    std::string::operator=((v3 + 872), *(Message + 72));
    std::string::operator=((v3 + 896), *(Message + 80));
    std::string::operator=((v3 + 920), *(Message + 104));
    std::string::operator=((v3 + 944), *(Message + 112));
    std::string::operator=((v3 + 968), *(Message + 120));
    v10 = *(Message + 128);

    return std::string::operator=((v3 + 992), v10);
  }

  return result;
}

void sub_186743C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::ostringstream::~ostringstream(&v32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

int *addr_obj::V2AddressObjectProto::v2address(addr_obj::V2AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9054F0, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1EA9054F0);
    if (v2)
    {
      v3 = addr_obj::V2AddressObjectProto::default_instance(v2);
      dword_1EA9054E0 = 100;
      qword_1EA9054E8 = v3;
      __cxa_guard_release(&qword_1EA9054F0);
    }
  }

  return &dword_1EA9054E0;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::Has(AddrObjGoogle::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    v6 = v5[50] ^ 1;
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::GetMessage(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return a3;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
    return a3;
  }

  if ((*(v6 + 50) & 0x10) == 0)
  {
    return *(v6 + 40);
  }

  return (*(**(v6 + 40) + 24))(*(v6 + 40), a3);
}

void sub_186743E50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_186743E68(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<addr_obj::Fingerprints::Fingerprint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<addr_obj::Fingerprints::Fingerprint>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<addr_obj::Fingerprints::Fingerprint>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v4 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 10;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void addr_obj::AddressObjectProto::~AddressObjectProto(addr_obj::AddressObjectProto *this)
{
  *this = &unk_1EF7DFEE0;
  addr_obj::AddressObjectProto::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::AddressObjectProto::~AddressObjectProto(this);

  JUMPOUT(0x18CFD1E40);
}

addr_obj::AddressObjectProto *addr_obj::AddressObjectProto::SharedDtor(addr_obj::AddressObjectProto *this)
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

  result = addr_obj::AddressObjectProto::default_instance_(v3);
  if (result != this)
  {
    v6 = *(this + 3);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 7);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 8);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = *(this + 9);
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void addr_obj::LocalizationProto::~LocalizationProto(addr_obj::LocalizationProto *this)
{
  *this = &unk_1EF7DFD80;
  addr_obj::LocalizationProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::LocalizationProto::~LocalizationProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::LocalizationProto::SharedDtor(addr_obj::LocalizationProto *this)
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

  return addr_obj::LocalizationProto::default_instance_(v9);
}

addr_obj::V1AddressObjectProto *addr_obj::V1AddressObjectProto::SharedDtor(addr_obj::V1AddressObjectProto *this)
{
  v2 = *(this + 5);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 7);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 7);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 8);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 8);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  v11 = *(this + 10);
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  if (v11 != v12)
  {
    v13 = *(this + 10);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v12 = MEMORY[0x18CFD1E40](v13, 0x1012C40EC159624);
    }
  }

  result = addr_obj::V1AddressObjectProto::default_instance_(v12);
  if (result != this)
  {
    v15 = *(this + 6);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = *(this + 9);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = *(this + 11);
    if (result)
    {
      v17 = *(*result + 8);

      return v17();
    }
  }

  return result;
}

void addr_obj::V1AddressObjectProto::~V1AddressObjectProto(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  *this = &unk_1EF7E0040;
  addr_obj::V1AddressObjectProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 4));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::V1AddressObjectProto::~V1AddressObjectProto(this);

  JUMPOUT(0x18CFD1E40);
}

void addr_obj::geo3::Address::~Address(addr_obj::geo3::Address *this)
{
  *this = &unk_1EF7E0908;
  addr_obj::geo3::Address::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::geo3::Address::~Address(this);

  JUMPOUT(0x18CFD1E40);
}

addr_obj::geo3::Address *addr_obj::geo3::Address::SharedDtor(addr_obj::geo3::Address **this)
{
  result = addr_obj::geo3::Address::default_instance_(this);
  if (result != this)
  {
    result = this[5];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t addr_obj::geo3::StructuredAddress::SharedDtor(addr_obj::geo3::StructuredAddress *this)
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

  v11 = *(this + 5);
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  if (v11 != v12)
  {
    v13 = *(this + 5);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v12 = MEMORY[0x18CFD1E40](v13, 0x1012C40EC159624);
    }
  }

  v14 = *(this + 6);
  v15 = AddrObjGoogle::protobuf::internal::kEmptyString(v12);
  if (v14 != v15)
  {
    v16 = *(this + 6);
    if (v16)
    {
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v15 = MEMORY[0x18CFD1E40](v16, 0x1012C40EC159624);
    }
  }

  v17 = *(this + 7);
  v18 = AddrObjGoogle::protobuf::internal::kEmptyString(v15);
  if (v17 != v18)
  {
    v19 = *(this + 7);
    if (v19)
    {
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v18 = MEMORY[0x18CFD1E40](v19, 0x1012C40EC159624);
    }
  }

  v20 = *(this + 8);
  v21 = AddrObjGoogle::protobuf::internal::kEmptyString(v18);
  if (v20 != v21)
  {
    v22 = *(this + 8);
    if (v22)
    {
      if (*(v22 + 23) < 0)
      {
        operator delete(*v22);
      }

      v21 = MEMORY[0x18CFD1E40](v22, 0x1012C40EC159624);
    }
  }

  v23 = *(this + 9);
  v24 = AddrObjGoogle::protobuf::internal::kEmptyString(v21);
  if (v23 != v24)
  {
    v25 = *(this + 9);
    if (v25)
    {
      if (*(v25 + 23) < 0)
      {
        operator delete(*v25);
      }

      v24 = MEMORY[0x18CFD1E40](v25, 0x1012C40EC159624);
    }
  }

  v26 = *(this + 10);
  v27 = AddrObjGoogle::protobuf::internal::kEmptyString(v24);
  if (v26 != v27)
  {
    v28 = *(this + 10);
    if (v28)
    {
      if (*(v28 + 23) < 0)
      {
        operator delete(*v28);
      }

      v27 = MEMORY[0x18CFD1E40](v28, 0x1012C40EC159624);
    }
  }

  v29 = *(this + 11);
  v30 = AddrObjGoogle::protobuf::internal::kEmptyString(v27);
  if (v29 != v30)
  {
    v31 = *(this + 11);
    if (v31)
    {
      if (*(v31 + 23) < 0)
      {
        operator delete(*v31);
      }

      v30 = MEMORY[0x18CFD1E40](v31, 0x1012C40EC159624);
    }
  }

  v32 = *(this + 12);
  v33 = AddrObjGoogle::protobuf::internal::kEmptyString(v30);
  if (v32 != v33)
  {
    v34 = *(this + 12);
    if (v34)
    {
      if (*(v34 + 23) < 0)
      {
        operator delete(*v34);
      }

      v33 = MEMORY[0x18CFD1E40](v34, 0x1012C40EC159624);
    }
  }

  v35 = *(this + 13);
  v36 = AddrObjGoogle::protobuf::internal::kEmptyString(v33);
  if (v35 != v36)
  {
    v37 = *(this + 13);
    if (v37)
    {
      if (*(v37 + 23) < 0)
      {
        operator delete(*v37);
      }

      v36 = MEMORY[0x18CFD1E40](v37, 0x1012C40EC159624);
    }
  }

  v38 = *(this + 14);
  v39 = AddrObjGoogle::protobuf::internal::kEmptyString(v36);
  if (v38 != v39)
  {
    v40 = *(this + 14);
    if (v40)
    {
      if (*(v40 + 23) < 0)
      {
        operator delete(*v40);
      }

      v39 = MEMORY[0x18CFD1E40](v40, 0x1012C40EC159624);
    }
  }

  v41 = *(this + 18);
  v42 = AddrObjGoogle::protobuf::internal::kEmptyString(v39);
  if (v41 != v42)
  {
    v43 = *(this + 18);
    if (v43)
    {
      if (*(v43 + 23) < 0)
      {
        operator delete(*v43);
      }

      v42 = MEMORY[0x18CFD1E40](v43, 0x1012C40EC159624);
    }
  }

  v44 = *(this + 19);
  v45 = AddrObjGoogle::protobuf::internal::kEmptyString(v42);
  if (v44 != v45)
  {
    v46 = *(this + 19);
    if (v46)
    {
      if (*(v46 + 23) < 0)
      {
        operator delete(*v46);
      }

      v45 = MEMORY[0x18CFD1E40](v46, 0x1012C40EC159624);
    }
  }

  v47 = *(this + 23);
  v48 = AddrObjGoogle::protobuf::internal::kEmptyString(v45);
  if (v47 != v48)
  {
    v49 = *(this + 23);
    if (v49)
    {
      if (*(v49 + 23) < 0)
      {
        operator delete(*v49);
      }

      v48 = MEMORY[0x18CFD1E40](v49, 0x1012C40EC159624);
    }
  }

  v50 = *(this + 27);
  v51 = AddrObjGoogle::protobuf::internal::kEmptyString(v48);
  if (v50 != v51)
  {
    v52 = *(this + 27);
    if (v52)
    {
      if (*(v52 + 23) < 0)
      {
        operator delete(*v52);
      }

      v51 = MEMORY[0x18CFD1E40](v52, 0x1012C40EC159624);
    }
  }

  return addr_obj::geo3::StructuredAddress::default_instance_(v51);
}

void addr_obj::geo3::StructuredAddress::~StructuredAddress(addr_obj::geo3::StructuredAddress *this)
{
  addr_obj::geo3::StructuredAddress::~StructuredAddress(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E0858;
  addr_obj::geo3::StructuredAddress::SharedDtor(this);
  v2 = *(this + 28);
  if (v2)
  {
    MEMORY[0x18CFD1E20](v2, 0x1000C8000313F17);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 24);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 30);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

void addr_obj::V2AddressObjectProto::~V2AddressObjectProto(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  addr_obj::V2AddressObjectProto::~V2AddressObjectProto(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E00F0;
  addr_obj::V2AddressObjectProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 4));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

int *AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::Free(int *this)
{
  v1 = AddrObjGoogle::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    if (v1 <= 5)
    {
      if (v1 <= 2)
      {
        if (v1 != 1)
        {
          if (v1 != 2)
          {
            return this;
          }

LABEL_28:
          if (!*this)
          {
            return this;
          }

          if (!**this)
          {
            goto LABEL_49;
          }

          goto LABEL_37;
        }
      }

      else if (v1 != 3)
      {
        if (v1 != 4)
        {
          if (*this)
          {
            if (!**this)
            {
              goto LABEL_49;
            }

LABEL_45:
            MEMORY[0x18CFD1E20]();
            goto LABEL_49;
          }

          return this;
        }

        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (v1 > 7)
    {
      if (v1 != 8)
      {
        if (v1 == 9)
        {
          if (*this)
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*this);
            goto LABEL_49;
          }
        }

        else if (v1 == 10 && *this)
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(*this);
          goto LABEL_49;
        }

        return this;
      }

LABEL_31:
      if (!*this)
      {
        return this;
      }

      if (!**this)
      {
        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v1 != 6)
    {
      if (!*this)
      {
        return this;
      }

      if (!**this)
      {
        goto LABEL_49;
      }

LABEL_37:
      MEMORY[0x18CFD1E20]();
      goto LABEL_49;
    }

    if (*this)
    {
      if (!**this)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = *(this + 10);
      this = *this;
      if ((v3 & 0x10) != 0)
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      else
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *this;
      if (*this)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_49:

        JUMPOUT(0x18CFD1E40);
      }
    }
  }

  return this;
}

uint64_t addr_obj::V2AddressObjectProto::SharedDtor(addr_obj::V2AddressObjectProto *this)
{
  v2 = *(this + 5);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 6);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 6);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 7);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 7);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  v11 = *(this + 8);
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  if (v11 != v12)
  {
    v13 = *(this + 8);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v12 = MEMORY[0x18CFD1E40](v13, 0x1012C40EC159624);
    }
  }

  v14 = *(this + 9);
  v15 = AddrObjGoogle::protobuf::internal::kEmptyString(v12);
  if (v14 != v15)
  {
    v16 = *(this + 9);
    if (v16)
    {
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v15 = MEMORY[0x18CFD1E40](v16, 0x1012C40EC159624);
    }
  }

  v17 = *(this + 10);
  v18 = AddrObjGoogle::protobuf::internal::kEmptyString(v15);
  if (v17 != v18)
  {
    v19 = *(this + 10);
    if (v19)
    {
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v18 = MEMORY[0x18CFD1E40](v19, 0x1012C40EC159624);
    }
  }

  v20 = *(this + 11);
  v21 = AddrObjGoogle::protobuf::internal::kEmptyString(v18);
  if (v20 != v21)
  {
    v22 = *(this + 11);
    if (v22)
    {
      if (*(v22 + 23) < 0)
      {
        operator delete(*v22);
      }

      v21 = MEMORY[0x18CFD1E40](v22, 0x1012C40EC159624);
    }
  }

  v23 = *(this + 12);
  v24 = AddrObjGoogle::protobuf::internal::kEmptyString(v21);
  if (v23 != v24)
  {
    v25 = *(this + 12);
    if (v25)
    {
      if (*(v25 + 23) < 0)
      {
        operator delete(*v25);
      }

      v24 = MEMORY[0x18CFD1E40](v25, 0x1012C40EC159624);
    }
  }

  v26 = *(this + 13);
  v27 = AddrObjGoogle::protobuf::internal::kEmptyString(v24);
  if (v26 != v27)
  {
    v28 = *(this + 13);
    if (v28)
    {
      if (*(v28 + 23) < 0)
      {
        operator delete(*v28);
      }

      v27 = MEMORY[0x18CFD1E40](v28, 0x1012C40EC159624);
    }
  }

  v29 = *(this + 14);
  v30 = AddrObjGoogle::protobuf::internal::kEmptyString(v27);
  if (v29 != v30)
  {
    v31 = *(this + 14);
    if (v31)
    {
      if (*(v31 + 23) < 0)
      {
        operator delete(*v31);
      }

      v30 = MEMORY[0x18CFD1E40](v31, 0x1012C40EC159624);
    }
  }

  v32 = *(this + 15);
  v33 = AddrObjGoogle::protobuf::internal::kEmptyString(v30);
  if (v32 != v33)
  {
    v34 = *(this + 15);
    if (v34)
    {
      if (*(v34 + 23) < 0)
      {
        operator delete(*v34);
      }

      v33 = MEMORY[0x18CFD1E40](v34, 0x1012C40EC159624);
    }
  }

  v35 = *(this + 16);
  v36 = AddrObjGoogle::protobuf::internal::kEmptyString(v33);
  if (v35 != v36)
  {
    v37 = *(this + 16);
    if (v37)
    {
      if (*(v37 + 23) < 0)
      {
        operator delete(*v37);
      }

      v36 = MEMORY[0x18CFD1E40](v37, 0x1012C40EC159624);
    }
  }

  return addr_obj::V2AddressObjectProto::default_instance_(v36);
}

uint64_t addr_obj::FingerprintProto::SharedDtor(addr_obj::FingerprintProto *this)
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

  v5 = *(this + 4);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 4);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 5);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 5);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  return addr_obj::FingerprintProto::default_instance_(v9);
}

void addr_obj::FingerprintProto::~FingerprintProto(addr_obj::FingerprintProto *this)
{
  *this = &unk_1EF7DFE30;
  addr_obj::FingerprintProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::FingerprintProto::~FingerprintProto(this);

  JUMPOUT(0x18CFD1E40);
}

void addr_obj::V2AddressObject::getDisplayLocality(addr_obj::V2AddressObject *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if ((*(this + 751) & 0x8000000000000000) == 0)
  {
    if (*(this + 751))
    {
      goto LABEL_3;
    }

LABEL_8:
    addr_obj::V1AddressObject::getDisplayLocality(&v22, this, 0);
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (!addr_obj::Debugging::addChar(v9) || ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = HIBYTE(v22.__r_.__value_.__r.__words[2])) : (v11 = v22.__r_.__value_.__l.__size_), !v11))
      {
        if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__init_copy_ctor_external(a3, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
LABEL_41:
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }

          return;
        }

        *&a3->__r_.__value_.__l.__data_ = *&v22.__r_.__value_.__l.__data_;
        v12 = v22.__r_.__value_.__r.__words[2];
LABEL_25:
        a3->__r_.__value_.__r.__words[2] = v12;
        return;
      }

LABEL_36:
      std::operator+<char>();
      v19 = std::string::append(&__p, "]");
      v20 = *&v19->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&a3->__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      v17 = addr_obj::emptyString(v9);
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        a3->__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&a3->__r_.__value_.__l.__data_ = v18;
      }

      goto LABEL_41;
    }

    if (addr_obj::Debugging::addChar(v9))
    {
      v13 = *(this + 775);
      if (v13 < 0)
      {
        v14 = *(this + 95);
      }

      else
      {
        v14 = *(this + 775);
      }

      if (v14)
      {
        goto LABEL_36;
      }
    }

    else
    {
      LOBYTE(v13) = *(this + 775);
    }

    if ((v13 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(a3, *(this + 94), *(this + 95));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *(this + 47);
      a3->__r_.__value_.__r.__words[2] = *(this + 96);
    }

    goto LABEL_41;
  }

  if (!*(this + 92))
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = (this + 728);
  if (addr_obj::Debugging::addChar(this))
  {
    if ((*(this + 751) & 0x80) != 0)
    {
      if (*(this + 92))
      {
        goto LABEL_6;
      }
    }

    else if (*(this + 751))
    {
LABEL_6:
      std::operator+<char>();
      v7 = std::string::append(&v22, "]");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&a3->__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      goto LABEL_41;
    }
  }

  if ((*(this + 751) & 0x80) == 0)
  {
    *&a3->__r_.__value_.__l.__data_ = *v6;
    v12 = *(this + 93);
    goto LABEL_25;
  }

  v15 = *(this + 91);
  v16 = *(this + 92);

  std::string::__init_copy_ctor_external(a3, v15, v16);
}

void sub_186745434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1867456A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1867455CCLL);
  }

  _Unwind_Resume(a1);
}

void addr_obj::V1AddressObject::getAddress(addr_obj::V1AddressObject *this@<X0>, std::string *a2@<X8>)
{
  v4 = addr_obj::geo3::Address::Address(v24);
  addr_obj::geo3::Address::CopyFrom(v4, (this + 272));
  addr_obj::brace(v24, "()", v5);
  v22 = 0uLL;
  v23 = 0;
  v6 = AddrObjGoogle::protobuf::MessageLite::SerializeToString(v24, &v22);
  if (v6)
  {
    addr_obj::SerializedAddress::SerializedAddress(a2, &v22);
  }

  else
  {
    if (addr_obj::Logger::isInitialized(v6))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v18);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "failed SerializeToString() for ", 31);
      addr_obj::AddressObjectBase::asBase64String(this);
      if ((v17 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v9 = v17;
      }

      else
      {
        v9 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V1AddressObject.cpp");
      std::string::basic_string[abi:ne200100]<0>(v14, "getAddress");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(v10, "");
      addr_obj::Logger::log(16, __p, 149, v14, &v12, v10);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v18[0] = *MEMORY[0x1E69E54E8];
      *(v18 + *(v18[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v18[1] = (MEMORY[0x1E69E5548] + 16);
      if (v20 < 0)
      {
        operator delete(v19[7].__locale_);
      }

      v18[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(v19);
      std::ostream::~ostream();
      MEMORY[0x18CFD1DA0](&v21);
    }

    std::string::basic_string[abi:ne200100]<0>(v18, "");
    addr_obj::SerializedAddress::SerializedAddress(a2, v18);
    if (SHIBYTE(v19[0].__locale_) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  addr_obj::geo3::Address::~Address(v24);
}

void sub_1867459E0(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, void *a14, void *a15, int a16, __int16 a17, char a18, char a19, void *a20, __int128 a21, std::string::size_type a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (SHIBYTE(a20) < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::ostringstream::~ostringstream(&a29);
  v36 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v37 = v36;
    std::string::basic_string[abi:ne200100]<0>(&a29, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V1AddressObject.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a23, "getAddress");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v38 = (*(*v37 + 16))(v37);
    v39 = std::string::append(&a15, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    a22 = v39->__r_.__value_.__r.__words[2];
    a21 = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(16, &a29, 149, &a23, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (SHIBYTE(a20) < 0)
    {
      operator delete(a15);
    }

    if (a28 < 0)
    {
      operator delete(a23);
    }

    if (a34 < 0)
    {
      operator delete(a29);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a29, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/V1AddressObject.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a23, "getAddress");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(16, &a29, 149, &a23, &a21, &a15);
    if (SHIBYTE(a20) < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a28 < 0)
    {
      operator delete(a23);
    }

    if (a34 < 0)
    {
      operator delete(a29);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186745984);
}

void sub_186745C4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186745C44);
}

void sub_186745CD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186745BA0);
}

void sub_186745D6C(_Unwind_Exception *a1)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  addr_obj::geo3::Address::~Address((v1 - 112));
  _Unwind_Resume(a1);
}

void addr_obj::brace(addr_obj *this, addr_obj::geo3::Address *a2, const char *a3)
{
  if (addr_obj::Debugging::addChar(this))
  {
    v5 = *(this + 6);
    v6 = v5 - 1;
    if (v5 >= 1)
    {
      addr_obj::leftBracket(**(this + 2), a2, &__str);
      std::string::operator=(**(this + 2), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      addr_obj::rightBracket(*(*(this + 2) + 8 * v6), &__str, a2);
      std::string::operator=(*(*(this + 2) + 8 * v6), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    if ((*(this + 56) & 2) != 0)
    {
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      sub_186745EC0(v7, a2);
    }
  }
}

void sub_186745EC0(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 152))(a1);
  v5 = (*(*a1 + 144))(a1);
  v6 = *(v4 + 44);
  if (v6 >= 1)
  {
    v7 = v5;
    for (i = 0; i != v6; ++i)
    {
      v9 = *(v4 + 48) + 120 * i;
      v10 = *(v9 + 44);
      if (v10 == 11)
      {
        if (*(v9 + 48) == 3)
        {
          if ((*(*v7 + 48))(v7, a1, *(v4 + 48) + 120 * i) >= 1)
          {
            v12 = 0;
            do
            {
              v13 = (*(*v7 + 440))(v7, a1, v9, v12);
              sub_186745EC0(v13, a2);
              v12 = (v12 + 1);
            }

            while (v12 < (*(*v7 + 48))(v7, a1, v9));
          }
        }

        else
        {
          v14 = (*(*v7 + 264))(v7, a1, *(v4 + 48) + 120 * i, 0);
          sub_186745EC0(v14, a2);
        }
      }

      else if (v10 == 9)
      {
        if (*(v9 + 48) == 3)
        {
          if ((*(*v7 + 48))(v7, a1, *(v4 + 48) + 120 * i) >= 1)
          {
            v11 = 0;
            do
            {
              (*(*v7 + 336))(__p, v7, a1, v9, v11);
              addr_obj::bothBrackets(__p, a2, &v17);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }

              (*(*v7 + 424))(v7, a1, v9, v11, &v17);
              if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v17.__r_.__value_.__l.__data_);
              }

              v11 = (v11 + 1);
            }

            while (v11 < (*(*v7 + 48))(v7, a1, v9));
          }
        }

        else if ((*(*v7 + 40))(v7, a1, *(v4 + 48) + 120 * i))
        {
          (*(*v7 + 160))(__p, v7, a1, v9);
          addr_obj::bothBrackets(__p, a2, &v17);
          (*(*v7 + 248))(v7, a1, v9, &v17);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_1867462B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::MessageLite::SerializeToString(uint64_t a1, uint64_t a2)
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

  AddrObjGoogle::protobuf::MessageLite::AppendPartialToString(a1, a2);
  return 1;
}

uint64_t AddrObjGoogle::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (v2->__r_.__value_.__l.__size_)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }
  }

  else if (*(&v2->__r_.__value_.__s + 23))
  {
    goto LABEL_9;
  }

  v2 = 0;
LABEL_9:
  v6 = (*(*a1 + 88))(a1, v2 + size) - (v2 + size);
  if (v6 != v5)
  {
    v7 = (*(*a1 + 72))(a1);
    sub_186746450(v5, v7, v6);
  }

  return 1;
}

void sub_186746450(int a1, int a2, int a3)
{
  if (a1 != a2)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message_lite.cc", 64);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v5, "Protocol message was modified concurrently during serialization.");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v6);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a3 != a1)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message_lite.cc", 66);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of the message.");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v8);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message_lite.cc", 70);
  v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "This shouldn't be called if all the sizes are equal.");
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v9);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
}

void sub_186746558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::geo3::Address::ByteSize(addr_obj::geo3::Address *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 14);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if ((v3 & 2) == 0)
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 5);
  if (!v5)
  {
    v5 = *(addr_obj::geo3::Address::default_instance_(0) + 40);
  }

  v6 = addr_obj::geo3::StructuredAddress::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  if ((*(this + 14) & 4) != 0)
  {
LABEL_12:
    v9 = *(this + 12);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 12;
    }

    else if (v9 >= 0x80)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 2;
    }

    else
    {
      v10 = 3;
    }

    v4 += v10;
  }

LABEL_18:
  v11 = *(this + 6);
  v12 = (v11 + v4);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v14 = *(*(this + 2) + 8 * i);
      v15 = *(v14 + 23);
      v16 = v15;
      v17 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v18 = *(v14 + 23);
      }

      else
      {
        v18 = v17;
      }

      if (v18 >= 0x80)
      {
        v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
        v15 = *(v14 + 23);
        v17 = *(v14 + 8);
        v11 = *(this + 6);
        v16 = *(v14 + 23);
      }

      else
      {
        v19 = 1;
      }

      if (v16 < 0)
      {
        v15 = v17;
      }

      v12 = (v19 + v12 + v15);
    }
  }

  v20 = *(this + 1);
  if (v20 && *v20 != v20[1])
  {
    v12 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v12;
  }

  *(this + 13) = v12;
  return v12;
}

uint64_t addr_obj::geo3::StructuredAddress::ByteSize(addr_obj::geo3::StructuredAddress *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 61);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_85;
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
    v3 = *(this + 61);
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
      v3 = *(this + 61);
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
  if ((v3 & 4) != 0)
  {
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
      v3 = *(this + 61);
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

    v4 += v23 + v19 + 1;
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_49;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

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
    v3 = *(this + 61);
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

  v4 += v29 + v25 + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_27:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_49:
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
    v3 = *(this + 61);
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

  v4 += v35 + v31 + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_28:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_58:
  v36 = *(this + 7);
  v37 = *(v36 + 23);
  v38 = v37;
  v39 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v40 = *(v36 + 23);
  }

  else
  {
    v40 = v39;
  }

  if (v40 >= 0x80)
  {
    v41 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
    v37 = *(v36 + 23);
    v39 = *(v36 + 8);
    v3 = *(this + 61);
    v38 = *(v36 + 23);
  }

  else
  {
    v41 = 1;
  }

  if (v38 < 0)
  {
    v37 = v39;
  }

  v4 += v41 + v37 + 1;
  if ((v3 & 0x40) == 0)
  {
LABEL_29:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

LABEL_67:
  v42 = *(this + 8);
  v43 = *(v42 + 23);
  v44 = v43;
  v45 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v46 = *(v42 + 23);
  }

  else
  {
    v46 = v45;
  }

  if (v46 >= 0x80)
  {
    v47 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
    v43 = *(v42 + 23);
    v45 = *(v42 + 8);
    v3 = *(this + 61);
    v44 = *(v42 + 23);
  }

  else
  {
    v47 = 1;
  }

  if (v44 < 0)
  {
    v43 = v45;
  }

  v4 += v47 + v43 + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_76:
    v48 = *(this + 9);
    v49 = *(v48 + 23);
    v50 = v49;
    v51 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v52 = *(v48 + 23);
    }

    else
    {
      v52 = v51;
    }

    if (v52 >= 0x80)
    {
      v53 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
      v49 = *(v48 + 23);
      v51 = *(v48 + 8);
      v3 = *(this + 61);
      v50 = *(v48 + 23);
    }

    else
    {
      v53 = 1;
    }

    if (v50 < 0)
    {
      v49 = v51;
    }

    v4 += v53 + v49 + 1;
  }

LABEL_85:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_157;
  }

  if ((v3 & 0x100) != 0)
  {
    v54 = *(this + 10);
    v55 = *(v54 + 23);
    v56 = v55;
    v57 = *(v54 + 8);
    if ((v55 & 0x80u) == 0)
    {
      v58 = *(v54 + 23);
    }

    else
    {
      v58 = v57;
    }

    if (v58 >= 0x80)
    {
      v59 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
      v55 = *(v54 + 23);
      v57 = *(v54 + 8);
      v3 = *(this + 61);
      v56 = *(v54 + 23);
    }

    else
    {
      v59 = 1;
    }

    if (v56 < 0)
    {
      v55 = v57;
    }

    v4 += v59 + v55 + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_88:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_112;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_88;
  }

  v60 = *(this + 11);
  v61 = *(v60 + 23);
  v62 = v61;
  v63 = *(v60 + 8);
  if ((v61 & 0x80u) == 0)
  {
    v64 = *(v60 + 23);
  }

  else
  {
    v64 = v63;
  }

  if (v64 >= 0x80)
  {
    v65 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
    v61 = *(v60 + 23);
    v63 = *(v60 + 8);
    v3 = *(this + 61);
    v62 = *(v60 + 23);
  }

  else
  {
    v65 = 1;
  }

  if (v62 < 0)
  {
    v61 = v63;
  }

  v4 += v65 + v61 + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_89:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_121;
  }

LABEL_112:
  v66 = *(this + 12);
  v67 = *(v66 + 23);
  v68 = v67;
  v69 = *(v66 + 8);
  if ((v67 & 0x80u) == 0)
  {
    v70 = *(v66 + 23);
  }

  else
  {
    v70 = v69;
  }

  if (v70 >= 0x80)
  {
    v71 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
    v67 = *(v66 + 23);
    v69 = *(v66 + 8);
    v3 = *(this + 61);
    v68 = *(v66 + 23);
  }

  else
  {
    v71 = 1;
  }

  if (v68 < 0)
  {
    v67 = v69;
  }

  v4 += v71 + v67 + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_90:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_130;
  }

LABEL_121:
  v72 = *(this + 13);
  v73 = *(v72 + 23);
  v74 = v73;
  v75 = *(v72 + 8);
  if ((v73 & 0x80u) == 0)
  {
    v76 = *(v72 + 23);
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 0x80)
  {
    v77 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
    v73 = *(v72 + 23);
    v75 = *(v72 + 8);
    v3 = *(this + 61);
    v74 = *(v72 + 23);
  }

  else
  {
    v77 = 1;
  }

  if (v74 < 0)
  {
    v73 = v75;
  }

  v4 += v77 + v73 + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_91:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_139;
  }

LABEL_130:
  v78 = *(this + 14);
  v79 = *(v78 + 23);
  v80 = v79;
  v81 = *(v78 + 8);
  if ((v79 & 0x80u) == 0)
  {
    v82 = *(v78 + 23);
  }

  else
  {
    v82 = v81;
  }

  if (v82 >= 0x80)
  {
    v83 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
    v79 = *(v78 + 23);
    v81 = *(v78 + 8);
    v3 = *(this + 61);
    v80 = *(v78 + 23);
  }

  else
  {
    v83 = 1;
  }

  if (v80 < 0)
  {
    v79 = v81;
  }

  v4 += v83 + v79 + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_92:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_148;
  }

LABEL_139:
  v84 = *(this + 18);
  v85 = *(v84 + 23);
  v86 = v85;
  v87 = *(v84 + 8);
  if ((v85 & 0x80u) == 0)
  {
    v88 = *(v84 + 23);
  }

  else
  {
    v88 = v87;
  }

  if (v88 >= 0x80)
  {
    v89 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
    v85 = *(v84 + 23);
    v87 = *(v84 + 8);
    v3 = *(this + 61);
    v86 = *(v84 + 23);
  }

  else
  {
    v89 = 1;
  }

  if (v86 < 0)
  {
    v85 = v87;
  }

  v4 += v89 + v85 + 1;
  if ((v3 & 0x8000) != 0)
  {
LABEL_148:
    v90 = *(this + 19);
    v91 = *(v90 + 23);
    v92 = v91;
    v93 = *(v90 + 8);
    if ((v91 & 0x80u) == 0)
    {
      v94 = *(v90 + 23);
    }

    else
    {
      v94 = v93;
    }

    if (v94 >= 0x80)
    {
      v95 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94);
      v91 = *(v90 + 23);
      v93 = *(v90 + 8);
      v3 = *(this + 61);
      v92 = *(v90 + 23);
    }

    else
    {
      v95 = 1;
    }

    if (v92 < 0)
    {
      v91 = v93;
    }

    v4 += v95 + v91 + 2;
  }

LABEL_157:
  if ((v3 & 0x1FE0000) != 0)
  {
    if ((v3 & 0x20000) != 0)
    {
      v96 = *(this + 23);
      v97 = *(v96 + 23);
      v98 = v97;
      v99 = *(v96 + 8);
      if ((v97 & 0x80u) == 0)
      {
        v100 = *(v96 + 23);
      }

      else
      {
        v100 = v99;
      }

      if (v100 >= 0x80)
      {
        v101 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
        v97 = *(v96 + 23);
        v99 = *(v96 + 8);
        v3 = *(this + 61);
        v98 = *(v96 + 23);
      }

      else
      {
        v101 = 1;
      }

      if (v98 < 0)
      {
        v97 = v99;
      }

      v4 += v101 + v97 + 2;
    }

    if ((v3 & 0x80000) != 0)
    {
      v102 = *(this + 27);
      v103 = *(v102 + 23);
      v104 = v103;
      v105 = *(v102 + 8);
      if ((v103 & 0x80u) == 0)
      {
        v106 = *(v102 + 23);
      }

      else
      {
        v106 = v105;
      }

      if (v106 >= 0x80)
      {
        v107 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106);
        v103 = *(v102 + 23);
        v105 = *(v102 + 8);
        v104 = *(v102 + 23);
      }

      else
      {
        v107 = 1;
      }

      if (v104 < 0)
      {
        v103 = v105;
      }

      v4 += v107 + v103 + 2;
    }
  }

  v108 = *(this + 32);
  v109 = v108 + v4;
  if (v108 >= 1)
  {
    for (i = 0; i < v108; ++i)
    {
      v111 = *(*(this + 15) + 8 * i);
      v112 = *(v111 + 23);
      v113 = v112;
      v114 = *(v111 + 8);
      if ((v112 & 0x80u) == 0)
      {
        v115 = *(v111 + 23);
      }

      else
      {
        v115 = v114;
      }

      if (v115 >= 0x80)
      {
        v116 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115);
        v112 = *(v111 + 23);
        v114 = *(v111 + 8);
        v108 = *(this + 32);
        v113 = *(v111 + 23);
      }

      else
      {
        v116 = 1;
      }

      if (v113 < 0)
      {
        v112 = v114;
      }

      v109 += v116 + v112;
    }
  }

  v117 = *(this + 42);
  v118 = v109 + 2 * v117;
  if (v117 >= 1)
  {
    for (j = 0; j < v117; ++j)
    {
      v120 = *(*(this + 20) + 8 * j);
      v121 = *(v120 + 23);
      v122 = v121;
      v123 = *(v120 + 8);
      if ((v121 & 0x80u) == 0)
      {
        v124 = *(v120 + 23);
      }

      else
      {
        v124 = v123;
      }

      if (v124 >= 0x80)
      {
        v125 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124);
        v121 = *(v120 + 23);
        v123 = *(v120 + 8);
        v117 = *(this + 42);
        v122 = *(v120 + 23);
      }

      else
      {
        v125 = 1;
      }

      if (v122 < 0)
      {
        v121 = v123;
      }

      v118 += v125 + v121;
    }
  }

  v126 = *(this + 50);
  v127 = v118 + 2 * v126;
  if (v126 >= 1)
  {
    v128 = 0;
    do
    {
      v129 = addr_obj::geo3::StructuredAddress_SubPremise::ByteSize(*(*(this + 24) + 8 * v128), a2);
      v130 = v129;
      if (v129 >= 0x80)
      {
        v131 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129);
      }

      else
      {
        v131 = 1;
      }

      v127 += v130 + v131;
      ++v128;
    }

    while (v128 < *(this + 50));
  }

  LODWORD(v132) = *(this + 58);
  if (v132 < 1)
  {
    v134 = 0;
  }

  else
  {
    v133 = 0;
    v134 = 0;
    do
    {
      v134 += AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 28) + 8 * v133++));
      v132 = *(this + 58);
    }

    while (v133 < v132);
  }

  v135 = (v134 + v127 + 2 * v132);
  v136 = *(this + 1);
  if (v136 && *v136 != v136[1])
  {
    v135 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v135;
  }

  *(this + 60) = v135;
  return v135;
}