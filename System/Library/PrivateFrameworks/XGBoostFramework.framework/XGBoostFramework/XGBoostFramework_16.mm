void xgboost::TextGenerator::~TextGenerator(std::locale *this)
{
  xgboost::TreeGenerator::~TreeGenerator(this);

  JUMPOUT(0x277C69180);
}

void xgboost::TextGenerator::BuildTree(xgboost::TextGenerator *this, const xgboost::RegTree *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CC8))
  {
    std::string::basic_string[abi:ne200100]<0>(_ZGRZN7xgboost13TextGenerator9BuildTreeERKNS_7RegTreeEE13kTreeTemplate_, "{nodes}\n");
    __cxa_atexit(MEMORY[0x277D82640], _ZGRZN7xgboost13TextGenerator9BuildTreeERKNS_7RegTreeEE13kTreeTemplate_, &dword_274CA4000);
    qword_280AF6CC0 = _ZGRZN7xgboost13TextGenerator9BuildTreeERKNS_7RegTreeEE13kTreeTemplate_;
    __cxa_guard_release(&qword_280AF6CC8);
  }

  v4 = qword_280AF6CC0;
  (*(*this + 64))(v7, this, a2, 0, 0);
  std::string::basic_string[abi:ne200100]<0>(v11, "{nodes}");
  *__p = *v7;
  v14 = v8;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  std::map<std::string,std::string>::map[abi:ne200100](v9, v11, 1);
  xgboost::TreeGenerator::Match(&v10, v4, v9);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v9, v9[1]);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 4, v5, size);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void xgboost::TreeGenerator::BuildTree(xgboost::TreeGenerator *this, const xgboost::RegTree *a2)
{
  v2 = (this + 32);
  (*(*this + 64))(__p);
  if ((v6 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DED558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::TreeGenerator::Match(std::string *this, uint64_t a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  v7 = *a3;
  v5 = a3 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v8 = *MEMORY[0x277D82638];
    do
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v10 = this;
      }

      else
      {
        v10 = this->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      v11 = *(v6 + 55);
      if (v11 >= 0)
      {
        v12 = (v6 + 4);
      }

      else
      {
        v12 = v6[4];
      }

      if (v11 >= 0)
      {
        v13 = *(v6 + 55);
      }

      else
      {
        v13 = v6[5];
      }

      if (v13)
      {
        v14 = v10 + size;
        if (size >= v13)
        {
          v24 = *v12;
          v25 = v10;
          do
          {
            v26 = size - v13;
            if (v26 == -1)
            {
              break;
            }

            v27 = memchr(v25, v24, v26 + 1);
            if (!v27)
            {
              break;
            }

            v15 = v27;
            if (!memcmp(v27, v12, v13))
            {
              goto LABEL_20;
            }

            v25 = (v15 + 1);
            size = v14 - (v15 + 1);
          }

          while (size >= v13);
        }

        v15 = v14;
LABEL_20:
        v16 = v15 - v10;
        if (v15 == v14)
        {
          v16 = -1;
        }
      }

      else
      {
        v16 = 0;
      }

      __pos = v16;
      if (v16 == v8)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&__pos, MEMORY[0x277D82638]);
      }

      v17 = *(v6 + 55);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v17 = v6[5];
      }

      v18 = *(v6 + 79);
      if (v18 >= 0)
      {
        v19 = (v6 + 7);
      }

      else
      {
        v19 = v6[7];
      }

      if (v18 >= 0)
      {
        v20 = *(v6 + 79);
      }

      else
      {
        v20 = v6[8];
      }

      std::string::replace(this, __pos, v17, v19, v20);
      v21 = v6[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v6[2];
          v23 = *v22 == v6;
          v6 = v22;
        }

        while (!v23);
      }

      v6 = v22;
    }

    while (v22 != v5);
  }
}

void sub_274DED7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

char *xgboost::FeatureMap::Name(xgboost::FeatureMap *this, unint64_t a2)
{
  v4 = a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3);
  if (v3 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  result = (*this + 24 * v4);
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

void sub_274DED944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const*,0>(void *a1, char **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, "{fname}");
  std::string::basic_string[abi:ne200100]<0>(v4 + 3, *a2);
  return a1;
}

void sub_274DED9B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string,std::string>::map[abi:ne200100](uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void xgboost::TextGenerator::SplitNodeImpl(std::string *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int128 *a6, int a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = *(*(a3 + 160) + 20 * a4 + 12);
  xgboost::TreeGenerator::Tabs(&v25, a7);
  std::string::basic_string[abi:ne200100]<0>(v27, "{tabs}");
  v28 = v25;
  memset(&v25, 0, sizeof(v25));
  std::to_string(&v24, a4);
  std::string::basic_string[abi:ne200100]<0>(v29, "{nid}");
  v30 = v24;
  memset(&v24, 0, sizeof(v24));
  v14 = *(a2 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v14 + 1) - *v14) >> 3) <= (v13 & 0x7FFFFFFFu))
  {
    std::to_string(&v23, v13 & 0x7FFFFFFF);
  }

  else
  {
    v15 = xgboost::FeatureMap::Name(v14, v13 & 0x7FFFFFFF);
    std::string::basic_string[abi:ne200100]<0>(&v23, v15);
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "{fname}");
  v32 = v23;
  memset(&v23, 0, sizeof(v23));
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],std::string&,0>(v33, a6);
  std::to_string(&v22, *(*(a3 + 160) + 20 * a4 + 4));
  std::string::basic_string[abi:ne200100]<0>(v34, "{left}");
  v35 = v22;
  memset(&v22, 0, sizeof(v22));
  std::to_string(&v21, *(*(a3 + 160) + 20 * a4 + 8));
  std::string::basic_string[abi:ne200100]<0>(v36, "{right}");
  v37 = v21;
  memset(&v21, 0, sizeof(v21));
  v16 = *(a3 + 160) + 20 * a4;
  v17 = 8;
  if (*(v16 + 12) < 0)
  {
    v17 = 4;
  }

  std::to_string(&__p, *(v16 + v17));
  std::string::basic_string[abi:ne200100]<0>(v38, "{missing}");
  v39 = __p;
  memset(&__p, 0, sizeof(__p));
  std::map<std::string,std::string>::map[abi:ne200100](v26, v27, 7);
  xgboost::TreeGenerator::Match(a1, a5, v26);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v26, v26[1]);
  v18 = 42;
  do
  {
    v19 = &v27[v18];
    if (SHIBYTE(v27[v18 - 1]) < 0)
    {
      operator delete(*(v19 - 3));
    }

    if (*(v19 - 25) < 0)
    {
      operator delete(*(v19 - 6));
    }

    v18 -= 6;
  }

  while (v18 * 8);
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

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_274DEDDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, char a48)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a45, a46);
  v50 = -336;
  v51 = v48;
  do
  {
    v51 = std::pair<std::string,std::string>::~pair(v51) - 48;
    v50 += 48;
  }

  while (v50);
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

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void xgboost::TreeGenerator::Tabs(std::string *this, int a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v2 = a2;
    do
    {
      std::string::push_back(this, 9);
      --v2;
    }

    while (v2);
  }
}

void sub_274DEDF1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],std::string&,0>(std::string *a1, __int128 *a2)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "{cond}");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void sub_274DEDF94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::TreeGenerator::ToStr<float>(void *a1, float a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4);
  *(&v7[0].__locale_ + *(v5 - 24)) = 9;
  std::ostream::operator<<();
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
  return MEMORY[0x277C690D0](&v9);
}

void sub_274DEE164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::FeatureMap::TypeOf(xgboost::FeatureMap *this, unint64_t a2)
{
  v4 = a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3);
  if (v3 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  return *(*(this + 3) + 4 * v4);
}

void sub_274DEE28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::TreeGenerator::SplitNode(xgboost::RegTree const&,int,unsigned int)::{lambda(void)#2}::operator()(uint64_t a1)
{
  if (**a1 == 1)
  {
    v2 = *(a1 + 8);
    Entry = dmlc::LogMessageFatal::GetEntry(&v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_model.cc", 105);
    v4 = dmlc::LogMessageFatal::GetEntry(&v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Check failed: is_numerical", 26);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ": ", 2);
    v7 = xgboost::FeatureMap::Name(*(v2 + 8), **(a1 + 16));
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " in feature map is categorical but tree node is numerical.", 58);
    dmlc::LogMessageFatal::~LogMessageFatal(&v10);
  }
}

void xgboost::TreeGenerator::~TreeGenerator(std::locale *this)
{
  this->__locale_ = &unk_2883E62D0;
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  this[2].__locale_ = *MEMORY[0x277D82818];
  locale = v2[9].__locale_;
  *(this + *(v3 - 24) + 16) = v2[8];
  this[4].__locale_ = locale;
  this[5].__locale_ = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(this[15].__locale_) < 0)
  {
    operator delete(this[13].__locale_);
  }

  this[5].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 6);
  std::iostream::~basic_iostream();
  MEMORY[0x277C690D0](&this[18]);
}

uint64_t std::__function::__func<xgboost::$_1,std::allocator<xgboost::$_1>,xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::JsonGenerator::Indicator(xgboost::FeatureMap **this@<X0>, const xgboost::RegTree *a2@<X1>, int __val@<W2>, unsigned int a4@<W3>, std::string *a5@<X8>)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 20) + 20 * __val;
  v11 = 4;
  if (*(v10 + 12) < 0)
  {
    v11 = 8;
  }

  v12 = *(v10 + v11);
  if ((atomic_load_explicit(&qword_280AF6CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CD0))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6E38, " nodeid: {nid}, depth: {depth}, split: {fname}, yes: {yes}, no: {no}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6E38, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6CD0);
  }

  v13 = *(*(a2 + 20) + 20 * __val + 12);
  std::to_string(&v22, __val);
  std::string::basic_string[abi:ne200100]<0>(v24, "{nid}");
  v25 = v22;
  memset(&v22, 0, sizeof(v22));
  std::to_string(&v21, a4);
  std::string::basic_string[abi:ne200100]<0>(v26, "{depth}");
  v27 = v21;
  memset(&v21, 0, sizeof(v21));
  v20 = xgboost::FeatureMap::Name(this[1], v13 & 0x7FFFFFFF);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const*,0>(v28, &v20);
  std::to_string(&v19, v12);
  std::string::basic_string[abi:ne200100]<0>(v29, "{yes}");
  v30 = v19;
  memset(&v19, 0, sizeof(v19));
  v14 = *(a2 + 20) + 20 * __val;
  v15 = 8;
  if (*(v14 + 12) < 0)
  {
    v15 = 4;
  }

  std::to_string(&v18, *(v14 + v15));
  std::string::basic_string[abi:ne200100]<0>(v31, "{no}");
  v32 = *&v18.__r_.__value_.__l.__data_;
  v33[0] = *(&v18.__r_.__value_.__l + 2);
  memset(&v18, 0, sizeof(v18));
  std::map<std::string,std::string>::map[abi:ne200100](v23, v24, 5);
  xgboost::TreeGenerator::Match(a5, qword_280AF6E38, v23);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
  for (i = 0; i != -30; i -= 6)
  {
    v17 = &v24[i];
    if (SHIBYTE(v33[i]) < 0)
    {
      operator delete(v17[27]);
    }

    if (*(v17 + 215) < 0)
    {
      operator delete(v17[24]);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void xgboost::JsonGenerator::Categorical(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, xgboost::RegTree *a3@<X2>, std::string *a4@<X8>, unsigned int a5@<W3>)
{
  v6 = a3;
  xgboost::GetSplitCategories(a2, a3, &v18);
  if ((atomic_load_explicit(&qword_280AF6CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CD8))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6E50, " nodeid: {nid}, depth: {depth}, split: {fname}, split_condition: {cond}, yes: {right}, no: {left}, missing: {missing}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6E50, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6CD8);
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, "[");
  v10 = v18;
  if (v19 != v18)
  {
    v11 = 0;
    do
    {
      std::to_string(&v16, v10[v11]);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v16;
      }

      else
      {
        v12 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      std::string::append(&v17, v12, size);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v10 = v18;
      v14 = (v19 - v18) >> 2;
      if (v11 != v14 - 1)
      {
        std::string::append(&v17, ", ");
        v10 = v18;
        v14 = (v19 - v18) >> 2;
      }

      ++v11;
    }

    while (v11 < v14);
  }

  std::string::append(&v17, "]");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  xgboost::JsonGenerator::SplitNodeImpl(a4, this, a2, v6, qword_280AF6E50, &__p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_274DEEC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28)
{
  __cxa_guard_abort(&qword_280AF6CD8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::JsonGenerator::Integer(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, int a3@<W2>, std::string *a4@<X8>, unsigned int a5@<W3>)
{
  v10 = *(*(a2 + 20) + 20 * a3 + 16);
  v11 = vcvtms_s32_f32(v10);
  if (floorf(v10) == v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  if ((atomic_load_explicit(&qword_280AF6CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CE0))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6E68, " nodeid: {nid}, depth: {depth}, split: {fname}, split_condition: {cond}, yes: {left}, no: {right}, missing: {missing}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6E68, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6CE0);
  }

  std::to_string(&v13, v12);
  xgboost::JsonGenerator::SplitNodeImpl(a4, this, a2, a3, qword_280AF6E68, &v13, a5);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void xgboost::JsonGenerator::Quantitive(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, int a3@<W2>, std::string *a4@<X8>, unsigned int a5@<W3>)
{
  if ((atomic_load_explicit(&qword_280AF6CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CE8))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6E80, " nodeid: {nid}, depth: {depth}, split: {fname}, split_condition: {cond}, yes: {left}, no: {right}, missing: {missing}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6E80, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6CE8);
  }

  xgboost::TreeGenerator::ToStr<float>(__p, *(*(a2 + 20) + 20 * a3 + 16));
  xgboost::JsonGenerator::SplitNodeImpl(a4, this, a2, a3, qword_280AF6E80, __p, a5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void xgboost::JsonGenerator::NodeStat(const xgboost::RegTree *a1@<X1>, int a2@<W2>, std::string *a3@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CF0))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6E98, ", gain: {loss_chg}, cover: {sum_hess}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6E98, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6CF0);
  }

  xgboost::TreeGenerator::ToStr<float>(v10, *(*(a1 + 26) + 16 * a2));
  std::string::basic_string[abi:ne200100]<0>(v13, "{loss_chg}");
  v14 = *v10;
  v15 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  xgboost::TreeGenerator::ToStr<float>(__p, *(*(a1 + 26) + 16 * a2 + 4));
  std::string::basic_string[abi:ne200100]<0>(v16, "{sum_hess}");
  v17 = *__p;
  v18[0] = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  std::map<std::string,std::string>::map[abi:ne200100](v12, v13, 2);
  xgboost::TreeGenerator::Match(a3, qword_280AF6E98, v12);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v12, v12[1]);
  for (i = 0; i != -12; i -= 6)
  {
    v7 = &v13[i];
    if (SHIBYTE(v18[i]) < 0)
    {
      operator delete(v7[9]);
    }

    if (*(v7 + 71) < 0)
    {
      operator delete(v7[6]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void xgboost::JsonGenerator::PlainNode(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, int a3@<W2>, std::string *a4@<X8>, unsigned int a5@<W3>)
{
  v10 = *(*(a2 + 20) + 20 * a3 + 16);
  if ((atomic_load_explicit(&qword_280AF6CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6CF8))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6EB0, " nodeid: {nid}, depth: {depth}, split: {fname}, split_condition: {cond}, yes: {left}, no: {right}, missing: {missing}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6EB0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6CF8);
  }

  xgboost::TreeGenerator::ToStr<float>(__p, v10);
  xgboost::JsonGenerator::SplitNodeImpl(a4, this, a2, a3, qword_280AF6EB0, __p, a5);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void xgboost::JsonGenerator::SplitNode(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v5 = a4;
  v35[1] = *MEMORY[0x277D85DE8];
  xgboost::TreeGenerator::SplitNode(this, a2, a3, a4, &v21);
  if ((atomic_load_explicit(&qword_280AF6D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D00))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6EC8, "{{properties} {stat}, children: [{left}, {right}\n{indent}]}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6EC8, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D00);
  }

  std::string::basic_string[abi:ne200100]<0>(v22, "{properties}");
  v10 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v21;
  }

  if (*(this + 296) == 1)
  {
    (*(*this + 32))(v18, this, a2, a3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v18, &unk_274E44C6E);
  }

  std::string::basic_string[abi:ne200100]<0>(v24, "{stat}");
  v25 = *v18;
  v26 = v19;
  v18[1] = 0;
  v19 = 0;
  v18[0] = 0;
  (*(*this + 64))(v16, this, a2, *(*(a2 + 20) + 20 * a3 + 4), (v5 + 1));
  std::string::basic_string[abi:ne200100]<0>(v27, "{left}");
  v28 = *v16;
  v29 = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  (*(*this + 64))(v14, this, a2, *(*(a2 + 20) + 20 * a3 + 8), (v5 + 1));
  std::string::basic_string[abi:ne200100]<0>(v30, "{right}");
  v31 = *v14;
  v32 = v15;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  xgboost::JsonGenerator::Indent(&__p, v5);
  std::string::basic_string[abi:ne200100]<0>(v33, "{indent}");
  v34 = *&__p.__r_.__value_.__l.__data_;
  v35[0] = *(&__p.__r_.__value_.__l + 2);
  memset(&__p, 0, sizeof(__p));
  std::map<std::string,std::string>::map[abi:ne200100](v20, v22, 5);
  xgboost::TreeGenerator::Match(a5, qword_280AF6EC8, v20);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v20, v20[1]);
  for (i = 0; i != -30; i -= 6)
  {
    v12 = &v22[i];
    if (SHIBYTE(v35[i]) < 0)
    {
      operator delete(v12[27]);
    }

    if (*(v12 + 215) < 0)
    {
      operator delete(v12[24]);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v18[0]);
  if (v10 < 0)
  {
    goto LABEL_24;
  }
}

void sub_274DEF6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  __cxa_guard_abort(&qword_280AF6D00);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::JsonGenerator::LeafNode(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, int __val@<W2>, std::string *a4@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D08))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6EE0, "{ nodeid: {nid}, leaf: {leaf} {stat}}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6EE0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D08);
  }

  if ((atomic_load_explicit(&qword_280AF6D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D10))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6EF8, ", cover: {sum_hess} ");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6EF8, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D10);
  }

  std::to_string(&v17, __val);
  std::string::basic_string[abi:ne200100]<0>(v23, "{nid}");
  v24 = v17;
  memset(&v17, 0, sizeof(v17));
  xgboost::TreeGenerator::ToStr<float>(v15, *(*(a2 + 20) + 20 * __val + 16));
  std::string::basic_string[abi:ne200100]<0>(v25, "{leaf}");
  v26 = *v15;
  v27 = v16;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  v8 = *(this + 296);
  if (v8 == 1)
  {
    xgboost::TreeGenerator::ToStr<float>(v11, *(*(a2 + 26) + 16 * __val + 4));
    std::string::basic_string[abi:ne200100]<0>(v19, "{sum_hess}");
    v21 = *v11;
    v22 = v12;
    v11[1] = 0;
    v12 = 0;
    v11[0] = 0;
    std::map<std::string,std::string>::map[abi:ne200100](v13, v19, 1);
    xgboost::TreeGenerator::Match(&__p, qword_280AF6EF8, v13);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &unk_274E44C6E);
  }

  std::string::basic_string[abi:ne200100]<0>(v28, "{stat}");
  v29 = *&__p.__r_.__value_.__l.__data_;
  v30[0] = *(&__p.__r_.__value_.__l + 2);
  memset(&__p, 0, sizeof(__p));
  std::map<std::string,std::string>::map[abi:ne200100](v18, v23, 3);
  xgboost::TreeGenerator::Match(a4, qword_280AF6EE0, v18);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v18, v18[1]);
  for (i = 0; i != -18; i -= 6)
  {
    v10 = &v23[i];
    if (SHIBYTE(v30[i]) < 0)
    {
      operator delete(v10[15]);
    }

    if (*(v10 + 119) < 0)
    {
      operator delete(v10[12]);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else if (!v8)
  {
    goto LABEL_22;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v13, v13[1]);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

LABEL_22:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void xgboost::JsonGenerator::BuildTree(xgboost::JsonGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D18))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6F10, "{newline}{indent}{nodes}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6F10, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D18);
  }

  std::string::basic_string[abi:ne200100]<0>(v19, "{newline}");
  if (a4)
  {
    v10 = "\n";
  }

  else
  {
    v10 = &unk_274E44C6E;
  }

  std::string::basic_string[abi:ne200100]<0>(v20, v10);
  xgboost::JsonGenerator::Indent(&v17, a4);
  std::string::basic_string[abi:ne200100]<0>(v21, "{indent}");
  v22 = v17;
  memset(&v17, 0, sizeof(v17));
  v11 = *this;
  if (*(*(a2 + 20) + 20 * a3 + 4) == -1)
  {
    v12 = (v11 + 56);
  }

  else
  {
    v12 = (v11 + 48);
  }

  (*v12)(__p, this, a2, a3, a4);
  std::string::basic_string[abi:ne200100]<0>(v23, "{nodes}");
  v24 = *__p;
  v25[0] = v16;
  __p[1] = 0;
  v16 = 0;
  __p[0] = 0;
  std::map<std::string,std::string>::map[abi:ne200100](v18, v19, 3);
  xgboost::TreeGenerator::Match(a5, qword_280AF6F10, v18);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v18, v18[1]);
  for (i = 0; i != -18; i -= 6)
  {
    v14 = &v19[i];
    if (SHIBYTE(v25[i]) < 0)
    {
      operator delete(v14[15]);
    }

    if (*(v14 + 119) < 0)
    {
      operator delete(v14[12]);
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_274DEFFB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274DEFFB0);
}

void xgboost::JsonGenerator::~JsonGenerator(std::locale *this)
{
  xgboost::TreeGenerator::~TreeGenerator(this);

  JUMPOUT(0x277C69180);
}

void xgboost::JsonGenerator::SplitNodeImpl(std::string *a1, uint64_t a2, uint64_t a3, int __val, uint64_t a5, __int128 *a6, unsigned int a7)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = *(*(a3 + 160) + 20 * __val + 12);
  std::to_string(&v26, __val);
  std::string::basic_string[abi:ne200100]<0>(v28, "{nid}");
  v29 = v26;
  memset(&v26, 0, sizeof(v26));
  std::to_string(&v25, a7);
  std::string::basic_string[abi:ne200100]<0>(v30, "{depth}");
  v31 = v25;
  memset(&v25, 0, sizeof(v25));
  v15 = *(a2 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v15 + 1) - *v15) >> 3) <= (v14 & 0x7FFFFFFFu))
  {
    std::to_string(&v24, v14 & 0x7FFFFFFF);
  }

  else
  {
    v16 = xgboost::FeatureMap::Name(v15, v14 & 0x7FFFFFFF);
    std::string::basic_string[abi:ne200100]<0>(&v24, v16);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "{fname}");
  v33 = v24;
  memset(&v24, 0, sizeof(v24));
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],std::string&,0>(v34, a6);
  std::to_string(&v23, *(*(a3 + 160) + 20 * __val + 4));
  std::string::basic_string[abi:ne200100]<0>(v35, "{left}");
  v36 = v23;
  memset(&v23, 0, sizeof(v23));
  std::to_string(&v22, *(*(a3 + 160) + 20 * __val + 8));
  std::string::basic_string[abi:ne200100]<0>(v37, "{right}");
  v38 = v22;
  memset(&v22, 0, sizeof(v22));
  v17 = *(a3 + 160) + 20 * __val;
  v18 = 8;
  if (*(v17 + 12) < 0)
  {
    v18 = 4;
  }

  std::to_string(&v21, *(v17 + v18));
  std::string::basic_string[abi:ne200100]<0>(v39, "{missing}");
  v40 = v21;
  memset(&v21, 0, sizeof(v21));
  std::map<std::string,std::string>::map[abi:ne200100](v27, v28, 7);
  xgboost::TreeGenerator::Match(a1, a5, v27);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v27, v27[1]);
  v19 = 42;
  do
  {
    v20 = &v28[v19];
    if (SHIBYTE(v28[v19 - 1]) < 0)
    {
      operator delete(*(v20 - 3));
    }

    if (*(v20 - 25) < 0)
    {
      operator delete(*(v20 - 6));
    }

    v19 -= 6;
  }

  while (v19 * 8);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_274DF0368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, char a49)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a46, a47);
  v51 = -336;
  v52 = v49;
  do
  {
    v52 = std::pair<std::string,std::string>::~pair(v52) - 48;
    v51 += 48;
  }

  while (v51);
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

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

std::string *xgboost::JsonGenerator::Indent(std::string *this, int a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != -1)
  {
    v2 = this;
    v3 = a2 + 1;
    do
    {
      this = std::string::append(v2, "  ");
      --v3;
    }

    while (v3);
  }

  return this;
}

void sub_274DF04F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::GraphvizParam::~GraphvizParam(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::__function::__func<xgboost::$_2,std::allocator<xgboost::$_2>,xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  *v4 = *a3;
  v5 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  operator new();
}

void sub_274DF1658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  __cxa_guard_abort(&qword_280AF6D20);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a53);
  xgboost::GraphvizParam::~GraphvizParam(&v53[38].__locale_);
  xgboost::TreeGenerator::~TreeGenerator(v53);
  MEMORY[0x277C69180](v53, 0x10F3C403D46ECABLL);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_274DF1934(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, void *a63)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a60, a61);
  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a2 == 1)
  {
    v67 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a20);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_model.cc", 566);
    v69 = dmlc::LogMessageFatal::GetEntry(&a20);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Failed to parse graphviz parameters:\n\t", 38);
    if (a18 >= 0)
    {
      v71 = &a11;
    }

    else
    {
      LODWORD(v71) = a11;
    }

    if (a18 >= 0)
    {
      v72 = a18;
    }

    else
    {
      v72 = a13;
    }

    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, v72);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "\n", 1);
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "With error:\n", 12);
    v76 = (*(*v67 + 16))(v67);
    v77 = v76;
    v78 = strlen(v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
    dmlc::LogMessageFatal::~LogMessageFatal(&a20);
    __cxa_end_catch();
    JUMPOUT(0x274DF0968);
  }

  JUMPOUT(0x274DF1A98);
}

void sub_274DF1940(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a13, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, void *a63, uint64_t _190, int _198)
{
  if (a67 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a60, a61);
  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a2 == 1)
  {
    v69 = __cxa_begin_catch(a1);
    Entry = dmlc::LogMessageFatal::GetEntry(&a20);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/tree_model.cc", 566);
    v71 = dmlc::LogMessageFatal::GetEntry(&a20);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Failed to parse graphviz parameters:\n\t", 38);
    if (a18 >= 0)
    {
      v73 = &a11;
    }

    else
    {
      v73 = a11;
    }

    if (a18 >= 0)
    {
      v74 = a18;
    }

    else
    {
      v74 = a13;
    }

    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "\n", 1);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "With error:\n", 12);
    v78 = (*(*v69 + 16))(v69);
    v79 = strlen(v78);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
    dmlc::LogMessageFatal::~LogMessageFatal(&a20);
    __cxa_end_catch();
    JUMPOUT(0x274DF0968);
  }

  JUMPOUT(0x274DF1A98);
}

void sub_274DF1AA4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274DF192CLL);
}

uint64_t std::__function::__func<xgboost::$_2,std::allocator<xgboost::$_2>,xgboost::TreeGenerator * ()(xgboost::FeatureMap const&,std::string,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v3 + 1);
  if (result[23] >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    result = memmove(v5, v6, v3);
  }

  *&v5[v3] = 61;
  return result;
}

void xgboost::GraphvizGenerator::Categorical(xgboost::GraphvizGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, xgboost::RegTree *a3@<X2>, std::string *a4@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D28))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6F40, "    {nid} [ label={fname}:{cond} {params}]\n");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6F40, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D28);
  }

  xgboost::GetSplitCategories(a2, a3, v26);
  xgboost::PrintCatsAsSet(v26);
  v8 = *(*(a2 + 20) + 20 * a3 + 12);
  std::to_string(&v22, a3);
  std::string::basic_string[abi:ne200100]<0>(v27, "{nid}");
  v9 = v8 & 0x7FFFFFFF;
  v27[1] = v22;
  memset(&v22, 0, sizeof(v22));
  v10 = *(this + 1);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 1) - *v10) >> 3);
  if (v11 <= v9)
  {
    std::to_string(&v20, v9);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13.__i_ = &v20;
    }

    else
    {
      v13.__i_ = v20.__r_.__value_.__r.__words[0];
    }

    std::string::insert(&v20, v13, 102);
    __p = v20;
    memset(&v20, 0, sizeof(v20));
  }

  else
  {
    v12 = xgboost::FeatureMap::Name(v10, v9);
    std::string::basic_string[abi:ne200100]<0>(&__p, v12);
  }

  std::string::basic_string[abi:ne200100]<0>(v28, "{fname}");
  v29 = __p;
  memset(&__p, 0, sizeof(__p));
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],std::string&,0>(v30, &v24);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string const&,0>(v31, this + 24);
  std::map<std::string,std::string>::map[abi:ne200100](v23, &v27[0].__r_.__value_.__l.__data_, 4);
  xgboost::TreeGenerator::Match(a4, qword_280AF6F40, v23);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
  for (i = 0; i != 0x1FFFFFFFFFFFFFE8; i -= 6)
  {
    v15 = &v27[i / 3];
    if (SHIBYTE(v31[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v15[7].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15[6].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15[6].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 <= v9 && SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  xgboost::GraphvizGenerator::BuildEdge<true>(v27, this, a2, a3, *(*(a2 + 20) + 20 * a3 + 4), 1);
  if ((v27[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = v27;
  }

  else
  {
    v16 = v27[0].__r_.__value_.__r.__words[0];
  }

  if ((v27[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27[0].__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v16, size);
  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
  }

  xgboost::GraphvizGenerator::BuildEdge<true>(v27, this, a2, a3, *(*(a2 + 20) + 20 * a3 + 8), 0);
  if ((v27[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = v27;
  }

  else
  {
    v18 = v27[0].__r_.__value_.__r.__words[0];
  }

  if ((v27[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v27[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v27[0].__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v18, v19);
  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }
}

void xgboost::GraphvizGenerator::PlainNode(xgboost::GraphvizGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v4 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 20) + 20 * a3;
  v9 = *(v8 + 12);
  v10 = *(v8 + 16);
  if ((atomic_load_explicit(&qword_280AF6D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D38))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6F70, "    {nid} [ label={fname}{<}{cond} {params}]\n");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6F70, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D38);
  }

  v11 = v9 & 0x7FFFFFFF;
  v12 = *(this + 1);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((*(v12 + 1) - *v12) >> 3) <= v11 || xgboost::FeatureMap::TypeOf(v12, v9 & 0x7FFFFFFF) != 0;
  std::to_string(&v29, v4);
  std::string::basic_string[abi:ne200100]<0>(v31, "{nid}");
  v31[1] = v29;
  memset(&v29, 0, sizeof(v29));
  v14 = *(this + 1);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 1) - *v14) >> 3);
  if (v15 <= v11)
  {
    std::to_string(&v27, v11);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17.__i_ = &v27;
    }

    else
    {
      v17.__i_ = v27.__r_.__value_.__r.__words[0];
    }

    std::string::insert(&v27, v17, 102);
    v28 = v27;
    memset(&v27, 0, sizeof(v27));
  }

  else
  {
    v16 = xgboost::FeatureMap::Name(v14, v11);
    std::string::basic_string[abi:ne200100]<0>(&v28, v16);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "{fname}");
  v33 = v28;
  memset(&v28, 0, sizeof(v28));
  std::string::basic_string[abi:ne200100]<0>(v34, "{<}");
  if (v13)
  {
    v18 = "<";
  }

  else
  {
    v18 = &unk_274E44C6E;
  }

  std::string::basic_string[abi:ne200100]<0>(v35, v18);
  if (v13)
  {
    xgboost::TreeGenerator::ToStr<float>(__p, v10);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, &unk_274E44C6E);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "{cond}");
  v37 = *__p;
  v38 = v26;
  __p[1] = 0;
  v26 = 0;
  __p[0] = 0;
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string const&,0>(v39, this + 24);
  std::map<std::string,std::string>::map[abi:ne200100](v30, &v31[0].__r_.__value_.__l.__data_, 5);
  xgboost::TreeGenerator::Match(a4, qword_280AF6F70, v30);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v30, v30[1]);
  for (i = 0; i != 0x1FFFFFFFFFFFFFE2; i -= 6)
  {
    v20 = &v31[i / 3];
    if (SHIBYTE(v39[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v20[9].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20[8].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20[8].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v15 <= v11 && SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  xgboost::GraphvizGenerator::BuildEdge<false>(v31, this, a2, v4, *(*(a2 + 20) + 20 * v4 + 4), 1);
  if ((v31[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = v31;
  }

  else
  {
    v21 = v31[0].__r_.__value_.__r.__words[0];
  }

  if ((v31[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31[0].__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v21, size);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }

  xgboost::GraphvizGenerator::BuildEdge<false>(v31, this, a2, v4, *(*(a2 + 20) + 20 * v4 + 8), 0);
  if ((v31[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = v31;
  }

  else
  {
    v23 = v31[0].__r_.__value_.__r.__words[0];
  }

  if ((v31[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v31[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v31[0].__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v23, v24);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }
}

void xgboost::GraphvizGenerator::LeafNode(xgboost::GraphvizGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, int __val@<W2>, std::string *a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D48))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6FA0, "    {nid} [ label=leaf={leaf-value} {params}]\n");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6FA0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D48);
  }

  std::to_string(&v12, __val);
  std::string::basic_string[abi:ne200100]<0>(v14, "{nid}");
  v15 = v12;
  memset(&v12, 0, sizeof(v12));
  xgboost::TreeGenerator::ToStr<float>(__p, *(*(a2 + 20) + 20 * __val + 16));
  std::string::basic_string[abi:ne200100]<0>(v16, "{leaf-value}");
  v17 = *__p;
  v18 = v11;
  __p[1] = 0;
  v11 = 0;
  __p[0] = 0;
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string const&,0>(v19, (this + 408));
  std::map<std::string,std::string>::map[abi:ne200100](v13, v14, 3);
  xgboost::TreeGenerator::Match(a4, qword_280AF6FA0, v13);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v13, v13[1]);
  for (i = 0; i != -18; i -= 6)
  {
    v9 = &v14[i];
    if (SHIBYTE(v19[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v9[15]);
    }

    if (*(v9 + 119) < 0)
    {
      operator delete(v9[12]);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void xgboost::GraphvizGenerator::BuildTree(xgboost::GraphvizGenerator *this@<X0>, const xgboost::RegTree *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 20) + 20 * a3 + 4) == -1)
  {
    v11 = *(*this + 56);

    v11();
  }

  else
  {
    if ((atomic_load_explicit(&qword_280AF6D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D50))
    {
      std::string::basic_string[abi:ne200100]<0>(qword_280AF6FB8, "{parent}\n{left}\n{right}");
      __cxa_atexit(MEMORY[0x277D82640], qword_280AF6FB8, &dword_274CA4000);
      __cxa_guard_release(&qword_280AF6D50);
    }

    v10 = *this;
    if (*(*(a2 + 29) + a3) == 1)
    {
      (*(v10 + 8))(v19, this, a2, a3, a4);
    }

    else
    {
      (*(v10 + 40))(v19, this, a2, a3, a4);
    }

    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string&,0>(v21, "{parent}", v19);
    (*(*this + 64))(v16, this, a2, *(*(a2 + 20) + 20 * a3 + 4), (a4 + 1));
    std::string::basic_string[abi:ne200100]<0>(v22, "{left}");
    v23 = *v16;
    v24 = v17;
    v16[1] = 0;
    v17 = 0;
    v16[0] = 0;
    (*(*this + 64))(__p, this, a2, *(*(a2 + 20) + 20 * a3 + 8), (a4 + 1));
    std::string::basic_string[abi:ne200100]<0>(v25, "{right}");
    v26 = *__p;
    v27[0] = v15;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    std::map<std::string,std::string>::map[abi:ne200100](v18, &v21[0].__r_.__value_.__l.__data_, 3);
    xgboost::TreeGenerator::Match(a5, qword_280AF6FB8, v18);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v18, v18[1]);
    for (i = 0; i != 0x1FFFFFFFFFFFFFEELL; i -= 6)
    {
      v13 = &v21[i / 3];
      if (SHIBYTE(v27[i]) < 0)
      {
        operator delete(v13[5].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13[4].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13[4].__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void xgboost::GraphvizGenerator::~GraphvizGenerator(std::locale *this)
{
  xgboost::GraphvizGenerator::~GraphvizGenerator(this);

  JUMPOUT(0x277C69180);
}

{
  this->__locale_ = &unk_2883E64C8;
  if (SHIBYTE(this[56].__locale_) < 0)
  {
    operator delete(this[54].__locale_);
  }

  if (SHIBYTE(this[53].__locale_) < 0)
  {
    operator delete(this[51].__locale_);
  }

  if (SHIBYTE(this[50].__locale_) < 0)
  {
    operator delete(this[48].__locale_);
  }

  if (SHIBYTE(this[47].__locale_) < 0)
  {
    operator delete(this[45].__locale_);
  }

  if (SHIBYTE(this[44].__locale_) < 0)
  {
    operator delete(this[42].__locale_);
  }

  if (SHIBYTE(this[41].__locale_) < 0)
  {
    operator delete(this[39].__locale_);
  }

  xgboost::TreeGenerator::~TreeGenerator(this);
}

void xgboost::GraphvizGenerator::BuildTree(xgboost::GraphvizGenerator *this, const xgboost::RegTree *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D58))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6FD0, "digraph {\n    graph [ rankdir={rankdir} ]\n{graph_attrs}\n{nodes}}");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6FD0, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D58);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "{rankdir}");
  if (*(this + 383) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(this + 45), *(this + 46));
  }

  else
  {
    v13 = *(this + 15);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "{graph_attrs}");
  if (*(this + 455) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(this + 54), *(this + 55));
  }

  else
  {
    v15 = *(this + 18);
  }

  (*(*this + 64))(__p, this, a2, 0, 0);
  std::string::basic_string[abi:ne200100]<0>(v16, "{nodes}");
  v17 = *__p;
  v18[0] = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  std::map<std::string,std::string>::map[abi:ne200100](v10, v12, 3);
  xgboost::TreeGenerator::Match(&v11, qword_280AF6FD0, v10);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v10, v10[1]);
  for (i = 0; i != -18; i -= 6)
  {
    v5 = &v12[i];
    if (SHIBYTE(v18[i]) < 0)
    {
      operator delete(v5[15]);
    }

    if (*(v5 + 119) < 0)
    {
      operator delete(v5[12]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v11;
  }

  else
  {
    v6 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 4, v6, size);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void dmlc::JSONReader::BeginObject(dmlc::JSONReader *this)
{
  v2 = this + 8;
  v3 = this + 16;
  v4 = MEMORY[0x277D85DE0];
  do
  {
    while (1)
    {
      v5 = std::istream::get();
      v6 = v5;
      v7 = v3;
      if (v5 != 10)
      {
        v7 = v2;
        if (v5 != 13)
        {
          break;
        }
      }

      ++*v7;
LABEL_5:
      if ((*(v4 + 4 * v5 + 60) & 0x4000) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v5 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  while (__maskrune(v5, 0x4000uLL));
LABEL_9:
  v24 = v6;
  LOBYTE(__p) = 123;
  if (v6 != 123)
  {
    dmlc::LogCheckFormat<int,char>(&v23, &v24, &__p);
  }

  v9 = *(this + 4);
  v8 = *(this + 5);
  if (v9 >= v8)
  {
    v11 = *(this + 3);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
    v17 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 24, v17);
    }

    v18 = (v9 - v11) >> 3;
    v19 = (8 * v13);
    v20 = (8 * v13 - 8 * v18);
    *v19 = 0;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = *(this + 3);
    *(this + 3) = v20;
    *(this + 4) = v10;
    *(this + 5) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = 0;
    v10 = v9 + 8;
  }

  *(this + 4) = v10;
}

void sub_274DF3340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a19, v20);
  }

  _Unwind_Resume(a1);
}

uint64_t dmlc::JSONReader::NextObjectItem(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85DE0];
  v5 = a1 + 1;
  v6 = a1 + 2;
  if (!*(a1[4] - 8))
  {
    while (1)
    {
      v10 = std::istream::peek();
      v11 = v10;
      v12 = v6;
      if (v10 == 10 || (v12 = v5, v10 == 13))
      {
        ++*v12;
      }

      else if (v10 > 0x7F)
      {
        if (!__maskrune(v10, 0x4000uLL))
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      if ((*(v4 + 4 * v10 + 60) & 0x4000) == 0)
      {
LABEL_21:
        if (v11 != 125)
        {
          goto LABEL_24;
        }

        std::istream::get();
LABEL_23:
        result = 0;
        a1[4] -= 8;
        return result;
      }

LABEL_13:
      std::istream::get();
    }
  }

  do
  {
    while (1)
    {
      v7 = std::istream::get();
      v8 = v7;
      v9 = v6;
      if (v7 != 10)
      {
        v9 = v5;
        if (v7 != 13)
        {
          break;
        }
      }

      ++*v9;
LABEL_5:
      if ((*(v4 + 4 * v7 + 60) & 0x4000) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v7 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  while (__maskrune(v7, 0x4000uLL));
LABEL_9:
  v19 = v8;
  if (v8 == -1 || v8 == 125)
  {
    goto LABEL_23;
  }

  LOBYTE(__p) = 44;
  if (v8 != 44)
  {
    dmlc::LogCheckFormat<int,char>(&v18, &v19, &__p);
  }

LABEL_24:
  ++*(a1[4] - 8);
  dmlc::JSONReader::ReadString(a1, a2);
  while (2)
  {
    while (2)
    {
      v14 = std::istream::get();
      v15 = v14;
      v16 = a1 + 2;
      if (v14 == 10 || (v16 = a1 + 1, v14 == 13))
      {
        ++*v16;
        goto LABEL_28;
      }

      if (v14 <= 0x7F)
      {
LABEL_28:
        if ((*(v4 + 4 * v14 + 60) & 0x4000) == 0)
        {
          goto LABEL_32;
        }

        continue;
      }

      break;
    }

    if (__maskrune(v14, 0x4000uLL))
    {
      continue;
    }

    break;
  }

LABEL_32:
  v19 = v15;
  LOBYTE(__p) = 58;
  if (v15 != 58)
  {
    dmlc::LogCheckFormat<int,char>(&v18, &v19, &__p);
  }

  return 1;
}

void sub_274DF37E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a18);
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a19, v20);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t dmlc::JSONReader::line_info(dmlc::JSONReader *this, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " Line ", 6);
  if (a2[1] <= a2[2])
  {
    v4 = a2[2];
  }

  else
  {
    v4 = a2[1];
  }

  MEMORY[0x277C68E50](v3, v4);
  std::ios_base::getloc((*a2 + *(**a2 - 24)));
  v5 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v15);
  std::istream::getline();
  v7 = strlen(__s);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, __s, v7);
  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v14);
}

void dmlc::LogCheckFormat<int,char>(void *a1, unsigned int *a2, char *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E20](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v10 = *a3;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v10, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274DF3D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x277C69180](v9, 0x1012C40EC159624, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t dmlc::JSONReader::ReadString(void *a1, uint64_t a2)
{
  v4 = a1 + 1;
  v5 = a1 + 2;
  v6 = MEMORY[0x277D85DE0];
  do
  {
    while (1)
    {
      v7 = std::istream::get();
      v8 = v7;
      v9 = v5;
      if (v7 != 10)
      {
        v9 = v4;
        if (v7 != 13)
        {
          break;
        }
      }

      ++*v9;
LABEL_5:
      if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v7 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  while (__maskrune(v7, 0x4000uLL));
LABEL_9:
  v32 = v8;
  LOBYTE(__p) = 34;
  if (v8 != 34)
  {
    dmlc::LogCheckFormat<int,char>(v25, &v32, &__p);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  while (1)
  {
    while (1)
    {
      v10 = std::istream::get();
      v11 = v10;
      if (v10 != 92)
      {
        break;
      }

      v19 = std::istream::get();
      if (v19 <= 109)
      {
        if (v19 == 34)
        {
          v20 = "";
          goto LABEL_37;
        }

        if (v19 == 92)
        {
          v20 = "\"";
          goto LABEL_37;
        }
      }

      else
      {
        if (v19 == 110)
        {
          v20 = "\n";
          goto LABEL_37;
        }

        v20 = "\r";
        if (v19 == 114)
        {
          goto LABEL_37;
        }

        if (v19 == 116)
        {
          v20 = "\t";
LABEL_37:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v20, 1);
          continue;
        }
      }

      Entry = dmlc::LogMessageFatal::GetEntry(v33);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././json.h", 695);
      v22 = dmlc::LogMessageFatal::GetEntry(v33);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "unknown string escape \"", 23);
      LOBYTE(v25[0]) = v19;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, 1);
      dmlc::LogMessageFatal::~LogMessageFatal(v33);
    }

    if (v10 == 34)
    {
      break;
    }

    LOBYTE(v25[0]) = v10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v25, 1);
    if ((v11 + 1) <= 0xE && ((1 << (v11 + 1)) & 0x4801) != 0)
    {
      v13 = dmlc::LogMessageFatal::GetEntry(v33);
      dmlc::LogMessageFatal::Entry::Init(v13, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/dmlc/././json.h", 702);
      v14 = dmlc::LogMessageFatal::GetEntry(v33);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Error at", 8);
      dmlc::JSONReader::line_info(v25, a1);
      if (v26 >= 0)
      {
        v16 = v25;
      }

      else
      {
        v16 = v25[0];
      }

      if (v26 >= 0)
      {
        v17 = HIBYTE(v26);
      }

      else
      {
        v17 = v25[1];
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", Expect '' but reach end of line ", 35);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      dmlc::LogMessageFatal::~LogMessageFatal(v33);
    }
  }

  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v25;
  *(a2 + 16) = v26;
  __p = *MEMORY[0x277D82828];
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v31);
}

void sub_274DF426C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  dmlc::LogMessageFatal::~LogMessageFatal((v21 - 97));
  v23 = a10;
  a10 = 0;
  if (v23)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v23);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, _OWORD **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    a1[2] = (a1[2] - 1);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((v4 + 4));

    operator delete(v4);
  }
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],std::string const&,0>(std::string *a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_274DF4538(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::map<std::string,std::string>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void xgboost::GraphvizGenerator::BuildEdge<true>(std::string *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D30))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6F58, "    {nid} -> {child} [label={branch} color={color}]\n");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6F58, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D30);
  }

  v12 = *(a3 + 160) + 20 * a4;
  v13 = 8;
  if (*(v12 + 12) < 0)
  {
    v13 = 4;
  }

  v14 = *(v12 + v13);
  if (a6)
  {
    v15 = "no";
  }

  else
  {
    v15 = "yes";
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, v15);
  if (v14 == a5)
  {
    v16 = ", missing";
  }

  else
  {
    v16 = &unk_274E44C6E;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v16);
  if ((v30 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v18 = v30;
  }

  else
  {
    v18 = v29;
  }

  v19 = std::string::append(&v34, p_p, v18);
  v21 = v19->__r_.__value_.__r.__words[0];
  size = v19->__r_.__value_.__l.__size_;
  v31 = v19->__r_.__value_.__r.__words[0];
  *v32 = size;
  *&v32[7] = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v22 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v33 = v22;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::to_string(&v27, a4);
  std::string::basic_string[abi:ne200100]<0>(&v34, "{nid}");
  v35 = v27;
  memset(&v27, 0, sizeof(v27));
  std::to_string(&v26, a5);
  std::string::basic_string[abi:ne200100]<0>(v36, "{child}");
  v37 = v26;
  memset(&v26, 0, sizeof(v26));
  v23 = 336;
  if (v14 == a5)
  {
    v23 = 312;
  }

  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],std::string const&,0>(v38, "{color}", (a2 + v23));
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string&,0>(v39, "{branch}", &v31);
  std::map<std::string,std::string>::map[abi:ne200100](&__p, &v34.__r_.__value_.__l.__data_, 4);
  xgboost::TreeGenerator::Match(a1, qword_280AF6F58, &__p);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v29);
  for (i = 0; i != -24; i -= 6)
  {
    v25 = (&v34.__r_.__value_.__l.__data_ + i * 8);
    if (SHIBYTE(v39[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v25[21]);
    }

    if (*(v25 + 167) < 0)
    {
      operator delete(v25[18]);
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v21);
    return;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v22 < 0)
  {
    goto LABEL_34;
  }
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string const&,0>(std::string *a1, __int128 *a2)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "{params}");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void sub_274DF49F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string&,0>(std::string *a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_274DF4A68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::GraphvizGenerator::BuildEdge<false>(std::string *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF6D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6D40))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_280AF6F88, "    {nid} -> {child} [label={branch} color={color}]\n");
    __cxa_atexit(MEMORY[0x277D82640], qword_280AF6F88, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6D40);
  }

  v12 = *(a3 + 160) + 20 * a4;
  v13 = 8;
  if (*(v12 + 12) < 0)
  {
    v13 = 4;
  }

  v14 = *(v12 + v13);
  if (a6)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, v15);
  if (v14 == a5)
  {
    v16 = ", missing";
  }

  else
  {
    v16 = &unk_274E44C6E;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v16);
  if ((v30 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v18 = v30;
  }

  else
  {
    v18 = v29;
  }

  v19 = std::string::append(&v34, p_p, v18);
  v21 = v19->__r_.__value_.__r.__words[0];
  size = v19->__r_.__value_.__l.__size_;
  v31 = v19->__r_.__value_.__r.__words[0];
  *v32 = size;
  *&v32[7] = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v22 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v33 = v22;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::to_string(&v27, a4);
  std::string::basic_string[abi:ne200100]<0>(&v34, "{nid}");
  v35 = v27;
  memset(&v27, 0, sizeof(v27));
  std::to_string(&v26, a5);
  std::string::basic_string[abi:ne200100]<0>(v36, "{child}");
  v37 = v26;
  memset(&v26, 0, sizeof(v26));
  v23 = 336;
  if (v14 == a5)
  {
    v23 = 312;
  }

  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],std::string const&,0>(v38, "{color}", (a2 + v23));
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],std::string&,0>(v39, "{branch}", &v31);
  std::map<std::string,std::string>::map[abi:ne200100](&__p, &v34.__r_.__value_.__l.__data_, 4);
  xgboost::TreeGenerator::Match(a1, qword_280AF6F88, &__p);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v29);
  for (i = 0; i != -24; i -= 6)
  {
    v25 = (&v34.__r_.__value_.__l.__data_ + i * 8);
    if (SHIBYTE(v39[1].__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(v25[21]);
    }

    if (*(v25 + 167) < 0)
    {
      operator delete(v25[18]);
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v21);
    return;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v22 < 0)
  {
    goto LABEL_34;
  }
}

void *xgboost::Cast<xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10> const,xgboost::Value>(_DWORD *a1)
{
  if (a1[3] == 10)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v5 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v22, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0xA00000000;
    v15[0] = &unk_2883E65F0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::Value::TypeStr(v15, __p);
    if ((v20 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v23, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v25 = v11->__r_.__value_.__r.__words[2];
    v24 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    if (v25 >= 0)
    {
      v14 = HIBYTE(v25);
    }

    else
    {
      v14 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E65F0;
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }
}

void sub_274DF51B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v32 - 33));
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9> const,xgboost::Value>(_DWORD *a1)
{
  if (a1[3] == 9)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v5 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v22, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x900000000;
    v15[0] = &unk_2883E65A8;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::Value::TypeStr(v15, __p);
    if ((v20 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v23, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v25 = v11->__r_.__value_.__r.__words[2];
    v24 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    if (v25 >= 0)
    {
      v14 = HIBYTE(v25);
    }

    else
    {
      v14 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E65A8;
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }
}

void sub_274DF54D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v32 - 33));
  _Unwind_Resume(a1);
}

void xgboost::FromJson<xgboost::TreeParam>(void *a1, _DWORD *a2, uint64_t a3)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a2);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v16 = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4, &std::piecewise_construct, &v16, &v15);
      v5 = std::string::operator=((v9 + 7), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  xgboost::TreeParam::__MANAGER__(v5);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6FE8, a3, v13, v14, 0, a1, 0);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void sub_274DF5698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(va, v6);
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value>(_DWORD *a1)
{
  if (a1[3] == 7)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v5 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v22, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x700000000;
    v15[0] = &unk_2883E16B0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::Value::TypeStr(v15, __p);
    if ((v20 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v23, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v25 = v11->__r_.__value_.__r.__words[2];
    v24 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    if (v25 >= 0)
    {
      v14 = HIBYTE(v25);
    }

    else
    {
      v14 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E16B0;
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }
}

void sub_274DF593C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v32 - 33));
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8> const,xgboost::Value>(_DWORD *a1)
{
  if (a1[3] == 8)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v26);
    xgboost::Value::TypeStr(a1, &v21);
    v5 = std::string::insert(&v21, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v22, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x800000000;
    v15[0] = &unk_2883E6560;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    xgboost::Value::TypeStr(v15, __p);
    if ((v20 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v23, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v25 = v11->__r_.__value_.__r.__words[2];
    v24 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v25 >= 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    if (v25 >= 0)
    {
      v14 = HIBYTE(v25);
    }

    else
    {
      v14 = *(&v24 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E6560;
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v26);
  }
}

void sub_274DF5C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v32 - 33));
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *std::vector<xgboost::RTreeNodeStat>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::tree::GradStats>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274DF5E88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::RegTree::Node>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::RegTree::Node>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274DF5F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::FeatureType>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274DF5F7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::RegTree::Segment>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::tree::GradStats>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274DF5FF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::GetElem<xgboost::JsonBoolean,xgboost::Json>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8 * a2);
  if (v2[3] == 5)
  {
    v3 = *(xgboost::Cast<xgboost::JsonBoolean const,xgboost::Value const>(v2) + 16);
  }

  else
  {
    v3 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(v2) + 2) == 1;
  }

  return v3 & 1;
}

uint64_t *std::vector<xgboost::Json>::__assign_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *(a1 + 16);
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 3)
  {
    if (v9)
    {
      std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<xgboost::Json>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    while (v6 != a3)
    {
      v18 = *v6++;
      xgboost::IntrusivePtr<xgboost::Value>::operator=(v9++, v18);
    }

    return std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](a1, v9);
  }

  else
  {
    if (v12 != v9)
    {
      v14 = v12 - v9;
      v15 = a2;
      do
      {
        v16 = *v15++;
        xgboost::IntrusivePtr<xgboost::Value>::operator=(v9++, v16);
        v14 -= 8;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*,xgboost::Json*,xgboost::Json*>(a1, (v6 + v13), a3, v12);
    *(a1 + 8) = result;
  }

  return result;
}

atomic_uint **xgboost::IntrusivePtr<xgboost::Value>::operator=(atomic_uint **a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  v3 = *a1;
  *a1 = a2;
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(uint64_t a1, std::vector<int>::size_type a2)
{
  *(a1 + 8) = 0x900000000;
  *a1 = &unk_2883E65A8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<int>::resize((a1 + 16), a2);
  return a1;
}

void sub_274DF62B0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(uint64_t a1, std::vector<char>::size_type a2)
{
  *(a1 + 8) = 0x800000000;
  *a1 = &unk_2883E6560;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2)
  {
    std::vector<char>::__append((a1 + 16), a2);
  }

  return a1;
}

void sub_274DF6338(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(void *a1, unint64_t a2)
{
  a1[1] = 0xA00000000;
  *a1 = &unk_2883E65F0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  std::vector<unsigned long>::resize(a1 + 2, a2);
  return a1;
}

void sub_274DF63BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::PathElement>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::PathElement>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274DF6434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::PathElement>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, a2);
  }

  std::vector<xgboost::TreeGenReg const*>::__throw_length_error[abi:ne200100]();
}

void dmlc::io::InputSplitBase::Init(dmlc::io::InputSplitBase *this, dmlc::io::FileSystem *a2, char *__s, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  *(this + 1) = a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  dmlc::io::InputSplitBase::InitInputFileInfo(this, &__p, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::vector<unsigned long>::resize(this + 2, 0x2E8BA2E8BA2E8BA3 * ((*(this + 9) - *(this + 8)) >> 3) + 1);
  **(this + 2) = 0;
  v9 = *(this + 8);
  v8 = *(this + 9);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = 72;
    do
    {
      *(*(this + 2) + 8 * v10 + 8) = *(v9 + v11) + *(*(this + 2) + 8 * v10);
      if (*(v9 + v11) % a4)
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/input_split_base.cc", 24);
        v13 = dmlc::LogMessageFatal::GetEntry(&__p);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: files_[i].size % align_bytes == 0", 47);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "file do not align by ", 21);
        v17 = MEMORY[0x277C68E50](v16, a4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " bytes", 6);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
        v9 = *(this + 8);
        v8 = *(this + 9);
      }

      ++v10;
      v11 += 88;
    }

    while (v10 < 0x2E8BA2E8BA2E8BA3 * ((v8 - v9) >> 3));
  }

  *(this + 20) = a4;
}

void sub_274DF6624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::io::InputSplitBase::InitInputFileInfo(uint64_t a1, const std::string *a2, char a3)
{
  dmlc::io::InputSplitBase::ConvertToURIs(a1, a2, &v27);
  if (v28 != v27)
  {
    v5 = 0;
    do
    {
      (*(**(a1 + 8) + 16))(v19);
      if (v26 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v6 = **(a1 + 8);
        if (a3)
        {
          v7 = (v6 + 32);
        }

        else
        {
          v7 = (v6 + 24);
        }

        (*v7)();
        v9 = v16;
        v8 = v17;
        if (v17 != v16)
        {
          v10 = 0;
          v11 = 0;
          do
          {
            v12 = v9 + v10;
            if (*(v9 + v10 + 72) && !*(v12 + 80))
            {
              std::vector<dmlc::io::FileInfo>::push_back[abi:ne200100]((a1 + 64), v12);
              v9 = v16;
              v8 = v17;
            }

            ++v11;
            v10 += 88;
          }

          while (v11 < 0x2E8BA2E8BA2E8BA3 * ((v8 - v9) >> 3));
        }

        v29 = &v16;
        std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&v29);
      }

      else if (v25)
      {
        std::vector<dmlc::io::FileInfo>::push_back[abi:ne200100]((a1 + 64), v19);
      }

      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      ++v5;
    }

    while (v5 < 0x8E38E38E38E38E39 * ((v28 - v27) >> 3));
  }

  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  LODWORD(v29) = 0;
  v15 = v13 - v14;
  v16 = 0x2E8BA2E8BA2E8BA3 * (v15 >> 3);
  if (!v15)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v16, &v29);
  }

  v19[0] = &v27;
  std::vector<dmlc::io::URI>::__destroy_vector::operator()[abi:ne200100](v19);
}

void sub_274DF6940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a12 = &a23;
  std::vector<dmlc::io::URI>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *dmlc::io::InputSplitBase::ResetPartition(void *this, unsigned int a2, unsigned int a3)
{
  v3 = this[3];
  v4 = *(v3 - 1);
  v5 = (this[20] + (v4 + a3 - 1) / a3 - 1) / this[20] * this[20];
  if (v4 >= v5 * a2)
  {
    v6 = v5 * a2;
  }

  else
  {
    v6 = *(v3 - 1);
  }

  v7 = v5 * (a2 + 1);
  if (v4 >= v7)
  {
    v4 = v7;
  }

  this[6] = v6;
  this[7] = v4;
  this[5] = v6;
  if (v6 != v4)
  {
    v8 = this;
    v9 = this[2];
    if (v3 == v9)
    {
      this[12] = -1;
    }

    else
    {
      v10 = v3 - v9;
      v11 = v10;
      v12 = this[2];
      do
      {
        v13 = v11 >> 1;
        v14 = &v12[v11 >> 1];
        v16 = *v14;
        v15 = v14 + 1;
        v11 += ~(v11 >> 1);
        if (v6 < v16)
        {
          v11 = v13;
        }

        else
        {
          v12 = v15;
        }
      }

      while (v11);
      this[12] = v12 - v9 - 1;
      v3 = v9;
      do
      {
        v17 = v10 >> 1;
        v18 = &v3[v10 >> 1];
        v20 = *v18;
        v19 = v18 + 1;
        v10 += ~(v10 >> 1);
        if (v4 < v20)
        {
          v10 = v17;
        }

        else
        {
          v3 = v19;
        }
      }

      while (v10);
    }

    v21 = v3 - v9 - 1;
    this[13] = v21;
    v22 = this[11];
    if (v22)
    {
      (*(*v22 + 24))(v22);
      v8[11] = 0;
      v4 = v8[7];
      v21 = v8[13];
      v9 = v8[2];
    }

    v23 = v9[v21];
    if (v4 != v23)
    {
      if (v4 <= v23)
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v38);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/input_split_base.cc", 51);
        v25 = dmlc::LogMessageFatal::GetEntry(&v38);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Check failed: offset_end_ >file_offset_[file_ptr_end_]", 54);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v38);
        v21 = v8[13];
      }

      v27 = v8[8];
      if (v21 >= 0x2E8BA2E8BA2E8BA3 * ((v8[9] - v27) >> 3))
      {
        v28 = dmlc::LogMessageFatal::GetEntry(&v37);
        dmlc::LogMessageFatal::Entry::Init(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/input_split_base.cc", 52);
        v29 = dmlc::LogMessageFatal::GetEntry(&v37);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: file_ptr_end_ < files_.size()", 43);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v37);
        v21 = v8[13];
        v27 = v8[8];
      }

      v31 = (*(*v8[1] + 48))(v8[1], v27 + 88 * v21, 0);
      v8[11] = v31;
      (*(*v31 + 32))(v31, v8[7] - *(v8[2] + 8 * v8[13]));
      v8[7] += (*(*v8 + 112))(v8, v8[11]);
      v32 = v8[11];
      if (v32)
      {
        (*(*v32 + 24))(v32);
      }
    }

    v33 = (*(*v8[1] + 48))(v8[1], v8[8] + 88 * v8[12], 0);
    v8[11] = v33;
    v34 = v8[6];
    v35 = *(v8[2] + 8 * v8[12]);
    v36 = v34 - v35;
    if (v34 != v35)
    {
      (*(*v33 + 32))(v33, v36);
      v8[6] += (*(*v8 + 112))(v8, v8[11]);
    }

    return (*(*v8 + 16))(v8, v36);
  }

  return this;
}

void *dmlc::io::InputSplitBase::BeforeFirst(void *this)
{
  v1 = this[6];
  if (v1 < this[7])
  {
    v2 = this;
    v3 = this[2];
    v4 = this[3];
    if (v4 != v3)
    {
      v5 = v4 - v3;
      v4 = this[2];
      do
      {
        v6 = v5 >> 1;
        v7 = &v4[v5 >> 1];
        v9 = *v7;
        v8 = v7 + 1;
        v5 += ~(v5 >> 1);
        if (v1 < v9)
        {
          v5 = v6;
        }

        else
        {
          v4 = v8;
        }
      }

      while (v5);
    }

    v10 = v4 - v3 - 1;
    v11 = this[11];
    if (v2[12] != v10)
    {
      if (v11)
      {
        (*(*v11 + 24))(v11);
      }

      v2[12] = v10;
      v11 = (*(*v2[1] + 48))(v2[1], v2[8] + 88 * v10, 0);
      v2[11] = v11;
      v1 = v2[6];
      v10 = v2[12];
      v3 = v2[2];
    }

    this = (*(*v11 + 32))(v11, v1 - v3[v10]);
    v2[5] = v2[6];
    v2[14] = 0;
    v2[15] = 0;
    if (*(v2 + 191) < 0)
    {
      *v2[21] = 0;
      v2[22] = 0;
    }

    else
    {
      *(v2 + 168) = 0;
      *(v2 + 191) = 0;
    }
  }

  return this;
}

void dmlc::io::InputSplitBase::~InputSplitBase(dmlc::io::InputSplitBase *this)
{
  *this = &unk_2883E6680;
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v5 = (this + 64);
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

__n128 dmlc::io::InputSplitBase::StripEnd@<Q0>(std::string *this@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  while (1)
  {
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      if (!size)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!*(&this->__r_.__value_.__s + 23))
      {
        goto LABEL_12;
      }

      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    v8 = size - 1;
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    if (this->__r_.__value_.__s.__data_[v8] != v5)
    {
      goto LABEL_12;
    }

LABEL_11:
    std::string::resize(this, v6 - 1, 0);
  }

  if (*(this->__r_.__value_.__r.__words[0] + v8) == v5)
  {
    v6 = this->__r_.__value_.__l.__size_;
    goto LABEL_11;
  }

LABEL_12:
  result = *&this->__r_.__value_.__l.__data_;
  *a3 = *&this->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void dmlc::io::InputSplitBase::ConvertToURIs(uint64_t a1@<X0>, const std::string *a2@<X1>, std::string **a3@<X8>)
{
  dmlc::Split(a2, 59, &v43);
  *a3 = 0;
  a3[1] = 0;
  v26 = a3;
  a3[2] = 0;
  v4 = v43;
  if (v44 == v43)
  {
    goto LABEL_76;
  }

  v5 = 0;
  do
  {
    v6 = (v4 + 24 * v5);
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    dmlc::io::URI::URI(&v40, v6);
    v7 = std::string::rfind(&v42, 47, 0xFFFFFFFFFFFFFFFFLL);
    if (v7 == -1)
    {
      goto LABEL_9;
    }

    v8 = v7;
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v42.__r_.__value_.__l.__size_;
    }

    if (v7 + 1 == size)
    {
LABEL_9:
      std::vector<dmlc::io::URI>::push_back[abi:ne200100](v26, &v40);
      goto LABEL_69;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v37 = v40;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v41;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v42;
    }

    std::string::basic_string(&__dst, &v42, 0, v8, v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v25 = v5;
    __p = __dst;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    (*(**(a1 + 8) + 24))(*(a1 + 8), &v37, &v34);
    v10 = v34;
    if (v35 == v34)
    {
LABEL_53:
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
      }

      else
      {
        v31 = v42;
      }

      std::regex_traits<char>::regex_traits(&v27);
      v30 = 0;
      v29 = 0u;
      v28 = 0u;
      v22 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v31;
      }

      else
      {
        v23 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v31.__r_.__value_.__l.__size_;
      }

      std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v27, v23, v23 + v22);
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v10 + v11;
      if (*(v13 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v13 + 48), *(v13 + 56));
      }

      else
      {
        v14 = *(v13 + 48);
        v33.__r_.__value_.__r.__words[2] = *(v13 + 64);
        *&v33.__r_.__value_.__l.__data_ = v14;
      }

      dmlc::io::InputSplitBase::StripEnd(&v33, 0x2Fu, &__dst);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v32, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
      }

      else
      {
        v32 = v42;
      }

      dmlc::io::InputSplitBase::StripEnd(&v32, 0x2Fu, v46);
      v15 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = __dst.__r_.__value_.__l.__size_;
      }

      v17 = v47;
      v18 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v17 = v46[1];
      }

      if (v16 != v17)
      {
        v21 = 0;
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

LABEL_44:
        operator delete(v46[0]);
        goto LABEL_45;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v47 & 0x80u) == 0)
      {
        v20 = v46;
      }

      else
      {
        v20 = v46[0];
      }

      v21 = memcmp(p_dst, v20, v16) == 0;
      if (v18 < 0)
      {
        goto LABEL_44;
      }

LABEL_45:
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v15 < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (v21)
      {
        break;
      }

      ++v12;
      v10 = v34;
      v11 += 88;
      if (v12 >= 0x2E8BA2E8BA2E8BA3 * ((v35 - v34) >> 3))
      {
        goto LABEL_53;
      }
    }

    std::vector<dmlc::io::URI>::push_back[abi:ne200100](v26, (v34 + v11));
    v5 = v25;
    __dst.__r_.__value_.__r.__words[0] = &v34;
    std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

LABEL_69:
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    ++v5;
    v4 = v43;
  }

  while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 3));
LABEL_76:
  __dst.__r_.__value_.__r.__words[0] = &v43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
}

void sub_274DF8A80()
{
  if (v0 < 0)
  {
    JUMPOUT(0x274DF8B54);
  }

  JUMPOUT(0x274DF8B58);
}

void sub_274DF8B24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a51 < 0)
  {
    JUMPOUT(0x274DF8B54);
  }

  JUMPOUT(0x274DF8B58);
}

void std::vector<dmlc::io::URI>::push_back[abi:ne200100](std::string **a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v7 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v9;
    }

    v29 = a1;
    if (v10)
    {
      if (v10 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (72 * v7);
    v25 = 0;
    v26 = v14;
    v27 = v14;
    v28 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v14, *a2, *(a2 + 1));
    }

    else
    {
      *&v14->__r_.__value_.__l.__data_ = *a2;
      v14->__r_.__value_.__r.__words[2] = *(a2 + 2);
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      *&v14[1].__r_.__value_.__l.__data_ = *(a2 + 24);
      v14[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    }

    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v14 + 2, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      *&v14[2].__r_.__value_.__l.__data_ = a2[3];
      v14[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    }

    v15 = v27;
    v16 = *a1;
    v17 = a1[1];
    v18 = (v26 + *a1 - v17);
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v26 + *a1 - v17;
      do
      {
        v21 = *&v19->__r_.__value_.__l.__data_;
        *(v20 + 2) = *(&v19->__r_.__value_.__l + 2);
        *v20 = v21;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v22 = *&v19[1].__r_.__value_.__l.__data_;
        *(v20 + 5) = *(&v19[1].__r_.__value_.__l + 2);
        *(v20 + 24) = v22;
        v19[1].__r_.__value_.__l.__size_ = 0;
        v19[1].__r_.__value_.__r.__words[2] = 0;
        v19[1].__r_.__value_.__r.__words[0] = 0;
        v23 = *&v19[2].__r_.__value_.__l.__data_;
        *(v20 + 8) = *(&v19[2].__r_.__value_.__l + 2);
        *(v20 + 3) = v23;
        v19[2].__r_.__value_.__l.__size_ = 0;
        v19[2].__r_.__value_.__r.__words[2] = 0;
        v19[2].__r_.__value_.__r.__words[0] = 0;
        v19 += 3;
        v20 += 72;
      }

      while (v19 != v17);
      do
      {
        std::allocator_traits<std::allocator<dmlc::io::URI>>::destroy[abi:ne200100]<dmlc::io::URI,0>(v16);
        v16 += 72;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v13 = v15 + 3;
    *a1 = v18;
    a1[1] = v13;
    v24 = a1[2];
    a1[2] = v28;
    v27 = v16;
    v28 = v24;
    v25 = v16;
    v26 = v16;
    std::__split_buffer<dmlc::io::URI>::~__split_buffer(&v25);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v5 + 1, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v11 = *(a2 + 24);
      v5[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&v5[1].__r_.__value_.__l.__data_ = v11;
    }

    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(v5 + 2, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v12 = a2[3];
      v5[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
      *&v5[2].__r_.__value_.__l.__data_ = v12;
    }

    v13 = v5 + 3;
    a1[1] = v13;
  }

  a1[1] = v13;
}

void sub_274DF8E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  std::__split_buffer<dmlc::io::URI>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

uint64_t std::vector<dmlc::io::FileInfo>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<dmlc::io::FileInfo>::__emplace_back_slow_path<dmlc::io::FileInfo const&>(a1, a2);
  }

  else
  {
    std::vector<dmlc::io::FileInfo>::__construct_one_at_end[abi:ne200100]<dmlc::io::FileInfo const&>(a1, a2);
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t (***dmlc::io::InputSplitBase::Read(dmlc::io::InputSplitBase *this, char *a2, uint64_t a3))(void, char *, uint64_t)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 88))(this);
  result = *(this + 11);
  if (result)
  {
    v8 = *(this + 7);
    if (*(this + 6) >= v8)
    {
      return 0;
    }

    v9 = *(this + 5);
    v10 = v9 + a3;
    v11 = v8 - v9;
    if (v10 > v8)
    {
      a3 = v11;
    }

    if (a3)
    {
      v12 = (**result)(result, a2, a3);
      v13 = *(this + 5) + v12;
      *(this + 5) = v13;
      v14 = a3 - v12;
      if (a3 != v12)
      {
        v15 = &a2[v12];
        do
        {
          if (v12)
          {
            v16 = *(this + 11);
          }

          else
          {
            if (v6)
            {
              *v15++ = 10;
              --v14;
              v13 = *(this + 5);
            }

            v17 = *(this + 12);
            if (v13 != *(*(this + 2) + 8 * v17 + 8))
            {
              dmlc::LogMessage::LogMessage(v36, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/input_split_base.cc", 202);
              v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36[0], "curr=", 5);
              v19 = MEMORY[0x277C68E50](v18, *(this + 5));
              v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ",begin=", 7);
              v21 = MEMORY[0x277C68E50](v20, *(this + 6));
              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ",end=", 5);
              v23 = MEMORY[0x277C68E50](v22, *(this + 7));
              v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ",fileptr=", 9);
              v25 = MEMORY[0x277C68E50](v24, *(this + 12));
              v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ",fileoffset=", 12);
              MEMORY[0x277C68E50](v26, *(*(this + 2) + 8 * *(this + 12) + 8));
              dmlc::LogMessage::~LogMessage(v36);
              if (*(this + 12))
              {
                v27 = 0;
                do
                {
                  dmlc::LogMessage::LogMessage(v36, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/input_split_base.cc", 208);
                  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36[0], "offset[", 7);
                  v29 = MEMORY[0x277C68E50](v28, v27);
                  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "]=", 2);
                  MEMORY[0x277C68E50](v30, *(*(this + 2) + 8 * v27));
                  dmlc::LogMessage::~LogMessage(v36);
                  ++v27;
                }

                while (v27 < *(this + 12));
              }

              Entry = dmlc::LogMessageFatal::GetEntry(v36);
              dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/input_split_base.cc", 210);
              v32 = dmlc::LogMessageFatal::GetEntry(v36);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "file offset not calculated correctly", 36);
              dmlc::LogMessageFatal::~LogMessageFatal(v36);
              v17 = *(this + 12);
            }

            v33 = v17 + 1;
            v34 = *(this + 8);
            if (v33 >= 0x2E8BA2E8BA2E8BA3 * ((*(this + 9) - v34) >> 3))
            {
              return (a3 - v14);
            }

            *(this + 12) = v33;
            v35 = *(this + 11);
            if (v35)
            {
              (*(*v35 + 24))(v35);
              v33 = *(this + 12);
              v34 = *(this + 8);
            }

            v16 = (*(**(this + 1) + 48))(*(this + 1), v34 + 88 * v33, 0);
            *(this + 11) = v16;
          }

          v12 = (**v16)(v16, v15, v14);
          v15 += v12;
          v13 = *(this + 5) + v12;
          *(this + 5) = v13;
          v14 -= v12;
        }

        while (v14);
      }

      return (a3 - v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dmlc::io::InputSplitBase::ReadChunk(dmlc::io::InputSplitBase *this, char *__dst, unint64_t *a3)
{
  v6 = *a3;
  v7 = (this + 168);
  v8 = *(this + 191);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(this + 22);
    if (v6 > v8)
    {
      if (!v8)
      {
        v11 = 0;
        goto LABEL_13;
      }

      v9 = v7->__r_.__value_.__r.__words[0];
      goto LABEL_8;
    }

LABEL_10:
    *a3 = 0;
    return 1;
  }

  if (v6 <= v8)
  {
    goto LABEL_10;
  }

  v9 = this + 168;
  if (!*(this + 191))
  {
    v10 = 0;
    goto LABEL_9;
  }

LABEL_8:
  memcpy(__dst, v9, v8);
  v10 = *(this + 191);
  if (v10 < 0)
  {
    v11 = *(this + 22);
    goto LABEL_13;
  }

LABEL_9:
  v11 = v10;
LABEL_13:
  std::string::resize(v7, 0, 0);
  v12 = dmlc::io::InputSplitBase::Read(this, &__dst[v11], v6 - v11);
  v13 = v12 + v11;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  if ((*(*this + 88))(this))
  {
    if (v14)
    {
      v6 = v13;
    }

    else
    {
      __dst[v13] = 10;
      v6 = v13 + 1;
    }
  }

  else if (v13 != v6)
  {
    *a3 = v13;
    return 1;
  }

  v16 = (*(*this + 120))(this, __dst, &__dst[v6]);
  *a3 = v16 - __dst;
  std::string::resize(v7, v6 - (v16 - __dst), 0);
  v17 = *(this + 191);
  if ((v17 & 0x8000000000000000) == 0)
  {
    if (!*(this + 191))
    {
      return 1;
    }

    goto LABEL_26;
  }

  v17 = *(this + 22);
  if (v17)
  {
    v7 = v7->__r_.__value_.__r.__words[0];
LABEL_26:
    memcpy(v7, v16, v17);
  }

  return 1;
}

uint64_t dmlc::io::InputSplitBase::Chunk::Load(dmlc::io::InputSplitBase::Chunk *this, dmlc::io::InputSplitBase *a2, uint64_t a3)
{
  v5 = (this + 16);
  v6 = a3 + 1;
  while (1)
  {
    std::vector<float>::resize(v5, v6);
    v8 = *(this + 2);
    v7 = *(this + 3);
    *(v7 - 4) = 0;
    v14 = v7 - 4 - v8;
    v9 = v7 == v8 ? 0 : v8;
    result = (*(*a2 + 72))(a2, v9, &v14);
    if ((result & 1) == 0)
    {
      break;
    }

    v11 = *(this + 2);
    v12 = *(this + 3);
    if (v14)
    {
      if (v12 == v11)
      {
        v11 = 0;
      }

      v13 = v11 + v14;
      *this = v11;
      *(this + 1) = v13;
      return result;
    }

    v6 = (v12 - v11) >> 1;
    v5 = (this + 16);
  }

  return result;
}

uint64_t dmlc::io::InputSplitBase::Chunk::Append(std::vector<unsigned int> *this, dmlc::io::InputSplitBase *a2, uint64_t a3)
{
  v6 = this->__end_ - this->__begin_;
  p_end_cap = &this->__end_cap_;
  std::vector<float>::resize(&this->__end_cap_, a3 + this[1].__begin_ - this->__end_cap_.__value_);
  v8 = 4 * a3;
  v18 = v8;
  begin = this[1].__begin_;
  *(begin - 1) = 0;
  if (begin == p_end_cap->__begin_)
  {
    v10 = 0;
  }

  else
  {
    v10 = p_end_cap->__begin_;
  }

  if (!(*(*a2 + 72))(a2, v10 + v6, &v18))
  {
    return 0;
  }

  while (1)
  {
    value = this->__end_cap_.__value_;
    v12 = this[1].__begin_;
    if (v18)
    {
      break;
    }

    std::vector<float>::resize(p_end_cap, (v12 - value) >> 1);
    v18 = v8;
    v14 = this->__end_cap_.__value_;
    v13 = this[1].__begin_;
    *(v13 - 1) = 0;
    if (v13 == v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (((*(*a2 + 72))(a2, v15 + v6, &v18) & 1) == 0)
    {
      return 0;
    }
  }

  if (v12 == value)
  {
    value = 0;
  }

  v17 = (value + v6 + v18);
  this->__begin_ = value;
  this->__end_ = v17;
  return 1;
}

BOOL dmlc::io::InputSplitBase::ExtractNextChunk(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    *a2 = v3;
    a2[1] = v4 - v3;
    *a3 = v4;
  }

  return v3 != v4;
}

void std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<dmlc::io::FileInfo>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::allocator_traits<std::allocator<dmlc::io::URI>>::destroy[abi:ne200100]<dmlc::io::URI,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<dmlc::io::URI>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<dmlc::io::URI>>::destroy[abi:ne200100]<dmlc::io::URI,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x277C69050]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void sub_274DF9C78(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, char *a2, char *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
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
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x277C69180);
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, char *a2, char *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_28;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v28 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v28;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_68;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_68:
  v9 = v14 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v18 = *a2;
  if (v18 <= 0x3E)
  {
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_3;
      }

      if (v18 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v23 != a3 && *v23 == 41)
            {
              --a1->__open_count_;
              v8 = v23 + 1;
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v24 = a1->__marked_count_;
            ++a1->__open_count_;
            v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v25 != a3)
            {
              v26 = v25;
              if (*v25 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
                --a1->__open_count_;
                v8 = v26 + 1;
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v18 == 41)
      {
        goto LABEL_3;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_100:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_73:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_70:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_100;
    }

    goto LABEL_73;
  }

  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_3;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_100;
    }

    goto LABEL_70;
  }

  v20 = a2 + 1;
  if (a3 == a2 + 1)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
    goto LABEL_77;
  }

  v8 = a2 + 1;
  if ((v21 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v27 = *v8;
        if ((v27 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_102;
        }

        ++v8;
        v22 = v27 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_102:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_102;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_77:
  if (v20 != v8)
  {
    goto LABEL_4;
  }

  v29 = *v20;
  if (v29 <= 0x63)
  {
    if (v29 != 68)
    {
      if (v29 != 83)
      {
        v8 = a2 + 1;
        if (v29 != 87)
        {
          goto LABEL_96;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_90;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_93;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_88;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_93:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_94;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_96;
    }

    v32 = a1;
    v33 = 0;
LABEL_88:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_94:
    started->__mask_ = v35;
    goto LABEL_95;
  }

  v30 = a1;
  v31 = 0;
LABEL_90:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_95:
  v8 = a2 + 2;
LABEL_96:
  if (v20 == v8)
  {
    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v39 == v20)
    {
      v8 = a2;
    }

    else
    {
      v8 = v39;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
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
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
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
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2883E6940;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2883E6940;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2883E6988;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2883E6988;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x277C69180);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * v10;
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
    ++v10;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_274DFB7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 16), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 10), *(a1 + 32));
  v14 = v42;
  *(v42 - 2) = v6;
  *(v14 - 2) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = v14 - 4;
    v16 = *(v14 - 2);
    v18 = v14 - 24;
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 24);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 5);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 8), *(v14 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 7) - *(v14 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 5), *(v14 - 4), (*(v14 - 4) - *(v14 - 5)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 24);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 10);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = (v42 - 24);
    std::allocator<std::__state<char>>::destroy[abi:ne200100](v42 - 12);
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 8);
  v28 = *(v14 - 7) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_274DFBB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= __n)
    {
      v8 = __n;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](void **a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = (v13 + *a1 - v17);
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = (v13 + *a1 - v17);
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 1) = v21;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 2) = *(v19 + 2);
        *(v20 + 6) = *(v19 + 6);
        *(v19 + 4) = 0;
        *(v19 + 5) = 0;
        *(v19 + 6) = 0;
        *(v20 + 8) = 0;
        *(v20 + 9) = 0;
        *(v20 + 56) = *(v19 + 56);
        *(v20 + 9) = *(v19 + 9);
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        *(v19 + 9) = 0;
        v22 = *(v19 + 10);
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 10) = v22;
        v19 += 96;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = (v13 + 96);
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 1) = v5;
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 10) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void *std::__state<char>::~__state(void *a1)
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

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz < v6)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](void *a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274DFC46C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274DFC4E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_203;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_203;
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
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_203:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = v5;
      v10 = v5;
      if (v5 == a3)
      {
        goto LABEL_119;
      }

      v11 = *v5;
      v10 = v5;
      if (v11 == 93)
      {
        goto LABEL_119;
      }

      v12 = v5 + 1;
      memset(&v65, 0, sizeof(v65));
      if (v8 + 1 == a3 || v11 != 91)
      {
LABEL_31:
        v5 = (*(a1 + 24) & 0x1F0);
        v10 = v8;
        goto LABEL_32;
      }

      v13 = *v12;
      if (v13 == 46)
      {
        break;
      }

      if (v13 == 58)
      {
        LOWORD(__src.__r_.__value_.__l.__data_) = 23866;
        v23 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, &__src, &__src.__r_.__value_.__s.__data_[2]);
        if (v23 == a3)
        {
LABEL_204:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
        }

        v15 = v23;
        v24 = *(a1 + 24);
        std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v8 + 2, v23, v23 - (v8 + 2));
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, p_dst + size);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &__dst;
        }

        else
        {
          v27 = __dst.__r_.__value_.__r.__words[0];
        }

        classname = std::__get_classname(v27, v24 & 1);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (!classname)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
        }

        v29 = 0;
        *(v7 + 160) |= classname;
      }

      else
      {
        if (v13 != 61)
        {
          goto LABEL_31;
        }

        LOWORD(v64.__r_.__value_.__l.__data_) = 23869;
        v14 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, &v64, &v64.__r_.__value_.__s.__data_[2]);
        if (v14 == a3)
        {
          goto LABEL_204;
        }

        v15 = v14;
        std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&__src, a1, v8 + 2, v14);
        v16 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v16 = __src.__r_.__value_.__l.__size_;
          if (!__src.__r_.__value_.__l.__size_)
          {
LABEL_205:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
          }

          p_src = __src.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&__src.__r_.__value_.__s + 23))
          {
            goto LABEL_205;
          }

          p_src = &__src;
        }

        std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, p_src, p_src + v16, v16);
        (*(**(a1 + 16) + 32))(&__p);
        v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = __p.__r_.__value_.__l.__size_;
        }

        if (v31 != 1)
        {
          if (v31 == 12)
          {
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            p_p->__r_.__value_.__s.__data_[11] = p_p->__r_.__value_.__s.__data_[3];
          }

          else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            *__p.__r_.__value_.__l.__data_ = 0;
            __p.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            __p.__r_.__value_.__s.__data_[0] = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
          }
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = __p.__r_.__value_.__l.__size_;
        }

        if (v33)
        {
          std::vector<std::string>::push_back[abi:ne200100](v7 + 136, &__p);
        }

        else
        {
          v34 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = __src.__r_.__value_.__l.__size_;
          }

          if (v34 == 2)
          {
            v36 = &__src;
            if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v36 = __src.__r_.__value_.__r.__words[0];
            }

            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, v36->__r_.__value_.__s.__data_[0], v36->__r_.__value_.__s.__data_[1]);
          }

          else
          {
            if (v34 != 1)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            v35 = &__src;
            if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v35 = __src.__r_.__value_.__r.__words[0];
            }

            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, v35->__r_.__value_.__s.__data_[0]);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        v29 = 0;
      }

      v5 = v15 + 2;
      v10 = v8;
LABEL_117:
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        if ((v29 & 1) == 0)
        {
          goto LABEL_120;
        }

        goto LABEL_119;
      }

      if (v29)
      {
        goto LABEL_119;
      }

LABEL_120:
      if (v8 == v5)
      {
        goto LABEL_13;
      }
    }

    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, &v65);
    v5 = (*(a1 + 24) & 0x1F0);
    v30 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v65.__r_.__value_.__l.__size_;
    }

    if (!v30)
    {
LABEL_32:
      if ((v5 | 0x40) == 0x40)
      {
        v18 = *v10;
        if (v18 == 92)
        {
          if (v5)
          {
            v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, &v65);
          }

          else
          {
            v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, &v65, v7);
            v5 = 0;
          }

          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v18) = *v10;
      }

      std::string::operator=(&v65, v18);
      ++v10;
    }

LABEL_38:
    if (v10 != a3)
    {
      v19 = *v10;
      if (v19 != 93)
      {
        v21 = v10 + 1;
        if (v10 + 1 != a3 && v19 == 45 && *v21 != 93)
        {
          memset(&v64, 0, sizeof(v64));
          v10 += 2;
          if (v21 + 1 != a3 && *v21 == 91 && *v10 == 46)
          {
            v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v21 + 2, a3, &v64);
LABEL_125:
            v10 = v22;
LABEL_126:
            v63 = v65;
            v62 = v64;
            memset(&v64, 0, sizeof(v64));
            memset(&v65, 0, sizeof(v65));
            if (*(v7 + 170) == 1)
            {
              if (*(v7 + 169) == 1)
              {
                v37 = v63.__r_.__value_.__l.__size_;
                if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v37 = SHIBYTE(v63.__r_.__value_.__r.__words[2]);
                }

                if (v37)
                {
                  v5 = 0;
                  v38 = SHIBYTE(v63.__r_.__value_.__r.__words[2]) >> 63;
                  do
                  {
                    if (v38)
                    {
                      v39 = v63.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v39 = &v63;
                    }

                    v40 = (*(**(v7 + 24) + 40))(*(v7 + 24), v5[v39]);
                    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v41 = &v63;
                    }

                    else
                    {
                      v41 = v63.__r_.__value_.__r.__words[0];
                    }

                    (v5++)[v41] = v40;
                    v42 = SHIBYTE(v63.__r_.__value_.__r.__words[2]);
                    v38 = SHIBYTE(v63.__r_.__value_.__r.__words[2]) >> 63;
                    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v42 = v63.__r_.__value_.__l.__size_;
                    }
                  }

                  while (v5 < v42);
                }

                v43 = v62.__r_.__value_.__l.__size_;
                if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v43 = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
                }

                if (v43)
                {
                  v5 = 0;
                  v44 = SHIBYTE(v62.__r_.__value_.__r.__words[2]) >> 63;
                  do
                  {
                    if (v44)
                    {
                      v45 = v62.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v45 = &v62;
                    }

                    v46 = (*(**(v7 + 24) + 40))(*(v7 + 24), v5[v45]);
                    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v47 = &v62;
                    }

                    else
                    {
                      v47 = v62.__r_.__value_.__r.__words[0];
                    }

                    (v5++)[v47] = v46;
                    v48 = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
                    v44 = SHIBYTE(v62.__r_.__value_.__r.__words[2]) >> 63;
                    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v48 = v62.__r_.__value_.__l.__size_;
                    }
                  }

                  while (v5 < v48);
                }
              }

              v49 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
              if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v50 = &v63;
              }

              else
              {
                v50 = v63.__r_.__value_.__r.__words[0];
              }

              if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v49 = v63.__r_.__value_.__l.__size_;
              }

              std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&__src, v7 + 16, v50, v50 + v49);
              v51 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v52 = &v62;
              }

              else
              {
                v52 = v62.__r_.__value_.__r.__words[0];
              }

              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v51 = v62.__r_.__value_.__l.__size_;
              }

              std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&__p, v7 + 16, v52, v52 + v51);
              __dst = __src;
              v69 = __p;
              memset(&__p, 0, sizeof(__p));
              memset(&__src, 0, sizeof(__src));
              std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v7 + 88, &__dst);
              if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v69.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_197;
              }

              v53 = __src.__r_.__value_.__r.__words[0];
            }

            else
            {
              v54 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
              if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v54 = v63.__r_.__value_.__l.__size_;
              }

              if (v54 != 1)
              {
                goto LABEL_207;
              }

              v55 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v55 = v62.__r_.__value_.__l.__size_;
              }

              if (v55 != 1)
              {
LABEL_207:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
              }

              if (*(v7 + 169) == 1)
              {
                if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v56 = &v63;
                }

                else
                {
                  v56 = v63.__r_.__value_.__r.__words[0];
                }

                v57 = (*(**(v7 + 24) + 40))(*(v7 + 24), v56->__r_.__value_.__s.__data_[0]);
                if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v58 = &v63;
                }

                else
                {
                  v58 = v63.__r_.__value_.__r.__words[0];
                }

                v58->__r_.__value_.__s.__data_[0] = v57;
                if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v59 = &v62;
                }

                else
                {
                  v59 = v62.__r_.__value_.__r.__words[0];
                }

                v60 = (*(**(v7 + 24) + 40))(*(v7 + 24), v59->__r_.__value_.__s.__data_[0]);
                if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v61 = &v62;
                }

                else
                {
                  v61 = v62.__r_.__value_.__r.__words[0];
                }

                v61->__r_.__value_.__s.__data_[0] = v60;
              }

              __dst = v63;
              memset(&v63, 0, sizeof(v63));
              v69 = v62;
              memset(&v62, 0, sizeof(v62));
              std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v7 + 88, &__dst);
              if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v69.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_197;
              }

              v53 = __dst.__r_.__value_.__r.__words[0];
            }

            operator delete(v53);
LABEL_197:
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v64.__r_.__value_.__l.__data_);
            }

            goto LABEL_75;
          }

          if ((v5 | 0x40) == 0x40)
          {
            LODWORD(v21) = *v21;
            if (v21 == 92)
            {
              if (v5)
              {
                v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, &v64);
              }

              else
              {
                v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, &v64, v7);
              }

              goto LABEL_125;
            }
          }

          else
          {
            LOBYTE(v21) = *v21;
          }

          std::string::operator=(&v64, v21);
          goto LABEL_126;
        }
      }
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v65.__r_.__value_.__l.__size_)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
LABEL_119:
        v5 = v10;
        goto LABEL_120;
      }

      if (v65.__r_.__value_.__l.__size_ != 1)
      {
        v20 = v65.__r_.__value_.__r.__words[0];
LABEL_74:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, v20->__r_.__value_.__s.__data_[0], v20->__r_.__value_.__s.__data_[1]);
        goto LABEL_75;
      }

      v20 = v65.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v65.__r_.__value_.__s + 23))
      {
        goto LABEL_119;
      }

      v20 = &v65;
      if (HIBYTE(v65.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_74;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, v20->__r_.__value_.__s.__data_[0]);
LABEL_75:
    v29 = 1;
    goto LABEL_117;
  }

  return a2;
}

void sub_274DFCFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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
  v17 = v15 + 16 * (v6 + v14 + v13) + v16;
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

void sub_274DFD7FC(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2883E6A18;
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
  a1->__locale_ = &unk_2883E6A18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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
  a1->__locale_ = &unk_2883E6A60;
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
  a1->__locale_ = &unk_2883E6A60;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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

  JUMPOUT(0x277C69180);
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
  a1->__locale_ = &unk_2883E6AF0;
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
  a1->__locale_ = &unk_2883E6AF0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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
  a1->__locale_ = &unk_2883E6B38;
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
  a1->__locale_ = &unk_2883E6B38;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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

  JUMPOUT(0x277C69180);
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

void sub_274DFE5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x277C69180](v10, v11);
  _Unwind_Resume(a1);
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

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x277C69180);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_89;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
  }

  LOBYTE(v113) = *current;
  v6 = current[1];
  HIBYTE(v113) = current[1];
  if (this->__icase_)
  {
    LOBYTE(v113) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(v113) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = v113;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&__src, &__s);
  __p = __src;
  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (size)
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
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&__src);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __src;
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__src.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(__src.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_180;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_180:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (v113 != *(p_second - 1) || HIBYTE(v113) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_233;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v113, &__src);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v109 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_183;
        }
      }

      v38 = 5;
LABEL_183:
      v18 = v109;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v89 = 1;
      goto LABEL_213;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v89 = 0;
    goto LABEL_215;
  }

  v90 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v113, &__src);
  v91 = this->__equivalences_.__begin_;
  v92 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v93 = this->__equivalences_.__end_ - v91;
  if (v93)
  {
    v94 = 0xAAAAAAAAAAAAAAABLL * (v93 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v95 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v90 = __s.__r_.__value_.__r.__words[0];
    }

    if (v94 <= 1)
    {
      v96 = 1;
    }

    else
    {
      v96 = 0xAAAAAAAAAAAAAAABLL * (v93 >> 3);
    }

    v97 = 1;
    v98 = 1;
    while (1)
    {
      v99 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
      v100 = v99;
      if ((v99 & 0x80u) != 0)
      {
        v99 = v91->__r_.__value_.__l.__size_;
      }

      if (v95 == v99)
      {
        v101 = v100 >= 0 ? v91 : v91->__r_.__value_.__r.__words[0];
        if (!memcmp(v90, v101, v95))
        {
          break;
        }
      }

      v98 = v97++ < v94;
      ++v91;
      if (!--v96)
      {
        goto LABEL_210;
      }
    }

    v89 = 1;
    v38 = 5;
    if (v92 < 0)
    {
LABEL_211:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v98 = 0;
LABEL_210:
    v38 = 0;
    v89 = 0;
    if (v92 < 0)
    {
      goto LABEL_211;
    }
  }

  if (!v98)
  {
LABEL_215:
    if (v113 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v104 = tab[v113];
      if (((v104 & mask) != 0 || v113 == 95 && (mask & 0x80) != 0) && (SHIBYTE(v113) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(v113)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(v113) == 95))
      {
        goto LABEL_233;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v104) != 0 || v113 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_232:
        negate = v89;
LABEL_234:
        v9 = 2;
        goto LABEL_89;
      }
    }

    if ((SHIBYTE(v113) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(v113)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(v113) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_232;
    }

LABEL_233:
    negate = 1;
    goto LABEL_234;
  }

LABEL_213:
  v9 = 2;
  negate = v89;
  if (v38)
  {
    goto LABEL_89;
  }

LABEL_65:
  v40 = *a2->__current_;
  __src.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    __src.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_88;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v46 = (v44 >> 7) & 1;
      v45 = v40 == 95 ? v46 : 0;
    }

    else
    {
      v45 = 1;
    }

    end = this->__neg_chars_.__end_;
    v48 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v49 = !v48 || v48 == end;
    v50 = !v49;
    if ((v45 & 1) == 0 && !v50)
    {
LABEL_88:
      negate = 1;
      goto LABEL_89;
    }
  }

  v53 = this->__ranges_.__begin_;
  v54 = this->__ranges_.__end_;
  if (v53 != v54)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &__src.__r_.__value_.__s.__data_[1]);
      v53 = this->__ranges_.__begin_;
      v54 = this->__ranges_.__end_;
      v55 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v56 = v54 - v53;
    if (v56)
    {
      v110 = v9;
      v106 = negate;
      v107 = v55;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
      if ((v55 & 0x80u) == 0)
      {
        v58 = v55;
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((v55 & 0x80u) == 0)
      {
        v59 = &__s;
      }

      else
      {
        v59 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
      }

      v61 = &v53->second.__r_.__value_.__r.__words[2] + 7;
      v62 = 1;
      v63 = 1;
      while (1)
      {
        v64 = *(v61 - 24);
        if (v64 >= 0)
        {
          v65 = *(v61 - 24);
        }

        else
        {
          v65 = *(v61 - 39);
        }

        if (v64 >= 0)
        {
          v66 = (v61 - 47);
        }

        else
        {
          v66 = *(v61 - 47);
        }

        if (v65 >= v58)
        {
          v67 = v58;
        }

        else
        {
          v67 = v65;
        }

        v68 = memcmp(v59, v66, v67);
        v69 = v58 >= v65;
        if (v68)
        {
          v69 = v68 >= 0;
        }

        if (v69)
        {
          v70 = *v61;
          if (v70 >= 0)
          {
            v71 = *v61;
          }

          else
          {
            v71 = *(v61 - 15);
          }

          if (v70 >= 0)
          {
            v72 = (v61 - 23);
          }

          else
          {
            v72 = *(v61 - 23);
          }

          if (v58 >= v71)
          {
            v73 = v71;
          }

          else
          {
            v73 = v58;
          }

          v74 = memcmp(v72, v59, v73);
          v75 = v71 >= v58;
          if (v74)
          {
            v75 = v74 >= 0;
          }

          if (v75)
          {
            break;
          }
        }

        v63 = v62++ < v57;
        v61 += 48;
        if (!--v60)
        {
          negate = v106;
          goto LABEL_144;
        }
      }

      negate = 1;
LABEL_144:
      v9 = v110;
      if ((v107 & 0x80) == 0)
      {
LABEL_146:
        if (v63)
        {
          goto LABEL_89;
        }

        goto LABEL_147;
      }
    }

    else
    {
      v63 = 0;
      if ((v55 & 0x80) == 0)
      {
        goto LABEL_146;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_146;
  }

LABEL_147:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_173;
  }

  v76 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &__src.__r_.__value_.__s.__data_[1]);
  v77 = this->__equivalences_.__begin_;
  v78 = this->__equivalences_.__end_ - v77;
  if (!v78)
  {
    v83 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

  v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v111 = v9;
  v79 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v76 = __s.__r_.__value_.__r.__words[0];
  }

  if (v79 <= 1)
  {
    v81 = 1;
  }

  else
  {
    v81 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  }

  v82 = 1;
  v83 = 1;
  while (1)
  {
    v84 = HIBYTE(v77->__r_.__value_.__r.__words[2]);
    v85 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v84 = v77->__r_.__value_.__l.__size_;
    }

    if (v80 == v84)
    {
      v86 = v85 >= 0 ? v77 : v77->__r_.__value_.__r.__words[0];
      if (!memcmp(v76, v86, v80))
      {
        break;
      }
    }

    v83 = v82++ < v79;
    ++v77;
    if (!--v81)
    {
      goto LABEL_170;
    }
  }

  negate = 1;
LABEL_170:
  v9 = v111;
  if (v108 < 0)
  {
LABEL_171:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_172:
  if (v83)
  {
    goto LABEL_89;
  }

LABEL_173:
  v87 = this->__mask_;
  if ((__src.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[__src.__r_.__value_.__s.__data_[0]] & v87) != 0)
  {
    goto LABEL_88;
  }

  v88 = (v87 >> 7) & 1;
  if (__src.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v88) = 0;
  }

  negate |= v88;
LABEL_89:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v52 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v52 = -995;
  }

  a2->__do_ = v52;
  a2->__node_ = first;
}

void sub_274DFF090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
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

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}