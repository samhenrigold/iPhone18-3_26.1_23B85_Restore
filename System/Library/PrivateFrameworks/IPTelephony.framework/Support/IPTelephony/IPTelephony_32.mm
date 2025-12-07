void sub_1E4E79EC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void NetworkInterface::firstAddress(uint64_t *__return_ptr a1@<X8>, NetworkInterface *this@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(v34, "net");
  v30[0] = 0;
  v33 = 0;
  v9 = ims::debug(v8, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "firstAddress: remote(addressTypeMask=", 37);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), a3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ") for addressFlavorMask=", 24);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), a4);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "...", 3);
  *(v9 + 17) = 0;
  v10 = (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(__p);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v11 = *(this + 1);
  v12 = *(this + 2);
  if (v11 == v12)
  {
LABEL_13:
    v15 = std::string::basic_string[abi:ne200100]<0>(v34, "net");
    v21[0] = 0;
    v24 = 0;
    v16 = ims::debug(v15, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "firstAddress: failed", 20);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v13 = v11[1];
      v29[0] = *v11;
      v29[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v10) = NetworkInterface::matchAddress(v10, v29, a3, a4);
      v14 = v10;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v14)
      {
        break;
      }

      v11 += 2;
      if (v11 == v12)
      {
        goto LABEL_13;
      }
    }

    v17 = std::string::basic_string[abi:ne200100]<0>(v34, "net");
    v25[0] = 0;
    v28 = 0;
    v18 = ims::debug(v17, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "firstAddress: found local address ", 34);
    *(v18 + 17) = 0;
    v19 = (*(**v11 + 40))(*v11, v18);
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v19[17] = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    v20 = v11[1];
    *a1 = *v11;
    a1[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_1E4E7A210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  _Unwind_Resume(exception_object);
}

void NetworkInterface::firstAddress(uint64_t *__return_ptr a1@<X8>, NetworkInterface *this@<X0>, uint64_t a3@<X1>, unsigned int **a4@<X2>)
{
  v5 = *a4;
  v6 = a4[1];
  if (*a4 == v6)
  {
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    while (1)
    {
      v9 = *v5;
      *a1 = 0;
      a1[1] = 0;
      NetworkInterface::firstAddress(a1, this, a3, v9);
      if (*a1)
      {
        break;
      }

      v10 = a1[1];
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (++v5 == v6)
      {
        goto LABEL_6;
      }
    }
  }
}

void NetworkInterface::logStr()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  ImsStringOutStream::ImsStringOutStream(v2, 1);
}

void sub_1E4E7A480(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *NetworkInterface::log(NetworkInterface *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Interface ", 10);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, (this + 32));
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(this + 14))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "mtu ", 4);
    *(a2 + 17) = 0;
    MEMORY[0x1E6923350](*(a2 + 1), *(this + 14));
    *(a2 + 17) = 0;
  }

  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v4 = *(this + 1);
  for (i = *(this + 2); v4 != i; *(a2 + 17) = 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  ", 2);
    *(a2 + 17) = 0;
    (*(**v4 + 40))(*v4, a2);
    if ((*(**v4 + 112))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " linklocal", 10);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 192))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " deprecated", 11);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 184))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " temporary", 10);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 200))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " detached", 9);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 208))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " not ready", 10);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 136))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " unique local address", 21);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 120))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " private address", 16);
      *(a2 + 17) = 0;
    }

    if ((*(**v4 + 128))())
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " service continuity address", 27);
      *(a2 + 17) = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": flavor mask = ", 16);
    *(a2 + 17) = 0;
    v6 = *v4;
    v4 += 2;
    MEMORY[0x1E6923350](*(a2 + 1), *(v6 + 24));
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  return a2;
}

void sub_1E4E7A910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipMultiStringHeader::SipMultiStringHeader(SipMultiStringHeader *this, const SipMultiStringHeader *a2)
{
  SipHeader::SipHeader(this, a2);
  *v3 = &unk_1F5ED5A80;
  std::set<std::string>::set[abi:ne200100](v3 + 8, a2 + 64);
}

uint64_t SipMultiStringHeader::encodeValue(SipMultiStringHeader *this, ImsOutStream *a2)
{
  v2 = *(this + 8);
  v3 = this + 72;
  if (v2 != this + 72)
  {
    do
    {
      if (v2 != *(this + 8))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ",", 1);
        *(a2 + 17) = 0;
      }

      (*(*a2 + 32))(a2, v2 + 4);
      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return 1;
}

uint64_t SipMultiStringHeader::setValueFromString(uint64_t a1, std::string *__str)
{
  v4 = 0;
  memset(&__p, 0, sizeof(__p));
  while (1)
  {
    v8 = 1;
    v7[0] = 44;
    v4 = ims::nextToken(__str, v4, &__p, v7);
    if (v4 == -1)
    {
      break;
    }

    ims::chomp(&__p, "\r\n\t ", 3);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((a1 + 64), &__p, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E4E7AB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipMultiStringHeader::mergeHeader(SipMultiStringHeader *this, const SipHeader *lpsrc)
{
  v4 = v3;
  if (v3)
  {
    SipMultiStringHeader::addValues<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(this, *(v3 + 8), v3 + 9);
  }

  return v4 != 0;
}

void SipMessageEncodingMap::SipMessageEncodingMap(SipMessageEncodingMap *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  *(this + 14) = 0;
  *(this + 13) = this + 112;
  *(this + 15) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 64) = 256;
  *(this + 130) = 0;
  operator new();
}

void sub_1E4E7D8E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1E69235B0](v23, 0x10B3C405772A826, a3, a4, a5, a6, a7, a8);
  v27 = *(v20 + 184);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v22);
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(v21, *v25);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v20 + 64));
  v28 = *v24;
  if (*v24)
  {
    *(v20 + 48) = v28;
    operator delete(v28);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v20);
  _Unwind_Resume(a1);
}

void SipMessageEncodingMap::addHeaderPrototype(void *a1, uint64_t a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  ims::lowerCase(&__p);
  ims::chomp(&__p, "\r\n\t ", 3);
  p_p = &__p;
  std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &p_p, &v21)[5] = a2;
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v6)
  {
    std::string::operator=((a2 + 32), a3);
    p_p = a3;
    std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3, &std::piecewise_construct, &p_p, &v21)[5] = a2;
  }

  v8 = a1[6];
  v7 = a1[7];
  if (v8 >= v7)
  {
    v10 = a1[5];
    v11 = (v8 - v10) >> 3;
    if ((v11 + 1) >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>((a1 + 5), v14);
    }

    v15 = (8 * v11);
    *v15 = a2;
    v9 = 8 * v11 + 8;
    v16 = a1[5];
    v17 = a1[6] - v16;
    v18 = v15 - v17;
    memcpy(v15 - v17, v16, v17);
    v19 = a1[5];
    a1[5] = v18;
    a1[6] = v9;
    a1[7] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v8 = a2;
    v9 = (v8 + 1);
  }

  a1[6] = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E7E130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipMessageEncodingMap::~SipMessageEncodingMap(void **this)
{
  SipMessageEncodingMap::clearHeaderMap(this);
  SipMessageEncodingMap::clearBodyMap(this);
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy((this + 13), this[14]);
  this[14] = 0;
  this[15] = 0;
  this[13] = this + 14;
  v2 = this[23];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 17);
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy((this + 13), this[14]);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 8);
  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this);
}

void SipMessageEncodingMap::clearHeaderMap(SipMessageEncodingMap *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(this + 5);
        v2 = *(this + 6);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::clear(this);
  *(this + 6) = *(this + 5);
}

void SipMessageEncodingMap::clearBodyMap(SipMessageEncodingMap *this)
{
  for (i = *(this + 10); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::clear(this + 64);
}

const void *SipMessageEncodingMap::headerPrototypeWithName(void *a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  ims::lowerCase(&__p);
  ims::chomp(&__p, "\r\n\t ", 3);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (v3)
  {
    v4 = v3[5];
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1E4E7E384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipMessageEncodingMap::addBodyPrototype(int8x8_t *a1, const void **a2, const void *a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](&a1[8], a2);
  v7 = a1[9];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*&a1[8] + 8 * v11);
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](&a1[8], v13 + 2, a2))
  {
    goto LABEL_16;
  }

  v15 = v13[5];
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

LABEL_20:
  v16 = std::__string_hash<char>::operator()[abi:ne200100](&a1[8], a2);
  v17 = v16;
  v18 = a1[9];
  if (!*&v18)
  {
    goto LABEL_37;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  v20 = v19.u32[0];
  if (v19.u32[0] > 1uLL)
  {
    v21 = v16;
    if (v16 >= *&v18)
    {
      v21 = v16 % *&v18;
    }
  }

  else
  {
    v21 = (*&v18 - 1) & v16;
  }

  v22 = *(*&a1[8] + 8 * v21);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_37:
    operator new();
  }

  while (2)
  {
    v24 = v23[1];
    if (v24 != v17)
    {
      if (v20 > 1)
      {
        if (v24 >= *&v18)
        {
          v24 %= *&v18;
        }
      }

      else
      {
        v24 &= *&v18 - 1;
      }

      if (v24 != v21)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](&a1[8], v23 + 2, a2))
    {
LABEL_36:
      v23 = *v23;
      if (!v23)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v23[5] = a3;
}

uint64_t SipMessageEncodingMap::createHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  ims::lowerCase(&__str);
  ims::chomp(&__str, "\r\n\t ", 3);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(a1, &__str.__r_.__value_.__l.__data_);
  if (!v6)
  {
    if (*(a1 + 130) == 1)
    {
      v8 = std::string::basic_string[abi:ne200100]<0>(v22, "sip.decode");
      v18[0] = 0;
      v21 = 0;
      v9 = ims::info(v8, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Decoding unknown header ", 24);
      *(v9 + 17) = 0;
      (*(*v9 + 32))(v9, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ": ", 2);
      *(v9 + 17) = 0;
      (*(*v9 + 32))(v9, a3);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    operator new();
  }

  v7 = (*(*v6[5] + 32))(v6[5]);
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (v10 && ((*(*v7 + 72))(v7, a3) & 1) == 0)
  {
    v11 = std::string::basic_string[abi:ne200100]<0>(v22, "sip.decode");
    v14[0] = 0;
    v17 = 0;
    v12 = ims::error(v11, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Unable to decode header: ", 25);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": ", 2);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, a3);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    (*(*v7 + 8))(v7);
    v7 = 0;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1E4E7ECDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  _Unwind_Resume(exception_object);
}

SipStringBody *SipMessageEncodingMap::createBody(SipMessageEncodingMap *a1, const std::string *a2)
{
  v11 = 0;
  *__p = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  SipStringParameterHeader::SipStringParameterHeader(v5, "Content-Type", a2);
  *&v5[0] = &unk_1F5EE1048;
  BYTE8(v6) = 0;
  Body = SipMessageEncodingMap::createBody(a1, v5);
  *&v5[0] = &unk_1F5ECDC48;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  *&v5[0] = &unk_1F5EEE300;
  *&v7 = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7 + 8, v8);
  SipHeader::~SipHeader(v5);
  return Body;
}

SipStringBody *SipMessageEncodingMap::createBody(SipMessageEncodingMap *this, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 8, a2 + 13);
  if (!v3)
  {
    operator new();
  }

  v4 = (*(*v3[5] + 24))(v3[5]);
  if (((*(*v4 + 16))(v4, a2) & 1) == 0)
  {
    (*(*v4 + 8))(v4);
    return 0;
  }

  return v4;
}

uint64_t SipMessageEncodingMap::initializeResponseFromTemplate(uint64_t a1, SipMessage **a2)
{
  v4 = *(a1 + 184);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 176);
    if (v7)
    {
      isWifi = ims::AccessNetwork::isWifi((v7 + 3432));
      LOBYTE(v7) = *(v7 + 296);
    }

    else
    {
      isWifi = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    LOBYTE(v7) = 0;
    isWifi = 0;
  }

  v9 = *a2;
  v10 = a2[1];
  v12[0] = v9;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  SipMessageEncodingMap::initializeResponseFromTemplate(a1, v12, isWifi, v7 & 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return 1;
}

void sub_1E4E7F074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipMessageEncodingMap::initializeResponseFromTemplate(uint64_t a1, SipMessage **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v8 = *(a1 + 184);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 176);
      if (v10)
      {
        v11 = *(v10 + 248);
        v12 = *(v10 + 256);
        if (v12)
        {
          v13 = 1;
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          if (*(SipUserAgent::config(v11) + 456))
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          v13 = 1;
          if (*(SipUserAgent::config(v11) + 456))
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }
        }

        goto LABEL_13;
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }
  }

  else
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
  }

  v14 = 3;
LABEL_13:
  v15 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v15)
  {
    v16 = (v15 + 64);
  }

  else
  {
    v16 = &ims::kEmptyString;
  }

  SipHeaderTemplateMap::matchingHeaderTemplates(a1 + 104, v16, *(*a2 + 32), v5, v4, v14, 0, &v25);
  v17 = v25;
  v18 = v26;
  while (v17 != v18)
  {
    if (v13)
    {
      v19 = SipStack::prefs(v10);
      ImsPrefs::substituteRuntimeVars(v19, v17, &v23);
      if (*(v17 + 23) < 0)
      {
        operator delete(*v17);
      }

      v20 = v23;
      *(v17 + 16) = v24;
      *v17 = v20;
    }

    v21 = SipMessageEncodingMap::decodeHeader(a1, v17);
    if (v21)
    {
      SipMessage::removeHeadersWithName(*a2, v21 + 1);
      SipMessage::addHeader(*a2, v21, 0);
    }

    v17 += 24;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *&v23 = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  return 1;
}

void sub_1E4E7F24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a9 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t SipMessageEncodingMap::decodeHeader(uint64_t a1, std::string *this)
{
  v4 = std::string::find(this, 58, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = v5 < 0;
  v8 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if (v5 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v9 = v4 + 1;
  if (!v6)
  {
    v8 = this;
  }

  if (size <= v9)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = size;
  }

  while (v9 < size)
  {
    v11 = v8->__r_.__value_.__s.__data_[v9++];
    if (v11 != 32)
    {
      v10 = v9 - 1;
      break;
    }
  }

  std::string::basic_string(&v15, this, 0, v4, &v14);
  std::string::basic_string(&v14, this, v10, 0xFFFFFFFFFFFFFFFFLL, &v16);
  Header = SipMessageEncodingMap::createHeader(a1, &v15, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return Header;
}

void sub_1E4E7F378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t SipMessageEncodingMap::initializeRequestFromTemplate(uint64_t a1, SipMessage **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v8 = *(a1 + 184);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 176);
      if (v10)
      {
        v11 = *(v10 + 248);
        v12 = *(v10 + 256);
        if (v12)
        {
          v13 = 1;
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          if (*(SipUserAgent::config(v11) + 456))
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          v13 = 1;
          if (*(SipUserAgent::config(v11) + 456))
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }
        }

        goto LABEL_13;
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }
  }

  else
  {
    v13 = 0;
    v10 = 0;
    v9 = 0;
  }

  v14 = 3;
LABEL_13:
  v15 = (*(**a2 + 120))();
  SipHeaderTemplateMap::matchingHeaderTemplates(a1 + 104, v15, 0, v5, v4, v14, 0, &v24);
  v16 = v24;
  v17 = v25;
  while (v16 != v17)
  {
    if (v13)
    {
      v18 = SipStack::prefs(v10);
      ImsPrefs::substituteRuntimeVars(v18, v16, &v22);
      if (*(v16 + 23) < 0)
      {
        operator delete(*v16);
      }

      v19 = v22;
      *(v16 + 16) = v23;
      *v16 = v19;
    }

    v20 = SipMessageEncodingMap::decodeHeader(a1, v16);
    if (v20)
    {
      SipMessage::removeHeadersWithName(*a2, v20 + 1);
      SipMessage::addHeader(*a2, v20, 0);
    }

    v16 += 24;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *&v22 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  return 1;
}

void sub_1E4E7F578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a9 = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void SipMessageEncodingMap::createRequestFromTemplate(uint64_t a1@<X0>, SipMessage **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  v5 = a1;
  std::allocate_shared[abi:ne200100]<SipRequest,std::allocator<SipRequest>,SipRequest::EnforcePrivateConstructor,std::string const&,SipMessageEncodingMap const*&,0>();
}

void sub_1E4E7F664(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

const void **SipMessageEncodingMap::copyHeadersFromRequestToResponse(const void **result, uint64_t a2, SipMessage **a3, int a4)
{
  v4 = *(*a2 + 48);
  v5 = *(*a2 + 56);
  if (v5 != v4)
  {
    v9 = result;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 >= (v5 - v4) >> 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v4 + 8 * v10);
      }

      result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v9 + 17, v12 + 1);
      if (result)
      {
        if (a4 || ((*(*v12 + 11))(v12) & 1) != 0 || (result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(*a3 + 9, v12 + 1)) == 0 || !result[5])
        {
          v13 = *a3;
          v14 = (*(*v12 + 4))(v12);
          result = SipMessage::addHeader(v13, v14, 0);
        }
      }

      v10 = v11;
      v4 = *(*a2 + 48);
      v5 = *(*a2 + 56);
      ++v11;
    }

    while (v10 < (v5 - v4) >> 3);
  }

  return result;
}

BOOL SipMessageEncodingMap::initializeFromPrefs(SipMessageEncodingMap *this, const ImsPrefs *a2)
{
  v4 = (this + 112);
  v5 = (this + 104);
  std::__tree<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<SipHeaderTemplateMap::HeaderTemplate>>>>::destroy(this + 104, *(this + 14));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  std::string::basic_string[abi:ne200100]<0>(__p, "AdditionalHeaders");
  SipHeaderTemplateMap::initializeFromPref(v5, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  result = ImsPrefs::AllowIPv6UnicastAddress(a2);
  *(this + 131) = result;
  return result;
}

void sub_1E4E7F83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipMessageEncodingMap::useLazuliTypes(SipMessageEncodingMap *this)
{
  v2 = *(this + 23);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = *(this + 22);
    if (v4)
    {
      v5 = (v4 + 2817);
    }

    else
    {
      v5 = this + 132;
    }

    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v6 = *(this + 132);
  }

  return v6 & 1;
}

void SipConferenceInfoBody::~SipConferenceInfoBody(void **this)
{
  *this = &unk_1F5ED5BA0;
  SipConferenceInfo::~SipConferenceInfo((this + 4));
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED5BA0;
  SipConferenceInfo::~SipConferenceInfo((this + 4));
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipConferenceInfo::~SipConferenceInfo(SipConferenceInfo *this)
{
  *this = &unk_1F5EE7BC0;
  *(this + 59) = &unk_1F5EE7C48;
  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  SipConferenceUsers::~SipConferenceUsers((this + 432));
  SipUri::~SipUri((this + 8));
}

{
  SipConferenceInfo::~SipConferenceInfo(this);

  JUMPOUT(0x1E69235B0);
}

void SipRegistrationInfoBody::~SipRegistrationInfoBody(void **this)
{
  *this = &unk_1F5ED5C40;
  SipRegistrationInfo::~SipRegistrationInfo((this + 4));
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED5C40;
  SipRegistrationInfo::~SipRegistrationInfo((this + 4));
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void Sip3gppImsInfoBody::~Sip3gppImsInfoBody(void **this)
{
  *this = &unk_1F5ED5B18;
  Sip3gppImsInfo::~Sip3gppImsInfo((this + 4));
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED5B18;
  Sip3gppImsInfo::~Sip3gppImsInfo((this + 4));
  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipContentTypeHeader::~SipContentTypeHeader(void **this)
{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2, uint64_t a3)
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
    operator new();
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
}

void std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
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

const void **std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,SipHeader *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SipHeader *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SipHeader *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SipHeader *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1E4E803DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E804A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t SipUdpTransport::SipUdpTransport(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    SipTransport::SipTransport(a1, v20, a4);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    SipTransport::SipTransport(a1, v20, a4);
  }

  *(a1 + 32) = &unk_1F5ED5E68;
  std::string::basic_string[abi:ne200100]<0>(v18, "sip.tport");
  v14 = *a3;
  v15 = *(a3 + 2);
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3[2], a3[3]);
  }

  else
  {
    __p = *(a3 + 2);
  }

  v17 = *(a3 + 40);
  ims::getQueue(&v24);
  ClientConfig::getLogTag(&v21, &v14);
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

  v9 = std::string::insert(&v21, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  v22 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v11 = &v22;
  }

  else
  {
    v11 = v22;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v12 = v24;
  *(a1 + 64) = v24;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 72) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 80), "com.apple.ipTelephony", v11);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 40) = &unk_1F5ED5EA0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  *a1 = &unk_1F5ED5CE0;
  *(a1 + 32) = &unk_1F5ED5D28;
  *(a1 + 40) = &unk_1F5ED5D60;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_1E4E80714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  *v31 = &unk_1F5ECF248;
  v33 = v31[2];
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  _Unwind_Resume(exception_object);
}

void SipUdpTransport::~SipUdpTransport(SipUdpTransport *this)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5ED5CE0;
  *(this + 4) = &unk_1F5ED5D28;
  *(this + 5) = &unk_1F5ED5D60;
  v2 = this + 80;
  v3 = *(this + 10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v4 = v19 >= 0 ? &__p : __p;
    *buf = 141558275;
    v21 = 1752392040;
    v22 = 2081;
    v23 = v4;
    _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclosing UDP transport", buf, 0x16u);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  v5 = *(this + 11);
  if (v5)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (!v7 || (v8 = *(v5 + 32), std::__shared_weak_count::__release_shared[abi:ne200100](v7), !v8))
      {
        v9 = *(v5 + 40);
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;
        if (v9)
        {
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }

    else
    {
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
    }

    if (*(this + 13))
    {
      SipSocketMultiplexer<ImsUdpSocketInterfaceDelegate>::delegateForRemoteAddress(*(this + 11), this + 13, &__p);
      if (!v18)
      {
        goto LABEL_23;
      }

      v10 = std::__shared_weak_count::lock(v18);
      if (!v10)
      {
        if (v18)
        {
          std::__shared_weak_count::__release_weak(v18);
        }

LABEL_23:
        __p = 0;
        v18 = 0;
        v19 = 0;
        IpAddress::asString(*(this + 13), &__p, 3);
      }

      v11 = __p;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = *(this + 12);
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    v14 = *(this + 14);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v15 = *(this + 12);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  MEMORY[0x1E69225A0](v2);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 6);
  *this = &unk_1F5ECF248;
  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  SipUdpTransport::~SipUdpTransport(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4E80AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toSipUdpTransport::~SipUdpTransport(SipUdpTransport *this)
{
  SipUdpTransport::~SipUdpTransport((this - 32));
}

{
  SipUdpTransport::~SipUdpTransport((this - 40));
}

{
  SipUdpTransport::~SipUdpTransport((this - 32));

  JUMPOUT(0x1E69235B0);
}

{
  SipUdpTransport::~SipUdpTransport((this - 40));

  JUMPOUT(0x1E69235B0);
}

void SipUdpTransport::initialize(SipTransport *a1)
{
  object[18] = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(object, a1 + 6);
  operator new();
}

void sub_1E4E81130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType(&a18);
  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void SipUdpTransport::initialize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*a2 + 88);
  if (v4)
  {
    v5 = *(*a2 + 96);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 96);
    *(a1 + 88) = v4;
    *(a1 + 96) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8[0] = &unk_1F5EBDEF8;
    v8[1] = &_bambiDomain;
    v9 = 1073741825;
    v7 = ImsResult::operator<<<char [33]>(v8, "old transport is not initialized");
    ImsResult::ImsResult(a3, v7);
    ImsResult::~ImsResult(v8);
  }
}

void sub_1E4E81320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

double SipUdpTransport::setRemoteOutboundAddress@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 88))
  {
    (*(**a2 + 32))(&v16);
    v5 = v16;
    v16 = 0uLL;
    v6 = *(a1 + 112);
    *(a1 + 104) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v16 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
      }
    }

    v7 = *(a1 + 88);
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v16, (a1 + 48));
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      v9 = v16;
      atomic_fetch_add_explicit((*(&v16 + 1) + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v10 = std::__shared_weak_count::lock(v8);
      if (v10)
      {
        v11 = v10;
        v12 = v9 + 32;
        if (!v9)
        {
          v12 = 0;
        }

        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v12;
        v15 = v10;
        std::__shared_weak_count::__release_weak(v8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    SipSocketMultiplexer<ImsUdpSocketInterfaceDelegate>::addDelegateForRemoteAddress(v7, &v14, a2);
  }

  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741827;
  return result;
}

void sub_1E4E814F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E815B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipUdpTransport::send(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 40))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E4E81648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipUdpTransport::processDataFromSocket(void *a1, void *__src, size_t __n, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v4 = a1[3];
  memset(v26, 0, sizeof(v26));
  v29 = v4;
  __dst[0] = 0;
  __dst[1] = 0;
  v25 = 0;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  HIBYTE(v25) = __n;
  if (__n)
  {
    memcpy(__dst, __src, __n);
  }

  *(__dst + __n) = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  SipMessageDecoder::decode(&v21, v26, __dst);
  if (v23)
  {
    v10 = v21;
    v9 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      v11 = qword_1ECFD48C0;
      if (byte_1ECFD48CF >= 0)
      {
        v11 = byte_1ECFD48CF;
      }

      if (v11)
      {
        v19 = v10;
        v20 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = (*(*a1 + 24))(a1);
        SipRecorder::recordBlob(&v19, __dst, v12, 0);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }
      }

      v18[0] = v10;
      v18[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17[0] = 0;
      v17[1] = 0;
      SipTransport::processIncomingMessage(a1, v18, __src, __n, a4, v17);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_32:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v13 = a1[10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        (*(a1[5] + 16))(buf);
        if (v37 >= 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        *v30 = 141558275;
        *&v30[4] = 1752392040;
        v31 = 2081;
        v32 = v16;
        _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sincomplete message received:", v30, 0x16u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(*buf);
        }

        v13 = a1[10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        (*(a1[5] + 16))(v30, a1 + 5);
        if (v33 >= 0)
        {
          v14 = v30;
        }

        else
        {
          v14 = *v30;
        }

        v15 = __dst;
        if (v25 < 0)
        {
          v15 = __dst[0];
        }

        *buf = 141558531;
        *&buf[4] = 1752392040;
        v35 = 2081;
        v36 = v14;
        v37 = 2080;
        v38 = v15;
        _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}s%s", buf, 0x20u);
        if (v33 < 0)
        {
          operator delete(*v30);
        }
      }

      if (v9)
      {
        goto LABEL_32;
      }
    }
  }

  if (v23 == 1 && v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  SipMessageDecoder::~SipMessageDecoder(v26);
}

void sub_1E4E81A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a17 == 1 && a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  SipMessageDecoder::~SipMessageDecoder(&a24);
  _Unwind_Resume(a1);
}

void SipUdpTransport::setServiceClass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return;
  }

  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (!v6)
    {
      return;
    }

    v7 = *(a1 + 88);
    v6 = *(v7 + 48);
    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = 0;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_9;
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }

    v8 = 0;
  }

  v9 = 1;
LABEL_9:
  (*(*v6 + 120))(v6, a2);
  if ((v9 & 1) == 0)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E4E81B84(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipUdpTransport::localAddress(SipUdpTransport *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 72))(v3);
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1E4E81C20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<SipUdpTransport>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipUdpTransport>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipUdpSocketMultiplexer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED5EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipSocketMultiplexer<ImsUdpSocketInterfaceDelegate>::delegateForRemoteAddress(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (a1[3])
  {
    memset(__p, 0, sizeof(__p));
    IpAddress::asString(*a2, __p, 3);
  }

  v4 = a1[5];
  *a3 = a1[4];
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_1E4E81E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::weak_ptr<ImsUdpSocketInterfaceDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ImsUdpSocketInterfaceDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ImsUdpSocketInterfaceDelegate>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    std::__tree<std::__value_type<std::string,std::weak_ptr<ImsUdpSocketInterfaceDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ImsUdpSocketInterfaceDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ImsUdpSocketInterfaceDelegate>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void SipHeaderTemplateMap::initializeFromPref(uint64_t **a1, uint64_t a2, char *a3)
{
  v3 = a2;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v88 = 0;
  theDict = 0;
  ImsPrefs::dictValue(a2, a3, &v88);
  if (!theDict)
  {
    goto LABEL_180;
  }

  if (!CFDictionaryGetCount(theDict))
  {
    goto LABEL_180;
  }

  ims::CFDictionary::getKeysAndValues(&v88, &v93, &v90, 0x8000100);
  v4 = v93;
  if (v94 == v93)
  {
    goto LABEL_180;
  }

  v5 = 0;
  v82 = v3;
  do
  {
    v79 = v5;
    v86 = 0xFFFFFFFFLL;
    v85 = 0xFFFFFFFFLL;
    memset(&v87, 0, sizeof(v87));
    v6 = (v4 + 24 * v5);
    memset(&v105, 0, sizeof(v105));
    memset(&__str, 0, sizeof(__str));
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      __str.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&__str.__r_.__value_.__l.__data_ = v7;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v9 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v10 = memchr(v9, 91, size);
      if (v10)
      {
        v11 = v10 - v9;
        if (v10 - v9 != -1)
        {
          if (size <= v11 + 1)
          {
            goto LABEL_24;
          }

          v12 = memchr(v10 + 1, 93, size - (v11 + 1));
          v13 = v12 - v9;
          if (!v12)
          {
            v13 = -1;
          }

          if (v13 == -1 || v13 < v11)
          {
LABEL_24:
            v15 = std::string::basic_string[abi:ne200100]<0>(&v101, "prefs");
            v98[0] = 0;
            v100 = 0;
            v16 = ims::error(v15, v98);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "missing end bracket: ", 21);
            *(v16 + 17) = 0;
            (*(*v16 + 32))(v16, &__str);
            (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v16 + 17) = 0;
            if (v100 == 1 && SHIBYTE(v99) < 0)
            {
              operator delete(*&v98[16]);
            }

            if (SHIBYTE(v103) < 0)
            {
              operator delete(v101);
            }

            goto LABEL_118;
          }

          std::string::basic_string(v98, &__str, v11 + 1, v13 + ~v11, &v101);
          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          v105 = *v98;
          std::string::basic_string(v98, &__str, 0, v11, &v101);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = *v98;
        }
      }
    }

    v17 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v105.__r_.__value_.__l.__size_;
    }

    if (!v17)
    {
      v20 = 0;
      v22 = -1;
      v21 = -1;
LABEL_111:
      std::string::operator=(&v87, &__str);
      LODWORD(v86) = v22;
      v41 = 1;
      v85 = __PAIR64__(v20, v21);
      v5 = v79;
      goto LABEL_119;
    }

    v101 = 0;
    v102 = 0;
    v103 = 0;
    std::string::basic_string[abi:ne200100]<0>(v98, ", ");
    ims::tokenize(&v105, &v101, v98);
    if ((v98[23] & 0x80000000) != 0)
    {
      operator delete(*v98);
    }

    v18 = v101;
    v19 = v102;
    if (v101 == v102)
    {
      v20 = 0;
      v22 = -1;
      v21 = -1;
LABEL_110:
      __p[0] = &v101;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_111;
    }

    v20 = 0;
    v21 = -1;
    v22 = -1;
    while (1)
    {
      ims::lowerCase(v18);
      ims::chomp(v18, "\r\n\t ", 3);
      LODWORD(v23) = *(v18 + 23);
      if ((*(v18 + 23) & 0x80000000) == 0)
      {
        break;
      }

      if (v18[1])
      {
        v24 = *v18;
        goto LABEL_46;
      }

LABEL_101:
      v18 += 3;
      if (v18 == v19)
      {
        goto LABEL_110;
      }
    }

    v24 = v18;
    if (!*(v18 + 23))
    {
      goto LABEL_101;
    }

LABEL_46:
    v25 = *v24;
    if (v25 == 45)
    {
      std::string::basic_string(v98, v18, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v107);
      if (*(v18 + 23) < 0)
      {
        operator delete(*v18);
      }

      v26 = *v98;
      v27 = *&v98[16];
      v18[2] = *&v98[16];
      *v18 = v26;
      v23 = HIBYTE(v27);
    }

    if ((v23 & 0x80) == 0)
    {
      if (v23 <= 6)
      {
        if (v23 == 3)
        {
          if (*v18 == 12601 && *(v18 + 2) == 49)
          {
            goto LABEL_93;
          }

          goto LABEL_99;
        }

        if (v23 != 4)
        {
          goto LABEL_99;
        }

        v28 = *v18;
        goto LABEL_59;
      }

      if (v23 == 7)
      {
        if (*v18 == 1835627120 && *(v18 + 3) == 2037539181)
        {
          goto LABEL_103;
        }

        goto LABEL_99;
      }

      v31 = v18;
      if (v23 != 9)
      {
        goto LABEL_99;
      }

LABEL_68:
      v32 = *v31;
      v33 = v31[8];
      if (v32 == 0x7261646E6F636573 && v33 == 121)
      {
        if (v25 == 45)
        {
          v22 = -3;
        }

        else
        {
          v22 = -2;
        }

        goto LABEL_101;
      }

      goto LABEL_99;
    }

    v29 = v18[1];
    if (v29 > 6)
    {
      if (v29 == 7)
      {
        if (**v18 == 1835627120 && *(*v18 + 3) == 2037539181)
        {
LABEL_103:
          if (v25 == 45)
          {
            v22 = -2;
          }

          else
          {
            v22 = -3;
          }

          goto LABEL_101;
        }

        goto LABEL_99;
      }

      if (v29 != 9)
      {
        goto LABEL_99;
      }

      v31 = *v18;
      goto LABEL_68;
    }

    if (v29 == 3)
    {
      if (**v18 == 12601 && *(*v18 + 2) == 49)
      {
LABEL_93:
        v38 = v21 & 0xFFFFFFF3;
        if (v25 == 45)
        {
          v21 = v38 | 8;
        }

        else
        {
          v21 = v38 | 4;
        }

        goto LABEL_101;
      }

      goto LABEL_99;
    }

    if (v29 != 4)
    {
      goto LABEL_99;
    }

    v28 = **v18;
LABEL_59:
    if (v28 == 1768319351)
    {
      v30 = v21 & 0xFFFFFFFC;
      if (v25 == 45)
      {
        v21 = v30 | 2;
      }

      else
      {
        v21 = v30 | 1;
      }

      goto LABEL_101;
    }

LABEL_99:
    v40 = ims::Services::serviceWithName(v18);
    if (v40)
    {
      v20 |= v40;
      goto LABEL_101;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "prefs");
    v98[0] = 0;
    v100 = 0;
    v5 = v79;
    v42 = ims::error(__p, v98);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "unrecognized flag '", 19);
    *(v42 + 17) = 0;
    (*(*v42 + 32))(v42, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "' in ", 5);
    *(v42 + 17) = 0;
    (*(*v42 + 32))(v42, v6);
    (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v42 + 17) = 0;
    if (v100 == 1 && SHIBYTE(v99) < 0)
    {
      operator delete(*&v98[16]);
    }

    if (v97 < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = &v101;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_118:
    v41 = 0;
LABEL_119:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
      if (!v41)
      {
        goto LABEL_177;
      }

LABEL_125:
      memset(&__str, 0, sizeof(__str));
      std::string::basic_string[abi:ne200100]<0>(v98, ", ");
      ims::tokenize(&v87, &__str, v98);
      if ((v98[23] & 0x80000000) != 0)
      {
        operator delete(*v98);
      }

      v43 = __str.__r_.__value_.__l.__size_;
      v78 = __str.__r_.__value_.__l.__size_;
      v44 = __str.__r_.__value_.__r.__words[0];
      while (1)
      {
        if (v44 == v43)
        {
          *v98 = &__str;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v98);
          v5 = v79;
          goto LABEL_177;
        }

        ims::normalize(v44, 1, &v84);
        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        v105.__r_.__value_.__r.__words[0] = 0;
        v45 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v105.__r_.__value_.__l.__data_, v44);
        if (!v45)
        {
          operator new();
        }

        v101 = 0;
        v102 = 0;
        v103 = 0;
        v46 = *(v90 + v79);
        if (v46)
        {
          v47 = CFGetTypeID(v46);
          if (v47 == CFStringGetTypeID())
          {
            memset(v98, 0, 24);
            v48 = *(v90 + v79);
            v105.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
            v105.__r_.__value_.__l.__size_ = v48;
            if (v48)
            {
              CFRetain(v48);
              v48 = v105.__r_.__value_.__l.__size_;
            }

            v105.__r_.__value_.__r.__words[0] = &unk_1F5EF36B0;
            ims::CFString::asString(v98, v48, 0x8000100);
            ims::CFType::~CFType(&v105);
            std::vector<std::string>::push_back[abi:ne200100](&v101, v98);
            if ((v98[23] & 0x80000000) != 0)
            {
              operator delete(*v98);
            }
          }

          else
          {
            v49 = *(v90 + v79);
            if (v49)
            {
              v50 = CFGetTypeID(v49);
              if (v50 == CFArrayGetTypeID())
              {
                *v98 = 0;
                *&v98[8] = 0;
                v51 = *(v90 + v79);
                *v98 = &unk_1F5EF3658;
                *&v98[8] = v51;
                if (v51)
                {
                  CFRetain(v51);
                }

                *v98 = &unk_1F5EC8AD0;
                ims::CFArray::asStrings(v98, &v101, v83);
                ImsResult::~ImsResult(v83);
                ims::CFType::~CFType(v98);
              }
            }
          }
        }

        v81 = v44;
        v53 = v101;
        v52 = v102;
        if (v101 != v102)
        {
          break;
        }

LABEL_175:
        *v98 = &v101;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v98);
        v44 = v81 + 3;
        v43 = v78;
      }

      v54 = v45 + 7;
      while (2)
      {
        if ((*(v53 + 23) & 0x8000000000000000) != 0)
        {
          if (!v53[1])
          {
            goto LABEL_174;
          }
        }

        else if (!*(v53 + 23))
        {
          goto LABEL_174;
        }

        ImsPrefs::substituteRuntimeVars(v3, v53, v98);
        if (*(v53 + 23) < 0)
        {
          operator delete(*v53);
        }

        v55 = *v98;
        v53[2] = *&v98[16];
        *v53 = v55;
        v56 = v86;
        v57 = v85;
        *v98 = 0xFFFFFFFFLL;
        *&v98[8] = -1;
        *&v98[24] = 0;
        v99 = 0;
        *&v98[16] = 0;
        std::string::operator=(&v98[16], v53);
        *&v98[8] = v56;
        *v98 = v57;
        v58 = v45[8];
        v59 = v45[9];
        if (v58 >= v59)
        {
          v62 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - *v54) >> 3);
          v63 = v62 + 1;
          if (v62 + 1 > 0x666666666666666)
          {
            std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
          }

          v64 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - *v54) >> 3);
          if (2 * v64 > v63)
          {
            v63 = 2 * v64;
          }

          if (v64 >= 0x333333333333333)
          {
            v65 = 0x666666666666666;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<SipHeaderTemplateMap::HeaderTemplate>>((v45 + 7), v65);
          }

          v66 = 40 * v62;
          v67 = *v98;
          *(v66 + 8) = *&v98[8];
          *v66 = v67;
          v68 = *&v98[16];
          *(v66 + 32) = v99;
          *(v66 + 16) = v68;
          *&v98[24] = 0;
          v99 = 0;
          *&v98[16] = 0;
          v70 = v45[7];
          v69 = v45[8];
          v105.__r_.__value_.__r.__words[0] = (v45 + 7);
          v105.__r_.__value_.__l.__size_ = v107;
          v105.__r_.__value_.__r.__words[2] = __p;
          v106 = 0;
          v71 = v70;
          v72 = (v66 + v70 - v69);
          __p[0] = v72;
          v107[0] = v72;
          v73 = v72;
          if (v70 == v69)
          {
            LOBYTE(v106) = 1;
          }

          else
          {
            do
            {
              v74 = *v71;
              v73[2] = *(v71 + 2);
              *v73 = v74;
              v75 = *(v71 + 1);
              *(v73 + 4) = v71[4];
              *(v73 + 1) = v75;
              v71[3] = 0;
              v71[4] = 0;
              v71[2] = 0;
              v71 += 5;
              v73 += 10;
            }

            while (v71 != v69);
            __p[0] = v73;
            LOBYTE(v106) = 1;
            do
            {
              if (*(v70 + 39) < 0)
              {
                operator delete(v70[2]);
              }

              v70 += 5;
            }

            while (v70 != v69);
          }

          std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SipHeaderTemplateMap::HeaderTemplate>,SipHeaderTemplateMap::HeaderTemplate*>>::~__exception_guard_exceptions[abi:ne200100](&v105);
          v76 = v45[7];
          v45[7] = v72;
          v45[8] = v66 + 40;
          v45[9] = 0;
          if (v76)
          {
            operator delete(v76);
          }

          v77 = SHIBYTE(v99);
          v45[8] = v66 + 40;
          v3 = v82;
          if (v77 < 0)
          {
            operator delete(*&v98[16]);
          }
        }

        else
        {
          v60 = *v98;
          *(v58 + 8) = *&v98[8];
          *v58 = v60;
          v61 = *&v98[16];
          *(v58 + 32) = v99;
          *(v58 + 16) = v61;
          v45[8] = v58 + 40;
        }

LABEL_174:
        v53 += 3;
        if (v53 == v52)
        {
          goto LABEL_175;
        }

        continue;
      }
    }

    if (v41)
    {
      goto LABEL_125;
    }

LABEL_177:
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    ++v5;
    v4 = v93;
  }

  while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3));
LABEL_180:
  ims::CFType::~CFType(&v88);
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  *v98 = &v93;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v98);
}

void sub_1E4E82C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType(&a37);
  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  a29 = &a42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void SipHeaderTemplateMap::matchingHeaderTemplates(uint64_t a1, const void **a2, unsigned int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v30 = a3;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (a3)
  {
    v25 = 0uLL;
    v26 = 0;
    ims::detail::to_string_impl<unsigned int,std::integral_constant<BOOL,false>>::operator()();
  }

  std::vector<std::string>::push_back[abi:ne200100](&v27, a2);
  std::string::basic_string[abi:ne200100]<0>(&v25, "*");
  std::vector<std::string>::push_back[abi:ne200100](&v27, &v25);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  v14 = v27;
  v15 = v28;
  if (v27 != v28)
  {
    v16 = (a1 + 8);
    if (a4)
    {
      v17 = -2;
    }

    else
    {
      v17 = -3;
    }

    if (a5)
    {
      v18 = -5;
    }

    else
    {
      v18 = -9;
    }

    v19 = v18 & v17;
    do
    {
      v20 = *v16;
      if (*v16)
      {
        v21 = v16;
        do
        {
          v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v20 + 32), v14);
          if ((v22 & 0x80u) == 0)
          {
            v21 = v20;
          }

          v20 = *(v20 + ((v22 >> 4) & 8));
        }

        while (v20);
        if (v21 != v16 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14, v21 + 32) & 0x80) == 0)
        {
          v23 = *(v21 + 7);
          v24 = *(v21 + 8);
          while (v23 != v24)
          {
            if ((*v23 | v19) == 0xFFFFFFFF && (*(v23 + 4) & ~a7) == 0 && (a6 == 3 || (*(v23 + 8) & a6) == a6))
            {
              std::vector<std::string>::push_back[abi:ne200100](a8, (v23 + 16));
            }

            v23 += 40;
          }
        }
      }

      v14 += 24;
    }

    while (v14 != v15);
  }

  *&v25 = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1E4E831A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SipHeaderTemplateMap::matchingHeaderTemplate(uint64_t a1, const void **a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  memset(v9, 0, sizeof(v9));
  SipHeaderTemplateMap::matchingHeaderTemplates(a1, a2, a3, a4, a5, a6, a7, v9);
  std::string::basic_string[abi:ne200100]<0>(&__p, ";");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E4E832B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void SipSubscriptionStateHeader::~SipSubscriptionStateHeader(void **this)
{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void IMSSecurityPolicyManager::~IMSSecurityPolicyManager(IMSSecurityPolicyManager *this)
{
  IMSSecurityPolicyManager::deinitialize(this);
  std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::destroy(this + 48, *(this + 7));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  std::__list_imp<unsigned long long>::clear(this);
}

void IMSSecurityPolicyManager::deinitialize(IMSSecurityPolicyManager *this)
{
  if (*(this + 9))
  {
    *(this + 4) = *(this + 3);
    v2 = (this + 56);
    std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::destroy(this + 48, *(this + 7));
    *(this + 6) = v2;
    *(this + 8) = 0;
    *v2 = 0;
    std::__list_imp<unsigned long long>::clear(this);
    PolicyDeleteAll(*(this + 9));
    PolicyApply(*(this + 9));
    CFRelease(*(this + 9));
    *(this + 9) = 0;
  }
}

void IMSSecurityPolicyManager::initialize(IMSSecurityPolicyManager *this)
{
  *(this + 9) = PolicyCreateSession(0, @"com.apple.ipTelephony.security", _callback, this);
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    if (v2 != 64)
    {
      operator new();
    }
  }

  else
  {
    if (v2 >= 0x80)
    {
      v4 = *(this + 1);
      for (i = 65; i > 1; --i)
      {
        v4 = *(v4 + 1);
      }
    }

    else
    {
      v3 = v2 - 64;
      v4 = this;
      do
      {
        v4 = *v4;
        --v3;
      }

      while (v3);
    }

    if (v4 != this)
    {
      v6 = *(*this + 8);
      v7 = *v4;
      *(v7 + 1) = v6;
      *v6 = v7;
      do
      {
        v8 = *(v4 + 1);
        --*(this + 2);
        operator delete(v4);
        v4 = v8;
      }

      while (v8 != this);
    }
  }

  v9 = *(this + 1);
  if (v9 != this)
  {
    v10 = 1000;
    do
    {
      *(v9 + 16) = v10;
      v9 = *(v9 + 8);
      v10 += 100;
    }

    while (v9 != this);
  }

  v11 = *(this + 9);
  if (!v11)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v24, "policy");
    v20[0] = 0;
    v23 = 0;
    v13 = ims::error(v12, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to create secure policy session", 38);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v11 = *(this + 9);
  }

  if (!PolicySetSessionPriority(v11, @"High"))
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v24, "policy");
    v16[0] = 0;
    v19 = 0;
    v15 = ims::error(v14, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Unable to set session priority", 30);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    IMSSecurityPolicyManager::deinitialize(this);
  }
}

void sub_1E4E838D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

void IMSSecurityPolicyManager::addDropPolicy(uint64_t a1@<X0>, char *a2@<X1>, IpAddress ***a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  v27[0] = &unk_1F5EBE6A8;
  v27[1] = 0;
  v26[0] = &unk_1F5EBED08;
  v26[1] = 0;
  v25[0] = &unk_1F5EBED08;
  v25[1] = 0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *a5 = &unk_1F5EBDEF8;
  *(a5 + 8) = &_bambiDomain;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v52 = &unk_1F5EBE6A8;
  v53 = 0;
  v50 = &unk_1F5EBED08;
  v51 = 0;
  v49[0] = &unk_1F5EBED08;
  v49[1] = 0;
  v48 = 0;
  ims::CFMutableDictionary::setValue(v49, @"ConditionType", @"BoundInterface");
  ims::CFString::CFString(&__p, a2);
  ims::CFMutableDictionary::setValue(v49, @"InterfaceName", value);
  ims::CFType::~CFType(&__p);
  ims::CFMutableArray::appendValue(&v52, v49);
  (*(v49[0] + 48))(v49, 0, 0);
  ims::CFMutableDictionary::setValue(v49, @"ConditionType", @"UID");
  v7 = getuid();
  ims::CFNumber::CFNumber(&__p, v7);
  ims::CFMutableDictionary::setValue(v49, @"UID", value);
  ims::CFType::~CFType(&__p);
  ims::CFMutableDictionary::setValue(v49, @"IsNegative", *MEMORY[0x1E695E4D0]);
  ims::CFMutableArray::appendValue(&v52, v49);
  ims::CFMutableDictionary::setValue(&v50, @"Result", @"Drop");
  std::string::basic_string[abi:ne200100]<0>(&__p, "policy");
  v44[0] = 0;
  v47 = 0;
  v8 = ims::debug(&__p, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "adding DROP ALL policy at ", 26);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), *a4);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "policy");
  v40[0] = 0;
  v43 = 0;
  v9 = ims::debug(&__p, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "conditions: ", 12);
  *(v9 + 17) = 0;
  v10 = v52[2](&v52, v9);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v10[17] = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "policy");
  v36[0] = 0;
  v39 = 0;
  v11 = ims::debug(&__p, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "results: ", 9);
  *(v11 + 17) = 0;
  v12 = v50[2](&v50, v11);
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v12[17] = 0;
  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  v48 = PolicyAdd(*(a1 + 72), *a4, v53, v51, 0);
  if (v48)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](a4 + 1, &v48);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19[0] = &unk_1F5EBDEF8;
    v19[1] = &_bambiDomain;
    v20 = 0;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    __p = &unk_1F5EBDEF8;
    value = &_bambiDomain;
    v30 = 0x40000000;
    v13 = ImsResult::operator<<<char [26]>(&__p, "Unable to add drop policy");
    ImsResult::ImsResult(v19, v13);
    ImsResult::~ImsResult(&__p);
  }

  ims::CFType::~CFType(v49);
  ims::CFType::~CFType(&v50);
  ims::CFType::~CFType(&v52);
  ImsResult::operator=(a5, v19);
  v14 = (*(**(a5 + 8) + 24))(*(a5 + 8), *(a5 + 16));
  ImsResult::~ImsResult(v19);
  if ((v14 & 1) == 0)
  {
    v15 = *a3;
    if (*a3 != a3[1])
    {
      ims::CFMutableDictionary::setValue(v25, @"ConditionType", @"LocalAddressSubnet");
      IpAddress::asString(&__p, *v15, 0);
    }
  }

  ims::CFType::~CFType(v25);
  ims::CFType::~CFType(v26);
  ims::CFType::~CFType(v27);
}

void sub_1E4E844C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ImsResult *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  ImsResult::~ImsResult(&a51);
  ims::CFType::~CFType((v51 - 136));
  ims::CFType::~CFType((v51 - 120));
  ims::CFType::~CFType((v51 - 104));
  ImsResult::~ImsResult(a9);
  ims::CFType::~CFType(&a45);
  ims::CFType::~CFType(&a47);
  ims::CFType::~CFType(&a49);
  _Unwind_Resume(a1);
}

void IMSSecurityPolicyManager::removePolicyForInterface(void *a1, std::string *a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 6), a2);
  if (a1 + 7 != v4)
  {
    v5 = v4;
    v6 = std::string::basic_string[abi:ne200100]<0>(&v16, "policy");
    v12[0] = 0;
    v15 = 0;
    v7 = ims::debug(v6, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "removing DROP policy for ", 25);
    *(v7 + 17) = 0;
    LoggableString::LoggableString(&__p, a2);
    (*(*v7 + 40))(v7, &__p);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v15 == 1 && v14 < 0)
    {
      operator delete(v13);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    v8 = v5[8];
    v9 = v5[9];
    while (v8 != v9)
    {
      v10 = *v8++;
      PolicyDelete(a1[9], v10);
    }

    operator new();
  }
}

void sub_1E4E84894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

void IMSSecurityPolicyManager::addSkipPolicy(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 32) = 0;
  v49 = &unk_1F5EBE6A8;
  v50 = 0;
  v47 = &unk_1F5EBED08;
  v48 = 0;
  v6 = 100;
  v7 = 1;
  v46[0] = &unk_1F5EBED08;
  v46[1] = 0;
  do
  {
    v8 = v7;
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      ims::CFMutableDictionary::setValue(v46, @"ConditionType", @"BoundInterface");
      ims::CFString::CFString(&__p, a2);
      ims::CFMutableDictionary::setValue(v46, @"InterfaceName", value);
      ims::CFType::~CFType(&__p);
    }

    else
    {
      ims::CFMutableDictionary::setValue(v46, @"ConditionType", @"AllInterfaces");
    }

    ims::CFMutableArray::appendValue(&v49, v46);
    (*(v46[0] + 48))(v46, 0, 0);
    ims::CFMutableDictionary::setValue(v46, @"ConditionType", @"Application");
    std::string::basic_string[abi:ne200100]<0>(&__p, "67A03811-DB0A-594E-C2AE-8B0517EDF26F");
    ims::CFUUID::CFUUID(v62, &__p);
    ims::CFMutableDictionary::setValue(v46, @"ApplicationUUID", v62[1]);
    ims::CFType::~CFType(v62);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    ims::CFMutableArray::appendValue(&v49, v46);
    (*(v46[0] + 48))(v46, 0, 0);
    ims::CFMutableDictionary::setValue(v46, @"ConditionType", @"RealApplication");
    ims::CFUUID::CFUUID(&__p, &kUUIDWhitelist[3 * v5]);
    ims::CFMutableDictionary::setValue(v46, @"RealApplicationUUID", value);
    ims::CFType::~CFType(&__p);
    ims::CFMutableArray::appendValue(&v49, v46);
    ims::CFMutableDictionary::setValue(&v47, @"Result", @"Skip");
    ims::CFNumber::CFNumber(&__p, 7400);
    ims::CFMutableDictionary::setValue(&v47, @"SkipOrder", value);
    ims::CFType::~CFType(&__p);
    std::string::basic_string[abi:ne200100]<0>(&__p, "policy");
    v42[0] = 0;
    v45 = 0;
    v10 = ims::debug(&__p, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "adding SKIP policy at ", 22);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923340](*(v10 + 8), v6);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "policy");
    v38[0] = 0;
    v41 = 0;
    v11 = ims::debug(&__p, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "conditions: ", 12);
    *(v11 + 17) = 0;
    v12 = v49[2](&v49, v11);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v12[17] = 0;
    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "policy");
    v34[0] = 0;
    v37 = 0;
    v13 = ims::debug(&__p, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "results: ", 9);
    *(v13 + 17) = 0;
    v14 = v47[2](&v47, v13);
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v14[17] = 0;
    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    LODWORD(v62[0]) = PolicyAdd(*(a1 + 72), v6, v50, v48, 0);
    if (LODWORD(v62[0]))
    {
      std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 24), v62);
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      __p = &unk_1F5EBDEF8;
      value = &_bambiDomain;
      LODWORD(v29) = 0x40000000;
      v15 = ImsResult::operator<<<char [26]>(&__p, "unable to add SKIP policy");
      ImsResult::operator=(a3, v15);
      ImsResult::~ImsResult(&__p);
    }

    (*(v46[0] + 48))(v46, 0, 0);
    (v47[6])(&v47, 0, 0);
    (v49[6])(&v49, 0, 0);
    v7 = 0;
    v6 = (v6 + 10);
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  v69 = &unk_1F5EBE6A8;
  v70 = 0;
  v67 = &unk_1F5EBED08;
  v68 = 0;
  v66[0] = &unk_1F5EBED08;
  v66[1] = 0;
  ims::CFMutableDictionary::setValue(v66, @"ConditionType", @"RemoteAddressSubnet");
  ims::CFNumber::CFNumber(&__p, 53);
  ims::CFMutableDictionary::setValue(v66, @"Port", value);
  ims::CFType::~CFType(&__p);
  ims::CFMutableArray::appendValue(&v69, v66);
  (*(v66[0] + 48))(v66, 0, 0);
  ims::CFMutableDictionary::setValue(v66, @"ConditionType", @"AllInterfaces");
  ims::CFMutableArray::appendValue(&v69, v66);
  ims::CFMutableDictionary::setValue(&v67, @"Result", @"Skip");
  ims::CFNumber::CFNumber(&__p, 7400);
  ims::CFMutableDictionary::setValue(&v67, @"SkipOrder", value);
  ims::CFType::~CFType(&__p);
  v16 = std::string::basic_string[abi:ne200100]<0>(v62, "policy");
  LOBYTE(__p) = 0;
  BYTE8(v31) = 0;
  v17 = ims::debug(v16, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "adding SKIP policy at ", 22);
  *(v17 + 17) = 0;
  MEMORY[0x1E6923340](*(v17 + 8), 120);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (BYTE8(v31) == 1 && SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  v18 = std::string::basic_string[abi:ne200100]<0>(v58, "policy");
  LOBYTE(v62[0]) = 0;
  v65 = 0;
  v19 = ims::debug(v18, v62);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "conditions: ", 12);
  *(v19 + 17) = 0;
  v20 = v69[2](&v69, v19);
  (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v20[17] = 0;
  if (v65 == 1 && v64 < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v51, "policy");
  LOBYTE(v58[0]) = 0;
  v61 = 0;
  v21 = ims::debug(v51, v58);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "results: ", 9);
  *(v21 + 17) = 0;
  v22 = v67[2](&v67, v21);
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v22[17] = 0;
  if (v61 == 1 && v60 < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  v23 = PolicyAdd(*(a1 + 72), 120, v70, v68, 0);
  v57 = v23;
  if (v23)
  {
    std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 24), &v57);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v55, "policy");
    LOBYTE(v51[0]) = 0;
    v54 = 0;
    v24 = ims::error(v55, v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "unable to add policy for DNS resolution", 39);
    *(v24 + 17) = 0;
    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v24 + 17) = 0;
    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }
  }

  ims::CFType::~CFType(v66);
  ims::CFType::~CFType(&v67);
  ims::CFType::~CFType(&v69);
  if (!v23)
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    __p = &unk_1F5EBDEF8;
    value = &_bambiDomain;
    LODWORD(v29) = 0x40000000;
    v25 = ImsResult::operator<<<char [65]>(&__p, "Unable to add SKIP rule for DNS - Proxy resolution will not work");
    ImsResult::operator=(a3, v25);
    ImsResult::~ImsResult(&__p);
  }

  ims::CFType::~CFType(v46);
  ims::CFType::~CFType(&v47);
  ims::CFType::~CFType(&v49);
}

void sub_1E4E85480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ImsResult *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, uint64_t a44, uint64_t a45, uint64_t a46, __int128 a47)
{
  ims::CFType::~CFType((v47 - 136));
  ims::CFType::~CFType((v47 - 120));
  ims::CFType::~CFType((v47 - 104));
  ims::CFType::~CFType(&a43);
  ims::CFType::~CFType(&a45);
  ims::CFType::~CFType(&a47);
  ImsResult::~ImsResult(a10);
  _Unwind_Resume(a1);
}

uint64_t *IMSSecurityPolicyManager::createDropPolicy(uint64_t **a1, uint64_t a2)
{
  if (!a1[9])
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v65, "policy");
    v53[0] = 0;
    v56 = 0;
    v15 = ims::debug(v14, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Unable to add policy: session does not exist", 44);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v56 != 1 || (v55 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v16 = v54;
    goto LABEL_20;
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(v65, "policy");
    v49[0] = 0;
    v52 = 0;
    v18 = ims::debug(v17, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "No network interface name", 25);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v52 != 1 || (v51 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v16 = __p;
    goto LABEL_20;
  }

  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 6), a2);
  v6 = (a1 + 7);
  if (a1 + 7 != v5)
  {
    v7 = v5;
    v8 = v5[8];
    v9 = v5[9];
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        v8 = (v8 + 4);
        PolicyDelete(a1[9], v10);
      }

      while (v8 != v9);
      v8 = v7[8];
    }

    v7[9] = v8;
    v11 = std::string::basic_string[abi:ne200100]<0>(v65, "policy");
    v37[0] = 0;
    v40 = 0;
    v12 = ims::debug(v11, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "updating policy for ", 20);
    *(v12 + 17) = 0;
    LoggableString::LoggableString(&v62, a2);
    (*(*v12 + 40))(v12, &v62);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (v40 != 1 || (v39 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v13 = v38;
LABEL_30:
    operator delete(v13);
LABEL_31:
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65[0]);
    }

    v26 = std::string::basic_string[abi:ne200100]<0>(&v62, "policy");
    LOBYTE(v65[0]) = 0;
    v68 = 0;
    v27 = ims::debug(v26, v65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "policy interfaces: ", 19);
    *(v27 + 17) = 0;
    if (v68 == 1 && v67 < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v28 = a1[6];
    if (v28 != v6)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(v57, "policy");
        v62.__r_.__value_.__s.__data_[0] = 0;
        v64 = 0;
        v29 = ims::debug(v57, &v62);
        LoggableString::LoggableString(&v61, (v28 + 4));
        (*(*v29 + 40))(v29, &v61);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "[", 1);
        *(v29 + 17) = 0;
        MEMORY[0x1E6923340](*(v29 + 8), *(v28 + 14));
        *(v29 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "] ", 2);
        *(v29 + 17) = 0;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (v64 == 1 && v63 < 0)
        {
          operator delete(v62.__r_.__value_.__r.__words[2]);
        }

        if (SHIBYTE(v58) < 0)
        {
          operator delete(v57[0]);
        }

        v30 = v28[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v28[2];
            v32 = *v31 == v28;
            v28 = v31;
          }

          while (!v32);
        }

        v28 = v31;
      }

      while (v31 != v6);
    }

    v33 = std::string::basic_string[abi:ne200100]<0>(&v61, "policy");
    LOBYTE(v57[0]) = 0;
    v60 = 0;
    v34 = ims::debug(v33, v57);
    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v34[17] = 0;
    if (v60 == 1 && v59 < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v65[0] = a2;
    return std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 6, a2, v65) + 7;
  }

  if (a1[2])
  {
    v20 = *(a1[1] + 4);
    v65[0] = a2;
    *(std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 6, a2, v65) + 14) = v20;
    v21 = a1[1];
    v23 = *v21;
    v22 = v21[1];
    *(v23 + 8) = v22;
    *v22 = v23;
    a1[2] = (a1[2] - 1);
    operator delete(v21);
    v24 = std::string::basic_string[abi:ne200100]<0>(v65, "policy");
    v41[0] = 0;
    v44 = 0;
    v25 = ims::debug(v24, v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "adding new policy for ", 22);
    *(v25 + 17) = 0;
    LoggableString::LoggableString(&v62, a2);
    (*(*v25 + 40))(v25, &v62);
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (v44 != 1 || (v43 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v13 = v42;
    goto LABEL_30;
  }

  v35 = std::string::basic_string[abi:ne200100]<0>(v65, "policy");
  v45[0] = 0;
  v48 = 0;
  v36 = ims::debug(v35, v45);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "All drop policy slots filled", 28);
  *(v36 + 17) = 0;
  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v36 + 17) = 0;
  if (v48 == 1 && v47 < 0)
  {
    v16 = v46;
LABEL_20:
    operator delete(v16);
  }

LABEL_21:
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  return 0;
}

void sub_1E4E85D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 113) < 0)
  {
    operator delete(*(v26 - 136));
  }

  _Unwind_Resume(a1);
}

void IMSSecurityPolicyManager::addPolicyForInterface(uint64_t **this@<X0>, NetworkInterface *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    memset(&v12[1] + 8, 0, 64);
    *&v12[0] = &unk_1F5EBDEF8;
    *(&v12[0] + 1) = &_bambiDomain;
    LODWORD(v12[1]) = 1073741825;
    v8 = ImsResult::operator<<<char [27]>(v12, "no network interface given");
    ImsResult::ImsResult(a3, v8);
LABEL_7:
    ImsResult::~ImsResult(v12);
    return;
  }

  DropPolicy = IMSSecurityPolicyManager::createDropPolicy(this, a2 + 32);
  if (!DropPolicy)
  {
    memset(&v12[1] + 8, 0, 64);
    *&v12[0] = &unk_1F5EBDEF8;
    *(&v12[0] + 1) = &_bambiDomain;
    LODWORD(v12[1]) = 0x40000000;
    v9 = ImsResult::operator<<<char [34]>(v12, "Unable to create drop policy for ");
    v10 = ImsResult::operator<<<std::string>(v9, a2 + 32);
    ImsResult::ImsResult(a3, v10);
    goto LABEL_7;
  }

  v7 = DropPolicy;
  memset(v11, 0, sizeof(v11));
  NetworkInterface::allAddresses(a2, v11, 3, 9);
  memset(v12, 0, 88);
  IMSSecurityPolicyManager::addDropPolicy(this, a2 + 32, v11, v7, v12);
  if ((*(**(&v12[0] + 1) + 24))(*(&v12[0] + 1), LODWORD(v12[1])))
  {
    ImsResult::ImsResult(a3, v12);
  }

  else
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }

  ImsResult::~ImsResult(v12);
  *&v12[0] = v11;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v12);
}

void sub_1E4E86104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void IMSSecurityPolicyManager::addPolicyForInterface(uint64_t **a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  DropPolicy = IMSSecurityPolicyManager::createDropPolicy(a1, a2);
  if (DropPolicy)
  {
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    IMSSecurityPolicyManager::addDropPolicy(a1, a2, v10, DropPolicy, v9);
    if ((*(**&v9[8] + 24))(*&v9[8], *&v9[16]))
    {
      ImsResult::ImsResult(a3, v9);
    }

    else
    {
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
    }

    ImsResult::~ImsResult(v9);
    *v9 = v10;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v9);
  }

  else
  {
    memset(&v9[24], 0, 64);
    *v9 = &unk_1F5EBDEF8;
    *&v9[8] = &_bambiDomain;
    *&v9[16] = 0x40000000;
    v7 = ImsResult::operator<<<char [34]>(v9, "Unable to create drop policy for ");
    v8 = ImsResult::operator<<<std::string>(v7, a2);
    ImsResult::ImsResult(a3, v8);
    ImsResult::~ImsResult(v9);
  }
}

void sub_1E4E862C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 56);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,IMSSecurityPolicyManager::DropPolicy>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,IMSSecurityPolicyManager::DropPolicy>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::__map_value_compare<std::string,std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

void sub_1E4E86508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,IMSSecurityPolicyManager::DropPolicy>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,IMSSecurityPolicyManager::DropPolicy>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void __cxx_global_array_dtor_1()
{
  v0 = &byte_1EE2BBF0F;
  v1 = -48;
  v2 = &byte_1EE2BBF0F;
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

uint64_t _GLOBAL__sub_I_IMSSecurityPolicyManager_cpp()
{
  v0 = std::string::basic_string[abi:ne200100]<0>(kUUIDWhitelist, "719A92AD-BF6B-3069-B2A6-2FC4E2161BAF");
  std::string::basic_string[abi:ne200100]<0>(v0 + 3, "5145A6F0-97F2-3FBC-898F-F447240B1B58");

  return __cxa_atexit(__cxx_global_array_dtor_1, 0, &dword_1E4C3F000);
}

void sub_1E4E8661C(_Unwind_Exception *exception_object)
{
  if (byte_1EE2BBEF7 < 0)
  {
    operator delete(kUUIDWhitelist[0]);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliSession::LazuliSession(uint64_t a1, std::__shared_weak_count **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "lazuli.session");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v22, &(*a2)[8].__shared_owners_);
  ImsLogContainer::ImsLogContainer(a1, &v27, v22);
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  std::string::basic_string[abi:ne200100]<0>(v20, "lazuli.session");
  v5 = a2[1];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v16 = *(v7 + 200);
  v17 = *(v7 + 208);
  if (*(v7 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(v7 + 216), *(v7 + 224));
  }

  else
  {
    v18 = *(v7 + 216);
  }

  v19 = *(v7 + 240);
  ims::getQueue(&v29);
  ClientConfig::getLogTag(&v26, &v16);
  if ((v21 & 0x80u) == 0)
  {
    v8 = v20;
  }

  else
  {
    v8 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = v20[1];
  }

  v10 = std::string::insert(&v26, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28 = v10->__r_.__value_.__r.__words[2];
  v27 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v28 >= 0)
  {
    v12 = &v27;
  }

  else
  {
    v12 = v27;
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v13 = v29;
  *(a1 + 160) = v29;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 168) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 176), "com.apple.ipTelephony", v12);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 136) = &unk_1F5ED6128;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  *a1 = &unk_1F5ED5FA0;
  *(a1 + 136) = &unk_1F5ED6000;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 200));
  *(a1 + 368) = *a2;
  v14 = a2[1];
  *(a1 + 376) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  SipUri::SipUri((a1 + 400));
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 936) = 90;
  *(a1 + 944) = 16777472;
  *(a1 + 948) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1060) = 0u;
  return a1;
}

void sub_1E4E86944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void sub_1E4E86A24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  JUMPOUT(0x1E4E86A1CLL);
}

void LazuliSession::~LazuliSession(LazuliSession *this)
{
  *this = &unk_1F5ED5FA0;
  *(this + 17) = &unk_1F5ED6000;
  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  LazuliSessionOptions::~LazuliSessionOptions((this + 832));
  if (*(this + 831) < 0)
  {
    operator delete(*(this + 101));
  }

  SipUri::~SipUri((this + 400));
  v2 = *(this + 49);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 47);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SipTimerContainer::~SipTimerContainer((this + 200));
  v4 = *(this + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x1E69225A0](this + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 18);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  LazuliSession::~LazuliSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toLazuliSession::~LazuliSession(LazuliSession *this)
{
  LazuliSession::~LazuliSession((this - 136));
}

{
  LazuliSession::~LazuliSession((this - 136));

  JUMPOUT(0x1E69235B0);
}

void LazuliSession::attachSipSession(LazuliSession *this, uint64_t *a2)
{
  if (*a2)
  {
    if (*(this + 48))
    {
      LazuliSession::detachSipSession(this);
    }

    v4 = (*(*this + 64))(this);
    (*(*this + 16))(this, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "attaching SipSession ", 21);
    *(v4 + 17) = 0;
    (*(**a2 + 320))(__p);
    (*(*v4 + 40))(v4, __p);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(this + 49);
    *(this + 48) = v6;
    *(this + 49) = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      v6 = *(this + 48);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v17, this + 18);
    SipSession::setLazuli(v6, &v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v8 = *(*a2 + 240);
    v9 = *(*a2 + 248);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = 240;
    if (*(v8 + 1056))
    {
      v10 = 648;
    }

    SipUri::operator=((this + 400), v8 + v10);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v11 = *(*a2 + 240);
    v12 = *(*a2 + 248);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=((this + 808), (v11 + 1480));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = *(*a2 + 240);
    v14 = *(*a2 + 248);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=((this + 856), (v13 + 2488));
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v15 = *(*a2 + 240);
    v16 = *(*a2 + 248);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::operator=((this + 880), v15 + 106);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void sub_1E4E86E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void LazuliSession::detachSipSession(LazuliSession *this)
{
  if (*(this + 48))
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "detaching SipSession ", 21);
    *(v2 + 17) = 0;
    (*(**(this + 48) + 320))(__p);
    (*(*v2 + 40))(v2, __p);
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(this + 48);
    v5[0] = 0;
    v5[1] = 0;
    SipSession::setLazuli(v3, v5);
    v4 = *(this + 49);
    *(this + 48) = 0;
    *(this + 49) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E8704C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSession::setLazuli(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1192) = v5;
  v6 = *(a1 + 1200);
  *(a1 + 1200) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *(a1 + 1448) = *a2 != 0;
}

void LazuliSession::initializeMobileTerminated(LazuliSession *this, uint64_t *a2, int a3)
{
  *(this + 1075) = a3;
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LazuliSession::attachSipSession(this, v14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 0;
  IPTelephonyManager::getCallManager(&v12);
  v6 = v12;
  if (!a3)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 18);
    IMSCallManager::trackMTLazuliSession(v6, this + 856, &v8);
    v7 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, this + 18);
  IMSCallManager::trackMTOnlyLazuliSession(v6, this + 856, &v10);
  v7 = v11;
  if (v11)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_10:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E4E8719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void LazuliSession::initializeMobileOriginated(LazuliSession *this@<X0>, const SipUri *a2@<X1>, const std::string *a3@<X2>, ImsResult *a4@<X8>)
{
  v6 = *(this + 47);
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = *(this + 46);
      if (v10)
      {
        v11 = *(v10 + 256);
        v17 = *(v10 + 248);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17)
        {
          LazuliSessionOptions::operator=(this + 832, a3);
          memset(v27, 0, 24);
          v12 = SipStack::prefs(v10);
          ImsPrefs::OriginUsername(v12, v27);
          size = HIBYTE(v27[0].__r_.__value_.__r.__words[2]);
          if ((v27[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v27[0].__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            v26 = 0;
            memset(v25, 0, sizeof(v25));
            v14 = SipUserAgent::publicUri(v17);
            SipUri::SipUri(v25, v14);
            std::string::basic_string[abi:ne200100]<0>(__str, "");
            std::string::operator=(&v25[200], __str);
            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }

            SipUri::asString(v25, 2, __str);
            if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27[0].__r_.__value_.__l.__data_);
            }

            v27[0] = *__str;
            SipUri::~SipUri(v25);
          }

          std::string::basic_string[abi:ne200100]<0>(__str, " ");
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          ims::substituteVar(v27, __str, &__p, v25);
          if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27[0].__r_.__value_.__l.__data_);
          }

          v27[0] = *v25;
          v25[23] = 0;
          v25[0] = 0;
          if (v24 < 0)
          {
            operator delete(__p);
          }

          if ((__str[23] & 0x80000000) != 0)
          {
            operator delete(*__str);
          }

          v22 = 0;
          v21 = 0u;
          memset(__str, 0, sizeof(__str));
          SipStack::mediaAddress(__str, v10);
          v19[0] = 0;
          v19[1] = 0;
          SipHost::address(v19, __str);
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, this + 18);
          SipStack::isGroupChatUri(v10, a2);
          operator new();
        }

        memset(&v25[24], 0, 64);
        *v25 = &unk_1F5EBDEF8;
        *&v25[8] = &_bambiDomain;
        *&v25[16] = 1073741826;
        v16 = ImsResult::operator<<<char [14]>(v25, "no user agent");
        ImsResult::ImsResult(a4, v16);
        ImsResult::~ImsResult(v25);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  memset(&v25[24], 0, 64);
  *v25 = &unk_1F5EBDEF8;
  *&v25[8] = &_bambiDomain;
  *&v25[16] = 1073741826;
  v15 = ImsResult::operator<<<char [12]>(v25, "no sipstack");
  ImsResult::ImsResult(a4, v15);
  ImsResult::~ImsResult(v25);
  if (v9)
  {
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E4E87820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  SipUri::~SipUri(&a35);
  if (*(v36 - 105) < 0)
  {
    operator delete(*(v36 - 128));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

void LazuliSession::startSession(LazuliSession *this)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v2 = *(this + 48);
  if (*(this + 947))
  {
    v3 = "InitialInviteLazuli";
  }

  else
  {
    v3 = "EmptyInvite";
  }

  SipSession::sendLazuliInvite(v2, v3, &v13);
  v4 = (*(**(&v13 + 1) + 24))(*(&v13 + 1), v14);
  v5 = *this;
  if (v4)
  {
    v6 = (*(v5 + 56))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Lazuli invite failure: ", 23);
    *(v6 + 17) = 0;
    (*(v13 + 16))(&v13, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    SipUri::SipUri(v10);
    v7 = xpc_null_create();
    v9 = v7;
    LazuliSession::handleInviteFailure(this, 0, v11, v10, 0, &v9);
    xpc_release(v7);
    SipUri::~SipUri(v10);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v8 = (*(v5 + 64))(this);
    (*(*this + 16))(this, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "starting Lazuli session", 23);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }

  ImsResult::~ImsResult(&v13);
}

void sub_1E4E87C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(v10);
  SipUri::~SipUri(va);
  if (*(v11 - 129) < 0)
  {
    operator delete(*(v11 - 152));
  }

  ImsResult::~ImsResult((v11 - 128));
  _Unwind_Resume(a1);
}

void LazuliSession::handleInviteFailure(uint64_t a1, uint64_t a2, uint64_t *a3, const SipUri *a4, uint64_t a5, xpc_object_t *a6)
{
  v12 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Handling invite failure statusCode ", 35);
  *(v12 + 17) = 0;
  MEMORY[0x1E6923350](*(v12 + 8), a2);
  *(v12 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " statusText ", 12);
  *(v12 + 17) = 0;
  (*(*v12 + 32))(v12, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), " remoteUri ", 11);
  *(v12 + 17) = 0;
  (*(*a4 + 40))(a4, v12);
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (a2 == 503 && a5)
  {
    v13 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Invite response is 503 with Retry-After: ", 41);
    *(v13 + 17) = 0;
    MEMORY[0x1E6923350](*(v13 + 8), a5);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " for conv ", 10);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a1 + 856);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    v14 = *(a1 + 376);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        v17 = *(a1 + 368);
        if (v17)
        {
          __p = 0;
          v86 = 0;
          v18 = *(v17 + 248);
          v19 = *(v17 + 256);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(v18 + 248);
          v21 = *(v18 + 256);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipDialogManager::initializeSession(v20, a4, (a1 + 832), &__p);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (__p)
          {
            v22 = v86;
            v158[0] = __p;
            v158[1] = v86;
            if (v86)
            {
              atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            LazuliSession::attachSipSession(a1, v158);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(v153, (a1 + 144));
            v23 = v153[0];
            if (*(&v153[0] + 1))
            {
              atomic_fetch_add_explicit((*(&v153[0] + 1) + 16), 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
            }

            v24 = dispatch_time(0, 1000000000 * a5);
            ims::getQueue(v153);
            v25 = *&v153[0];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 1174405120;
            block[2] = ___ZN13LazuliSession19handleInviteFailureEjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERK6SipUrijN3xpc5arrayE_block_invoke;
            block[3] = &__block_descriptor_tmp_42;
            block[4] = a1;
            v157 = v23;
            if (*(&v23 + 1))
            {
              atomic_fetch_add_explicit((*(&v23 + 1) + 16), 1uLL, memory_order_relaxed);
            }

            dispatch_after(v24, v25, block);
            if (v25)
            {
              dispatch_release(v25);
            }

            if (*(&v157 + 1))
            {
              std::__shared_weak_count::__release_weak(*(&v157 + 1));
            }

            if (*(&v23 + 1))
            {
              std::__shared_weak_count::__release_weak(*(&v23 + 1));
            }

            if (v86)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v86);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            return;
          }

          if (v86)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v86);
          }
        }

        v31 = v16;
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 504 || a2 == 403)
  {
    v26 = *(a1 + 376);
    if (v26)
    {
      v27 = std::__shared_weak_count::lock(v26);
      if (v27)
      {
        v28 = v27;
        v29 = *(a1 + 368);
        if (v29)
        {
          v30 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v30);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "SIP INVITE response ", 20);
          *(v30 + 17) = 0;
          MEMORY[0x1E6923350](*(v30 + 8), a2);
          *(v30 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), ": Triggering lazuli registration termination", 44);
          *(v30 + 17) = 0;
          (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v30 + 17) = 0;
          SipStack::terminateLazuliRegistration(v29, 5);
        }

        v31 = v28;
LABEL_42:
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }
  }

  v155 = 0;
  v32 = xpc_dictionary_create(0, 0, 0);
  v33 = v32;
  v34 = MEMORY[0x1E69E9E80];
  if (v32)
  {
    v155 = v32;
  }

  else
  {
    v33 = xpc_null_create();
    v155 = v33;
    if (!v33)
    {
      v35 = xpc_null_create();
      v33 = 0;
      goto LABEL_50;
    }
  }

  if (MEMORY[0x1E6924740](v33) != v34)
  {
    v35 = xpc_null_create();
LABEL_50:
    v155 = v35;
    goto LABEL_51;
  }

  xpc_retain(v33);
LABEL_51:
  xpc_release(v33);
  v154 = 0u;
  memset(v153, 0, sizeof(v153));
  v36 = *(a1 + 376);
  if (!v36 || (v37 = std::__shared_weak_count::lock(v36)) == 0)
  {
    v38 = 0;
    memset(&v152, 0, sizeof(v152));
    goto LABEL_57;
  }

  v38 = v37;
  v39 = *(a1 + 368);
  memset(&v152, 0, sizeof(v152));
  if (!v39)
  {
LABEL_57:
    std::string::basic_string[abi:ne200100]<0>(&v152, "");
    goto LABEL_58;
  }

  if (*(v39 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, *(v39 + 4432), *(v39 + 4440));
  }

  else
  {
    v152 = *(v39 + 4432);
  }

LABEL_58:
  v151 = 0;
  v150 = 0;
  IMSClientManager::lazuliDelegateForStack(&v152, &v150);
  if (v150)
  {
    if ((*(a1 + 1103) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 1088))
      {
LABEL_61:
        v40 = (*(*a1 + 56))(a1);
        (*(*a1 + 16))(a1, v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "Failed to create session for Group-Leave trx ", 45);
        v41 = (a1 + 1080);
        *(v40 + 17) = 0;
        (*(*v40 + 32))(v40, a1 + 1080);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), " conv ", 6);
        *(v40 + 17) = 0;
        v42 = (a1 + 856);
        (*(*v40 + 32))(v40, a1 + 856);
        (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v40 + 17) = 0;
        v92[0] = 0;
        v43 = xpc_dictionary_create(0, 0, 0);
        v44 = v43;
        if (v43)
        {
          v92[0] = v43;
        }

        else
        {
          v44 = xpc_null_create();
          v92[0] = v44;
          if (!v44)
          {
            v45 = xpc_null_create();
            v44 = 0;
            goto LABEL_101;
          }
        }

        if (MEMORY[0x1E6924740](v44) == v34)
        {
          xpc_retain(v44);
          goto LABEL_102;
        }

        v45 = xpc_null_create();
LABEL_101:
        v92[0] = v45;
LABEL_102:
        xpc_release(v44);
        v148 = xpc_BOOL_create(0);
        if (!v148)
        {
          v148 = xpc_null_create();
        }

        __p = v92;
        v86 = "kIsSuccess";
        xpc::dict::object_proxy::operator=(&__p, &v148, &v149);
        xpc_release(v149);
        v149 = 0;
        xpc_release(v148);
        v148 = 0;
        if (*(a1 + 1103) < 0)
        {
          v41 = *v41;
        }

        v146 = xpc_string_create(v41);
        if (!v146)
        {
          v146 = xpc_null_create();
        }

        __p = v92;
        v86 = "kTransactionId";
        xpc::dict::object_proxy::operator=(&__p, &v146, &v147);
        xpc_release(v147);
        v147 = 0;
        xpc_release(v146);
        v146 = 0;
        if (*(a1 + 879) < 0)
        {
          v42 = *v42;
        }

        v144 = xpc_string_create(v42);
        if (!v144)
        {
          v144 = xpc_null_create();
        }

        __p = v92;
        v86 = "kConversationId";
        xpc::dict::object_proxy::operator=(&__p, &v144, &v145);
        xpc_release(v145);
        v145 = 0;
        xpc_release(v144);
        v144 = 0;
        v56 = (a1 + 880);
        if (*(a1 + 903) < 0)
        {
          v56 = *v56;
        }

        v142 = xpc_string_create(v56);
        if (!v142)
        {
          v142 = xpc_null_create();
        }

        __p = v92;
        v86 = "kContributionId";
        xpc::dict::object_proxy::operator=(&__p, &v142, &v143);
        xpc_release(v143);
        v143 = 0;
        xpc_release(v142);
        v142 = 0;
        if (*(a3 + 23) < 0)
        {
          if (!a3[1])
          {
LABEL_124:
            if (a2)
            {
              v138 = xpc_int64_create(a2);
              if (!v138)
              {
                v138 = xpc_null_create();
              }

              __p = v92;
              v86 = "kErrorCode";
              xpc::dict::object_proxy::operator=(&__p, &v138, &v139);
              xpc_release(v139);
              v139 = 0;
              xpc_release(v138);
              v138 = 0;
            }

            if (MEMORY[0x1E6924740](*a6) == MEMORY[0x1E69E9E50] && xpc_array_get_count(*a6))
            {
              v57 = *a6;
              v136 = v57;
              if (v57)
              {
                xpc_retain(v57);
              }

              else
              {
                v136 = xpc_null_create();
              }

              __p = v92;
              v86 = "kSipWarningsList";
              xpc::dict::object_proxy::operator=(&__p, &v136, &v137);
              xpc_release(v137);
              v137 = 0;
              xpc_release(v136);
              v136 = 0;
            }

            v64 = v150;
            v135 = v92[0];
            if (v92[0])
            {
              xpc_retain(v92[0]);
            }

            else
            {
              v135 = xpc_null_create();
            }

            LazuliDelegate::handleLeaveGroupChat(v64, &v135);
            xpc_release(v135);
            v135 = 0;
            xpc_release(v92[0]);
            goto LABEL_156;
          }

          a3 = *a3;
        }

        else if (!*(a3 + 23))
        {
          goto LABEL_124;
        }

        v140 = xpc_string_create(a3);
        if (!v140)
        {
          v140 = xpc_null_create();
        }

        __p = v92;
        v86 = "kReason";
        xpc::dict::object_proxy::operator=(&__p, &v140, &v141);
        xpc_release(v141);
        v141 = 0;
        xpc_release(v140);
        v140 = 0;
        goto LABEL_124;
      }
    }

    else if (*(a1 + 1103))
    {
      goto LABEL_61;
    }

    if ((*(a1 + 975) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 960))
      {
LABEL_74:
        if (*(a1 + 1056) == *(a1 + 1048) || (*(a1 + 1073) & 1) != 0)
        {
          v46 = (*(*a1 + 56))(a1);
          (*(*a1 + 16))(a1, v46);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "Failed to establish lazuli session due to INVITE error for message send trx ", 76);
          *(v46 + 17) = 0;
          v47 = (a1 + 976);
          (*(*v46 + 32))(v46, a1 + 976);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), " conv ", 6);
          *(v46 + 17) = 0;
          v48 = (a1 + 856);
          (*(*v46 + 32))(v46, a1 + 856);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), " remoteUri ", 11);
          *(v46 + 17) = 0;
          SipUri::asString(a4, 2, &__p);
          (*(*v46 + 32))(v46, &__p);
          (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v46 + 17) = 0;
          if (v87 < 0)
          {
            operator delete(__p);
          }

          v99 = xpc_BOOL_create(0);
          if (!v99)
          {
            v99 = xpc_null_create();
          }

          __p = &v155;
          v86 = "kIsSuccess";
          xpc::dict::object_proxy::operator=(&__p, &v99, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v99);
          v99 = 0;
          if (*(a1 + 999) < 0)
          {
            v47 = *v47;
          }

          v97 = xpc_string_create(v47);
          if (!v97)
          {
            v97 = xpc_null_create();
          }

          __p = &v155;
          v86 = "kTransactionId";
          xpc::dict::object_proxy::operator=(&__p, &v97, &v98);
          xpc_release(v98);
          v98 = 0;
          xpc_release(v97);
          v97 = 0;
          if (*(a1 + 879) < 0)
          {
            v48 = *v48;
          }

          v95 = xpc_string_create(v48);
          if (!v95)
          {
            v95 = xpc_null_create();
          }

          __p = &v155;
          v86 = "kConversationId";
          xpc::dict::object_proxy::operator=(&__p, &v95, &v96);
          xpc_release(v96);
          v96 = 0;
          xpc_release(v95);
          v95 = 0;
          SipUri::asString(a4, 2, &__p);
          if (v87 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v93 = xpc_string_create(p_p);
          if (!v93)
          {
            v93 = xpc_null_create();
          }

          v92[0] = &v155;
          v92[1] = "kRemoteUri";
          xpc::dict::object_proxy::operator=(v92, &v93, &v94);
          xpc_release(v94);
          v94 = 0;
          xpc_release(v93);
          v93 = 0;
          if (v87 < 0)
          {
            operator delete(__p);
          }

          if (*(a3 + 23) < 0)
          {
            if (!a3[1])
            {
LABEL_139:
              if (a2)
              {
                v88 = xpc_int64_create(a2);
                if (!v88)
                {
                  v88 = xpc_null_create();
                }

                __p = &v155;
                v86 = "kErrorCode";
                xpc::dict::object_proxy::operator=(&__p, &v88, &v89);
                xpc_release(v89);
                v89 = 0;
                xpc_release(v88);
                v88 = 0;
                SipResultDomain::makeResult(a2, a3, &__p);
                if (BYTE8(v154) == 1)
                {
                  ImsResult::operator=(v153, &__p);
                }

                else
                {
                  ImsResult::ImsResult(v153, &__p);
                  BYTE8(v154) = 1;
                }

                ImsResult::~ImsResult(&__p);
              }

              if (MEMORY[0x1E6924740](*a6) == MEMORY[0x1E69E9E50] && xpc_array_get_count(*a6))
              {
                v63 = *a6;
                v83 = v63;
                if (v63)
                {
                  xpc_retain(v63);
                }

                else
                {
                  v83 = xpc_null_create();
                }

                __p = &v155;
                v86 = "kSipWarningsList";
                xpc::dict::object_proxy::operator=(&__p, &v83, &v84);
                xpc_release(v84);
                v84 = 0;
                xpc_release(v83);
                v83 = 0;
              }

              goto LABEL_156;
            }

            v50 = *a3;
          }

          else
          {
            v50 = a3;
            if (!*(a3 + 23))
            {
              goto LABEL_139;
            }
          }

          v90 = xpc_string_create(v50);
          if (!v90)
          {
            v90 = xpc_null_create();
          }

          __p = &v155;
          v86 = "kReason";
          xpc::dict::object_proxy::operator=(&__p, &v90, &v91);
          xpc_release(v91);
          v91 = 0;
          xpc_release(v90);
          v90 = 0;
          goto LABEL_139;
        }

        v58 = (*(*a1 + 56))(a1);
        (*(*a1 + 16))(a1, v58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "Failed MLS group creation trx ", 30);
        *(v58 + 17) = 0;
        v59 = (a1 + 976);
        (*(*v58 + 32))(v58, a1 + 976);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), " conv ", 6);
        *(v58 + 17) = 0;
        v60 = (a1 + 856);
        (*(*v58 + 32))(v58, a1 + 856);
        (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v58 + 17) = 0;
        v92[0] = 0;
        v61 = xpc_dictionary_create(0, 0, 0);
        v62 = v61;
        if (v61)
        {
          v92[0] = v61;
        }

        else
        {
          v62 = xpc_null_create();
          v92[0] = v62;
          if (!v62)
          {
            v75 = xpc_null_create();
            v62 = 0;
            goto LABEL_232;
          }
        }

        if (MEMORY[0x1E6924740](v62) == v34)
        {
          xpc_retain(v62);
          goto LABEL_233;
        }

        v75 = xpc_null_create();
LABEL_232:
        v92[0] = v75;
LABEL_233:
        xpc_release(v62);
        v118 = xpc_string_create("kEventMlsInviteResult");
        if (!v118)
        {
          v118 = xpc_null_create();
        }

        __p = v92;
        v86 = "kEventName";
        xpc::dict::object_proxy::operator=(&__p, &v118, &v119);
        xpc_release(v119);
        v119 = 0;
        xpc_release(v118);
        v118 = 0;
        v116 = xpc_BOOL_create(0);
        if (!v116)
        {
          v116 = xpc_null_create();
        }

        __p = v92;
        v86 = "kIsSuccess";
        xpc::dict::object_proxy::operator=(&__p, &v116, &v117);
        xpc_release(v117);
        v117 = 0;
        xpc_release(v116);
        v116 = 0;
        v114 = xpc_BOOL_create(0);
        if (!v114)
        {
          v114 = xpc_null_create();
        }

        __p = v92;
        v86 = "kIsGroupChat";
        xpc::dict::object_proxy::operator=(&__p, &v114, &v115);
        xpc_release(v115);
        v115 = 0;
        xpc_release(v114);
        v114 = 0;
        if (*(a1 + 999) < 0)
        {
          v59 = *v59;
        }

        v112 = xpc_string_create(v59);
        if (!v112)
        {
          v112 = xpc_null_create();
        }

        __p = v92;
        v86 = "kTransactionId";
        xpc::dict::object_proxy::operator=(&__p, &v112, &v113);
        xpc_release(v113);
        v113 = 0;
        xpc_release(v112);
        v112 = 0;
        if (*(a1 + 879) < 0)
        {
          v60 = *v60;
        }

        v110 = xpc_string_create(v60);
        if (!v110)
        {
          v110 = xpc_null_create();
        }

        __p = v92;
        v86 = "kConversationId";
        xpc::dict::object_proxy::operator=(&__p, &v110, &v111);
        xpc_release(v111);
        v111 = 0;
        xpc_release(v110);
        v110 = 0;
        v78 = (a1 + 880);
        if (*(a1 + 903) < 0)
        {
          v78 = *v78;
        }

        v108 = xpc_string_create(v78);
        if (!v108)
        {
          v108 = xpc_null_create();
        }

        __p = v92;
        v86 = "kContributionId";
        xpc::dict::object_proxy::operator=(&__p, &v108, &v109);
        xpc_release(v109);
        v109 = 0;
        xpc_release(v108);
        v108 = 0;
        if (*(a3 + 23) < 0)
        {
          if (!a3[1])
          {
LABEL_259:
            if (a2)
            {
              v104 = xpc_int64_create(a2);
              if (!v104)
              {
                v104 = xpc_null_create();
              }

              __p = v92;
              v86 = "kErrorCode";
              xpc::dict::object_proxy::operator=(&__p, &v104, &v105);
              xpc_release(v105);
              v105 = 0;
              xpc_release(v104);
              v104 = 0;
            }

            if (MEMORY[0x1E6924740](*a6) == MEMORY[0x1E69E9E50] && xpc_array_get_count(*a6))
            {
              xpc::array::array(&v102, *a6);
              __p = v92;
              v86 = "kSipWarningsList";
              xpc::dict::object_proxy::operator=(&__p, &v102, &v103);
              xpc_release(v103);
              v103 = 0;
              xpc_release(v102);
              v102 = 0;
            }

            v79 = v150;
            v101 = v92[0];
            if (v92[0])
            {
              xpc_retain(v92[0]);
            }

            else
            {
              v101 = xpc_null_create();
            }

            LazuliDelegate::handleSessionEvent(v79, &v101);
            xpc_release(v101);
            v101 = 0;
            xpc_release(v92[0]);
            goto LABEL_156;
          }

          a3 = *a3;
        }

        else if (!*(a3 + 23))
        {
          goto LABEL_259;
        }

        v106 = xpc_string_create(a3);
        if (!v106)
        {
          v106 = xpc_null_create();
        }

        __p = v92;
        v86 = "kReason";
        xpc::dict::object_proxy::operator=(&__p, &v106, &v107);
        xpc_release(v107);
        v107 = 0;
        xpc_release(v106);
        v106 = 0;
        goto LABEL_259;
      }
    }

    else if (!*(a1 + 975))
    {
      goto LABEL_74;
    }

    if (*(a1 + 1073))
    {
      goto LABEL_74;
    }

    v51 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), "Failed RCS group creation trx ", 30);
    *(v51 + 17) = 0;
    v52 = (a1 + 976);
    (*(*v51 + 32))(v51, a1 + 976);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v51 + 8), " conv ", 6);
    *(v51 + 17) = 0;
    v53 = (a1 + 856);
    (*(*v51 + 32))(v51, a1 + 856);
    (*(*v51 + 64))(v51, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v51 + 17) = 0;
    v92[0] = 0;
    v54 = xpc_dictionary_create(0, 0, 0);
    v55 = v54;
    if (v54)
    {
      v92[0] = v54;
    }

    else
    {
      v55 = xpc_null_create();
      v92[0] = v55;
      if (!v55)
      {
        v74 = xpc_null_create();
        v55 = 0;
        goto LABEL_198;
      }
    }

    if (MEMORY[0x1E6924740](v55) == v34)
    {
      xpc_retain(v55);
      goto LABEL_199;
    }

    v74 = xpc_null_create();
LABEL_198:
    v92[0] = v74;
LABEL_199:
    xpc_release(v55);
    v133 = xpc_BOOL_create(0);
    if (!v133)
    {
      v133 = xpc_null_create();
    }

    __p = v92;
    v86 = "kIsSuccess";
    xpc::dict::object_proxy::operator=(&__p, &v133, &v134);
    xpc_release(v134);
    v134 = 0;
    xpc_release(v133);
    v133 = 0;
    if (*(a1 + 999) < 0)
    {
      v52 = *v52;
    }

    v131 = xpc_string_create(v52);
    if (!v131)
    {
      v131 = xpc_null_create();
    }

    __p = v92;
    v86 = "kTransactionId";
    xpc::dict::object_proxy::operator=(&__p, &v131, &v132);
    xpc_release(v132);
    v132 = 0;
    xpc_release(v131);
    v131 = 0;
    if (*(a1 + 879) < 0)
    {
      v53 = *v53;
    }

    v129 = xpc_string_create(v53);
    if (!v129)
    {
      v129 = xpc_null_create();
    }

    __p = v92;
    v86 = "kConversationId";
    xpc::dict::object_proxy::operator=(&__p, &v129, &v130);
    xpc_release(v130);
    v130 = 0;
    xpc_release(v129);
    v129 = 0;
    v76 = (a1 + 880);
    if (*(a1 + 903) < 0)
    {
      v76 = *v76;
    }

    v127 = xpc_string_create(v76);
    if (!v127)
    {
      v127 = xpc_null_create();
    }

    __p = v92;
    v86 = "kContributionId";
    xpc::dict::object_proxy::operator=(&__p, &v127, &v128);
    xpc_release(v128);
    v128 = 0;
    xpc_release(v127);
    v127 = 0;
    if (*(a3 + 23) < 0)
    {
      if (!a3[1])
      {
LABEL_221:
        if (a2)
        {
          v123 = xpc_int64_create(a2);
          if (!v123)
          {
            v123 = xpc_null_create();
          }

          __p = v92;
          v86 = "kErrorCode";
          xpc::dict::object_proxy::operator=(&__p, &v123, &v124);
          xpc_release(v124);
          v124 = 0;
          xpc_release(v123);
          v123 = 0;
        }

        if (MEMORY[0x1E6924740](*a6) == MEMORY[0x1E69E9E50] && xpc_array_get_count(*a6))
        {
          v77 = *a6;
          v121 = v77;
          if (v77)
          {
            xpc_retain(v77);
          }

          else
          {
            v121 = xpc_null_create();
          }

          __p = v92;
          v86 = "kSipWarningsList";
          xpc::dict::object_proxy::operator=(&__p, &v121, &v122);
          xpc_release(v122);
          v122 = 0;
          xpc_release(v121);
          v121 = 0;
        }

        v80 = v150;
        v120 = v92[0];
        if (v92[0])
        {
          xpc_retain(v92[0]);
        }

        else
        {
          v120 = xpc_null_create();
        }

        LazuliDelegate::handleGroupChatCreated(v80, &v120);
        xpc_release(v120);
        v120 = 0;
        xpc_release(v92[0]);
        goto LABEL_156;
      }

      a3 = *a3;
    }

    else if (!*(a3 + 23))
    {
      goto LABEL_221;
    }

    v125 = xpc_string_create(a3);
    if (!v125)
    {
      v125 = xpc_null_create();
    }

    __p = v92;
    v86 = "kReason";
    xpc::dict::object_proxy::operator=(&__p, &v125, &v126);
    xpc_release(v126);
    v126 = 0;
    xpc_release(v125);
    v125 = 0;
    goto LABEL_221;
  }

LABEL_156:
  if (v151)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v151);
  }

  v65 = *(a1 + 376);
  if (v65)
  {
    v66 = std::__shared_weak_count::lock(v65);
    if (v66)
    {
      v67 = v66;
      v68 = *(a1 + 368);
      if (v68)
      {
        v69 = *(v68 + 248);
        v70 = *(v68 + 256);
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v69)
        {
          v72 = *(v69 + 296);
          v71 = *(v69 + 304);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
          std::__optional_copy_base<ImsResult,false>::__optional_copy_base[abi:ne200100](v82, v153);
          SipLazuliManager::terminateMessageSession(v72, a1 + 856, &__p, v82, 0);
          if (v82[88] == 1)
          {
            ImsResult::~ImsResult(v82);
          }

          if (v87 < 0)
          {
            operator delete(__p);
          }

          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }
        }

        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }
  }

  v151 = 0;
  v150 = 0;
  IPTelephonyManager::getCallManager(&v150);
  v73 = v150;
  std::string::basic_string[abi:ne200100]<0>(&__p, "InternalError");
  v81 = v155;
  if (v155)
  {
    xpc_retain(v155);
  }

  else
  {
    v81 = xpc_null_create();
  }

  IMSCallManager::terminateLazuli(v73, a1 + 856, &__p, &v81, 0);
  xpc_release(v81);
  v81 = 0;
  if (v87 < 0)
  {
    operator delete(__p);
  }

  if (v151)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v151);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (BYTE8(v154) == 1)
  {
    ImsResult::~ImsResult(v153);
  }

  xpc_release(v155);
}

void sub_1E4E897F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, xpc_object_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a40);
  if (STACK[0x2D8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2D8]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (*(v51 - 168) == 1)
  {
    ImsResult::~ImsResult((v51 - 256));
  }

  xpc_release(*(v51 - 160));
  _Unwind_Resume(a1);
}

void ___ZN13LazuliSession19handleInviteFailureEjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERK6SipUrijN3xpc5arrayE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        LazuliSession::startSession(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t __copy_helper_block_e8_40c39_ZTSKNSt3__18weak_ptrI13LazuliSessionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c39_ZTSKNSt3__18weak_ptrI13LazuliSessionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SipResultDomain::makeResult(int a1@<W0>, uint64_t a2@<X1>, ImsResult *a3@<X8>)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5[0] = &unk_1F5EBDEF8;
  v5[1] = &SipResultDomain::_domain;
  v6 = a1;
  v4 = ImsResult::operator<<<std::string>(v5, a2);
  ImsResult::ImsResult(a3, v4);
  ImsResult::~ImsResult(v5);
}

void sub_1E4E89CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void LazuliSession::endSession(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 176);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*(a1 + 136) + 16))(__p, a1 + 136);
    v5 = v10 >= 0 ? __p : __p[0];
    v6 = *(a1 + 1075) ? "MT-Only" : "Normal";
    v7 = *(a2 + 23) >= 0 ? a2 : *a2;
    *buf = 141558787;
    v12 = 1752392040;
    v13 = 2081;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    v17 = 2080;
    v18 = v7;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sEnd %s Session %s", buf, 0x2Au);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a1 + 384);
  if (v8)
  {
    SipSession::hangUp(v8, a2);
  }
}

void LazuliSession::leaveGroup(std::string *this, const std::string *a2)
{
  if (this[16].__r_.__value_.__r.__words[0])
  {
    std::string::operator=(this + 45, a2 + 1);
    v4 = (*(this->__r_.__value_.__r.__words[0] + 64))(this);
    (*(this->__r_.__value_.__r.__words[0] + 16))(this, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "LeaveGroup trx ", 15);
    *(v4 + 17) = 0;
    (*(*v4 + 32))(v4, this + 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " conv ", 6);
    *(v4 + 17) = 0;
    (*(*v4 + 32))(v4, &this[35].__r_.__value_.__r.__words[2]);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    std::string::basic_string[abi:ne200100]<0>(v10, "UserTriggered");
    std::string::basic_string[abi:ne200100]<0>(__p, "Call completed");
    BambiCallTerminationReason::BambiCallTerminationReason(&v12, v10, 200, __p, &SipReason::kProtocolSip);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    data = this[16].__r_.__value_.__l.__data_;
    if (a2[14].__r_.__value_.__r.__words[2] != a2[14].__r_.__value_.__l.__size_)
    {
      operator new();
    }

    SipSession::hangUp(data, v7);
    ImsResult::~ImsResult(v7);
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(*(&v16 + 1));
    }

    if (SBYTE7(v15) < 0)
    {
      operator delete(v14);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(*(&v12 + 1));
    }
  }

  else
  {
    v6 = (*(this->__r_.__value_.__r.__words[0] + 56))(this);
    (*(this->__r_.__value_.__r.__words[0] + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSession not active for LeaveGroup trx ", 41);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a2 + 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " conv ", 6);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, &this[35].__r_.__value_.__r.__words[2]);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
  }
}

void sub_1E4E8A22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  std::__shared_weak_count::~__shared_weak_count(v35);
  operator delete(v37);
  BambiCallTerminationReason::~BambiCallTerminationReason(&a35);
  _Unwind_Resume(a1);
}

void LazuliSession::forceDetachSipSession(LazuliSession *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Forcefully detaching sip session. Reason: Terminate all lazuli sessions", 71);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (*(this + 48))
  {

    LazuliSession::detachSipSession(this);
  }
}

void SipDialog::setGroupParams(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 2648);
  *(a1 + 2648) = v3;
  xpc_release(v4);
}

void SipDialog::setMlsParams(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 2680);
  *(a1 + 2680) = v3;
  xpc_release(v4);
}

void LazuliSession::handleSdpOfferInFork(void *a1@<X0>, uint64_t *a2@<X1>, void **a3@<X3>, uint64_t a4@<X8>)
{
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30[0] = &unk_1F5EBDEF8;
  v30[1] = &_bambiDomain;
  v30[2] = 0;
  v8 = a1[23];
  if (v8)
  {
    hasStream = SDPSession::hasStream(v8);
    if (hasStream & 1) != 0 || (a1[134])
    {
      if (hasStream)
      {
        v10 = (*(*a1 + 56))(a1);
        (*(*a1 + 16))(a1, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "TODO: Handle re-invite", 22);
        *(v10 + 17) = 0;
        v11 = (v10 + 17);
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v12 = 0x40000000;
        v13 = &_bambiDomain;
LABEL_8:
        *v11 = 0;
        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 72) = 0u;
        *a4 = &unk_1F5EBDEF8;
        *(a4 + 8) = v13;
        *(a4 + 16) = v12;
        goto LABEL_48;
      }

LABEL_7:
      v14 = (*(*a1 + 48))(a1);
      (*(*a1 + 16))(a1, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Received a new offer/answer, but we don't have any media streams to handle it!", 78);
      *(v14 + 17) = 0;
      v11 = (v14 + 17);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v12 = 491;
      v13 = &SipResultDomain::_domain;
      goto LABEL_8;
    }
  }

  else if (a1[134])
  {
    goto LABEL_7;
  }

  v15 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "handleSdpOffer: initializing MT lazuli session", 46);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  v16 = a2[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *a3;
  xdict = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v18 = a1[47];
  if (!v18)
  {
    v19 = 0;
    goto LABEL_37;
  }

  v19 = std::__shared_weak_count::lock(v18);
  if (!v19 || (v20 = a1[46]) == 0)
  {
LABEL_37:
    memset(&v42[1], 0, 64);
    v42[0].__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v42[0].__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v42[0].__r_.__value_.__r.__words[2]) = 1073741826;
    v26 = ImsResult::operator<<<char [12]>(v42, "no sipstack");
    ImsResult::ImsResult(&v29, v26);
    ImsResult::~ImsResult(v42);
    if (!v19)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v21 = *(v20 + 248);
  v22 = *(v20 + 256);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    memset(v50, 0, 24);
    v23 = SipStack::prefs(v20);
    ImsPrefs::OriginUsername(v23, v50);
    size = HIBYTE(v50[0].__r_.__value_.__r.__words[2]);
    if ((v50[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v50[0].__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v48 = 0u;
      memset(v49, 0, 216);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      memset(v42, 0, sizeof(v42));
      v25 = SipUserAgent::publicUri(v21);
      SipUri::SipUri(v42, v25);
      std::string::basic_string[abi:ne200100]<0>(__str, "");
      std::string::operator=(&v49[1], __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      SipUri::asString(v42, 2, __str);
      if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50[0].__r_.__value_.__l.__data_);
      }

      v50[0] = *__str;
      SipUri::~SipUri(v42);
    }

    std::string::basic_string[abi:ne200100]<0>(__str, " ");
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    ims::substituteVar(v50, __str, &__p, v42);
    if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50[0].__r_.__value_.__l.__data_);
    }

    v50[0] = v42[0];
    *(&v42[0].__r_.__value_.__s + 23) = 0;
    v42[0].__r_.__value_.__s.__data_[0] = 0;
    if (v41 < 0)
    {
      operator delete(__p);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    v39 = 0;
    v38 = 0u;
    memset(__str, 0, sizeof(__str));
    SipStack::mediaAddress(__str, v20);
    v36[0] = 0;
    v36[1] = 0;
    SipHost::ipAddress(v36, __str);
    if (MEMORY[0x1E6924740](xdict) == MEMORY[0x1E69E9E80])
    {
      v42[0].__r_.__value_.__r.__words[0] = &xdict;
      v42[0].__r_.__value_.__l.__size_ = "kIsGroupChat";
      xpc::dict::object_proxy::operator xpc::object(v42, &__p);
      xpc::dyn_cast_or_default(&__p, 0);
      xpc_release(__p);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v35, a1 + 18);
    operator new();
  }

  memset(&v42[1], 0, 64);
  v42[0].__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  v42[0].__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(v42[0].__r_.__value_.__r.__words[2]) = 1073741826;
  v27 = ImsResult::operator<<<char [14]>(v42, "no user agent");
  ImsResult::ImsResult(&v29, v27);
  ImsResult::~ImsResult(v42);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

LABEL_44:
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_45:
  ImsResult::operator=(v30, &v29);
  ImsResult::~ImsResult(&v29);
  xpc_release(xdict);
  xdict = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ImsResult::ImsResult(a4, v30);
LABEL_48:
  ImsResult::~ImsResult(v30);
}

void sub_1E4E8B1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, xpc_object_t object, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  SipHost::~SipHost(&a41);
  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  xpc_release(object);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  ImsResult::~ImsResult(&a24);
  _Unwind_Resume(a1);
}

void LazuliSession::handleSdpAnswerInFork(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void **a4@<X4>, uint64_t a5@<X8>)
{
  v10 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handle sdp answer", 17);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (((*(**a3 + 24))() & 1) == 0)
  {
    v17 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v17);
    v18 = *(v17 + 8);
    v19 = "received invalid SDP answer:";
    v20 = 28;
LABEL_17:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    v21 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v21);
    (*(**a3 + 16))(*a3, v21);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v21[17] = 0;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &SipResultDomain::_domain;
    *(a5 + 16) = 488;
    return;
  }

  v11 = a1[23];
  v12 = a2[1];
  v43 = *a2;
  v44 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a3[1];
  v41 = *a3;
  v42 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = SDPSession::handleLazuliOfferAnswer(v11, &v43, &v41, *(*a2 + 176));
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (!v14)
  {
    v17 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v17);
    v18 = *(v17 + 8);
    v19 = "received rejection answer: ";
    v20 = 27;
    goto LABEL_17;
  }

  v15 = a3[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a4;
  xdict = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v22 = a1[48];
  v23 = *(v22 + 240);
  v24 = *(v22 + 248);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *(v23 + 2648);
  v49 = v25;
  if (v25)
  {
    xpc_retain(v25);
    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v49 = xpc_null_create();
  if (v24)
  {
LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

LABEL_24:
  v26 = MEMORY[0x1E6924740](v49);
  v27 = MEMORY[0x1E69E9E80];
  if (v26 == MEMORY[0x1E69E9E80] && MEMORY[0x1E6924740](xdict) == v27)
  {
    p_xdict = &v49;
    v47 = "kTransactionId";
    v45[0] = &xdict;
    v45[1] = "kTransactionId";
    xpc::dict::object_proxy::operator=(v45, &p_xdict, &object);
    xpc_release(object);
    object = 0;
  }

  if (MEMORY[0x1E6924740](xdict) == v27)
  {
    p_xdict = &xdict;
    v47 = "kIsGroupChat";
    xpc::dict::object_proxy::operator xpc::object(&p_xdict, v45);
    v28 = xpc::dyn_cast_or_default(v45, 0);
    xpc_release(v45[0]);
  }

  else
  {
    v28 = 0;
  }

  if (MEMORY[0x1E6924740](xdict) == v27)
  {
    v29 = xpc_dictionary_get_value(xdict, "kMlsBinaryBlob") || xpc_dictionary_get_value(xdict, "kMlsOpaqueToken") || xpc_dictionary_get_value(xdict, "kMlsRecvInfo") != 0;
  }

  else
  {
    v29 = 0;
  }

  v30 = a1[48];
  v32 = *(v30 + 240);
  v31 = *(v30 + 248);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v28)
  {
    v33 = xdict;
    if (xdict)
    {
      xpc_retain(xdict);
    }

    else
    {
      v33 = xpc_null_create();
    }

    SipDialog::setGroupParams(v32, v33);
    xpc_release(v33);
  }

  else
  {
    v34 = xpc_null_create();
    SipDialog::setGroupParams(v32, v34);
    xpc_release(v34);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v35 = a1[48];
  v37 = *(v35 + 240);
  v36 = *(v35 + 248);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v29)
  {
    v38 = xdict;
    if (xdict)
    {
      xpc_retain(xdict);
    }

    else
    {
      v38 = xpc_null_create();
    }

    SipDialog::setMlsParams(v37, v38);
    xpc_release(v38);
  }

  else
  {
    v39 = xpc_null_create();
    SipDialog::setMlsParams(v37, v39);
    xpc_release(v39);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *a5 = &unk_1F5EBDEF8;
  *(a5 + 8) = &_bambiDomain;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  xpc_release(v49);
  xpc_release(xdict);
  xdict = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E4E8BA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(*(v16 - 72));
  xpc_release(object);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void LazuliSession::processEvent(LazuliSession *this, BambiCallEvent *a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SessionEvent ", 13);
  *(v4 + 17) = 0;
  (*(*a2 + 24))(&v121, a2);
  (*(*v4 + 40))(v4, &v121);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v5 = *(this + 47);
  if (v5 && (v6 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v7 = v6;
    v8 = *(this + 46);
    memset(&v121, 0, sizeof(v121));
    if (v8)
    {
      if (*(v8 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v121, *(v8 + 4432), *(v8 + 4440));
      }

      else
      {
        v121 = *(v8 + 4432);
      }

      v9 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    memset(&v121, 0, sizeof(v121));
  }

  std::string::basic_string[abi:ne200100]<0>(&v121, "");
  v9 = 0;
  v8 = 0;
LABEL_12:
  v11 = xpc_array_create(0, 0);
  if (v11 || (v11 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6924740](v11) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v11);
      v12 = v11;
    }

    else
    {
      v12 = xpc_null_create();
    }
  }

  else
  {
    v12 = xpc_null_create();
    v11 = 0;
  }

  xpc_release(v11);
  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = *(v10 + 5);
    v15 = *(v10 + 6);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      memset(&v120, 0, sizeof(v120));
      SipResponse::warningHeaderItems(&v120, v14);
      size = v120.__r_.__value_.__l.__size_;
      for (i = v120.__r_.__value_.__r.__words[0]; i != size; i += 24)
      {
        memset(&v122, 0, sizeof(v122));
        if (*(i + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v122, *i, *(i + 8));
        }

        else
        {
          v18 = *i;
          v122.__r_.__value_.__r.__words[2] = *(i + 16);
          *&v122.__r_.__value_.__l.__data_ = v18;
        }

        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v122;
        }

        else
        {
          v19 = v122.__r_.__value_.__r.__words[0];
        }

        v20 = xpc_string_create(v19);
        if (!v20)
        {
          v20 = xpc_null_create();
        }

        xpc_array_append_value(v12, v20);
        xpc_release(v20);
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }
      }

      v122.__r_.__value_.__r.__words[0] = &v120;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v122);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if ((*(this + 1103) & 0x8000000000000000) != 0)
  {
    if (!*(this + 136))
    {
      goto LABEL_84;
    }
  }

  else if (!*(this + 1103))
  {
    goto LABEL_84;
  }

  v21 = *(a2 + 2);
  if (v21 == 14)
  {
    v27 = (*(*this + 64))(this);
    (*(*this + 16))(this, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Leave Group BYE sent", 20);
    *(v27 + 17) = 0;
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_106:
    *(v27 + 17) = 0;
    goto LABEL_254;
  }

  if (v21 == 15)
  {
    *&v120.__r_.__value_.__l.__data_ = 0uLL;
    IMSClientManager::lazuliDelegateForStack(&v121, &v120);
    if (!v120.__r_.__value_.__r.__words[0])
    {
LABEL_77:
      if (v120.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v120.__r_.__value_.__l.__size_);
      }

      if (*(this + 1103) < 0)
      {
        **(this + 135) = 0;
        *(this + 136) = 0;
      }

      else
      {
        *(this + 1080) = 0;
        *(this + 1103) = 0;
      }

      *&v120.__r_.__value_.__l.__data_ = 0uLL;
      IPTelephonyManager::getCallManager(&v120);
      IMSCallManager::handleLeaveGroupChat(v120.__r_.__value_.__l.__data_, this + 880);
      if (v120.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v120.__r_.__value_.__l.__size_);
      }

      goto LABEL_84;
    }

    v22 = (*(*this + 64))(this);
    (*(*this + 16))(this, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Leave Group trx ", 16);
    v23 = this + 1080;
    *(v22 + 17) = 0;
    (*(*v22 + 32))(v22, this + 1080);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), " conv ", 6);
    *(v22 + 17) = 0;
    v24 = this + 856;
    (*(*v22 + 32))(v22, this + 856);
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    v106 = 0;
    v25 = xpc_dictionary_create(0, 0, 0);
    v26 = v25;
    if (v25)
    {
      v106 = v25;
    }

    else
    {
      v26 = xpc_null_create();
      v106 = v26;
      if (!v26)
      {
        v28 = xpc_null_create();
        v26 = 0;
        goto LABEL_55;
      }
    }

    if (MEMORY[0x1E6924740](v26) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v26);
LABEL_56:
      xpc_release(v26);
      v118 = xpc_BOOL_create(1);
      if (!v118)
      {
        v118 = xpc_null_create();
      }

      v122.__r_.__value_.__r.__words[0] = &v106;
      v122.__r_.__value_.__l.__size_ = "kIsSuccess";
      xpc::dict::object_proxy::operator=(&v122, &v118, &v119);
      xpc_release(v119);
      v119 = 0;
      xpc_release(v118);
      v118 = 0;
      if (*(this + 1103) < 0)
      {
        v23 = *v23;
      }

      v116 = xpc_string_create(v23);
      if (!v116)
      {
        v116 = xpc_null_create();
      }

      v122.__r_.__value_.__r.__words[0] = &v106;
      v122.__r_.__value_.__l.__size_ = "kTransactionId";
      xpc::dict::object_proxy::operator=(&v122, &v116, &v117);
      xpc_release(v117);
      v117 = 0;
      xpc_release(v116);
      v116 = 0;
      if (*(this + 879) < 0)
      {
        v24 = *v24;
      }

      v114 = xpc_string_create(v24);
      if (!v114)
      {
        v114 = xpc_null_create();
      }

      v122.__r_.__value_.__r.__words[0] = &v106;
      v122.__r_.__value_.__l.__size_ = "kConversationId";
      xpc::dict::object_proxy::operator=(&v122, &v114, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v114);
      v114 = 0;
      v29 = this + 880;
      if (*(this + 903) < 0)
      {
        v29 = *v29;
      }

      v112 = xpc_string_create(v29);
      if (!v112)
      {
        v112 = xpc_null_create();
      }

      v122.__r_.__value_.__r.__words[0] = &v106;
      v122.__r_.__value_.__l.__size_ = "kContributionId";
      xpc::dict::object_proxy::operator=(&v122, &v112, &v113);
      xpc_release(v113);
      v113 = 0;
      xpc_release(v112);
      v112 = 0;
      v110 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v110 = xpc_null_create();
      }

      v122.__r_.__value_.__r.__words[0] = &v106;
      v122.__r_.__value_.__l.__size_ = "kSipWarningsList";
      xpc::dict::object_proxy::operator=(&v122, &v110, &v111);
      xpc_release(v111);
      v111 = 0;
      xpc_release(v110);
      v30 = v120.__r_.__value_.__r.__words[0];
      v109 = v106;
      v110 = 0;
      if (v106)
      {
        xpc_retain(v106);
      }

      else
      {
        v109 = xpc_null_create();
      }

      LazuliDelegate::handleLeaveGroupChat(v30, &v109);
      xpc_release(v109);
      v109 = 0;
      xpc_release(v106);
      goto LABEL_77;
    }

    v28 = xpc_null_create();
LABEL_55:
    v106 = v28;
    goto LABEL_56;
  }

LABEL_84:
  v31 = *(a2 + 2);
  if ((v31 - 14) < 2)
  {
    v34 = v33;
    if (v33)
    {
      v35 = v9;
    }

    else
    {
      v35 = 0;
    }

    if (v35 == 1 && v33[147] == 1)
    {
      v36 = *(v8 + 248);
      v37 = *(v8 + 256);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = *(v36 + 336);
      v39 = *(v36 + 344);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v38 + 176))(v38, 18, 0, 0);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      SipTransportLayer::removeConnections(*(v8 + 280), 0, 1, 1);
      IPTelephonyManager::getBambiClient(&v122);
      v40 = v122.__r_.__value_.__r.__words[0];
      if (*(v8 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v120, *(v8 + 4432), *(v8 + 4440));
      }

      else
      {
        v120 = *(v8 + 4432);
      }

      BambiClient::requestNetworkReset(v40, &v120);
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }

      if (v122.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v122.__r_.__value_.__l.__size_);
      }
    }

    if ((*(this + 1073) & 1) == 0 && v34)
    {
      LODWORD(v120.__r_.__value_.__l.__data_) = 0;
      v46 = *(v34 + 5);
      v47 = *(v34 + 6);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v46)
      {
        SipMessage::headerValueAsUint32(v46, "Retry-After", &v120);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v48 = *(v34 + 44);
      v49 = qword_1EE2BD560;
      if (qword_1EE2BD560)
      {
        v50 = &qword_1EE2BD560;
        do
        {
          v51 = *(v49 + 32);
          v52 = v51 >= v48;
          v53 = v51 < v48;
          if (v52)
          {
            v50 = v49;
          }

          v49 = *(v49 + 8 * v53);
        }

        while (v49);
        v54 = &ims::kEmptyString;
        if (v50 != &qword_1EE2BD560)
        {
          v55 = *(v50 + 8);
          v56 = v50 + 5;
          if (v55 <= v48)
          {
            v54 = v56;
          }
        }
      }

      else
      {
        v54 = &ims::kEmptyString;
      }

      data_low = LODWORD(v120.__r_.__value_.__l.__data_);
      v108 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v108 = xpc_null_create();
      }

      LazuliSession::handleInviteFailure(this, v48, v54, (v34 + 184), data_low, &v108);
      xpc_release(v108);
      v108 = 0;
      goto LABEL_254;
    }

    v106 = 0;
    v107 = 0;
    IPTelephonyManager::getCallManager(&v106);
    v57 = xpc_null_create();
    v105 = v57;
    if (!v34)
    {
      goto LABEL_249;
    }

    if (v34[87] < 0)
    {
      std::string::__init_copy_ctor_external(&v120, *(v34 + 8), *(v34 + 9));
    }

    else
    {
      v120 = *(v34 + 64);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      v59 = v120.__r_.__value_.__r.__words[0];
      if (v120.__r_.__value_.__l.__size_ != 4)
      {
LABEL_247:
        operator delete(v59);
        goto LABEL_248;
      }
    }

    else
    {
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) != 4)
      {
        goto LABEL_248;
      }

      v59 = &v120;
    }

    if (LODWORD(v59->__r_.__value_.__l.__data_) == 1701736263 && *(v34 + 28) == 410)
    {
      if (v34[111] < 0)
      {
        std::string::__init_copy_ctor_external(&v122, *(v34 + 11), *(v34 + 12));
      }

      else
      {
        v122 = *(v34 + 88);
      }

      if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        v60 = v122.__r_.__value_.__l.__size_ == 3 && *v122.__r_.__value_.__l.__data_ == 18771 && *(v122.__r_.__value_.__r.__words[0] + 2) == 80;
        operator delete(v122.__r_.__value_.__l.__data_);
      }

      else
      {
        v60 = SHIBYTE(v122.__r_.__value_.__r.__words[2]) == 3 && LOWORD(v122.__r_.__value_.__l.__data_) == 18771 && v122.__r_.__value_.__s.__data_[2] == 80;
      }

      if ((*(&v120.__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_226:
        operator delete(v120.__r_.__value_.__l.__data_);
        if (!v60)
        {
          goto LABEL_248;
        }

        goto LABEL_227;
      }
    }

    else
    {
      v60 = 0;
      if ((*(&v120.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_226;
      }
    }

    if (!v60)
    {
      goto LABEL_248;
    }

LABEL_227:
    v79 = xpc_dictionary_create(0, 0, 0);
    if (v79 || (v79 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x1E6924740](v79) == MEMORY[0x1E69E9E80])
      {
        xpc_retain(v79);
        v80 = v79;
      }

      else
      {
        v80 = xpc_null_create();
      }
    }

    else
    {
      v80 = xpc_null_create();
      v79 = 0;
    }

    xpc_release(v79);
    v81 = xpc_null_create();
    v82 = v105;
    v105 = v80;
    xpc_release(v82);
    xpc_release(v81);
    v103 = xpc_BOOL_create(1);
    if (!v103)
    {
      v103 = xpc_null_create();
    }

    v120.__r_.__value_.__r.__words[0] = &v105;
    v120.__r_.__value_.__l.__size_ = "kUserEvictedFromGroup";
    xpc::dict::object_proxy::operator=(&v120, &v103, &v104);
    xpc_release(v104);
    v104 = 0;
    xpc_release(v103);
    v103 = 0;
    memset(&v120, 0, sizeof(v120));
    if (v34[175] < 0)
    {
      std::string::__init_copy_ctor_external(&v120, *(v34 + 19), *(v34 + 20));
    }

    else
    {
      v120 = *(v34 + 152);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v120.__r_.__value_.__l.__size_)
      {
LABEL_246:
        v59 = v120.__r_.__value_.__r.__words[0];
        goto LABEL_247;
      }

      v83 = v120.__r_.__value_.__r.__words[0];
LABEL_243:
      v101 = xpc_string_create(v83);
      if (!v101)
      {
        v101 = xpc_null_create();
      }

      v122.__r_.__value_.__r.__words[0] = &v105;
      v122.__r_.__value_.__l.__size_ = "kReferredBy";
      xpc::dict::object_proxy::operator=(&v122, &v101, &v102);
      xpc_release(v102);
      v102 = 0;
      xpc_release(v101);
      v101 = 0;
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_246;
    }

    if (*(&v120.__r_.__value_.__s + 23))
    {
      v83 = &v120;
      goto LABEL_243;
    }

LABEL_248:
    v57 = v105;
LABEL_249:
    v84 = v106;
    v85 = *(a2 + 2);
    v86 = eventNames;
    v100 = v57;
    if (v57)
    {
      xpc_retain(v57);
    }

    else
    {
      v100 = xpc_null_create();
    }

    IMSCallManager::terminateLazuli(v84, this + 856, v86 + 24 * v85, &v100, *(this + 1075));
    xpc_release(v100);
    v100 = 0;
    xpc_release(v105);
    v75 = v107;
    if (v107)
    {
      goto LABEL_253;
    }

    goto LABEL_254;
  }

  if (v31 == 9)
  {
    v41 = *(*this + 64);
    if (*(this + 1073) == 1)
    {
      v27 = v41(this);
      (*(*this + 16))(this, v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "duplicate confirmation with ", 28);
      *(v27 + 17) = 0;
      (*(*(this + 50) + 40))(this + 400, v27);
      (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      goto LABEL_106;
    }

    v45 = v41(this);
    (*(*this + 16))(this, v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v45 + 8), "confirmed session with ", 23);
    *(v45 + 17) = 0;
    (*(*(this + 50) + 40))(this + 400, v45);
    (*(*v45 + 64))(v45, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v45 + 17) = 0;
    *(this + 1073) = 1;
    goto LABEL_254;
  }

  if (v31 != 30)
  {
    goto LABEL_254;
  }

  v32 = *(*this + 64);
  if (*(this + 1074) == 1)
  {
    v27 = v32(this);
    (*(*this + 16))(this, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "duplicate acknowledgement with ", 31);
    *(v27 + 17) = 0;
    (*(*(this + 50) + 40))(this + 400, v27);
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    goto LABEL_106;
  }

  v42 = v32(this);
  (*(*this + 16))(this, v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "acknowledged session with ", 26);
  *(v42 + 17) = 0;
  (*(*(this + 50) + 40))(this + 400, v42);
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v42 + 17) = 0;
  *(this + 1074) = 1;
  *&v120.__r_.__value_.__l.__data_ = 0uLL;
  IMSClientManager::lazuliDelegateForStack(&v121, &v120);
  if (!v120.__r_.__value_.__r.__words[0])
  {
    goto LABEL_174;
  }

  v106 = 0;
  v43 = xpc_dictionary_create(0, 0, 0);
  v44 = v43;
  if (v43)
  {
    v106 = v43;
  }

  else
  {
    v44 = xpc_null_create();
    v106 = v44;
    if (!v44)
    {
      v61 = xpc_null_create();
      v44 = 0;
      goto LABEL_159;
    }
  }

  if (MEMORY[0x1E6924740](v44) != MEMORY[0x1E69E9E80])
  {
    v61 = xpc_null_create();
LABEL_159:
    v106 = v61;
    goto LABEL_160;
  }

  xpc_retain(v44);
LABEL_160:
  xpc_release(v44);
  v62 = this + 856;
  if (*(this + 879) < 0)
  {
    v62 = *v62;
  }

  v98 = xpc_string_create(v62);
  if (!v98)
  {
    v98 = xpc_null_create();
  }

  v122.__r_.__value_.__r.__words[0] = &v106;
  v122.__r_.__value_.__l.__size_ = "kConversationId";
  xpc::dict::object_proxy::operator=(&v122, &v98, &v99);
  xpc_release(v99);
  v99 = 0;
  xpc_release(v98);
  v98 = 0;
  v63 = this + 880;
  if (*(this + 903) < 0)
  {
    v63 = *v63;
  }

  v96 = xpc_string_create(v63);
  if (!v96)
  {
    v96 = xpc_null_create();
  }

  v122.__r_.__value_.__r.__words[0] = &v106;
  v122.__r_.__value_.__l.__size_ = "kContributionId";
  xpc::dict::object_proxy::operator=(&v122, &v96, &v97);
  xpc_release(v97);
  v97 = 0;
  xpc_release(v96);
  v96 = 0;
  v94 = xpc_string_create("kEventSessionAcknowledged");
  if (!v94)
  {
    v94 = xpc_null_create();
  }

  v122.__r_.__value_.__r.__words[0] = &v106;
  v122.__r_.__value_.__l.__size_ = "kEventName";
  xpc::dict::object_proxy::operator=(&v122, &v94, &v95);
  xpc_release(v95);
  v95 = 0;
  xpc_release(v94);
  v64 = v120.__r_.__value_.__r.__words[0];
  v93 = v106;
  v94 = 0;
  if (v106)
  {
    xpc_retain(v106);
  }

  else
  {
    v93 = xpc_null_create();
  }

  LazuliDelegate::handleSessionEvent(v64, &v93);
  xpc_release(v93);
  v93 = 0;
  xpc_release(v106);
LABEL_174:
  if (v120.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v120.__r_.__value_.__l.__size_);
  }

  v65 = *(this + 47);
  if (v65)
  {
    v66 = std::__shared_weak_count::lock(v65);
    if (v66)
    {
      v67 = *(this + 46);
      if (v67)
      {
        IPTelephonyManager::getBambiClient(&v122);
        v68 = v122.__r_.__value_.__r.__words[0];
        v91 = v67;
        v92 = v66;
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        v69 = *(this + 24);
        v89 = *(this + 23);
        v90 = v69;
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v70 = *(this + 48);
        v72 = *(v70 + 240);
        v71 = *(v70 + 248);
        v87 = v72;
        v88 = v71;
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v73 = *(this + 23);
        if (*(v73 + 1983) < 0)
        {
          std::string::__init_copy_ctor_external(&v120, *(v73 + 1960), *(v73 + 1968));
        }

        else
        {
          v120 = *(v73 + 1960);
        }

        BambiClient::createMessageSession(v68, &v91, this + 856, &v89, &v87, &v120);
        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        if (v90)
        {
          std::__shared_weak_count::__release_weak(v90);
        }

        if (v92)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        }

        if (v122.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v122.__r_.__value_.__l.__size_);
        }

LABEL_200:
        v75 = v66;
LABEL_253:
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        goto LABEL_254;
      }
    }
  }

  else
  {
    v66 = 0;
  }

  v74 = *(this + 22);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 17) + 16))(&v120, this + 136);
    v76 = (v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v120 : v120.__r_.__value_.__r.__words[0];
    LODWORD(v122.__r_.__value_.__l.__data_) = 141558275;
    *(v122.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(v122.__r_.__value_.__r.__words[1]) = 2081;
    *(&v122.__r_.__value_.__r.__words[1] + 6) = v76;
    _os_log_error_impl(&dword_1E4C3F000, v74, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack to create message session", &v122, 0x16u);
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }
  }

  if (v66)
  {
    goto LABEL_200;
  }

LABEL_254:
  xpc_release(v12);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E8D05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t object, xpc_object_t a29, std::__shared_weak_count *a30, xpc_object_t a31, xpc_object_t a32)
{
  if (*(v34 - 169) < 0)
  {
    operator delete(*(v34 - 192));
  }

  xpc_release(object);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  xpc_release(v32);
  if (*(v34 - 137) < 0)
  {
    operator delete(*(v34 - 160));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

uint64_t LazuliSession::logSession(LazuliSession *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "[LazuliSession] uri=", 20);
  *(a2 + 17) = 0;
  (*(*(this + 50) + 40))(this + 400, a2);
  v4 = *(this + 879);
  if (v4 < 0)
  {
    v4 = *(this + 108);
  }

  if (v4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " convid=", 8);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 856);
  }

  v5 = *(this + 999);
  if (v5 < 0)
  {
    v5 = *(this + 123);
  }

  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " trx=", 5);
    *(a2 + 17) = 0;
    (*(*a2 + 32))(a2, this + 976);
  }

  v6 = *(this + 47);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 46);
      if (v9)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " stack=", 7);
        *(a2 + 17) = 0;
        if (*(v9 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v9 + 4432), *(v9 + 4440));
        }

        else
        {
          __p = *(v9 + 4432);
        }

        (*(*a2 + 32))(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  return result;
}

xpc::array *xpc::array::array(xpc::array *this, xpc_object_t object)
{
  *this = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *this = xpc_null_create();
  }

  return this;
}

uint64_t ims::SharedLoggable<LazuliSession>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<LazuliSession>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t SoftbankRegistrationPolicy::SoftbankRegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  DefaultRegistrationPolicy::DefaultRegistrationPolicy(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5ED6150;
  *(a1 + 136) = &unk_1F5ED63A8;
  *(a1 + 144) = &unk_1F5ED63D8;
  *(a1 + 152) = &unk_1F5ED63F0;
  *(a1 + 2400) = 0;
  *(a1 + 2404) = 0;
  return a1;
}

void sub_1E4E8D808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void SoftbankRegistrationPolicy::emergencyRegistrationTimeout(SoftbankRegistrationPolicy *this)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = &unk_1F5EBDEF8;
  v14 = &_bambiDomain;
  v15 = 1073741830;
  v2 = *(this + 57);
  if (v2 && v2 != *(this + 58))
  {
    ImsResult::operator=(v2 + 496 * *(this + 60) + 408, &v13);
  }

  ImsResult::~ImsResult(&v13);
  ++*(this + 600);
  v3 = (*(*this + 64))(this);
  (*(*this + 16))(this, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "emergency registration timed out for current proxy ", 51);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(this + 600));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " of ", 4);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(this + 466));
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  SipRegistrationPolicy::clearAllThrottling(this);
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  SipRegistrationPolicy::printProxyErrors(this, v4, 2);
  if ((*(*this + 408))(this, 0, 200))
  {
    if ((*(*this + 320))(this))
    {
      (*(*this + 504))(this);
    }

    v5 = *(this + 50);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(this + 49);
        if (v8)
        {
          (*(*v8 + 40))(v8, 200);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  else
  {
    v9 = *(this + 50);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v7 = v10;
        v11 = *(this + 49);
        if (v11)
        {
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v13 = &unk_1F5EBDEF8;
          v14 = &_bambiDomain;
          v15 = 1073741842;
          v12 = ImsResult::operator<<<char [31]>(&v13, "Emergency registration timeout");
          (*(*v11 + 88))(v11, v12);
          ImsResult::~ImsResult(&v13);
        }

        goto LABEL_15;
      }
    }
  }
}

uint64_t SoftbankRegistrationPolicy::isRegistrationRetryAllowed(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 536))(a1))
  {
    if ((*(a1 + 220) & 1) == 0 && *(a1 + 2400) >= *(a1 + 1864))
    {
      v4 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v4);
      v5 = *(v4 + 8);
      v6 = "retry not allowed: already exhausted proxy attempts for reregistration";
      v7 = 70;
      goto LABEL_23;
    }

    if (*(a1 + 2405) == 1)
    {
      v4 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v4);
      v5 = *(v4 + 8);
      v6 = "retry not allowed: received error response on reregister";
      v7 = 56;
LABEL_23:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v10 = 0;
      *(v4 + 17) = 0;
      return v10;
    }

    v32 = 0;
    v33 = 0;
    IPTelephonyManager::getBambiClient(&v32);
    v11 = *(a1 + 400);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = *(a1 + 392);
        if (v13)
        {
          v14 = v32;
          if (v32)
          {
            v30 = 0;
            v31 = 0;
            (*(*v13 + 136))(__p);
            (*(*v14 + 184))(&v30, v14, __p);
            if (v29 < 0)
            {
              operator delete(__p[0]);
            }

            if (v30)
            {
              v15 = *(*a1 + 64);
              if (*(v30 + 2816) == 1)
              {
                v16 = v15(a1);
                (*(*a1 + 16))(a1, v16);
                v17 = ImsOutStream::operator<<(v16, "retry not allowed: roaming");
                (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v17[17] = 0;
                if (v31)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                }

                v10 = 0;
LABEL_35:
                std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_36:
                if (v33)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                }

                return v10;
              }

              v24 = v15(a1);
              (*(*a1 + 16))(a1, v24);
              v25 = ImsOutStream::operator<<(v24, "not roaming: no decision to try to shortcuit the retry");
              (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v23 = (v25 + 17);
            }

            else
            {
              v22 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v22);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "SipStack is null: no decision to try to shortcuit the retry", 59);
              *(v22 + 17) = 0;
              v23 = (v22 + 17);
              (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            }

            *v23 = 0;
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

LABEL_26:
            if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 464) - *(a1 + 456)) >> 4) == SipRegistrationPolicy::countOfProxiesWithErrors(a1) && !(*(**(a1 + 2256) + 16))(*(a1 + 2256), a2))
            {
              if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 464) - *(a1 + 456)) >> 4) != SipRegistrationPolicy::countOfProxiesWithErrors(a1) || *(a1 + 2400) >= *(a1 + 1864) || (*(a1 + 2404) & 1) != 0)
              {
                v21 = (*(*a1 + 64))(a1);
                (*(*a1 + 16))(a1, v21);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "retry not allowed: by default", 29);
                *(v21 + 17) = 0;
                v20 = (v21 + 17);
                (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v10 = 0;
LABEL_34:
                *v20 = 0;
                if (!v12)
                {
                  goto LABEL_36;
                }

                goto LABEL_35;
              }

              v26 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v26);
              v27 = ImsOutStream::operator<<(v26, "retry allowed: proxy list exhausted, but retries are allowed");
              (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v20 = (v27 + 17);
            }

            else
            {
              v19 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v19);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "retry allowed: proxy list has not been exhausted", 48);
              *(v19 + 17) = 0;
              v20 = (v19 + 17);
              (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            }

            v10 = 1;
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "delegate or bambi is null: no decision to try to shortcuit the retry", 68);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    goto LABEL_26;
  }

  if (!(*(*a1 + 536))(a1))
  {
    return 1;
  }

  v8 = *(**(a1 + 2256) + 16);

  return v8();
}

void sub_1E4E8E450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

uint64_t SoftbankRegistrationPolicy::handleProxyChange(uint64_t this)
{
  *(this + 2400) = 0;
  *(this + 2404) = 0;
  return this;
}

void SoftbankRegistrationPolicy::clearFailureFlags(SoftbankRegistrationPolicy *this)
{
  SipRegistrationPolicy::clearFailureFlags(this);
  *(this + 600) = 0;
  *(this + 1202) = 0;
}

uint64_t SoftbankRegistrationPolicy::useNextProxy(SoftbankRegistrationPolicy *this)
{
  if ((*(*this + 536))(this))
  {
    if (*(this + 600) >= *(this + 466))
    {
      v3 = 1;
      return v3 & 1;
    }

    v2 = 2404;
  }

  else
  {
    v2 = 220;
  }

  v3 = *(this + v2);
  return v3 & 1;
}

uint64_t SoftbankRegistrationPolicy::handleRegistrationError(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  SipResponse::asImsResult(&v15, *a2);
  if ((*(*a1 + 536))(a1))
  {
    v4 = *(a1 + 2256);
    if (v4)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "REGISTER");
      v5 = SipResponseCodeMap::containsResponseCodeForMethod(v4 + 64, __p, v16, 0);
      v6 = v5;
      if (v14 < 0)
      {
        operator delete(__p[0]);
        if (v6)
        {
LABEL_5:
          *(a1 + 2404) = 1;
          if (*(a1 + 220) == 1)
          {
            v7 = SipRegistrationPolicy::handleGeneralError(a1, &v15);
          }

          else
          {
            v10 = (*(*a1 + 48))(a1);
            (*(*a1 + 16))(a1, v10);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Received fatal error on emergency registration retry, attempting to place emergency call immediately", 100);
            *(v10 + 17) = 0;
            (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v10 + 17) = 0;
            *(a1 + 2405) = 1;
            v7 = -1;
          }

          goto LABEL_12;
        }
      }

      else if (v5)
      {
        goto LABEL_5;
      }
    }
  }

  v8 = *(a2 + 8);
  v11 = *a2;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = SipRegistrationPolicy::handleRegistrationError(a1, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_12:
  ImsResult::~ImsResult(&v15);
  return v7;
}

void sub_1E4E8E75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a18);
  _Unwind_Resume(a1);
}

void SoftbankRegistrationPolicy::authChallengeReceived(SoftbankRegistrationPolicy *this)
{
  if ((*(*this + 536))(this))
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Got auth challenge request, restarting emergency registration timeout", 69);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(this + 29, &SipRegistrationPolicy::kEmergencyRegistrationTimer))
    {
      SipTimerContainer::cancelTimer((this + 224), &SipRegistrationPolicy::kEmergencyRegistrationTimer);
    }

    SipRegistrationPolicy::startEmergencyRegistrationTimer(this);
  }

  SipRegistrationPolicy::authChallengeReceived(this);
}

uint64_t SoftbankRegistrationPolicy::generalErrorRetryInterval(SoftbankRegistrationPolicy *this)
{
  if ((*(*this + 536))(this))
  {
    return 0;
  }

  return DefaultRegistrationPolicy::generalErrorRetryInterval(this);
}

uint64_t SoftbankRegistrationPolicy::handleGeneralErrorFromOneProxy(SoftbankRegistrationPolicy *this, const ImsResult *a2)
{
  if ((*(*this + 536))(this))
  {
    v4 = *(a2 + 1) == &SipResultDomain::_domain;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }

  if (*(this + 220) != 1)
  {
    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }

  v5 = *(this + 282);
  if (!v5)
  {
    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "REGISTER");
  v6 = SipResponseCodeMap::containsResponseCodeForMethod(v5 + 64, __p, *(a2 + 4), 0);
  v7 = v6;
  if ((v12 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }

  operator delete(__p[0]);
  if (!v7)
  {
    return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
  }

LABEL_10:
  v8 = (*(*this + 64))(this);
  (*(*this + 16))(this, v8);
  SipRegistrationPolicy::printProxyErrors(this, v8, 2);
  if (!(*(*this + 408))(this, 0, 200))
  {
    return -1;
  }

  v9 = (*(*this + 320))(this);
  return (*(*this + 488))(this, a2, 0, v9);
}

void sub_1E4E8EB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SoftbankRegistrationPolicy::~SoftbankRegistrationPolicy(SoftbankRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSoftbankRegistrationPolicy::~SoftbankRegistrationPolicy(SoftbankRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));

  JUMPOUT(0x1E69235B0);
}

uint64_t BambiUssdSession::BambiUssdSession(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F5ED6570;
  ims::SharedLoggable<BambiUssdSession>::SharedLoggable((a1 + 8));
  *a1 = &unk_1F5ED6430;
  *(a1 + 8) = &unk_1F5ED6468;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 64);
    *(a1 + 56) = v4;
    *(a1 + 64) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *(a1 + 56) = v4;
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 104) = 0;
  return a1;
}

void *ims::SharedLoggable<BambiUssdSession>::SharedLoggable(void *a1)
{
  ims::getQueue(&object);
  ctu::SharedLoggable<BambiUssdSession,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(a1 + 1, &object, "com.apple.ipTelephony", "default");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5ED6598;
  return a1;
}

void sub_1E4E8ED90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E8EEF0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void BambiUssdSession::~BambiUssdSession(BambiUssdSession *this)
{
  *this = &unk_1F5ED6430;
  *(this + 1) = &unk_1F5ED6468;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);
}

{
  BambiUssdSession::~BambiUssdSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiUssdSession::~BambiUssdSession(BambiUssdSession *this)
{
  BambiUssdSession::~BambiUssdSession((this - 8));
}

{
  BambiUssdSession::~BambiUssdSession((this - 8));

  JUMPOUT(0x1E69235B0);
}

void BambiUssdSession::attachIncomingSession(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 104) = 1;
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 80);
  *(a1 + 72) = v6;
  *(a1 + 80) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v6 = *(a1 + 72);
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v17, (a1 + 16));
  v8 = v18;
  if (v18)
  {
    v9 = v17;
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v10 = std::__shared_weak_count::lock(v8);
    v11 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v8);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v12 = 0;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_11;
    }

    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    v11 = 0;
  }

  v9 = 0;
  v12 = 1;
LABEL_11:
  *(v6 + 672) = v9;
  v13 = *(v6 + 680);
  *(v6 + 680) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 96);
  *(a1 + 88) = v15;
  *(a1 + 96) = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

uint64_t BambiUssdSession::initialize(uint64_t a1, const std::string *a2, const std::string *a3, uint64_t *a4)
{
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 96);
  *(a1 + 88) = v8;
  *(a1 + 96) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 56);
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = *(v13 + 248);
      v15 = *(v13 + 256);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *(v14 + 248);
      v17 = *(v14 + 256);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipDialogManager::initializeUssdSession(v16, a2, &v29);
      v18 = v29;
      v29 = 0uLL;
      v19 = *(a1 + 80);
      *(a1 + 72) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        if (*(&v29 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
        }
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v20 = *(a1 + 72);
      if (!v20)
      {
LABEL_24:
        v26 = 0;
LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        return v26;
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, (a1 + 16));
      v21 = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        v22 = v29;
        atomic_fetch_add_explicit((*(&v29 + 1) + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        v23 = std::__shared_weak_count::lock(v21);
        v24 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v21);
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          v25 = 0;
          atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
LABEL_28:
          *(v20 + 672) = v22;
          v27 = *(v20 + 680);
          *(v20 + 680) = v24;
          if (v27)
          {
            std::__shared_weak_count::__release_weak(v27);
          }

          if ((v25 & 1) == 0)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          std::string::operator=((*(a1 + 72) + 688), a3);
          v26 = 1;
          goto LABEL_33;
        }

        std::__shared_weak_count::__release_weak(v21);
      }

      else
      {
        v24 = 0;
      }

      v22 = 0;
      v25 = 1;
      goto LABEL_28;
    }
  }

  return 0;
}

void BambiUssdSession::handleUssdData(void *a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v17, "ussd");
  v13[0] = 0;
  v16 = 0;
  v6 = ims::debug(v17, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "BambiUssdSession::handleUssdData: ", 34);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v7 = a1[12];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = a1[11];
      if (v10)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v11, a1 + 2);
        (**v10)(v10, &v11, a2, a3);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1E4E8F4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

void BambiUssdSession::handleUssdError(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[12];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[11];
      if (v9)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, a1 + 2);
        (*(*v9 + 8))(v9, &v10, a2, a3);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1E4E8F604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void BambiUssdSession::handleSessionInvalidated(BambiUssdSession *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 11);
      if (v5)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 2);
        (*(*v5 + 16))(v5, &v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E8F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<BambiUssdSession,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(void *a1, NSObject **a2, char *a3, char *a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, a4);
  return a1;
}

uint64_t ims::SharedLoggable<BambiUssdSession>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiUssdSession>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiUssdSession::create(std::shared_ptr<SipStack>)::Wrapper,std::allocator<BambiUssdSession::create(std::shared_ptr<SipStack>)::Wrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED65C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void BambiUssdSession::create(std::shared_ptr<SipStack>)::Wrapper::~Wrapper(BambiUssdSession *a1)
{
  BambiUssdSession::~BambiUssdSession(a1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiUssdSession::create(std::shared_ptr<SipStack>)::Wrapper::~Wrapper(uint64_t a1)
{
  BambiUssdSession::~BambiUssdSession((a1 - 8));
}

{
  BambiUssdSession::~BambiUssdSession((a1 - 8));

  JUMPOUT(0x1E69235B0);
}

void XcapDocumentBase::setAttribute(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  XcapNs::stripXcapNs(a2, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v10.__r_.__value_.__l.__size_ != 6)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
      return;
    }

    v7 = *v10.__r_.__value_.__l.__data_ != 1769235297 || *(v10.__r_.__value_.__r.__words[0] + 4) != 25974;
    operator delete(v10.__r_.__value_.__l.__data_);
    if (v7)
    {
      return;
    }
  }

  else
  {
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) != 6)
    {
      return;
    }

    if (LODWORD(v10.__r_.__value_.__l.__data_) != 1769235297 || WORD2(v10.__r_.__value_.__r.__words[0]) != 25974)
    {
      return;
    }
  }

  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    if (a3[1] != 5)
    {
      return;
    }

    a3 = *a3;
  }

  else if (v8 != 5)
  {
    return;
  }

  if (*a3 == 1936482662 && *(a3 + 4) == 101)
  {
    *(a1 + 80) = 0;
  }
}

void XcapDocumentBase::constructTree(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  bambi::XmlTreeItem::makeNode(a2);
}

void sub_1E4E8FCE4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  v30 = *(v28 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void XcapDocumentBase::getItemForPath(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void SipImpuInfo::getPreferredUri(SipImpuInfo *this@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  SipUri::asString(this, 2, &v10);
  __p = 0;
  v8 = 0;
  v9 = 0;
  SipUri::asString(this + 408, 2, &__p);
  v4 = HIBYTE(v12);
  if (v12 < 0)
  {
    v4 = v11;
  }

  if (v4)
  {
    p_p = &v10;
LABEL_9:
    *a2 = *p_p;
    a2[2] = p_p[2];
    p_p[1] = 0;
    p_p[2] = 0;
    *p_p = 0;
    goto LABEL_10;
  }

  v6 = HIBYTE(v9);
  if (v9 < 0)
  {
    v6 = v8;
  }

  if (v6)
  {
    p_p = &__p;
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, &str_16);
LABEL_10:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v10);
  }
}

void sub_1E4E8FE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void SipImpuRank::SipImpuRank(SipImpuRank *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  SipImpuRank::resetToDefault(this);
}

void sub_1E4E8FEB0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void SipImpuRank::resetToDefault(SipImpuRank *this)
{
  v2 = 0;
  *(this + 1) = *this;
  do
  {
    v5 = v2;
    std::vector<ImpuType>::push_back[abi:ne200100](this, &v5);
    ++v2;
  }

  while (v2 != 12);
  v4 = *(this + 3);
  v3 = this + 24;
  *(v3 + 1) = v4;
  v6 = 10;
  std::vector<ImpuType>::push_back[abi:ne200100](v3, &v6);
}

const char *SipImpuRank::stringForImpuType(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "undefined";
  }

  else
  {
    return off_1E876A610[a1];
  }
}

void std::vector<ImpuType>::push_back[abi:ne200100](const void **a1, int *a2)
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
      std::vector<ImpuType>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a1, v12);
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