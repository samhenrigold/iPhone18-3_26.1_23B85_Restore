BOOL dmlc::io::IndexedRecordIOSplitter::NextBatch(void *a1, void *a2, uint64_t a3)
{
  while (1)
  {
    v6 = a1[14];
    v7 = a1[15];
    if (v6 != v7)
    {
      break;
    }

    if (((*(*a1 + 104))(a1, a1 + 14, a3) & 1) == 0)
    {
      return v6 != v7;
    }
  }

  *a2 = v6;
  a2[1] = v7 - v6;
  a1[14] = v7;
  return v6 != v7;
}

void *dmlc::io::IndexedRecordIOSplitter::BeforeFirst(dmlc::io::IndexedRecordIOSplitter *this)
{
  if (*(this + 240) == 1)
  {
    v2 = *(this + 27);
    *(this + 28) = v2;
    v3 = *(this + 33);
    *&v14 = *(this + 32);
    v4 = v2;
    if (v14 < v3)
    {
      do
      {
        std::vector<unsigned long>::push_back[abi:ne200100](this + 27, &v14);
        *&v14 = v14 + 1;
      }

      while (v14 < *(this + 33));
      v4 = *(this + 27);
      v2 = *(this + 28);
    }

    v5 = v2 - v4;
    if (v5 >= 2)
    {
      v14 = xmmword_274E200B0;
      v6 = (v2 - 1);
      if (v2 - 1 > v4)
      {
        v7 = v5 - 1;
        v8 = v4;
        do
        {
          v13[0] = 0;
          v13[1] = v7;
          v9 = std::uniform_int_distribution<long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v14, this + 296, v13);
          if (v9)
          {
            v10 = *v4;
            *v4 = v8[v9];
            v8[v9] = v10;
          }

          ++v4;
          --v7;
          ++v8;
        }

        while (v4 < v6);
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = *(this + 32);
  }

  *(this + 31) = v11;
  return dmlc::io::InputSplitBase::BeforeFirst(this);
}

uint64_t dmlc::io::InputSplitBase::HintChunkSize(uint64_t this, unint64_t a2)
{
  v2 = a2 >> 2;
  if (a2 >> 2 <= *(this + 152))
  {
    v2 = *(this + 152);
  }

  *(this + 152) = v2;
  return this;
}

uint64_t dmlc::io::IndexedRecordIOSplitter::NextRecord(dmlc::io::InputSplitBase *a1, uint64_t a2)
{
  v4 = (a1 + 112);
  if ((*(*a1 + 80))(a1, a2, a1 + 14))
  {
    return 1;
  }

  do
  {
    v5 = dmlc::io::InputSplitBase::Chunk::Load(v4, a1, *(a1 + 19));
    if (!v5)
    {
      break;
    }

    ++*(a1 + 31);
  }

  while (!(*(*a1 + 80))(a1, a2, v4));
  return v5;
}

void dmlc::io::IndexedRecordIOSplitter::~IndexedRecordIOSplitter(dmlc::io::IndexedRecordIOSplitter *this)
{
  *this = &unk_2883E1408;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  dmlc::io::InputSplitBase::~InputSplitBase(this);
}

{
  *this = &unk_2883E1408;
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  dmlc::io::InputSplitBase::~InputSplitBase(this);

  JUMPOUT(0x277C69180);
}

void dmlc::istream::InBuf::~InBuf(std::locale *this)
{
  this->__locale_ = &unk_2883E1590;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 1);
}

{
  this->__locale_ = &unk_2883E1590;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x277C69180);
}

{
  this->__locale_ = &unk_2883E1590;
  locale = this[10].__locale_;
  if (locale)
  {
    this[11].__locale_ = locale;
    operator delete(locale);
  }

  this->__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 1);
}

void virtual thunk todmlc::istream::~istream(dmlc::istream *this)
{

  JUMPOUT(0x277C690D0);
}

{
  dmlc::istream::~istream((this + *(*this - 24)));
}

dmlc::istream::InBuf *dmlc::istream::InBuf::InBuf(dmlc::istream::InBuf *this, uint64_t a2)
{
  *this = MEMORY[0x277D82868] + 16;
  MEMORY[0x277C69050](this + 8);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *this = &unk_2883E1590;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<char>::vector[abi:ne200100](this + 10, a2);
  if (!a2)
  {
    v4 = *(this + 10);
    v5 = *(this + 11) - v4;
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        *(this + 11) = v4 + 2;
      }
    }

    else
    {
      std::vector<char>::__append((this + 80), 2 - v5);
    }
  }

  return this;
}

void sub_274D2B994(_Unwind_Exception *a1)
{
  locale = v1[10].__locale_;
  if (locale)
  {
    v1[11].__locale_ = locale;
    operator delete(locale);
  }

  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t dmlc::istream::InBuf::underflow(dmlc::istream::InBuf *this)
{
  v2 = *(this + 3);
  v1 = *(this + 4);
  if (v2 == v1)
  {
    v2 = *(this + 10);
    v4 = (***(this + 8))(*(this + 8), *(this + 10), *(this + 11) - v2);
    v1 = &v2[v4];
    *(this + 2) = v2;
    *(this + 3) = v2;
    *(this + 4) = &v2[v4];
    *(this + 9) += v4;
  }

  if (v2 == v1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v2;
  }
}

uint64_t *std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274D2BB3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
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

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void dmlc::istream::~istream(std::locale *this, std::locale::__imp **a2)
{
  v3 = *a2;
  this->__locale_ = *a2;
  *(&this->__locale_ + *(v3 - 3)) = a2[3];
  this[2].__locale_ = &unk_2883E1590;
  locale = this[12].__locale_;
  if (locale)
  {
    this[13].__locale_ = locale;
    operator delete(locale);
  }

  this[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(this + 3);

  std::istream::~istream();
}

void std::vector<dmlc::io::URI>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        v6 = v4 - 9;
        if (*(v4 - 49) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 9;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *xgboost::EllpackPage::EllpackPage(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void *xgboost::EllpackPage::EllpackPage(void *a1)
{
  *a1 = 0;
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 16);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  return a1;
}

void sub_274D2BFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a13);
  v15 = *v13;
  *v13 = 0;
  if (v15)
  {
    MEMORY[0x277C69180](v15, 0xC400A2AC0F1);
  }

  _Unwind_Resume(a1);
}

void xgboost::EllpackPage::~EllpackPage(xgboost::EllpackPage *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v5);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 21);
  v3 = dmlc::LogMessageFatal::GetEntry(&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v5);
  v4 = *this;
  *this = 0;
  if (v4)
  {
    MEMORY[0x277C69180](v4, 0xC400A2AC0F1);
  }
}

void xgboost::EllpackPage::SetBaseRowId(xgboost::EllpackPage *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v3);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 26);
  v2 = dmlc::LogMessageFatal::GetEntry(&v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v3);
}

uint64_t xgboost::EllpackPage::Size(xgboost::EllpackPage *this)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/ellpack_page.cc", 30);
  v2 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Internal Error: XGBoost is not compiled with CUDA but EllpackPage is required", 77);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
  return 0;
}

dmlc::Config *dmlc::Config::Config(dmlc::Config *this, char a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = a2;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 2) = 0;
  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](this + 3);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = a2;
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 2) = 0;
  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](this + 3);
  return this;
}

void dmlc::Config::Clear(dmlc::Config *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;

  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](this + 3);
}

uint64_t dmlc::Config::Config(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100]((a1 + 24));
  dmlc::Config::LoadFromStream(a1, a2);
  return a1;
}

void sub_274D2C298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*v3);
  _Unwind_Resume(a1);
}

void dmlc::Config::LoadFromStream(uint64_t a1, uint64_t a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v24 = a2;
  v25 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0uLL;
  v16 = 0;
  while (1)
  {
    dmlc::Tokenizer::GetNextToken(&v24, &v21);
    v3 = HIBYTE(v23);
    if (v23 < 0)
    {
      v3 = v22;
    }

    if (!v3)
    {
      break;
    }

    dmlc::Tokenizer::GetNextToken(&v24, &v18);
    dmlc::Tokenizer::GetNextToken(&v24, &__p);
    if (SHIBYTE(v20) < 0)
    {
      if (v19 == 1)
      {
        v4 = v18;
LABEL_10:
        if (*v4 == 61)
        {
          goto LABEL_30;
        }
      }
    }

    else if (SHIBYTE(v20) == 1)
    {
      v4 = &v18;
      goto LABEL_10;
    }

    dmlc::LogMessage::LogMessage(v26, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/config.cc", 155);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26[0], "Parsing error: expect format k = v; but got ", 47);
    if (v23 >= 0)
    {
      v6 = &v21;
    }

    else
    {
      v6 = v21;
    }

    if (v23 >= 0)
    {
      v7 = HIBYTE(v23);
    }

    else
    {
      v7 = v22;
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
    if (v20 >= 0)
    {
      v9 = &v18;
    }

    else
    {
      v9 = v18;
    }

    if (v20 >= 0)
    {
      v10 = HIBYTE(v20);
    }

    else
    {
      v10 = v19;
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = *(&__p + 1);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "", 1);
    dmlc::LogMessage::~LogMessage(v26);
LABEL_30:
    dmlc::Config::Insert(a1, &v21, &__p, v17);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }
}

void sub_274D2C554()
{
  if (v1 < 0)
  {
    operator delete(v0);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  JUMPOUT(0x274D2C5B0);
}

void sub_274D2C5A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x274D2C5B0);
  }

  __clang_call_terminate(a1);
}

void std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t dmlc::Tokenizer::GetNextToken(void *a1, uint64_t a2)
{
  *(a1 + 2) = 0;
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

  *(a2 + 24) = 0;
  for (i = std::istream::peek(); i != -1; i = std::istream::peek())
  {
    v5 = *(a1 + 2);
    if (v5 == 2)
    {
      break;
    }

    if (i > 33)
    {
      switch(i)
      {
        case '""':
          while (1)
          {
            std::istream::get();
            v10 = std::istream::peek();
            if (v10 <= 91)
            {
              if (v10 <= 33)
              {
                if (v10 == -1 || v10 == 10 || v10 == 13)
                {
                  exception = __cxa_allocate_exception(0x20uLL);
                  std::string::basic_string[abi:ne200100]<0>(v14, "quotation mark is not closed");
                  dmlc::TokenizeError::TokenizeError(exception, v14);
                }
              }

              else if (v10 == 34)
              {
                std::istream::get();
                *(a1 + 2) = 2;
                *(a2 + 24) = 1;
                goto LABEL_38;
              }
            }

            else if (v10 == 92)
            {
              std::istream::get();
              v10 = std::istream::peek();
              if (v10 != 34)
              {
                v13 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(v14, "error parsing escape characters");
                dmlc::TokenizeError::TokenizeError(v13, v14);
              }
            }

            std::string::push_back(a2, v10);
          }

        case '=':
          if (v5 != 1)
          {
            std::string::operator=(a2, 61);
            std::istream::get();
          }

LABEL_11:
          *(a1 + 2) = 2;
          continue;
        case '#':
          while (1)
          {
            v6 = std::istream::peek();
            if ((v6 + 1) <= 0xE && ((1 << (v6 + 1)) & 0x4803) != 0)
            {
              break;
            }

            std::istream::get();
          }

          continue;
      }
    }

    else if ((i - 9) < 2 || i == 13 || i == 32)
    {
      if (v5 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }

    *(a1 + 2) = 1;
    std::string::push_back(a2, i);
LABEL_37:
    std::istream::get();
LABEL_38:
    ;
  }

  return std::istream::peek();
}

void sub_274D2C89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::Config::Insert(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if ((*(a1 + 48) & 1) == 0)
  {
    v45 = 0;
    v46 = a2;
    memset(v44, 0, sizeof(v44));
    *__p = 0u;
    v10 = std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, &v46);
    std::vector<std::string>::__vdeallocate((v10 + 7));
    *(v10 + 7) = 0u;
    v11 = v10[10];
    v10[9] = *&v44[0];
    __p[1] = 0;
    *&v44[0] = 0;
    __p[0] = 0;
    if (v11)
    {
      v10[11] = v11;
      operator delete(v11);
      v10[10] = 0;
      v10[11] = 0;
      v10[12] = 0;
    }

    *(v10 + 5) = *(v44 + 8);
    v10[12] = *(&v44[1] + 1);
    memset(v44 + 8, 0, 24);
    *(v10 + 104) = v45;
    v46 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  }

  v12 = (v8 - v9) >> 5;
  __p[0] = a2;
  v13 = std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, __p);
  v14 = v13[8];
  v15 = v13[7];
  std::vector<std::string>::push_back[abi:ne200100]((v13 + 7), a3);
  v17 = v13[11];
  v16 = v13[12];
  if (v17 >= v16)
  {
    v19 = v13[10];
    v20 = v17 - v19;
    v21 = v17 - v19;
    v22 = v21 + 1;
    if ((v21 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
    v25 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v24)
    {
      v25 = v22;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v13 + 10), v25);
    }

    v26 = v17 - v19;
    v27 = (8 * v21);
    v28 = (8 * v21 - 8 * v26);
    *v27 = v12;
    v18 = v27 + 1;
    memcpy(v28, v19, v20);
    v29 = v13[10];
    v13[10] = v28;
    v13[11] = v18;
    v13[12] = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v17 = v12;
    v18 = v17 + 1;
  }

  v13[11] = v18;
  *(v13 + 104) = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&v44[0] = *(a2 + 16);
  }

  *(&v44[0] + 1) = 0xAAAAAAAAAAAAAAABLL * (v14 - v15);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  if (v30 >= v31)
  {
    v33 = *(a1 + 24);
    v34 = v30 - v33;
    v35 = (v30 - v33) >> 5;
    v36 = v35 + 1;
    if ((v35 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v37 = v31 - v33;
    if (v37 >> 4 > v36)
    {
      v36 = v37 >> 4;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFE0)
    {
      v38 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v36;
    }

    if (v38)
    {
      if (!(v38 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v39 = 32 * v35;
    *v39 = *__p;
    v40 = *&v44[0];
    __p[1] = 0;
    *&v44[0] = 0;
    __p[0] = 0;
    *(v39 + 16) = v40;
    *(v39 + 24) = 0xAAAAAAAAAAAAAAABLL * (v14 - v15);
    v41 = 32 * v35 + 32;
    memcpy(0, v33, v34);
    *(a1 + 24) = 0;
    *(a1 + 32) = v41;
    *(a1 + 40) = 0;
    if (v33)
    {
      operator delete(v33);
      v42 = SBYTE7(v44[0]);
      *(a1 + 32) = v41;
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a1 + 32) = v41;
    }
  }

  else
  {
    v32 = *__p;
    *(v30 + 16) = *&v44[0];
    *v30 = v32;
    *(v30 + 24) = *(&v44[0] + 1);
    *(a1 + 32) = v30 + 32;
  }
}

uint64_t dmlc::Config::GetParam(uint64_t a1, uint64_t a2)
{
  if (a1 + 8 == std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/config.cc", 166);
    v5 = dmlc::LogMessageFatal::GetEntry(&v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: config_map_.find(key) != config_map_.end()", 56);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "key ", 5);
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

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " not found in configure", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  return *(std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2) + 64) - 24;
}

uint64_t dmlc::Config::IsGenuineString(uint64_t a1, uint64_t a2)
{
  if (a1 + 8 == std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v14);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/config.cc", 173);
    v5 = dmlc::LogMessageFatal::GetEntry(&v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: config_map_.find(key) != config_map_.end()", 56);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "key ", 5);
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

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " not found in configure", 24);
    dmlc::LogMessageFatal::~LogMessageFatal(&v14);
  }

  return *(std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1, a2) + 104);
}

std::string *dmlc::MakeProtoStringValue@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  v4 = *(a1 + 23);
  v5 = a1[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = v4 >> 63;
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
      if (v9 == 34)
      {
        std::string::append(a2, "\");
      }

      else
      {
        std::string::push_back(a2, v9);
      }

      ++v6;
      v10 = *(a1 + 23);
      v7 = v10 >> 63;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = a1[1];
      }
    }

    while (v6 < v10);
  }

  return std::string::append(a2, "");
}

void sub_274D2CEC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dmlc::Config::ToProtoString(dmlc::Config *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v20 = 0;
  v21 = this;
  dmlc::Config::ConfigIterator::FindNextIndex(&v20);
  while (1)
  {
    v18.__r_.__value_.__r.__words[0] = (*(this + 4) - *(this + 3)) >> 5;
    v18.__r_.__value_.__l.__size_ = this;
    dmlc::Config::ConfigIterator::FindNextIndex(&v18);
    if (v20 == v18.__r_.__value_.__r.__words[0])
    {
      break;
    }

    v3 = v21;
LABEL_6:
    v4 = *(v3 + 24) + 32 * v20;
    v5 = *(v4 + 24);
    v6 = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(v3, v4);
    std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v18, v4, (*(v6 + 56) + 24 * v5));
    IsGenuineString = dmlc::Config::IsGenuineString(this, &v18);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v8, size);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " : ", 3);
    if (IsGenuineString)
    {
      dmlc::MakeProtoStringValue(&v19, &__p);
    }

    else if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v19;
    }

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
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    dmlc::Config::ConfigIterator::operator++(&v20);
  }

  v3 = v21;
  if (v21 != v18.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v26);
}

unint64_t *dmlc::Config::begin@<X0>(dmlc::Config *this@<X0>, dmlc::Config::ConfigIterator *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = this;
  return dmlc::Config::ConfigIterator::FindNextIndex(a2);
}

unint64_t *dmlc::Config::end@<X0>(dmlc::Config *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = (*(this + 4) - *(this + 3)) >> 5;
  a2[1] = this;
  return dmlc::Config::ConfigIterator::FindNextIndex(a2);
}

std::string *dmlc::Config::ConfigIterator::operator*@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1[1] + 24) + 32 * *a1;
  v4 = *(v3 + 24);
  v5 = (*(std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(a1[1], v3) + 56) + 24 * v4);

  return std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(a2, v3, v5);
}

dmlc::Config::ConfigIterator *dmlc::Config::ConfigIterator::operator++(dmlc::Config::ConfigIterator *this)
{
  if (*this < ((*(*(this + 1) + 32) - *(*(this + 1) + 24)) >> 5))
  {
    ++*this;
  }

  dmlc::Config::ConfigIterator::FindNextIndex(this);
  return this;
}

dmlc::Config::ConfigIterator *dmlc::Config::ConfigIterator::ConfigIterator(dmlc::Config::ConfigIterator *this, uint64_t a2, const dmlc::Config *a3)
{
  *this = a2;
  *(this + 1) = a3;
  dmlc::Config::ConfigIterator::FindNextIndex(this);
  return this;
}

{
  *this = a2;
  *(this + 1) = a3;
  dmlc::Config::ConfigIterator::FindNextIndex(this);
  return this;
}

unint64_t *dmlc::Config::ConfigIterator::FindNextIndex(unint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  v3 = *(v1 + 24);
  v4 = *(v1 + 32) - v3;
  if (*this < v4 >> 5)
  {
    v5 = this;
    v6 = v4 >> 5;
    v7 = v3 + 32 * v2;
    do
    {
      v8 = *(v7 + 24);
      this = std::__tree<std::__value_type<std::string,xgboost::PredictorReg *>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::PredictorReg *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::PredictorReg *>>>::find<std::string>(v1, v7);
      if (v2 == *(this[10] + 8 * v8))
      {
        break;
      }

      *v5 = ++v2;
      v7 += 32;
    }

    while (v2 < v6);
  }

  return this;
}

void *dmlc::Config::ConfigIterator::ConfigIterator(void *this, const dmlc::Config::ConfigIterator *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  return this;
}

dmlc::Config::ConfigIterator *dmlc::Config::ConfigIterator::operator++@<X0>(dmlc::Config::ConfigIterator *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = *this;
  a2[1] = v2;
  return dmlc::Config::ConfigIterator::operator++(this);
}

void *dmlc::TokenizeError::TokenizeError(void *a1, __int128 *a2)
{
  *a1 = &unk_2883E1640;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void dmlc::TokenizeError::~TokenizeError(std::exception *this)
{
  dmlc::TokenizeError::~TokenizeError(this);

  JUMPOUT(0x277C69180);
}

{
  this->__vftable = &unk_2883E1640;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t dmlc::TokenizeError::what(dmlc::TokenizeError *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void dmlc::Config::ConfigValue::~ConfigValue(dmlc::Config::ConfigValue *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

void sub_274D2D654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 10);
    if (v2)
    {
      *(a1 + 11) = v2;
      operator delete(v2);
    }

    v3 = (a1 + 56);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<std::pair<std::string,unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,unsigned long>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,dmlc::Config::ConfigValue>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::Config::ConfigValue>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::Config::ConfigValue>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, __int128 **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_26:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_26;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_26;
    }
  }
}

void xgboost::gbm::GBLinearModel::SaveModel(xgboost::gbm::GBLinearModel *this, xgboost::Json *a2)
{
  xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(v8, (*(this + 21) - *(this + 20)) >> 2);
  v4 = *(this + 20);
  v5 = *(this + 21);
  if (v5 != v4)
  {
    memmove(v8[2], v4, v5 - v4);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "weights");
  v6 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=<float,(xgboost::Value::ValueKind)7>(v6, v8);
}

void sub_274D2DAF0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v22 + 8))(v22, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E16B0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void xgboost::gbm::GBLinearModel::LoadModel(xgboost::gbm::GBLinearModel *this, const xgboost::Json *a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "weights");
  v4 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v3 + 16), __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(v4 + 56);
  if (v5[3] == 7)
  {
    v6 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value const>(v5);
    std::vector<float>::resize((this + 160), (v6[3] - v6[2]) >> 2);
    v7 = v6[2];
    v8 = v6[3];
    if (v8 != v7)
    {
      memmove(*(this + 20), v7, v8 - v7);
    }
  }

  else
  {
    v9 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(v5);
    v11 = v9[2];
    v10 = v9[3];
    v12 = (v10 - v11) >> 3;
    std::vector<float>::resize((this + 160), v12);
    if (v10 != v11)
    {
      v13 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        *(*(this + 20) + 4 * v13) = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v9[2] + 8 * v13)) + 4);
        ++v13;
      }

      while (v12 != v13);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "boosted_rounds");
  v14 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v3 + 16), __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3 + 24 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(*(v14 + 56)) + 4);
  }

  *(this + 36) = v15;
}

void sub_274D2DE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBLinearModel::~GBLinearModel(xgboost::gbm::GBLinearModel *this)
{
  *this = &unk_2883E1668;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2883E1668;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::~JsonTypedArray(void *a1)
{
  *a1 = &unk_2883E16B0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

uint64_t xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(uint64_t a1, std::vector<unsigned int>::size_type a2)
{
  *(a1 + 8) = 0x700000000;
  *a1 = &unk_2883E16B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<float>::resize((a1 + 16), a2);
  return a1;
}

void sub_274D2DFF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value const>(_DWORD *a1)
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

void sub_274D2E284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(_DWORD *a1)
{
  if (a1[3] == 4)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v24);
    xgboost::Value::TypeStr(a1, &v19);
    v5 = std::string::insert(&v19, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v20, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x400000000;
    v15[0] = &unk_2883E6E98;
    memset(v16, 0, sizeof(v16));
    xgboost::Value::TypeStr(v15, __p);
    if ((v18 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v21, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v23 = v11->__r_.__value_.__r.__words[2];
    v22 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v23 >= 0)
    {
      v13 = &v22;
    }

    else
    {
      v13 = v22;
    }

    if (v23 >= 0)
    {
      v14 = HIBYTE(v23);
    }

    else
    {
      v14 = *(&v22 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E6E98;
    v25 = v16;
    std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v25);
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

    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
  }
}

void sub_274D2E5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  *(v40 - 56) = v39;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100]((v40 - 56));
  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v40 - 57));
  _Unwind_Resume(a1);
}

void std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

atomic_uint *std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](atomic_uint *result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5 && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      result = (*(*result + 8))(result);
    }
  }

  *(v3 + 1) = a2;
  return result;
}

void *xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(_DWORD *a1)
{
  if (a1[3] == 1)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v24);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v24);
    xgboost::Value::TypeStr(a1, &v19);
    v5 = std::string::insert(&v19, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v20, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x100000000;
    v15[0] = &unk_2883E6FC8;
    v16 = 0;
    xgboost::Value::TypeStr(v15, __p);
    if ((v18 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v21, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v23 = v11->__r_.__value_.__r.__words[2];
    v22 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v23 >= 0)
    {
      v13 = &v22;
    }

    else
    {
      v13 = v22;
    }

    if (v23 >= 0)
    {
      v14 = HIBYTE(v23);
    }

    else
    {
      v14 = *(&v22 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
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

    dmlc::LogMessageFatal::~LogMessageFatal(&v24);
  }
}

void sub_274D2E98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v30 - 33));
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::PeekableInStream::Read(xgboost::common::PeekableInStream *this, void *__dst, size_t __n)
{
  v3 = __n;
  if (*(this + 47) < 0)
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = *(this + 47);
  }

  v6 = *(this + 2);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = ***(this + 1);

    return v8();
  }

  else
  {
    v10 = this + 24;
    if (__n <= v7)
    {
      if ((*(this + 47) & 0x80) != 0)
      {
        if (*(this + 4))
        {
          v10 = *(this + 3);
        }

        else
        {
          v10 = 0;
        }
      }

      else if (!*(this + 47))
      {
        v10 = 0;
      }

      memcpy(__dst, &v10[v6], __n);
      *(this + 2) += v3;
    }

    else
    {
      if ((*(this + 47) & 0x80) != 0)
      {
        if (*(this + 4))
        {
          v10 = *(this + 3);
        }

        else
        {
          v10 = 0;
        }
      }

      else if (!*(this + 47))
      {
        v10 = 0;
      }

      memcpy(__dst, &v10[v6], v7);
      v11 = *(this + 1);
      *(this + 2) += v7;
      return (**v11)() + v7;
    }

    return v3;
  }
}

size_t xgboost::common::PeekableInStream::PeekRead(xgboost::common::PeekableInStream *this, void *__dst, size_t __n)
{
  v6 = (this + 24);
  v7 = *(this + 47);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(this + 4);
    v8 = *(this + 2);
    v9 = v7 - v8;
    if (v7 - v8 >= __n)
    {
      v10 = v6->__r_.__value_.__r.__words[0];
      if (!v7)
      {
        v10 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(this + 2);
    v9 = v7 - v8;
    if (v7 - v8 >= __n)
    {
      if (*(this + 47))
      {
        v10 = this + 24;
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      memcpy(__dst, &v10[v8], __n);
      return __n;
    }
  }

  std::string::basic_string(&v16, v6, v8, v7, &v17);
  if (*(this + 47) < 0)
  {
    operator delete(v6->__r_.__value_.__l.__data_);
  }

  *v6 = v16;
  *(this + 2) = 0;
  std::string::resize(v6, __n, 0);
  if (*(this + 47) < 0)
  {
    if (*(this + 4))
    {
      v11 = *(this + 3);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (*(this + 47))
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  v12 = (***(this + 1))(*(this + 1), v11 + v9, __n - v9);
  std::string::resize(v6, v12 + v9, 0);
  v13 = *(this + 47);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(this + 4);
    if (v13)
    {
      v14 = *(this + 3);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (*(this + 47))
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  memcpy(__dst, v14, v13);
  __n = *(this + 47);
  if ((__n & 0x8000000000000000) != 0)
  {
    return *(this + 4);
  }

  return __n;
}

xgboost::common::FixedSizeStream *xgboost::common::FixedSizeStream::FixedSizeStream(xgboost::common::FixedSizeStream *this, xgboost::common::PeekableInStream *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = &unk_2883E1710;
  *(this + 1) = a2;
  v4 = (this + 56);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = 4096;
  do
  {
    std::string::resize(v4, v5, 0);
    v6 = v4;
    if (*(this + 79) < 0)
    {
      v6 = v4->__r_.__value_.__r.__words[0];
    }

    v7 = (*(*a2 + 32))(a2, v6, v5);
    v8 = v7 >= v5;
    v5 *= 2;
  }

  while (v8);
  std::string::resize(v4, v7, 0);
  return this;
}

void sub_274D2EDFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::common::FixedSizeStream::Read(xgboost::common::FixedSizeStream *this, void *a2)
{
  result = (*(*this + 32))(this, a2);
  *(this + 6) += result;
  return result;
}

char *xgboost::common::FixedSizeStream::PeekRead(xgboost::common::FixedSizeStream *this, void *__dst, size_t __len)
{
  v3 = __len;
  v5 = this + 56;
  v6 = *(this + 79);
  if (v6 < 0)
  {
    v8 = (this + 48);
    v7 = *(this + 6);
    v9 = *(this + 7);
    v10 = *(this + 8);
    if (v10 - v7 <= __len)
    {
      goto LABEL_8;
    }

    v5 = *(this + 7);
  }

  else
  {
    v8 = (this + 48);
    v7 = *(this + 6);
    if (v6 - v7 <= __len)
    {
      v9 = this + 56;
      v10 = *(this + 79);
LABEL_8:
      if (v7 != v10)
      {
        memmove(__dst, &v9[v7], v10 - v7);
        LOBYTE(v6) = *(this + 79);
      }

      if ((v6 & 0x80) != 0)
      {
        v5 = *(this + 7);
        v11 = &v5[*(this + 6)];
        v6 = *(this + 8);
      }

      else
      {
        v11 = &v5[*v8];
        v6 = v6;
      }

      return (&v5[v6] - v11);
    }
  }

  if (__len)
  {
    memmove(__dst, &v5[v7], __len);
  }

  return v3;
}

void xgboost::common::FixedSizeStream::Seek(xgboost::common::FixedSizeStream *this, unint64_t a2)
{
  *(this + 6) = a2;
  v3 = this + 48;
  v4 = v3[31];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 8);
  }

  v5 = v4;
  if (v4 < a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v3, &v5);
  }
}

void sub_274D2F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

__n128 xgboost::common::FixedSizeStream::Take(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.cc", 93);
    v6 = dmlc::LogMessageFatal::GetEntry(&v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: out", 17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *(a1 + 56);
  *(a2 + 16) = *(a1 + 72);
  *a2 = result;
  *(a1 + 79) = 0;
  *(a1 + 56) = 0;
  return result;
}

void xgboost::common::LoadSequentialFile(char *a1@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  v4 = a1;
  v45[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  if (a1[23] < 0)
  {
    v6 = *a1;
  }

  dmlc::io::URI::URI(&v32, v6);
  v7 = v34;
  if ((v34 & 0x8000000000000000) != 0)
  {
    v7 = v33;
    if (v33 != 7)
    {
      goto LABEL_14;
    }

    if (*v32 ^ 0x656C6966 | *(v32 + 3) ^ 0x2F2F3A65)
    {
      goto LABEL_35;
    }
  }

  else if (v34 != 7 || (v32 == 1701603686 ? (v8 = *(&v32 + 3) == 791624293) : (v8 = 0), !v8))
  {
LABEL_14:
    if (v7)
    {
      goto LABEL_35;
    }
  }

  if ((a2 & 1) == 0)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    v44[6] = 0;
    v9 = MEMORY[0x277D82858] + 64;
    v44[0] = MEMORY[0x277D82858] + 64;
    v10 = MEMORY[0x277D82808];
    v11 = *(MEMORY[0x277D82808] + 16);
    v42[0] = *(MEMORY[0x277D82808] + 8);
    *(v42 + *(v42[0] - 24)) = v11;
    v42[1] = 0;
    v12 = (v42 + *(v42[0] - 24));
    std::ios_base::init(v12, v43);
    v13 = MEMORY[0x277D82858] + 24;
    v12[1].__vftable = 0;
    v12[1].__fmtflags_ = -1;
    v42[0] = v13;
    v44[0] = v9;
    MEMORY[0x277C68CA0](v43);
    if (!std::filebuf::open())
    {
      std::ios_base::clear((v42 + *(v42[0] - 24)), *&v43[*(v42[0] - 24) + 16] | 4);
    }

    if ((v43[*(v42[0] - 24) + 16] & 5) != 0)
    {
      memset(&v40, 0, sizeof(v40));
      std::operator+<char>();
      v14 = std::string::append(&v39, " failed: ");
      v15 = v14->__r_.__value_.__r.__words[0];
      v45[0] = v14->__r_.__value_.__l.__size_;
      *(v45 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      *(&v40.__r_.__value_.__r.__words[1] + 7) = *(v45 + 7);
      v40.__r_.__value_.__r.__words[0] = v15;
      v40.__r_.__value_.__l.__size_ = v45[0];
      *(&v40.__r_.__value_.__s + 23) = v16;
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      v17 = __error();
      v18 = strerror(*v17);
      std::string::append(&v40, v18);
      Entry = dmlc::LogMessageFatal::GetEntry(&v39);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.cc", 102);
      v20 = dmlc::LogMessageFatal::GetEntry(&v39);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v40;
      }

      else
      {
        v21 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, size);
      dmlc::LogMessageFatal::~LogMessageFatal(&v39);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    std::istream::seekg();
    std::istream::tellg();
    v23 = v41;
    std::istream::seekg();
    std::string::resize(a3, v23 + 1, 0);
    std::istream::read();
    v24 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    if ((v24 & 0x80u) == 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = a3->__r_.__value_.__r.__words[0];
    }

    if ((v24 & 0x80u) != 0)
    {
      v24 = a3->__r_.__value_.__l.__size_;
    }

    v25->__r_.__value_.__s.__data_[v24 - 1] = 0;
    v42[0] = *v10;
    *(v42 + *(v42[0] - 24)) = v10[3];
    MEMORY[0x277C68CB0](v43);
    std::istream::~istream();
    MEMORY[0x277C690D0](v44);
    goto LABEL_43;
  }

LABEL_35:
  if (v4[23] < 0)
  {
    v4 = *v4;
  }

  v26 = dmlc::Stream::Create(v4, "r", 0);
  v27 = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  v28 = 4096;
  a3->__r_.__value_.__r.__words[2] = 0;
  do
  {
    std::string::resize(a3, v27 + v28, 0);
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = a3->__r_.__value_.__r.__words[0];
    }

    v30 = (**v26)(v26, v29 + v27, v28);
    v27 += v30;
    v31 = v30 >= v28;
    v28 *= 2;
  }

  while (v31);
  std::string::resize(a3, v27, 0);
  (*(*v26 + 24))(v26);
LABEL_43:
  if (v38 < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 < 0)
  {
    operator delete(v32);
  }
}

void sub_274D2F6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ifstream::~ifstream(&a44);
  MEMORY[0x277C690D0](v45);
  if (*(v44 + 23) < 0)
  {
    operator delete(*v44);
  }

  dmlc::io::FileInfo::~FileInfo(&a9);
  _Unwind_Resume(a1);
}

void xgboost::common::FileExtension(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2)
  {
    v5 = *(a1 + 23);
    if (v5 < 0)
    {
      v7 = *a1;
      v6 = (*a1 + *(a1 + 8));
    }

    else
    {
      v6 = (a1 + v5);
      v7 = a1;
    }

    while (v7 != v6)
    {
      *v7 = __tolower(*v7);
      ++v7;
    }
  }

  xgboost::common::Split(a1, 0x2Eu, &v9);
  if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) < 2)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, &str_7_0);
  }

  else if (*(v10 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v10 - 24), *(v10 - 16));
  }

  else
  {
    v8 = *(v10 - 24);
    a3->__r_.__value_.__r.__words[2] = *(v10 - 8);
    *&a3->__r_.__value_.__l.__data_ = v8;
  }

  v11 = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_274D2F8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::common::Split(const std::string *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v11 = 0uLL;
  v12 = 0;
  std::istringstream::basic_istringstream[abi:ne200100](v6, a1, 8);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  while (1)
  {
    v5 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v11, a2);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](a3, &v11);
  }

  v6[0] = *MEMORY[0x277D82820];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::istream::~istream();
  MEMORY[0x277C690D0](&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_274D2FA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 - 40) = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v25 - 40));
  std::istringstream::~istringstream(&a9, MEMORY[0x277D82820]);
  MEMORY[0x277C690D0](&a24);
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(a1);
}

void xgboost::common::PeekableInStream::Write(xgboost::common::PeekableInStream *this, const void *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.h", 36);
  v3 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Not implemented", 15);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
}

void xgboost::common::PeekableInStream::~PeekableInStream(void **this)
{
  *this = &unk_2883E1748;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_2883E1748;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::common::FixedSizeStream::Write(xgboost::common::FixedSizeStream *this, const void *a2)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v4);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/io.h", 64);
  v3 = dmlc::LogMessageFatal::GetEntry(&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Not implemented", 15);
  dmlc::LogMessageFatal::~LogMessageFatal(&v4);
}

void xgboost::common::FixedSizeStream::~FixedSizeStream(void **this)
{
  xgboost::common::FixedSizeStream::~FixedSizeStream(this);

  JUMPOUT(0x277C69180);
}

{
  *this = &unk_2883E1710;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_2883E1748;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

dmlc::io::URI *dmlc::io::URI::URI(dmlc::io::URI *this, char *__s1)
{
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v5 = strstr(__s1, "://");
  if (v5)
  {
    v6 = v5;
    std::string::basic_string[abi:ne200100](&__dst, __s1, v5 - __s1 + 3);
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = __dst;
    *(this + 2) = v12;
    v7 = v6 + 3;
    v8 = strchr(v7, 47);
    if (v8)
    {
      v9 = v8;
      std::string::basic_string[abi:ne200100](&__dst, v7, v8 - v7);
      if (*(this + 47) < 0)
      {
        operator delete(*(this + 3));
      }

      *(this + 24) = __dst;
      *(this + 5) = v12;
      MEMORY[0x277C68BE0](v4, v9);
    }

    else
    {
      MEMORY[0x277C68BE0](this + 24, v7);
      std::string::operator=(v4, 47);
    }
  }

  else
  {
    MEMORY[0x277C68BE0](v4, __s1);
  }

  return this;
}

void sub_274D2FDDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x277C68CB0](a1 + 2);

  return std::istream::~istream();
}

void xgboost::obj::AFTObj::LoadConfig(xgboost::obj::AFTObj *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "aft_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::common::AFTParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D301CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::AFTObj::SaveConfig(xgboost::obj::AFTObj *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "survival:aft");
  v7[0] = &unk_2883E6F38;
  v7[1] = 0;
  *v8 = *v5;
  v9 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v3 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v3, v7);
}

void xgboost::obj::AFTObj::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::AFTObj::GetGradient(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v5 = a5;
  v283 = *MEMORY[0x277D85DE8];
  v280 = ((*a2)[1] - **a2) >> 2;
  v279 = (*(a3[13] + 8) - *a3[13]) >> 2;
  if (v279 != v280)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v279, &v280);
  }

  v279 = (*(a3[14] + 8) - *a3[14]) >> 2;
  if (v279 != v280)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v279, &v280);
  }

  v281.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v280, &v281);
  v8 = *(*(a1 + 8) + 24);
  v9 = *(a1 + 24);
  v10 = a3[9];
  v11 = *v10;
  v277 = v10[1];
  v12 = v277 - *v10;
  if (v277 != v11)
  {
    v279 = v12 >> 2;
    if (v12 >> 2 != v280)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v279, &v280);
    }
  }

  v13 = *(a1 + 20);
  __asm { FMOV            V0.2D, #15.0 }

  v276 = _Q0;
  v275 = v5;
  if (v13 == 2)
  {
    if ((v8 & 0x80000000) == 0)
    {
LABEL_16:
      Entry = dmlc::LogMessageFatal::GetEntry(&v281);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
      v18 = dmlc::LogMessageFatal::GetEntry(&v281);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Not part of device code. WITH_CUDA: ", 36);
      MEMORY[0x277C68DF0](v19, 0);
      dmlc::LogMessageFatal::~LogMessageFatal(&v281);
      return;
    }

    v281.__ptr_ = 0;
    v282.__m_.__sig = 850045863;
    memset(v282.__m_.__opaque, 0, sizeof(v282.__m_.__opaque));
    v258 = v280;
    if (!v280)
    {
      goto LABEL_296;
    }

    v98 = 0;
    v99 = v9;
    v256 = v99 * v99;
    v253 = 1.0 / v99;
    v264 = v99;
    while (1)
    {
      v101 = **v5;
      v100 = (*v5)[1];
      if (v101)
      {
        v102 = 1;
      }

      else
      {
        v102 = v100 == 0;
      }

      if (!v102)
      {
        goto LABEL_297;
      }

      v103 = **a2;
      v104 = (*a2)[1];
      if (!v103 && v104 != 0)
      {
        goto LABEL_297;
      }

      v106 = a3[13];
      v107 = *v106;
      v108 = v106[1];
      if (!*v106 && v108 != 0)
      {
        goto LABEL_297;
      }

      v110 = a3[14];
      v111 = *v110;
      v112 = v110[1];
      if (!v111 && v112 != 0)
      {
        goto LABEL_297;
      }

      v114 = a3[9];
      v116 = *v114;
      v115 = v114[1];
      v117 = *v114 || v115 == 0;
      if (!v117 || (v104 - v103) >> 2 <= v98 || (v108 - v107) >> 2 <= v98 || (v112 - v111) >> 2 <= v98)
      {
        goto LABEL_297;
      }

      v118 = *(v103 + 4 * v98);
      v119 = *(v107 + 4 * v98);
      v120 = *(v111 + 4 * v98);
      v121 = v120;
      v122 = log(v119);
      v123 = log(v120);
      v261 = v123;
      if (v119 == v120)
      {
        v124 = exp((v122 - v118) / v99);
        v125 = 0.0;
        v126 = 0.0;
        if (fabs(v124) != INFINITY)
        {
          v125 = v124 * exp(-v124);
          v126 = (1.0 - v124) * v125;
        }

        v127 = 0;
        v128 = (v122 - v118) / v99 > 0.0;
      }

      else
      {
        v266 = v122;
        v129 = 0.0;
        if (fabs(v121) == INFINITY)
        {
          v130 = 0;
          v131 = 1.0;
          v127 = 1;
          v132 = 0.0;
        }

        else
        {
          v133 = (v123 - v118) / v99;
          v134 = exp(v133);
          v135 = exp(-v134);
          v132 = fabs(v134) == INFINITY ? 0.0 : v134 * v135;
          v131 = 1.0 - v135;
          v130 = v133 > 0.0;
          v127 = 3;
        }

        if (v119 <= 0.0)
        {
          v141 = 0;
          v127 = 2;
          v140 = 0.0;
          v99 = v264;
        }

        else
        {
          v136 = (v266 - v118) / v264;
          v271 = v118;
          v250 = v131;
          v137 = v132;
          v138 = exp(v136);
          v139 = exp(-v138);
          v132 = v137;
          v99 = v264;
          v129 = fabs(v138) == INFINITY ? 0.0 : v138 * v139;
          v131 = v250;
          v118 = v271;
          v140 = 1.0 - v139;
          v141 = v136 > 0.0;
        }

        v128 = v130 || v141;
        v126 = v132 - v129;
        v125 = v131 - v140;
        v5 = v275;
        v122 = v266;
      }

      v142 = v125 * v99;
      v143 = v126 / v142;
      v144 = COERCE__INT64(fabs(v126 / v142)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v142 < 1.0e-12 && v144)
      {
        break;
      }

LABEL_173:
      v272 = v143;
      if (v119 == v120)
      {
        v148 = (v122 - v118) / v99;
        v149 = exp(v148);
        v150 = 0.0;
        if (fabs(v149) == INFINITY)
        {
          v151 = 0.0;
          v152 = 0.0;
        }

        else
        {
          v152 = v149 * exp(-v149);
          v151 = (1.0 - v149) * v152;
          if (fabs(v149 * v149) != INFINITY)
          {
            v150 = v152 * (v149 * -3.0 + v149 * v149 + 1.0);
          }
        }

        *v159.i64 = v272;
        v155 = 0;
        v160 = -(v152 * v150 - v151 * v151);
        v161 = v152 * (v256 * v152);
        v162 = v148 > 0.0;
        v99 = v264;
      }

      else
      {
        v267 = v122;
        v153 = 0.0;
        if (fabs(v121) == INFINITY)
        {
          v154 = 0;
          v155 = 1;
          v156 = 1.0;
          v157 = 0.0;
          v158 = 0.0;
        }

        else
        {
          v163 = (v261 - v118) / v99;
          v164 = exp(v163);
          v165 = fabs(v164);
          v166 = exp(-v164);
          if (v165 == INFINITY)
          {
            v158 = 0.0;
          }

          else
          {
            v158 = v164 * v166;
          }

          if (v165 == INFINITY)
          {
            v157 = 0.0;
          }

          else
          {
            v157 = (1.0 - v164) * (v164 * v166);
          }

          v156 = 1.0 - v166;
          v154 = v163 > 0.0;
          v155 = 3;
        }

        if (v119 <= 0.0)
        {
          v173 = 0;
          v155 = 2;
          v170 = 0.0;
          v171 = 0.0;
          v99 = v264;
        }

        else
        {
          v167 = (v267 - v118) / v264;
          v168 = exp(v167);
          v169 = exp(-v168);
          v170 = v168 * v169;
          if (fabs(v168) == INFINITY)
          {
            v170 = 0.0;
            v153 = 0.0;
          }

          else
          {
            v153 = (1.0 - v168) * (v168 * v169);
          }

          v171 = 1.0 - v169;
          v172 = v167 <= 0.0;
          v99 = v264;
          v173 = !v172;
        }

        *v159.i64 = v272;
        v174 = v156 - v171;
        v162 = v154 | v173;
        v160 = -(v174 * (v157 - v153) - (v158 - v170) * (v158 - v170));
        v161 = v174 * v99 * (v174 * v99);
        v5 = v275;
      }

      v175 = v160 / v161;
      v176 = COERCE__INT64(fabs(v160 / v161)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v161 < 1.0e-12 && v176)
      {
        if (v155 == 2)
        {
          v175 = 1.0e-16;
        }

        else
        {
          v175 = 1.0e-16;
          if (v162)
          {
            v175 = 15.0;
          }
        }
      }

      if (v277 == v11)
      {
        v177 = 1.0;
      }

      else
      {
        if ((v115 - v116) >> 2 <= v98)
        {
          goto LABEL_297;
        }

        v177 = *(v116 + 4 * v98);
      }

      if ((v100 - v101) >> 3 <= v98)
      {
        goto LABEL_297;
      }

      *&v159.i64[1] = v175;
      *(v101 + 8 * v98++) = vmul_n_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(xmmword_274E22C60, v159), xmmword_274E22C60, vbslq_s8(vcgtq_f64(v159, v276), v276, v159))), v177);
      if (v258 == v98)
      {
        goto LABEL_296;
      }
    }

    if (v127 > 1)
    {
      if (v127 == 2)
      {
        v145 = v128 == 0;
        v146 = 0.0;
LABEL_169:
        v147 = v253;
LABEL_170:
        if (v145)
        {
          v143 = v147;
        }

        else
        {
          v143 = v146;
        }

        goto LABEL_173;
      }
    }

    else if (v127)
    {
      v145 = v128 == 0;
      v146 = -15.0;
      v147 = 0.0;
      goto LABEL_170;
    }

    v145 = v128 == 0;
    v146 = -15.0;
    goto LABEL_169;
  }

  if (v13 == 1)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v281.__ptr_ = 0;
    v282.__m_.__sig = 850045863;
    memset(v282.__m_.__opaque, 0, sizeof(v282.__m_.__opaque));
    v260 = v280;
    if (!v280)
    {
      goto LABEL_296;
    }

    v22 = 0;
    v23 = v9;
    v24 = 1.0;
    v255 = 1.0 / v9;
    v257 = v23 * v23;
    v252 = -1.0 / v9;
    v263 = v9;
    while (1)
    {
      v26 = **v5;
      v25 = (*v5)[1];
      if (v26)
      {
        _ZF = 1;
      }

      else
      {
        _ZF = v25 == 0;
      }

      if (!_ZF)
      {
        goto LABEL_297;
      }

      v28 = **a2;
      v29 = (*a2)[1];
      if (!v28 && v29 != 0)
      {
        goto LABEL_297;
      }

      v31 = a3[13];
      v32 = *v31;
      v33 = v31[1];
      if (!*v31 && v33 != 0)
      {
        goto LABEL_297;
      }

      v35 = a3[14];
      v36 = *v35;
      v37 = v35[1];
      if (!v36 && v37 != 0)
      {
        goto LABEL_297;
      }

      v39 = a3[9];
      v40 = *v39;
      v41 = v39[1];
      v42 = *v39 || v41 == 0;
      if (!v42 || (v29 - v28) >> 2 <= v22 || (v33 - v32) >> 2 <= v22 || (v37 - v36) >> 2 <= v22)
      {
        goto LABEL_297;
      }

      v43 = *(v28 + 4 * v22);
      v44 = *(v32 + 4 * v22);
      v45 = *(v36 + 4 * v22);
      v46 = v45;
      v47 = log(v44);
      v265 = log(v45);
      if (v44 == v45)
      {
        v48 = exp((v47 - v43) / v23);
        v49 = 0.0;
        v50 = 0.0;
        if (fabs(v48) != INFINITY)
        {
          v51 = v48 + v24;
          v49 = 0.0;
          if (fabs(v48 * v48) != INFINITY)
          {
            v49 = v48 / (v51 * v51);
          }

          v50 = (v24 - v48) * v49 / v51;
        }

        v52 = 0;
        v53 = (v47 - v43) / v23 > 0.0;
      }

      else
      {
        v54 = 0.0;
        if (fabs(v46) == INFINITY)
        {
          v55 = 0;
          v56 = 1.0;
          v52 = 1;
          v57 = 0.0;
        }

        else
        {
          v58 = (v265 - v43) / v23;
          v59 = exp(v58);
          v56 = 1.0;
          v57 = 0.0;
          if (fabs(v59) != INFINITY)
          {
            v60 = v59 + 1.0;
            v57 = 0.0;
            if (fabs(v59 * v59) != INFINITY)
            {
              v57 = v59 / (v60 * v60);
            }

            v56 = v59 / v60;
          }

          v55 = v58 > 0.0;
          v52 = 3;
        }

        if (v44 <= 0.0)
        {
          v64 = 0;
          v52 = 2;
          v62 = 0.0;
        }

        else
        {
          v269 = v57;
          v61 = exp((v47 - v43) / v263);
          v62 = 1.0;
          if (fabs(v61) != INFINITY)
          {
            v63 = v61 + 1.0;
            if (fabs(v61 * v61) == INFINITY)
            {
              v54 = 0.0;
            }

            else
            {
              v54 = v61 / (v63 * v63);
            }

            v62 = v61 / v63;
          }

          v57 = v269;
          v64 = (v47 - v43) / v263 > 0.0;
        }

        v53 = v55 || v64;
        v50 = v57 - v54;
        v49 = v56 - v62;
        v5 = v275;
        v23 = v263;
        v24 = 1.0;
      }

      v65 = v50 / (v49 * v23);
      if (v49 * v23 < 1.0e-12 && (*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v52 > 1)
        {
          if (v52 == 2)
          {
            v66 = v53 == 0;
            v67 = v255;
            v68 = 0.0;
LABEL_77:
            if (v66)
            {
              v65 = v67;
            }

            else
            {
              v65 = v68;
            }

            goto LABEL_83;
          }
        }

        else if (v52)
        {
          v66 = v53 == 0;
          v67 = 0.0;
          v68 = v252;
          goto LABEL_77;
        }

        v69 = -1.0;
        if (!v53)
        {
          v69 = v24;
        }

        v65 = v69 / v23;
      }

LABEL_83:
      v270 = v65;
      if (v44 == v45)
      {
        v70 = exp((v47 - v43) / v23);
        v71 = 0.0;
        v72 = 0.0;
        v73 = 0.0;
        if (fabs(v70) != INFINITY)
        {
          v74 = v70 + v24;
          v75 = v24 - v70;
          if (fabs(v70 * v70) == INFINITY)
          {
            v72 = 0.0;
            v76 = v75 * 0.0;
            v73 = 0.0;
            v71 = v76 / v74;
          }

          else
          {
            v87 = v74 * v74;
            v72 = v70 / (v74 * v74);
            v71 = v75 * v72 / v74;
            v73 = v72 * (v70 * -4.0 + v70 * v70 + v24) / v87;
          }
        }

        v88 = -(v72 * v73 - v71 * v71);
        v89 = v72 * (v257 * v72);
      }

      else
      {
        v77 = fabs(v46);
        v78 = 1.0;
        v79 = 0.0;
        v80 = 0.0;
        v81 = 0.0;
        if (v77 != INFINITY)
        {
          v82 = exp((v265 - v43) / v263);
          if (fabs(v82) != INFINITY)
          {
            v83 = v82 + 1.0;
            if (fabs(v82 * v82) != INFINITY)
            {
              v81 = v82 / (v83 * v83);
            }

            v78 = v82 / v83;
            v80 = (1.0 - v82) * v81 / v83;
          }
        }

        if (v44 <= 0.0)
        {
          v86 = 0.0;
          v85 = 0.0;
        }

        else
        {
          v84 = exp((v47 - v43) / v263);
          v85 = 1.0;
          if (fabs(v84) == INFINITY)
          {
            v86 = 0.0;
          }

          else
          {
            v90 = v84 + 1.0;
            v86 = 0.0;
            if (fabs(v84 * v84) != INFINITY)
            {
              v86 = v84 / (v90 * v90);
            }

            v85 = v84 / v90;
            v79 = (1.0 - v84) * v86 / v90;
          }
        }

        v91 = v78 - v85;
        v92 = v80 - v79;
        v23 = v263;
        v88 = -(v91 * v92 - (v81 - v86) * (v81 - v86));
        v89 = v91 * v263 * (v91 * v263);
        v24 = 1.0;
      }

      if (v277 == v11)
      {
        v93 = 1.0;
      }

      else
      {
        if ((v41 - v40) >> 2 <= v22)
        {
          goto LABEL_297;
        }

        v93 = *(v40 + 4 * v22);
      }

      if ((v25 - v26) >> 3 <= v22)
      {
        goto LABEL_297;
      }

      v94 = v88 / v89;
      _NF = (*&v94 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL && v89 < 1.0e-12;
      v96 = 1.0e-16;
      if (!_NF)
      {
        v96 = v94;
      }

      v97.f64[0] = v270;
      v97.f64[1] = v96;
      *(v26 + 8 * v22++) = vmul_n_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(xmmword_274E22C60, v97), xmmword_274E22C60, vbslq_s8(vcgtq_f64(v97, v276), v276, v97))), v93);
      if (v260 == v22)
      {
        goto LABEL_296;
      }
    }
  }

  if (v13)
  {
    v20 = dmlc::LogMessageFatal::GetEntry(&v281);
    dmlc::LogMessageFatal::Entry::Init(v20, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/aft_obj.cu", 103);
    v21 = dmlc::LogMessageFatal::GetEntry(&v281);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Unrecognized distribution", 25);
    dmlc::LogMessageFatal::~LogMessageFatal(&v281);
    return;
  }

  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  v178 = v280;
  v281.__ptr_ = 0;
  v282.__m_.__sig = 850045863;
  memset(v282.__m_.__opaque, 0, sizeof(v282.__m_.__opaque));
  if (v280)
  {
    v179 = 0;
    v180 = v9;
    v254 = v180 * v180;
    v259 = v9;
    v262 = 1.0 / (v180 * v180);
    while (1)
    {
      v181 = **v5;
      v182 = (*v5)[1];
      if (!v181 && v182 != 0)
      {
        break;
      }

      v184 = **a2;
      v185 = (*a2)[1];
      if (!v184 && v185 != 0)
      {
        break;
      }

      v187 = a3[13];
      v188 = *v187;
      v189 = v187[1];
      if (!*v187 && v189 != 0)
      {
        break;
      }

      v191 = a3[14];
      v192 = *v191;
      v193 = v191[1];
      if (!v192 && v193 != 0)
      {
        break;
      }

      v195 = a3[9];
      v197 = *v195;
      v196 = v195[1];
      v198 = *v195 || v196 == 0;
      if (!v198 || (v185 - v184) >> 2 <= v179 || (v189 - v188) >> 2 <= v179 || (v193 - v192) >> 2 <= v179)
      {
        break;
      }

      v199 = *(v184 + 4 * v179);
      v200 = *(v188 + 4 * v179);
      v201 = *(v192 + 4 * v179);
      v202 = v201;
      v203 = log(v200);
      v268 = log(v201);
      if (v200 == v201)
      {
        v204 = (v203 - v199) / v180;
        v205 = 0;
        v206 = exp(v204 * v204 * -0.5) / 2.50662827;
        v207 = -(v204 * v206);
        v208 = v204 > 0.0;
      }

      else
      {
        v209 = 0.0;
        if (fabs(v202) == INFINITY)
        {
          v210 = 0;
          v211 = 1.0;
          v205 = 1;
          v273 = 0.0;
        }

        else
        {
          v212 = (v268 - v199) / v180;
          v273 = exp(-(v212 * v212) * 0.5) / 2.50662827;
          v213 = erf(v212 / 1.41421356);
          v209 = 0.0;
          v211 = (v213 + 1.0) * 0.5;
          v210 = v212 > 0.0;
          v205 = 3;
        }

        if (v200 <= 0.0)
        {
          v220 = 0;
          v205 = 2;
          v219 = 0.0;
          v180 = v259;
        }

        else
        {
          v214 = (v203 - v199) / v259;
          v251 = v211;
          v215 = v199;
          v216 = v203;
          v217 = exp(-(v214 * v214) * 0.5) / 2.50662827;
          v218 = erf(v214 / 1.41421356);
          v211 = v251;
          v209 = v217;
          v203 = v216;
          v199 = v215;
          v219 = (v218 + 1.0) * 0.5;
          v172 = v214 <= 0.0;
          v180 = v259;
          v220 = !v172;
        }

        v208 = v210 | v220;
        v207 = v273 - v209;
        v206 = v211 - v219;
        v5 = v275;
      }

      v221 = v206 * v180;
      v222 = v207 / v221;
      if (v221 < 1.0e-12 && (*&v222 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v208)
        {
          v222 = 0.0;
        }

        else
        {
          v222 = 15.0;
        }

        if (v208)
        {
          v223 = -15.0;
        }

        else
        {
          v223 = 15.0;
        }

        if (v205 != 2)
        {
          v222 = v223;
        }

        if (v208)
        {
          v224 = -15.0;
        }

        else
        {
          v224 = 15.0;
        }

        if (v208)
        {
          v225 = -15.0;
        }

        else
        {
          v225 = 0.0;
        }

        if (v205)
        {
          v224 = v225;
        }

        if (v205 <= 1)
        {
          v222 = v224;
        }
      }

      v274 = v222;
      if (v200 == v201)
      {
        v226 = (v203 - v199) / v180;
        v227 = 0;
        v228 = exp(v226 * v226 * -0.5) / 2.50662827;
        v229 = -(v228 * ((v226 * v226 + -1.0) * v228) - -(v226 * v228) * -(v226 * v228));
        v230 = v228 * (v254 * v228);
        v231 = v226 > 0.0;
      }

      else
      {
        v232 = fabs(v202);
        v233 = 0.0;
        if (v232 == INFINITY)
        {
          v234 = 0;
          v227 = 1;
          v235 = 1.0;
          v236 = 0.0;
          v237 = 0.0;
        }

        else
        {
          v238 = (v268 - v199) / v180;
          v237 = exp(-(v238 * v238) * 0.5) / 2.50662827;
          v235 = (erf(v238 / 1.41421356) + 1.0) * 0.5;
          v236 = -(v238 * v237);
          v234 = v238 > 0.0;
          v227 = 3;
        }

        if (v200 <= 0.0)
        {
          v244 = 0;
          v227 = 2;
          v242 = 0.0;
          v243 = 0.0;
          v240 = v259;
        }

        else
        {
          v239 = v203 - v199;
          v240 = v259;
          v241 = v239 / v259;
          v242 = exp(-(v241 * v241) * 0.5) / 2.50662827;
          v243 = (erf(v241 / 1.41421356) + 1.0) * 0.5;
          v233 = -(v241 * v242);
          v244 = v241 > 0.0;
        }

        v245 = v235 - v243;
        v246 = v245 * v240;
        v231 = v234 || v244;
        v229 = -(v245 * (v236 - v233) - (v237 - v242) * (v237 - v242));
        v230 = v246 * v246;
        v5 = v275;
        v180 = v240;
      }

      v247 = v229 / v230;
      if (v230 < 1.0e-12 && (*&v247 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v227 > 1)
        {
          v247 = v262;
          if (v227 == 2)
          {
            v247 = 1.0e-16;
            if (!v231)
            {
              v247 = v262;
            }
          }
        }

        else
        {
          v247 = v262;
          if (v227)
          {
            v247 = 1.0e-16;
            if (v231)
            {
              v247 = v262;
            }
          }
        }
      }

      if (v277 == v11)
      {
        v248 = 1.0;
      }

      else
      {
        if ((v196 - v197) >> 2 <= v179)
        {
          break;
        }

        v248 = *(v197 + 4 * v179);
      }

      if ((v182 - v181) >> 3 <= v179)
      {
        break;
      }

      v249.f64[0] = v274;
      v249.f64[1] = v247;
      *(v181 + 8 * v179++) = vmul_n_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(xmmword_274E22C60, v249), xmmword_274E22C60, vbslq_s8(vcgtq_f64(v249, v276), v276, v249))), v248);
      if (v178 == v179)
      {
        goto LABEL_296;
      }
    }

LABEL_297:
    std::terminate();
  }

LABEL_296:
  dmlc::OMPException::Rethrow(&v281);
  std::mutex::~mutex(&v282);
  std::exception_ptr::~exception_ptr(&v281);
}

void sub_274D31938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, std::exception_ptr a30)
{
  std::mutex::~mutex((v30 + 8));
  std::exception_ptr::~exception_ptr(&a30);
  _Unwind_Resume(a1);
}

void xgboost::obj::AFTObj::PredTransform(uint64_t a1, float ***a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v6.__ptr_ = 0;
  v7.__m_.__sig = 850045863;
  memset(v7.__m_.__opaque, 0, sizeof(v7.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        *v3 = expf(*v3);
        ++v3;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    std::terminate();
  }

LABEL_10:
  dmlc::OMPException::Rethrow(&v6);
  std::mutex::~mutex(&v7);
  std::exception_ptr::~exception_ptr(&v6);
}

void sub_274D31AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void xgboost::FromJson<xgboost::common::AFTParam>(_DWORD **a1@<X0>, xgboost::common::AFTParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = (v5 + 3);
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v16 = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4, &std::piecewise_construct, &v16, &v15);
      std::string::operator=((v9 + 7), (v8 + 16));
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

  xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::common::AFTParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::common::AFTParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274D31CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::common::AFTParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::common::AFTParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274D31D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::common::AFTParam>(xgboost::common::AFTParam *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0x300000000;
  *a2 = &unk_2883E6E50;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  *(a2 + 32) = 0;
  v3 = xgboost::common::AFTParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v6, v3);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v7, v6[0], v6[1]);
  v10 = v6;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v4 = v7;
  if (v7 != &v8)
  {
    xgboost::JsonString::JsonString(v6, (v7 + 7));
    v10 = (v4 + 4);
    v5 = std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 16), v4 + 4, &std::piecewise_construct, &v10, &v9);
    xgboost::Json::operator=(v5 + 7, v6);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7, v8);
}

void sub_274D31EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(uint64_t *__return_ptr a1@<X8>, xgboost::common::AFTParam *this@<X0>, uint64_t *a3@<X1>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a3, a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v6 = xgboost::common::AFTParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a3, a3[1], a1, 0);
    *this = 1;
  }
}

void sub_274D31FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *dmlc::Parameter<xgboost::common::AFTParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::common::AFTParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::common::AFTParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274D32054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<xgboost::metric::$_0,std::allocator<xgboost::metric::$_0>,xgboost::Metric * ()(char const*)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

double xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowRMSE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v51[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v51[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v51, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v51[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v51[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v51, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v46 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v46) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v46 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v53 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v54 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v46 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v53 = 0;
    v54 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v57 = v7;
  v52[0] = v15;
  v52[1] = v16;
  v51[0] = v16;
  v51[1] = 1;
  v55 = v13;
  v56 = v14;
  if (v17 == -1)
  {
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v59);
    v45 = a4;
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v47, 1uLL, &v59);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v59.__ptr_ = 0;
    v60.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v58[0] = 2;
        v58[1] = v52;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v58, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_42;
          }

          v35 = *(v46 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_42:
          std::terminate();
        }

        v37 = *(v10 + 4 * v36) - *(v9 + 4 * v31);
        *__p = *__p + (v35 * (v37 * v37));
        v29 = *v47 + v35;
        *v47 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v59);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&v59);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v45;
    if (__p != v50)
    {
      v38 = __p;
      do
      {
        v39 = *v38++;
        v26 = v26 + v39;
      }

      while (v38 != v50);
    }

    if (v47 != v48)
    {
      v25 = 0.0;
      v40 = v47;
      do
      {
        v41 = *v40++;
        v25 = v25 + v41;
      }

      while (v40 != v48);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
      v22 = __p;
    }

    if (v22)
    {
      v50 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v59);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v59);
    v25 = 0.0;
    v26 = 0.0;
  }

  v59.__ptr_ = *&v26;
  *&v60.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v59, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v26 = *&v59.__ptr_;
    v25 = *&v60.__m_.__sig;
  }

  v43 = v26 / v25;
  if (v25 == 0.0)
  {
    v43 = v26;
  }

  return sqrt(v43);
}

void sub_274D32788()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D327BCLL);
}

void sub_274D327D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D32828(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<xgboost::metric::$_1,std::allocator<xgboost::metric::$_1>,xgboost::Metric * ()(char const*)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

double xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowRMSLE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v53[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v53[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v53, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v53[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v53[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v53, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v48 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v48) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v48 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v55 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v56 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v48 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v55 = 0;
    v56 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v59 = v7;
  v54[0] = v15;
  v54[1] = v16;
  v53[0] = v16;
  v53[1] = 1;
  v57 = v13;
  v58 = v14;
  if (v17 == -1)
  {
    *&v61.__ptr_ = 0.0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v61);
    v47 = a4;
    *&v61.__ptr_ = 0.0;
    std::vector<double>::vector[abi:ne200100](&v49, 1uLL, &v61);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    *&v61.__ptr_ = 0.0;
    v62.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v62.__m_.__opaque, 0, sizeof(v62.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v60[0] = 2;
        v60[1] = v54;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v60, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_42;
          }

          v35 = *(v48 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_42:
          std::terminate();
        }

        v37 = *(v9 + 4 * v31);
        v38 = log1pf(*(v10 + 4 * v36));
        v39 = log1pf(v37);
        *__p = *__p + (v35 * ((v38 - v39) * (v38 - v39)));
        v29 = *v49 + v35;
        *v49 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v61);
    std::mutex::~mutex(&v62);
    std::exception_ptr::~exception_ptr(&v61);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v47;
    if (__p != v52)
    {
      v40 = __p;
      do
      {
        v41 = *v40++;
        v26 = v26 + v41;
      }

      while (v40 != v52);
    }

    if (v49 != v50)
    {
      v25 = 0.0;
      v42 = v49;
      do
      {
        v43 = *v42++;
        v25 = v25 + v43;
      }

      while (v42 != v50);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
      v22 = __p;
    }

    if (v22)
    {
      v52 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v61);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v61);
    v25 = 0.0;
    v26 = 0.0;
  }

  *&v61.__ptr_ = v26;
  *&v62.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v61, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v26 = *&v61.__ptr_;
    v25 = *&v62.__m_.__sig;
  }

  v45 = v26 / v25;
  if (v25 == 0.0)
  {
    v45 = v26;
  }

  return sqrt(v45);
}

void sub_274D32F74()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D32FA8);
}

void sub_274D32FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D33014(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowMAE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v48[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v48[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v48, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v48[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v48[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v48, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v43 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v43) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v43 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v50 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v51 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v43 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v50 = 0;
    v51 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v54 = v7;
  v49[0] = v15;
  v49[1] = v16;
  v48[0] = v16;
  v48[1] = 1;
  v52 = v13;
  v53 = v14;
  if (v17 == -1)
  {
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v56);
    v42 = a4;
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v44, 1uLL, &v56);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v56.__ptr_ = 0;
    v57.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v57.__m_.__opaque, 0, sizeof(v57.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v55[0] = 2;
        v55[1] = v49;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v55, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_40;
          }

          v35 = *(v43 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_40:
          std::terminate();
        }

        *__p = *__p + (v35 * vabds_f32(*(v10 + 4 * v36), *(v9 + 4 * v31)));
        v29 = *v44 + v35;
        *v44 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v56);
    std::mutex::~mutex(&v57);
    std::exception_ptr::~exception_ptr(&v56);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v42;
    if (__p != v47)
    {
      v37 = __p;
      do
      {
        v38 = *v37++;
        v26 = v26 + v38;
      }

      while (v37 != v47);
    }

    if (v44 != v45)
    {
      v25 = 0.0;
      v39 = v44;
      do
      {
        v40 = *v39++;
        v25 = v25 + v40;
      }

      while (v39 != v45);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
      v22 = __p;
    }

    if (v22)
    {
      v47 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v56);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v56);
    v25 = 0.0;
    v26 = 0.0;
  }

  v56.__ptr_ = *&v26;
  *&v57.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v56, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D33740()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D33774);
}

void sub_274D3378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D337E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowMAPE>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v48[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v48[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v48, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v48[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v48[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v48, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v43 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v43) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v43 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v50 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v51 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v43 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v50 = 0;
    v51 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v54 = v7;
  v49[0] = v15;
  v49[1] = v16;
  v48[0] = v16;
  v48[1] = 1;
  v52 = v13;
  v53 = v14;
  if (v17 == -1)
  {
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v56);
    v42 = a4;
    v56.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v44, 1uLL, &v56);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v56.__ptr_ = 0;
    v57.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v57.__m_.__opaque, 0, sizeof(v57.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v55[0] = 2;
        v55[1] = v49;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v55, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_40;
          }

          v35 = *(v43 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_40:
          std::terminate();
        }

        *__p = *__p + (v35 * fabsf((*(v10 + 4 * v36) - *(v9 + 4 * v31)) / *(v10 + 4 * v36)));
        v29 = *v44 + v35;
        *v44 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v56);
    std::mutex::~mutex(&v57);
    std::exception_ptr::~exception_ptr(&v56);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v42;
    if (__p != v47)
    {
      v37 = __p;
      do
      {
        v38 = *v37++;
        v26 = v26 + v38;
      }

      while (v37 != v47);
    }

    if (v44 != v45)
    {
      v25 = 0.0;
      v39 = v44;
      do
      {
        v40 = *v39++;
        v25 = v25 + v40;
      }

      while (v39 != v45);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
      v22 = __p;
    }

    if (v22)
    {
      v47 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v56);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v56);
    v25 = 0.0;
    v26 = 0.0;
  }

  v56.__ptr_ = *&v26;
  *&v57.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v56, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D33F14()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D33F48);
}

void sub_274D33F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D33FB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalRowLogLoss>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v55[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v55[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v55, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v55[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v55[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v55, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v50 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v50) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v50 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v57 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v58 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v50 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v57 = 0;
    v58 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v61 = v7;
  v56[0] = v15;
  v56[1] = v16;
  v55[0] = v16;
  v55[1] = 1;
  v59 = v13;
  v60 = v14;
  if (v17 == -1)
  {
    v63.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v63);
    v49 = a4;
    v63.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v51, 1uLL, &v63);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v63.__ptr_ = 0;
    v64.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v64.__m_.__opaque, 0, sizeof(v64.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v62[0] = 2;
        v62[1] = v56;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v62, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_49;
          }

          v35 = *(v50 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_49:
          std::terminate();
        }

        v37 = *(v10 + 4 * v36);
        v38 = *(v9 + 4 * v31);
        v39 = 0.0;
        v40 = 0.0;
        if (v37 != 0.0)
        {
          if (v38 >= 1.0e-16)
          {
            v41 = *(v9 + 4 * v31);
          }

          else
          {
            v41 = 1.0e-16;
          }

          v40 = -(v37 * logf(v41));
        }

        v42 = 1.0 - v37;
        if (v42 != 0.0)
        {
          v43 = 1.0 - v38;
          if ((1.0 - v38) < 1.0e-16)
          {
            v43 = 1.0e-16;
          }

          v39 = -(v42 * logf(v43));
        }

        *__p = *__p + (v35 * (v40 + v39));
        v29 = *v51 + v35;
        *v51 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v63);
    std::mutex::~mutex(&v64);
    std::exception_ptr::~exception_ptr(&v63);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v49;
    if (__p != v54)
    {
      v44 = __p;
      do
      {
        v45 = *v44++;
        v26 = v26 + v45;
      }

      while (v44 != v54);
    }

    if (v51 != v52)
    {
      v25 = 0.0;
      v46 = v51;
      do
      {
        v47 = *v46++;
        v25 = v25 + v47;
      }

      while (v46 != v52);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
      v22 = __p;
    }

    if (v22)
    {
      v54 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v63);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v63);
    v25 = 0.0;
    v26 = 0.0;
  }

  v63.__ptr_ = *&v26;
  *&v64.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v63, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D34744()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D34778);
}

void sub_274D34790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D347E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_5,std::allocator<xgboost::metric::$_5>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::PseudoErrorLoss::LoadConfig(xgboost::metric::PseudoErrorLoss *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "pseduo_huber_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::PesudoHuberParam>(v4, (this + 16), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D349BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::metric::PseudoErrorLoss::SaveConfig(xgboost::metric::PseudoErrorLoss *this, xgboost::Json *a2)
{
  v3 = (*(*this + 48))(this);
  std::string::basic_string[abi:ne200100]<0>(v6, v3);
  v8[0] = &unk_2883E6F38;
  v8[1] = 0;
  *v9 = *v6;
  v10 = v7;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v4, v8);
}

void xgboost::metric::PseudoErrorLoss::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 16), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::metric::PseudoErrorLoss::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v52[0] = *(a3 + 32);
  if (*&v52[0] != *a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(v52, a3);
  }

  v6 = *(*(a1 + 8) + 24);
  if (v6 < 0)
  {
    v12 = *(a3 + 24);
    v9 = *v12;
    v46 = (v12[1] - *v12) >> 2;
    v11 = *(a3 + 40);
    if (v6 == -1)
    {
      v7 = **a2;
      v8 = ((*a2)[1] - v7) >> 2;
      v45 = **(a3 + 72);
      v10 = (*(*(a3 + 72) + 8) - v45) >> 2;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v45 = 0;
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v45 = 0;
    v46 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 40);
  }

  v47 = *(a1 + 20);
  v52[0] = 0.0;
  if (v47 == 0.0)
  {
    dmlc::LogCheckFormat<float,double>(&v47, v52);
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 24);
  if (v14 < 0)
  {
    v17 = *(a3 + 32);
    v15 = **(a3 + 24);
    v20 = *(*(a3 + 24) + 8) == v15;
    v54 = (*(*(a3 + 24) + 8) - v15) >> 2;
    v55 = v15;
    v18 = *(a3 + 40);
    v16 = *&v18 * v17;
    if (v20)
    {
      v16 = 0;
    }

    v19 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v54 = 0;
    v55 = 0;
    v17 = *(a3 + 32);
    v18 = *(a3 + 40);
    v19 = *(v13 + 24);
  }

  v21 = v47;
  v58 = v14;
  v53[0] = v17;
  *&v53[1] = v18;
  v52[0] = v18;
  *&v52[1] = 1;
  v56 = v15;
  v57 = v16;
  if (v19 == -1)
  {
    v60.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v60);
    v60.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v48, 1uLL, &v60);
    v29 = **(a3 + 24);
    v30 = *(*(a3 + 24) + 8);
    v60.__ptr_ = 0;
    v61.__m_.__sig = 850045863;
    v31 = 0.0;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v32 = v30 - v29;
    if (v32)
    {
      v33 = 0;
      v34 = v32 >> 2;
      do
      {
        v59[0] = 2;
        v59[1] = v53;
        v35 = xgboost::linalg::UnravelIndex<2ul>(v33, v59, *&v31);
        if (v10)
        {
          if (v10 <= v35)
          {
            goto LABEL_41;
          }

          v37 = *(v45 + 4 * v35);
        }

        else
        {
          v37 = 1.0;
        }

        v38 = v36 + v35 * v11;
        if (v38 >= v46)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v33)
        {
LABEL_41:
          std::terminate();
        }

        v39 = (*(v9 + 4 * v38) - *(v7 + 4 * v33)) / v21;
        *__p = *__p + (v37 * ((v21 * v21) * (sqrtf((v39 * v39) + 1.0) + -1.0)));
        v31 = *v48 + v37;
        *v48 = v31;
        ++v33;
      }

      while (v34 != v33);
    }

    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
    v24 = __p;
    v27 = 0.0;
    v28 = 0.0;
    if (__p != v51)
    {
      v40 = __p;
      do
      {
        v41 = *v40++;
        v28 = v28 + v41;
      }

      while (v40 != v51);
    }

    if (v48 != v49)
    {
      v27 = 0.0;
      v42 = v48;
      do
      {
        v43 = *v42++;
        v27 = v27 + v43;
      }

      while (v42 != v49);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
      v24 = __p;
    }

    if (v24)
    {
      v51 = v24;
      operator delete(v24);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v23 = dmlc::LogMessageFatal::GetEntry(&v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
    v27 = 0.0;
    v28 = 0.0;
  }

  v60.__ptr_ = *&v28;
  *&v61.__m_.__sig = v27;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v24, v25, v26);
    (*(*Engine + 8))(Engine, &v60, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D35260()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D35294);
}

void sub_274D352B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = a32;
  a32 = 0;
  if (v33)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a32, v33);
  }

  _Unwind_Resume(a1);
}

void sub_274D35310(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_6,std::allocator<xgboost::metric::$_6>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalPoissonNegLogLik>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v51[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v51[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v51, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v51[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v51[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v51, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v46 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v46) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v46 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v53 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v54 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v46 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v53 = 0;
    v54 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v57 = v7;
  v52[0] = v15;
  v52[1] = v16;
  v51[0] = v16;
  v51[1] = 1;
  v55 = v13;
  v56 = v14;
  if (v17 == -1)
  {
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v59);
    v45 = a4;
    v59.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v47, 1uLL, &v59);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v59.__ptr_ = 0;
    v60.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v58[0] = 2;
        v58[1] = v52;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v58, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_43;
          }

          v35 = *(v46 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_43:
          std::terminate();
        }

        v37 = *(v10 + 4 * v36);
        if (*(v9 + 4 * v31) >= 1.0e-16)
        {
          v38 = *(v9 + 4 * v31);
        }

        else
        {
          v38 = 1.0e-16;
        }

        v39 = lgammaf(v37 + 1.0) + v38;
        *__p = *__p + (v35 * (v39 - (logf(v38) * v37)));
        v29 = *v47 + v35;
        *v47 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v59);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&v59);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v45;
    if (__p != v50)
    {
      v40 = __p;
      do
      {
        v41 = *v40++;
        v26 = v26 + v41;
      }

      while (v40 != v50);
    }

    if (v47 != v48)
    {
      v25 = 0.0;
      v42 = v47;
      do
      {
        v43 = *v42++;
        v25 = v25 + v43;
      }

      while (v42 != v48);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
      v22 = __p;
    }

    if (v22)
    {
      v50 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v59);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v59);
    v25 = 0.0;
    v26 = 0.0;
  }

  v59.__ptr_ = *&v26;
  *&v60.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v59, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D35A74()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D35AA8);
}

void sub_274D35AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D35B14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_7,std::allocator<xgboost::metric::$_7>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double xgboost::metric::EvalEWiseBase<xgboost::metric::EvalGammaDeviance>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v53[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v53[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v53, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v53[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v53[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v53, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v48 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v48) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v48 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v55 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v56 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v48 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v55 = 0;
    v56 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v59 = v7;
  v54[0] = v15;
  v54[1] = v16;
  v53[0] = v16;
  v53[1] = 1;
  v57 = v13;
  v58 = v14;
  if (v17 == -1)
  {
    v61.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v61);
    v47 = a4;
    v61.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v49, 1uLL, &v61);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v61.__ptr_ = 0;
    v62.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v62.__m_.__opaque, 0, sizeof(v62.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v60[0] = 2;
        v60[1] = v54;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v60, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_42;
          }

          v35 = *(v48 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_42:
          std::terminate();
        }

        v37 = *(v9 + 4 * v31) + 0.000001;
        v38 = *(v10 + 4 * v36) + 0.000001;
        v39 = logf(v37 / v38);
        *__p = *__p + (v35 * (((v38 / v37) + v39) + -1.0));
        v29 = *v49 + v35;
        *v49 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v61);
    std::mutex::~mutex(&v62);
    std::exception_ptr::~exception_ptr(&v61);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v47;
    if (__p != v52)
    {
      v40 = __p;
      do
      {
        v41 = *v40++;
        v26 = v26 + v41;
      }

      while (v40 != v52);
    }

    if (v49 != v50)
    {
      v25 = 0.0;
      v42 = v49;
      do
      {
        v43 = *v42++;
        v25 = v25 + v43;
      }

      while (v42 != v50);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
      v22 = __p;
    }

    if (v22)
    {
      v52 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v61);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v61);
    v25 = 0.0;
    v26 = 0.0;
  }

  v61.__ptr_ = *&v26;
  *&v62.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v61, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
    v26 = *&v61.__ptr_;
    v25 = *&v62.__m_.__sig;
  }

  v45 = 0.000000999999997;
  if (v25 > 0.0)
  {
    v45 = v25;
  }

  return (v26 + v26) / v45;
}

void sub_274D36280()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D362B4);
}

void sub_274D362CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D36320(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_8,std::allocator<xgboost::metric::$_8>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalGammaNLogLik>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v52[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v52[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v52, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v52[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v52[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v52, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v18 = *(a3 + 24);
    v10 = *v18;
    v11 = (v18[1] - *v18) >> 2;
    v16 = *(a3 + 40);
    if (v7 == -1)
    {
      v47 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v47) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v47 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a3 + 32);
    v13 = **(a3 + 24);
    v19 = *(*(a3 + 24) + 8) == v13;
    v54 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v55 = v13;
    v14 = v16 * v15;
    if (v19)
    {
      v14 = 0;
    }

    v17 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v47 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v54 = 0;
    v55 = 0;
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = *(v6 + 24);
  }

  v58 = v7;
  v53[0] = v15;
  v53[1] = v16;
  v52[0] = v16;
  v52[1] = 1;
  v56 = v13;
  v57 = v14;
  if (v17 == -1)
  {
    v60.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v60);
    v46 = a4;
    v60.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v48, 1uLL, &v60);
    v27 = **(a3 + 24);
    v28 = *(*(a3 + 24) + 8);
    v60.__ptr_ = 0;
    v61.__m_.__sig = 850045863;
    v29 = 0.0;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v30 = v28 - v27;
    if (v30)
    {
      v31 = 0;
      v32 = v30 >> 2;
      do
      {
        v59[0] = 2;
        v59[1] = v53;
        v33 = xgboost::linalg::UnravelIndex<2ul>(v31, v59, *&v29);
        if (v12)
        {
          if (v12 <= v33)
          {
            goto LABEL_42;
          }

          v35 = *(v47 + 4 * v33);
        }

        else
        {
          v35 = 1.0;
        }

        v36 = v34 + v33 * v16;
        if (v36 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v31)
        {
LABEL_42:
          std::terminate();
        }

        v37 = *(v10 + 4 * v36);
        v38 = *(v9 + 4 * v31);
        if (v38 < 0.000001)
        {
          v38 = 0.000001;
        }

        v39 = -1.0 / v38;
        v40 = logf(-(-1.0 / v38));
        *__p = *__p - (v35 * ((v40 + (v37 * v39)) + 0.0));
        v29 = *v48 + v35;
        *v48 = v29;
        ++v31;
      }

      while (v32 != v31);
    }

    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
    v22 = __p;
    v25 = 0.0;
    v26 = 0.0;
    a4 = v46;
    if (__p != v51)
    {
      v41 = __p;
      do
      {
        v42 = *v41++;
        v26 = v26 + v42;
      }

      while (v41 != v51);
    }

    if (v48 != v49)
    {
      v25 = 0.0;
      v43 = v48;
      do
      {
        v44 = *v43++;
        v25 = v25 + v44;
      }

      while (v43 != v49);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
      v22 = __p;
    }

    if (v22)
    {
      v51 = v22;
      operator delete(v22);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v21 = dmlc::LogMessageFatal::GetEntry(&v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
    v25 = 0.0;
    v26 = 0.0;
  }

  v60.__ptr_ = *&v26;
  *&v61.__m_.__sig = v25;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v22, v23, v24);
    (*(*Engine + 8))(Engine, &v60, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D36A84()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D36AB8);
}

void sub_274D36AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D36B24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_9,std::allocator<xgboost::metric::$_9>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalError>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v50[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v50[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v50, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v50[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v50[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v50, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v19 = *(a3 + 24);
    v10 = *v19;
    v11 = (v19[1] - *v19) >> 2;
    v17 = *(a3 + 40);
    if (v7 == -1)
    {
      v45 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v45) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v45 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a1 + 16);
    v16 = *(a3 + 32);
    v13 = **(a3 + 24);
    v20 = *(*(a3 + 24) + 8) == v13;
    v52 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v53 = v13;
    v14 = v17 * v16;
    if (v20)
    {
      v14 = 0;
    }

    v18 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v45 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 16);
    v52 = 0;
    v53 = 0;
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(v6 + 24);
  }

  v56 = v7;
  v51[0] = v16;
  v51[1] = v17;
  v50[0] = v17;
  v50[1] = 1;
  v54 = v13;
  v55 = v14;
  if (v18 == -1)
  {
    v58.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v58);
    v44 = a4;
    v58.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v46, 1uLL, &v58);
    v28 = **(a3 + 24);
    v29 = *(*(a3 + 24) + 8);
    v58.__ptr_ = 0;
    v59.__m_.__sig = 850045863;
    v30 = 0.0;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    v31 = v29 - v28;
    if (v31)
    {
      v32 = 0;
      v33 = v31 >> 2;
      do
      {
        v57[0] = 2;
        v57[1] = v51;
        v34 = xgboost::linalg::UnravelIndex<2ul>(v32, v57, *&v30);
        if (v12)
        {
          if (v12 <= v34)
          {
            goto LABEL_42;
          }

          v36 = *(v45 + 4 * v34);
        }

        else
        {
          v36 = 1.0;
        }

        v37 = v35 + v34 * v17;
        if (v37 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v32)
        {
LABEL_42:
          std::terminate();
        }

        v38 = *(v10 + 4 * v37);
        if (v15 < *(v9 + 4 * v32))
        {
          v38 = 1.0 - v38;
        }

        *__p = *__p + (v36 * v38);
        v30 = *v46 + v36;
        *v46 = v30;
        ++v32;
      }

      while (v33 != v32);
    }

    dmlc::OMPException::Rethrow(&v58);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(&v58);
    v23 = __p;
    v26 = 0.0;
    v27 = 0.0;
    a4 = v44;
    if (__p != v49)
    {
      v39 = __p;
      do
      {
        v40 = *v39++;
        v27 = v27 + v40;
      }

      while (v39 != v49);
    }

    if (v46 != v47)
    {
      v26 = 0.0;
      v41 = v46;
      do
      {
        v42 = *v41++;
        v26 = v26 + v42;
      }

      while (v41 != v47);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
      v23 = __p;
    }

    if (v23)
    {
      v49 = v23;
      operator delete(v23);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v22 = dmlc::LogMessageFatal::GetEntry(&v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
    v26 = 0.0;
    v27 = 0.0;
  }

  v58.__ptr_ = *&v27;
  *&v59.__m_.__sig = v26;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v23, v24, v25);
    (*(*Engine + 8))(Engine, &v58, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D373C8()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D373FCLL);
}

void sub_274D37414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D37468(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const char *xgboost::metric::EvalEWiseBase<xgboost::metric::EvalError>::Name(uint64_t a1)
{
  if ((atomic_load_explicit(&_MergedGlobals_6, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_6))
  {
    unk_280AF6320 = 0;
    xmmword_280AF6310 = 0uLL;
    __cxa_atexit(MEMORY[0x277D82640], &xmmword_280AF6310, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_6);
  }

  if (*(a1 + 20) != 1)
  {
    return "error";
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "error", 5);
  if (*(a1 + 16) != 0.5)
  {
    LOBYTE(v4) = 64;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, &v4, 1);
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  if (byte_280AF6327 < 0)
  {
    operator delete(xmmword_280AF6310);
  }

  xmmword_280AF6310 = v4;
  unk_280AF6320 = v5;
  if (v5 >= 0)
  {
    v2 = &xmmword_280AF6310;
  }

  else
  {
    v2 = v4;
  }

  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&v10);
  return v2;
}

void sub_274D376C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_274D37890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  MEMORY[0x277C69180](v13, v12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::metric::$_10,std::allocator<xgboost::metric::$_10>,xgboost::Metric * ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::metric::EvalEWiseBase<xgboost::metric::EvalTweedieNLogLik>::Eval(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v55[0] = ((*a2)[1] - **a2) >> 2;
  __p = ((*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2);
  if (v55[0] != __p)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(v55, &__p);
  }

  if (*(*(a3 + 24) + 8) != **(a3 + 24))
  {
    v55[0] = *(a3 + 40);
    LODWORD(__p) = 0;
    if (!v55[0])
    {
      dmlc::LogCheckFormat<unsigned long,int>(v55, &__p);
    }
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 24);
  if (v7 < 0)
  {
    v19 = *(a3 + 24);
    v10 = *v19;
    v11 = (v19[1] - *v19) >> 2;
    v17 = *(a3 + 40);
    if (v7 == -1)
    {
      v50 = **(a3 + 72);
      v12 = (*(*(a3 + 72) + 8) - v50) >> 2;
      v9 = **a2;
      v8 = ((*a2)[1] - v9) >> 2;
    }

    else
    {
      v12 = 0;
      v50 = 0;
      v9 = 0;
      v8 = 0;
    }

    v15 = *(a1 + 16);
    v16 = *(a3 + 32);
    v13 = **(a3 + 24);
    v20 = *(*(a3 + 24) + 8) == v13;
    v57 = (*(*(a3 + 24) + 8) - v13) >> 2;
    v58 = v13;
    v14 = v17 * v16;
    if (v20)
    {
      v14 = 0;
    }

    v18 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v50 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a1 + 16);
    v57 = 0;
    v58 = 0;
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(v6 + 24);
  }

  v61 = v7;
  v56[0] = v16;
  v56[1] = v17;
  v55[0] = v17;
  v55[1] = 1;
  v59 = v13;
  v60 = v14;
  if (v18 == -1)
  {
    v63.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&__p, 1uLL, &v63);
    v49 = a4;
    v63.__ptr_ = 0;
    std::vector<double>::vector[abi:ne200100](&v51, 1uLL, &v63);
    v28 = **(a3 + 24);
    v29 = *(*(a3 + 24) + 8);
    v63.__ptr_ = 0;
    v64.__m_.__sig = 850045863;
    HIDWORD(v30) = 0;
    memset(v64.__m_.__opaque, 0, sizeof(v64.__m_.__opaque));
    v31 = v29 - v28;
    if (v31)
    {
      v32 = 0;
      v33 = v31 >> 2;
      v34 = 1.0 - v15;
      LODWORD(v30) = 2.0;
      v35 = 2.0 - v15;
      do
      {
        v62[0] = 2;
        v62[1] = v56;
        v36 = xgboost::linalg::UnravelIndex<2ul>(v32, v62, *&v30);
        if (v12)
        {
          if (v12 <= v36)
          {
            goto LABEL_40;
          }

          v38 = *(v50 + 4 * v36);
        }

        else
        {
          v38 = 1.0;
        }

        v39 = v37 + v36 * v17;
        if (v39 >= v11)
        {
          __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
        }

        if (v8 <= v32)
        {
LABEL_40:
          std::terminate();
        }

        v40 = *(v10 + 4 * v39);
        v41 = logf(*(v9 + 4 * v32));
        v42 = expf(v34 * v41);
        v43 = expf(v35 * v41);
        *__p = *__p + (v38 * ((v43 / v35) - ((v40 * v42) / v34)));
        v30 = *v51 + v38;
        *v51 = v30;
        ++v32;
      }

      while (v33 != v32);
    }

    dmlc::OMPException::Rethrow(&v63);
    std::mutex::~mutex(&v64);
    std::exception_ptr::~exception_ptr(&v63);
    v23 = __p;
    v26 = 0.0;
    v27 = 0.0;
    a4 = v49;
    if (__p != v54)
    {
      v44 = __p;
      do
      {
        v45 = *v44++;
        v27 = v27 + v45;
      }

      while (v44 != v54);
    }

    if (v51 != v52)
    {
      v26 = 0.0;
      v46 = v51;
      do
      {
        v47 = *v46++;
        v26 = v26 + v47;
      }

      while (v46 != v52);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
      v23 = __p;
    }

    if (v23)
    {
      v54 = v23;
      operator delete(v23);
    }
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v63);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/metric/../common/common.h", 239);
    v22 = dmlc::LogMessageFatal::GetEntry(&v63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v63);
    v26 = 0.0;
    v27 = 0.0;
  }

  v63.__ptr_ = *&v27;
  *&v64.__m_.__sig = v26;
  if (a4)
  {
    Engine = rabit::engine::GetEngine(v23, v24, v25);
    (*(*Engine + 8))(Engine, &v63, 8, 2, rabit::op::Reducer<rabit::op::Sum,double>, 0, 0);
  }
}

void sub_274D37F70()
{
  std::mutex::~mutex(&v2);
  std::exception_ptr::~exception_ptr(&v1);
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x274D37FA4);
}

void sub_274D37FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a30;
  a30 = 0;
  if (v31)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a30, v31);
  }

  _Unwind_Resume(a1);
}

void sub_274D38010(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__int128 *xgboost::metric::EvalEWiseBase<xgboost::metric::EvalTweedieNLogLik>::Name(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280AF6308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6308))
  {
    unk_280AF6338 = 0;
    xmmword_280AF6328 = 0uLL;
    __cxa_atexit(MEMORY[0x277D82640], &xmmword_280AF6328, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6308);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "tweedie-nloglik@", 16);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (byte_280AF633F < 0)
  {
    operator delete(xmmword_280AF6328);
  }

  v1 = &xmmword_280AF6328;
  xmmword_280AF6328 = v3;
  unk_280AF6338 = v4;
  v5 = *MEMORY[0x277D82828];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x277D82828] + 24);
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  if (v4 < 0)
  {
    v1 = v3;
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  MEMORY[0x277C690D0](&v9);
  return v1;
}

void sub_274D38234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep xgboost::common::Monitor::Start(float a1, __n128 a2)
{
  result = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a1, a2);
  if (*(result + 4) >= 3)
  {
    v7 = v3;
    v5 = std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v4 + 24), v3, &std::piecewise_construct, &v7, &v6);
    result = std::chrono::steady_clock::now().__d_.__rep_;
    v5[7] = result;
  }

  return result;
}

int64x2_t xgboost::common::Monitor::Stop(float a1, __n128 a2)
{
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a1, a2) + 4) >= 3)
  {
    v9 = v2;
    v5 = std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 24), v2, &std::piecewise_construct, &v9, &v8);
    v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v7 = vdupq_n_s64(1uLL);
    v7.i64[0] = v6.__d_.__rep_ - v5[3].i64[1];
    result = vaddq_s64(v7, v5[4]);
    v5[4] = result;
  }

  return result;
}

void xgboost::common::Monitor::PrintStatistics(float a1, __n128 a2, uint64_t a3, void *a4)
{
  v4 = a4 + 1;
  v5 = *a4;
  if (*a4 != a4 + 1)
  {
    v6 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a1, a2);
    v7 = MEMORY[0x277D82680];
    do
    {
      if (v5[7])
      {
        xgboost::BaseLogger::BaseLogger(v26);
        v27 = 4;
        v8 = *(v5 + 55);
        if (v8 >= 0)
        {
          v9 = (v5 + 4);
        }

        else
        {
          v9 = v5[4];
        }

        if (v8 >= 0)
        {
          v10 = *(v5 + 55);
        }

        else
        {
          v10 = v5[5];
        }

        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v9, v10);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
        v13 = MEMORY[0x277C68E00](v12, v5[8] / 1000000.0);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "s, ", 3);
        v15 = MEMORY[0x277C68E50](v14, v5[7]);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " calls @ ", 9);
        v17 = MEMORY[0x277C68E50](v16, v5[8]);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "us", 2);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v19 = std::locale::use_facet(&v25, v7);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(&v25);
        std::ostream::put();
        std::ostream::flush();
        xgboost::ConsoleLogger::~ConsoleLogger(v26, v20, v21);
      }

      else if (*(v6 + 4) >= 1)
      {
        operator new();
      }

      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != v4);
  }
}

void sub_274D385F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::Monitor::Print(xgboost::common::Monitor **this, float a2, __n128 a3)
{
  v4 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a2, a3);
  if (v4[1] >= 3)
  {
    Engine = rabit::engine::GetEngine(v4, v5, v6);
    v20 = (*(*Engine + 64))(Engine);
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    if (this[3] != (this + 4))
    {
      operator new();
    }

    xgboost::BaseLogger::BaseLogger(v21);
    v22 = 4;
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "======== Monitor (", 18);
    v9 = MEMORY[0x277C68E20](v8, v20);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "): ", 3);
    v11 = *(this + 23);
    if (v11 >= 0)
    {
      v12 = this;
    }

    else
    {
      v12 = *this;
    }

    if (v11 >= 0)
    {
      v13 = *(this + 23);
    }

    else
    {
      v13 = this[1];
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ========", 9);
    xgboost::ConsoleLogger::~ConsoleLogger(v21, v15, v16);
    xgboost::common::Monitor::PrintStatistics(v18, v19, v17, &v23);
    std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(v24[0]);
  }
}

void *std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::common::Monitor::Statistics>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::common::Monitor::Statistics>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_274D38A20(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN7xgboost6common7Monitor10StatisticsEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSG_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSP_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  this[1].__r_.__value_.__l.__data_ = std::chrono::steady_clock::now().__d_.__rep_;
  this[1].__r_.__value_.__r.__words[2] = 0;
  return this;
}

uint64_t rabit::engine::Init(rabit::engine *this, uint64_t a2, char **a3)
{
  {
    v6 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
    _tlv_atexit(rabit::engine::ThreadLocalEntry::~ThreadLocalEntry, v6);
  }

  v4 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
  if (!*v4)
  {
    *(v4 + 8) = 1;
    operator new();
  }

  return 1;
}

uint64_t rabit::engine::Finalize(rabit::engine *this, uint64_t a2, uint64_t a3)
{
  {
    v7 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
    _tlv_atexit(rabit::engine::ThreadLocalEntry::~ThreadLocalEntry, v7);
  }

  v4 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
  if (*v4)
  {
    result = (*(**v4 + 128))(*v4);
    if (!result)
    {
      return result;
    }

    v6 = *v4;
    *v4 = 0;
    if (v6)
    {
      (*(*v6 + 112))(v6);
    }

    v4[8] = 0;
  }

  return 1;
}

void *rabit::engine::GetEngine(rabit::engine *this, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_7))
  {
    rabit::engine::AllreduceBase::AllreduceBase(&unk_280AF6348);
    __cxa_atexit(rabit::engine::AllreduceBase::~AllreduceBase, &unk_280AF6348, &dword_274CA4000);
    __cxa_guard_release(&_MergedGlobals_7);
  }

  {
    v7 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
    _tlv_atexit(rabit::engine::ThreadLocalEntry::~ThreadLocalEntry, v7);
  }

  v5 = dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst(&dmlc::ThreadLocalStore<rabit::engine::ThreadLocalEntry>::Get(void)::inst);
  result = *v5;
  if (!*v5)
  {
    rabit::utils::Check(((*(v5 + 8) & 1) == 0), "the rabit has not been initialized", v4);
    return &unk_280AF6348;
  }

  return result;
}

void rabit::utils::Check(rabit::utils *this, const char *a2, const char *a3, ...)
{
  if ((this & 1) == 0)
  {
    operator new();
  }
}

void sub_274D38F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a12);
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t rabit::engine::Allgather(rabit::engine *this, uint64_t a2, uint64_t a3)
{
  v3 = **rabit::engine::GetEngine(this, a2, a3);

  return v3();
}

uint64_t rabit::engine::Allreduce_(rabit::engine *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*rabit::engine::GetEngine(a1, a2, a3) + 8);

  return v3();
}

void *rabit::engine::ReduceHandle::ReduceHandle(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

uint64_t rabit::engine::ReduceHandle::Allreduce(rabit::engine::ReduceHandle *this, void *a2, const char *a3, unint64_t a4, void (*a5)(void *), void *a6)
{
  rabit::utils::Assert((*(this + 1) != 0), "must initialize handle to call AllReduce", a3);
  v9 = *(*rabit::engine::GetEngine(v6, v7, v8) + 8);

  return v9();
}

void rabit::engine::AllreduceBase::~AllreduceBase(void **this)
{
  *this = &unk_2883E7B40;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  v3 = this + 13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this + 4;
  std::vector<rabit::engine::AllreduceBase::LinkRecord>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  rabit::engine::AllreduceBase::~AllreduceBase(this);

  JUMPOUT(0x277C69180);
}

void std::vector<rabit::engine::AllreduceBase::LinkRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<rabit::engine::AllreduceBase::LinkRecord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<rabit::engine::AllreduceBase::LinkRecord>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void rabit::engine::ThreadLocalEntry::~ThreadLocalEntry(rabit::engine::ThreadLocalEntry *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 112))(v2);
  }
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SparsePage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SparsePage> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::CSCPage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::CSCPage> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::SortedCSCPage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::SortedCSCPage> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

__int128 *dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::EllpackPage>>::Get()
{
  if ((atomic_load_explicit(&qword_280AF6490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF6490))
  {
    xmmword_280AF6638 = 0u;
    unk_280AF6648 = 0u;
    xmmword_280AF6658 = 0u;
    qword_280AF6668 = &qword_280AF6670;
    qword_280AF6670 = 0;
    qword_280AF6678 = 0;
    unk_280AF6680 = 850045863;
    qword_280AF66B8 = 0;
    xmmword_280AF6688 = 0u;
    unk_280AF6698 = 0u;
    xmmword_280AF66A8 = 0u;
    __cxa_atexit(dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::EllpackPage>>::~Registry, &xmmword_280AF6638, &dword_274CA4000);
    __cxa_guard_release(&qword_280AF6490);
  }

  return &xmmword_280AF6638;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::EllpackPage>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        v6 = *(v5 + 96);
        if (v6 == v5 + 72)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v10 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t dmlc::Registry<xgboost::data::SparsePageFormatReg<xgboost::GHistIndexMatrix>>::~Registry(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        std::__function::__value_func<xgboost::data::SparsePageFormat<xgboost::GHistIndexMatrix> * ()(void)>::~__value_func[abi:ne200100](v5 + 72);
        v9 = (v5 + 48);
        std::vector<dmlc::ParamFieldInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
        if (*(v5 + 47) < 0)
        {
          operator delete(*(v5 + 24));
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x277C69180](v5, 0x1032C40EA5FD255);
        v3 = *a1;
        v2 = *(a1 + 8);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::mutex::~mutex((a1 + 72));
  std::__tree<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::ParserFactoryReg<unsigned int,float> *>>>::destroy(*(a1 + 56));
  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_274D399D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  xgboost::DMatrix::~DMatrix(v13);
  MEMORY[0x277C69180]();
  _Unwind_Resume(a1);
}

unint64_t xgboost::SparsePage::Push<xgboost::data::DenseAdapterBatch>(uint64_t **a1, void *a2, int a3, float a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v52 = v8;
  v49 = v5;
  memset(v50, 0, sizeof(v50));
  v51 = v8;
  v9 = a2[1];
  if (v9)
  {
    v11 = a2;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v49, a2[1], a3);
    v56 = 0;
    v55.__m_.__sig = 0;
    *v55.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v56, &v57, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v47, a3);
    if (__p)
    {
      v55.__m_.__sig = __p;
      operator delete(__p);
    }

    __p = 0;
    v55.__m_.__sig = 850045863;
    memset(v55.__m_.__opaque, 0, sizeof(v55.__m_.__opaque));
    v46 = v9 / a3;
    v43 = a3;
    v44 = v9;
    if (v9 >= a3)
    {
      v15 = 0;
      v16 = 0;
      v13 = 1;
      v17 = *v47;
      v18 = fabsf(a4);
      v45 = v11;
      do
      {
        v19 = v11[2];
        if (v19)
        {
          v20 = (*v11 + v19 * v15);
          v21 = 1;
          do
          {
            v22 = *v20;
            if (fabsf(*v20) == INFINITY && v18 != INFINITY)
            {
              v13 = 0;
            }

            v56 = v16 - a1[2];
            if (v56 < v52)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v56, &v52);
            }

            v24 = *v17;
            if (*v17 <= v21)
            {
              v24 = v21;
            }

            *v17 = v24;
            if (v22 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v50[0], v51, v56);
            }

            ++v21;
            ++v20;
            --v19;
          }

          while (v19);
        }

        ++v16;
        v15 += 4;
        v11 = v45;
      }

      while (v16 != v46);
    }

    else
    {
      v13 = 1;
    }

    dmlc::OMPException::Rethrow(&__p);
    if ((v13 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v53);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v40 = dmlc::LogMessageFatal::GetEntry(v53);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Check failed: valid", 19);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v53);
    }

    v25 = v47;
    if (v47 == v48)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v26 = *v25;
        v25 += 3;
        v27 = *v26;
        if (v14 <= *v26)
        {
          v14 = v27;
        }
      }

      while (v25 != v48);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v49);
    if (v44 >= v43)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v30 = v11[2];
        if (v30)
        {
          v31 = 0;
          v32 = *v11 + v30 * v28;
          do
          {
            v33 = *(v32 + 4 * v31);
            if (v33 != a4)
            {
              v34 = v29 - (a1[2] + v51);
              v35 = *(&v49 + 1);
              v36 = *(*v50[0] + 8 * v34);
              *(*v50[0] + 8 * v34) = v36 + 1;
              v37 = *v35 + 8 * v36;
              *v37 = v31;
              *(v37 + 4) = v33;
            }

            ++v31;
          }

          while (v30 != v31);
        }

        ++v29;
        v28 += 4;
      }

      while (v29 != v46);
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v55);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v47;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v14 = 0;
  }

  __p = v50;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v14;
}

void sub_274D3A3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::exception_ptr a25, uint64_t a26, std::exception_ptr a27, uint64_t a28)
{
  std::mutex::~mutex(&a28);
  std::exception_ptr::~exception_ptr(&a27);
  a27.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27.__ptr_ = v28;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(void *a1, unint64_t a2, int a3)
{
  v6 = a3;
  std::vector<std::vector<unsigned long>>::resize(a1 + 2, a3);
  v7 = a2 / v6;
  a1[6] = a2 / v6;
  v8 = a1[2];
  if (a1[3] - v8 != 24)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a1[6];
      v12 = 0;
      std::vector<unsigned long>::resize((v8 + v9), v11, &v12);
      ++v10;
      v8 = a1[2];
      v9 += 24;
    }

    while (v10 < -1 - 0x5555555555555555 * ((a1[3] - v8) >> 3));
    v7 = a1[6];
  }

  v12 = 0;
  std::vector<unsigned long>::resize((v8 + 24 * (a3 - 1)), a2 - v7 * (a3 - 1), &v12);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(uint64_t **a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = v3 + 1;
    do
    {
      v5 += (*v7 - *(v7 - 1)) >> 3;
      v7 += 3;
      --v6;
    }

    while (v6);
    v8 = v5 + 1;
  }

  v9 = *a1;
  v10 = (*a1)[1];
  if (**a1 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 - 8);
  }

  v25 = v11;
  std::vector<unsigned long>::resize(v9, a1[5] + v8, &v25);
  v12 = a1[2];
  v13 = a1[3];
  v14 = v13 - v12;
  if (v13 != v12)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    v18 = a1[5] + 1;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      v19 = v12[3 * v15];
      v20 = v12[3 * v15 + 1] - v19;
      if (v20)
      {
        v21 = v20 >> 3;
        v22 = **a1;
        v23 = ((*a1)[1] - v22) >> 3;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        do
        {
          v24 = *v19;
          *v19 = v25 + v16;
          v16 += v24;
          if (v18 < v23)
          {
            *(v22 + 8 * v18++) += v16;
          }

          ++v19;
          --v21;
        }

        while (v21);
      }

      ++v15;
    }

    while (v15 != v17);
  }

  std::vector<xgboost::Entry>::resize(a1[1], *((*a1)[1] - 8));
}

unint64_t xgboost::SparsePage::Push<xgboost::data::ArrayAdapterBatch>(uint64_t **a1, uint64_t a2, int a3, float a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v59 = v8;
  v56 = v5;
  memset(v57, 0, sizeof(v57));
  v58 = v8;
  v9 = *(a2 + 32);
  if (v9 && ((v13 = *a2, v14 = *(a2 + 8), v15 = *(a2 + 16), v64 = *(a2 + 32), v63 = v15, v16 = *(a2 + 48), v65 = v16, v66 = *(a2 + 64), __p = v13, v62 = v14, v67 = v9 - 1, !*(&v64 + 1)) || (p_p = &__p, v72 = v9 - 1, *&v73 = *(&v64 + 1) - 1, xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(&__p, &p_p, *&v16), (v9 = *(a2 + 32)) != 0)))
  {
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v56, v9, a3);
    p_p = 0;
    v62 = 0;
    *&v63 = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &p_p, &v72, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v54, a3);
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    v69.__ptr_ = 0;
    v70.__m_.__sig = 850045863;
    memset(v70.__m_.__opaque, 0, sizeof(v70.__m_.__opaque));
    v53 = v9 / a3;
    v52 = a3;
    if (v9 >= a3)
    {
      v51 = v9;
      v19 = 0;
      v17 = 1;
      v20 = *v54;
      v21 = fabsf(a4);
      do
      {
        v22 = *a2;
        v23 = *(a2 + 8);
        v76 = *(a2 + 64);
        v24 = *(a2 + 32);
        v25 = *(a2 + 48);
        v74 = v24;
        v75 = v25;
        v73 = *(a2 + 16);
        p_p = v22;
        v72 = v23;
        v77 = v19;
        if (*(&v24 + 1))
        {
          v26 = 0;
          do
          {
            v27 = v77;
            v60[0] = &p_p;
            v60[1] = v77;
            v60[2] = v26;
            v28 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(&p_p, v60, *&v24);
            *&v24 = fabsf(v28);
            if (*&v24 == INFINITY && v21 != INFINITY)
            {
              v17 = 0;
            }

            v60[0] = v27 - a1[2];
            if (v60[0] < v59)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(v60, &v59);
            }

            v30 = v26 + 1;
            v31 = *v20;
            if (*v20 <= (v26 + 1))
            {
              v31 = v26 + 1;
            }

            *v20 = v31;
            if (v28 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v57[0], v58, v60[0]);
            }

            ++v26;
          }

          while (v30 < *(&v74 + 1));
        }

        ++v19;
      }

      while (v19 != v53);
      v9 = v51;
    }

    else
    {
      v17 = 1;
    }

    dmlc::OMPException::Rethrow(&v69);
    if ((v17 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v48 = dmlc::LogMessageFatal::GetEntry(&__p);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: valid", 19);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }

    v32 = v54;
    if (v54 == v55)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        v33 = *v32;
        v32 += 3;
        v34 = *v33;
        if (v18 <= *v33)
        {
          v18 = v34;
        }
      }

      while (v32 != v55);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v56);
    if (v9 >= v52)
    {
      v35 = 0;
      do
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        v66 = *(a2 + 64);
        v38 = *(a2 + 32);
        v39 = *(a2 + 48);
        v64 = v38;
        v65 = v39;
        v63 = *(a2 + 16);
        __p = v36;
        v62 = v37;
        v67 = v35;
        if (*(&v38 + 1))
        {
          v40 = 0;
          do
          {
            v41 = v67;
            v68[0] = &__p;
            v68[1] = v67;
            v68[2] = v40;
            *&v38 = xgboost::ArrayInterface<2,false>::DispatchCall<float xgboost::ArrayInterface<2,false>::operator()<float,unsigned long const&,unsigned long &>(unsigned long const&,unsigned long &)::{lambda(float const*)#1}>(&__p, v68, *&v38);
            if (*&v38 != a4)
            {
              v42 = v41 - (a1[2] + v58);
              v43 = *(&v56 + 1);
              v44 = *(*v57[0] + 8 * v42);
              *(*v57[0] + 8 * v42) = v44 + 1;
              v45 = (*v43 + 8 * v44);
              *v45 = v40;
              v45[1] = v38;
            }

            ++v40;
          }

          while (v40 < *(&v64 + 1));
        }

        ++v35;
      }

      while (v35 != v53);
    }

    dmlc::OMPException::Rethrow(&v69);
    std::mutex::~mutex(&v70);
    std::exception_ptr::~exception_ptr(&v69);
    v69.__ptr_ = &v54;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v69);
  }

  else
  {
    v18 = 0;
  }

  v69.__ptr_ = v57;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v69);
  return v18;
}

void sub_274D3ACB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::exception_ptr a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::exception_ptr a43, uint64_t a44)
{
  std::mutex::~mutex(&a44);
  std::exception_ptr::~exception_ptr(&a43);
  a43.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a43);
  a43.__ptr_ = a12;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

unint64_t xgboost::SparsePage::Push<xgboost::data::CSRAdapterBatch>(uint64_t **a1, void *a2, int a3, float a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = **a1;
  v7 = (*a1)[1];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) >> 3) - 1;
  }

  v57 = v8;
  v54 = v5;
  memset(v55, 0, sizeof(v55));
  v56 = v8;
  v9 = a2[3];
  if (v9)
  {
    v11 = a2;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v54, a2[3], a3);
    v61 = 0;
    v60.__m_.__sig = 0;
    *v60.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v61, &v62, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v52, a3);
    if (__p)
    {
      v60.__m_.__sig = __p;
      operator delete(__p);
    }

    __p = 0;
    v60.__m_.__sig = 850045863;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v51 = v9 / a3;
    v49 = a3;
    if (v9 >= a3)
    {
      v15 = 0;
      v13 = 1;
      v16 = *v52;
      v17 = fabsf(a4);
      v50 = v11;
      do
      {
        v18 = (*v11 + 8 * v15);
        v19 = *v18;
        v20 = v18[1];
        v21 = v20 - v19;
        if (v20 != v19)
        {
          v22 = (v11[1] + 4 * v19);
          v23 = (v11[2] + 4 * v19);
          do
          {
            v24 = *v23;
            v25 = fabsf(*v23) != INFINITY || v17 == INFINITY;
            v27 = *v22++;
            v26 = v27;
            if (!v25)
            {
              v13 = 0;
            }

            v61 = v15 - a1[2];
            if (v61 < v57)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v61, &v57);
            }

            if (*v16 <= (v26 + 1))
            {
              v28 = v26 + 1;
            }

            else
            {
              v28 = *v16;
            }

            *v16 = v28;
            if (v24 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v55[0], v56, v61);
            }

            ++v23;
            --v21;
          }

          while (v21);
        }

        ++v15;
        v11 = v50;
      }

      while (v15 != v51);
    }

    else
    {
      v13 = 1;
    }

    dmlc::OMPException::Rethrow(&__p);
    if ((v13 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v58);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v46 = dmlc::LogMessageFatal::GetEntry(v58);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Check failed: valid", 19);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v58);
    }

    v29 = v52;
    if (v52 == v53)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v30 = *v29;
        v29 += 3;
        v31 = *v30;
        if (v14 <= *v30)
        {
          v14 = v31;
        }
      }

      while (v29 != v53);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v54);
    if (v9 >= v49)
    {
      v32 = 0;
      do
      {
        v33 = (*v11 + 8 * v32);
        v34 = *v33;
        v35 = v33[1] - *v33;
        if (v35)
        {
          v36 = (v11[1] + 4 * v34);
          v37 = (v11[2] + 4 * v34);
          do
          {
            v38 = *v37;
            if (*v37 != a4)
            {
              v39 = *v36;
              v40 = v32 - (a1[2] + v56);
              v41 = *(&v54 + 1);
              v42 = *(*v55[0] + 8 * v40);
              *(*v55[0] + 8 * v40) = v42 + 1;
              v43 = (*v41 + 8 * v42);
              *v43 = v39;
              v43[1] = v38;
            }

            ++v37;
            ++v36;
            --v35;
          }

          while (v35);
        }

        ++v32;
      }

      while (v32 != v51);
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v52;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v14 = 0;
  }

  __p = v55;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v14;
}

void sub_274D3B2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::exception_ptr a25, uint64_t a26, std::exception_ptr a27, uint64_t a28)
{
  std::mutex::~mutex(&a28);
  std::exception_ptr::~exception_ptr(&a27);
  a27.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a27.__ptr_ = v28;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

unint64_t xgboost::SparsePage::Push<xgboost::data::CSRArrayAdapterBatch>(uint64_t **a1, xgboost::data::CSRArrayAdapterBatch *this, int a3, float a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[1];
  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((v8 - v7) >> 3) - 1;
  }

  v46 = v9;
  v43 = v6;
  memset(v44, 0, sizeof(v44));
  v45 = v9;
  v10 = *(this + 3);
  if (v10 < 2)
  {
    goto LABEL_8;
  }

  xgboost::data::CSRArrayAdapterBatch::GetLine(&__p, this, v10 - 2);
  if (v57)
  {
    xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&v60, &__p, v57 - 1);
  }

  v13 = *(this + 3);
  if (v13 >= 2)
  {
    v15 = v13 - 1;
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitBudget(&v43, v13 - 1, a3);
    v60 = 0;
    v55 = 0;
    v56 = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v60, v61, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v41, a3);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    v58.__ptr_ = 0;
    v59.__m_.__sig = 850045863;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    v39 = this;
    v40 = v15 / a3;
    v38 = v15;
    if (v15 >= a3)
    {
      v17 = 0;
      v16 = 1;
      v18 = *v41;
      v19 = fabsf(a4);
      do
      {
        xgboost::data::CSRArrayAdapterBatch::GetLine(&v60, v39, v17);
        if (v62)
        {
          for (i = 0; i < v62; ++i)
          {
            xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&v48, &v60, i);
            if (v19 != INFINITY && fabsf(v50) == INFINITY)
            {
              v16 = 0;
            }

            v47 = v48 - a1[2];
            if (v47 < v46)
            {
              dmlc::LogCheckFormat<unsigned long,unsigned long>(&v47, &v46);
            }

            if (*v18 <= (v49 + 1))
            {
              v21 = v49 + 1;
            }

            else
            {
              v21 = *v18;
            }

            *v18 = v21;
            if (v50 != a4)
            {
              xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v44[0], v45, v47);
            }
          }
        }

        ++v17;
      }

      while (v17 != v40);
    }

    else
    {
      v16 = 1;
    }

    dmlc::OMPException::Rethrow(&v58);
    if ((v16 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&__p);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v35 = dmlc::LogMessageFatal::GetEntry(&__p);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Check failed: valid", 19);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    }

    v22 = v41;
    if (v41 == v42)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v23 = *v22;
        v22 += 3;
        v24 = *v23;
        if (v14 <= *v23)
        {
          v14 = v24;
        }
      }

      while (v22 != v42);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,true>::InitStorage(&v43);
    if (v38 >= a3)
    {
      v25 = 0;
      do
      {
        xgboost::data::CSRArrayAdapterBatch::GetLine(&__p, v39, v25);
        if (v57)
        {
          for (j = 0; j < v57; ++j)
          {
            xgboost::data::CSRArrayAdapterBatch::Line::GetElement(&v51, &__p, j);
            v27 = v53;
            if (v53 != a4)
            {
              v28 = v52;
              v29 = v51 - (a1[2] + v45);
              v30 = *(&v43 + 1);
              v31 = *(*v44[0] + 8 * v29);
              *(*v44[0] + 8 * v29) = v31 + 1;
              v32 = (*v30 + 8 * v31);
              *v32 = v28;
              v32[1] = v27;
            }
          }
        }

        ++v25;
      }

      while (v25 != v40);
    }

    dmlc::OMPException::Rethrow(&v58);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(&v58);
    v58.__ptr_ = &v41;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v58);
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  v58.__ptr_ = v44;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v58);
  return v14;
}

void sub_274D3B934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception_ptr a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::exception_ptr a51, uint64_t a52)
{
  std::mutex::~mutex(&a52);
  std::exception_ptr::~exception_ptr(&a51);
  a51.__ptr_ = &a14;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a51);
  a51.__ptr_ = a11;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

__n128 xgboost::data::CSRArrayAdapterBatch::GetLine@<Q0>(uint64_t *__return_ptr a1@<X8>, xgboost::data::CSRArrayAdapterBatch *this@<X0>, uint64_t a3@<X1>)
{
  v6 = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(this, this, a3);
  v7 = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(this, this, a3 + 1);
  v8 = *(this + 7);
  v9 = *(this + 8);
  v10 = *(this + 9);
  result = *(this + 7);
  v12 = *(this + 16);
  *(a1 + 2) = *(this + 88);
  *(a1 + 24) = *(this + 52);
  *(a1 + 11) = *(this + 9);
  *(a1 + 52) = *(this + 80);
  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v7 - v6;
  *(a1 + 7) = result;
  a1[9] = v12;
  a1[10] = v7 - v6;
  a1[14] = a3;
  a1[15] = v10 * v6;
  return result;
}

void xgboost::data::CSRArrayAdapterBatch::Line::GetElement(float *__return_ptr a1@<X8>, xgboost::data::CSRArrayAdapterBatch::Line *this@<X0>, uint64_t a3@<X1>)
{
  v6 = *(this + 14);
  v7 = xgboost::ArrayInterface<1,true>::DispatchCall<unsigned long xgboost::ArrayInterface<1,true>::operator()<unsigned long,unsigned long &>(unsigned long &)::{lambda(unsigned long const*)#1}>(this, this, *(this + 15) + a3);
  v9 = xgboost::ArrayInterface<1,true>::DispatchCall<float xgboost::ArrayInterface<1,true>::operator()<float,unsigned long>(unsigned long &&)::{lambda(float const*)#1}>(this + 56, this + 56, *(this + 15) + a3, v8);
  *a1 = v6;
  *(a1 + 1) = v7;
  a1[4] = v9;
}

unint64_t xgboost::SparsePage::Push<xgboost::data::CSCAdapterBatch>(uint64_t **a1, void *a2, float a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v6 - v5) >> 3) - 1;
  }

  v57 = v7;
  v54 = v4;
  memset(v55, 0, sizeof(v55));
  v56 = v7;
  v8 = a2[3];
  if (v8)
  {
    v9 = a2;
    v51 = a2[3];
    v11 = (*a2 + 8 * v8);
    v12 = *(v11 - 1);
    v13 = *v11;
    if (v13 == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2[1] + 4 * v12 + 4 * v13 + 4 * ~v12) - a1[2];
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitBudget(&v54, v14, 1);
    v61 = 0;
    v60.__m_.__sig = 0;
    *v60.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v61, &v62, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v52, 1uLL);
    if (__p)
    {
      v60.__m_.__sig = __p;
      operator delete(__p);
    }

    v16 = 0;
    __p = 0;
    v60.__m_.__sig = 850045863;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v17 = 1;
    v18 = *v52;
    v19 = fabsf(a3);
    v50 = v9;
    do
    {
      v20 = (*v9 + 8 * v16);
      v21 = *v20;
      v22 = v20[1];
      ++v16;
      v23 = v22 - v21;
      if (v22 != v21)
      {
        v24 = (v9[1] + 4 * v21);
        v25 = (v9[2] + 4 * v21);
        do
        {
          v26 = *v25;
          v27 = fabsf(*v25) != INFINITY || v19 == INFINITY;
          v29 = *v24++;
          v28 = v29;
          if (!v27)
          {
            v17 = 0;
          }

          v61 = v28 - a1[2];
          if (v61 < v57)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v61, &v57);
          }

          v30 = *v18;
          if (*v18 <= v16)
          {
            v30 = v16;
          }

          *v18 = v30;
          if (v26 != a3)
          {
            xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v55[0], v56, v61);
          }

          ++v25;
          --v23;
        }

        while (v23);
      }

      v9 = v50;
    }

    while (v16 != v51);
    dmlc::OMPException::Rethrow(&__p);
    if ((v17 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(v58);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v47 = dmlc::LogMessageFatal::GetEntry(v58);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: valid", 19);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(v58);
    }

    v31 = v52;
    if (v52 == v53)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        v32 = *v31;
        v31 += 3;
        v33 = *v32;
        if (v15 <= *v32)
        {
          v15 = v33;
        }
      }

      while (v31 != v53);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitStorage(&v54);
    v34 = 0;
    do
    {
      v35 = (*v50 + 8 * v34);
      v36 = *v35;
      v37 = v35[1] - *v35;
      if (v37)
      {
        v38 = (v50[1] + 4 * v36);
        v39 = (v50[2] + 4 * v36);
        do
        {
          v40 = *v39;
          if (*v39 != a3)
          {
            v41 = *v38 - (a1[2] + v56);
            v42 = *(&v54 + 1);
            v43 = *(*v55[0] + 8 * v41);
            *(*v55[0] + 8 * v41) = v43 + 1;
            v44 = (*v42 + 8 * v43);
            *v44 = v34;
            v44[1] = v40;
          }

          ++v39;
          ++v38;
          --v37;
        }

        while (v37);
      }

      ++v34;
    }

    while (v34 != v51);
    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v52;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v15 = 0;
  }

  __p = v55;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v15;
}

void sub_274D3C088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::exception_ptr a23, uint64_t a24, std::exception_ptr a25, uint64_t a26)
{
  std::mutex::~mutex(&a26);
  std::exception_ptr::~exception_ptr(&a25);
  a25.__ptr_ = &a12;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25.__ptr_ = a9;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitBudget(void *a1, unint64_t a2, int a3)
{
  std::vector<std::vector<unsigned long>>::resize(a1 + 2, a3);
  v6 = a1[5];
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  a1[6] = 0;
  v10 = a1[2];
  if (a1[3] - v10 != 24)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = 0;
      std::vector<unsigned long>::resize((v10 + v11), v9, &v13);
      ++v12;
      v10 = a1[2];
      v11 += 24;
    }

    while (v12 < -1 - 0x5555555555555555 * ((a1[3] - v10) >> 3));
  }

  v13 = 0;
  std::vector<unsigned long>::resize((v10 + 24 * a3 - 24), v9, &v13);
}

void xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitStorage(uint64_t **a1)
{
  v3 = **a1;
  v2 = (*a1)[1];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 - 8);
  }

  v22 = v4;
  v5 = a1[2];
  v6 = a1[3];
  if (v6 == v5)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v6 - v5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = a1[5] + ((v5[v7 + 1] - v5[v7]) >> 3);
      if (v9 >= ((*a1)[1] - **a1) >> 3)
      {
        std::vector<unsigned long>::resize(*a1, v9 + 1, &v22);
        v5 = a1[2];
        v6 = a1[3];
      }

      ++v8;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v6 - v5);
      v7 += 3;
    }

    while (v8 < v10);
    v3 = **a1;
    v2 = (*a1)[1];
  }

  v11 = a1[5];
  v12 = (v11 + 1);
  if (v11 + 1 < (v2 - v3) >> 3)
  {
    v13 = 0;
    v14 = v5 + 1;
    do
    {
      v15 = v12;
      v16 = v14;
      for (i = v10; i; --i)
      {
        v18 = *(v16 - 1);
        v19 = a1[5];
        if (v11 < (v19 + ((*v16 - v18) >> 3)))
        {
          v20 = v11 - v19;
          v21 = *(v18 + 8 * v20);
          *(v18 + 8 * v20) = *(v2 - 8) + v13;
          v13 += v21;
        }

        v16 += 3;
      }

      *(v3 + 8 * v15) += v13;
      v12 = (v15 + 1);
      v11 = v15;
    }

    while ((v15 + 1) != ((v2 - v3) >> 3));
  }

  std::vector<xgboost::Entry>::resize(a1[1], *(v2 - 8));
}

unint64_t xgboost::SparsePage::Push<xgboost::data::DataTableAdapterBatch>(uint64_t **a1, void *a2, float a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v6 - v5) >> 3) - 1;
  }

  v54 = v7;
  v51 = v4;
  memset(v52, 0, sizeof(v52));
  v53 = v7;
  v8 = a2[2];
  if (v8 && ((xgboost::data::DataTableAdapterBatch::GetLine(&__p, a2, v8 - 1), !v61.__m_.__sig) ? (v13 = 0) : (v12 = v61.__m_.__sig - 1, xgboost::data::DataTableAdapterBatch::Line::DTGetValue(*&v61.__m_.__opaque[8], __p, v61.__m_.__sig - 1, v11), v13 = v12 - a1[2]), (v48 = a2[2]) != 0))
  {
    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitBudget(&v51, v13, 1);
    v62 = 0;
    v61.__m_.__sig = 0;
    *v61.__m_.__opaque = 0;
    __p = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, &v62, &v63, 1uLL);
    std::vector<std::vector<unsigned long long>>::vector[abi:ne200100](&v49, 1uLL);
    v47 = a2;
    if (__p)
    {
      v61.__m_.__sig = __p;
      operator delete(__p);
    }

    v14 = 0;
    __p = 0;
    v61.__m_.__sig = 850045863;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v15 = 1;
    v16 = *v49;
    v17 = fabsf(a3);
    do
    {
      xgboost::data::DataTableAdapterBatch::GetLine(v56, a2, v14);
      v19 = v57;
      if (v57)
      {
        v20 = 0;
        v21 = v59;
        v22 = v56[0];
        v23 = v58 + 1;
        do
        {
          v24 = xgboost::data::DataTableAdapterBatch::Line::DTGetValue(v21, v22, v20, v18);
          v18 = fabsf(v24);
          if (v18 == INFINITY && v17 != INFINITY)
          {
            v15 = 0;
          }

          v55 = v20 - a1[2];
          if (v55 < v54)
          {
            dmlc::LogCheckFormat<unsigned long,unsigned long>(&v55, &v54);
          }

          v26 = *v16;
          if (*v16 <= v23)
          {
            v26 = v23;
          }

          *v16 = v26;
          if (v24 != a3)
          {
            xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::AddBudget(v52[0], v53, v55);
          }

          ++v20;
        }

        while (v19 != v20);
      }

      ++v14;
    }

    while (v14 != v48);
    dmlc::OMPException::Rethrow(&__p);
    if ((v15 & 1) == 0)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v62);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/data.cc", 1163);
      v44 = dmlc::LogMessageFatal::GetEntry(&v62);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Check failed: valid", 19);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v62);
    }

    v27 = v49;
    if (v49 == v50)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *v27;
        v27 += 3;
        v30 = *v29;
        if (v28 <= *v29)
        {
          v28 = v30;
        }
      }

      while (v27 != v50);
    }

    xgboost::common::ParallelGroupBuilder<xgboost::Entry,unsigned long,false>::InitStorage(&v51);
    for (i = 0; i != v48; ++i)
    {
      xgboost::data::DataTableAdapterBatch::GetLine(&v62, v47, i);
      v33 = v63;
      if (v63)
      {
        v34 = 0;
        v35 = v64;
        v36 = v65;
        v37 = v62;
        do
        {
          v32 = xgboost::data::DataTableAdapterBatch::Line::DTGetValue(v36, v37, v34, v32);
          if (v32 != a3)
          {
            v38 = *(&v51 + 1);
            v39 = *v52[0] - 8 * (a1[2] + v53);
            v40 = *(v39 + 8 * v34);
            *(v39 + 8 * v34) = v40 + 1;
            v41 = *v38 + 8 * v40;
            *v41 = v35;
            *(v41 + 4) = v32;
          }

          ++v34;
        }

        while (v33 != v34);
      }
    }

    dmlc::OMPException::Rethrow(&__p);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&__p);
    __p = &v49;
    std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v28 = 0;
  }

  __p = v52;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v28;
}

void sub_274D3C8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::exception_ptr a30, std::exception_ptr a31, uint64_t a32)
{
  std::mutex::~mutex(&a32);
  std::exception_ptr::~exception_ptr(&a31);
  a31.__ptr_ = &a12;
  std::vector<std::vector<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31.__ptr_ = a9;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void xgboost::data::DataTableAdapterBatch::GetLine(xgboost::data::DataTableAdapterBatch *this, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, *(a2[1] + 8 * a3));
  v6 = v28;
  if (v28 < 0)
  {
    if (v27 != 4)
    {
      if (v27 != 5)
      {
        if (v27 == 7)
        {
          if (*__p != 1634692198 || *(__p + 3) != 842232929)
          {
            if (*__p == 1634692198 && *(__p + 3) == 875983969)
            {
              v9 = 1;
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          v9 = 0;
          goto LABEL_63;
        }

LABEL_62:
        Entry = dmlc::LogMessageFatal::GetEntry(&v29);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/data/../data/adapter.h", 512);
        v23 = dmlc::LogMessageFatal::GetEntry(&v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Unknown data table type.", 24);
        dmlc::LogMessageFatal::~LogMessageFatal(&v29);
        v9 = 7;
        v6 = v28;
        goto LABEL_63;
      }

      p_p = __p;
      if (*__p == 1819242338 && *(__p + 4) == 56)
      {
        v9 = 2;
        goto LABEL_63;
      }

      if (*__p == 863268457 && *(__p + 4) == 50)
      {
        v9 = 3;
        goto LABEL_63;
      }

      if (*__p != 829714025 || *(__p + 4) != 54)
      {
LABEL_55:
        v19 = *p_p;
        v20 = p_p[4];
        if (v19 == 913600105 && v20 == 52)
        {
          v9 = 6;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

LABEL_75:
      v9 = 5;
      goto LABEL_63;
    }

    if (*__p != 947154537)
    {
      goto LABEL_62;
    }

LABEL_66:
    v9 = 4;
    goto LABEL_63;
  }

  if (v28 == 4)
  {
    if (__p != 947154537)
    {
      goto LABEL_62;
    }

    v6 = 4;
    goto LABEL_66;
  }

  if (v28 == 5)
  {
    if (__p == 1819242338 && BYTE4(__p) == 56)
    {
      v9 = 2;
    }

    else
    {
      if (__p != 863268457 || BYTE4(__p) != 50)
      {
        if (__p != 829714025 || BYTE4(__p) != 54)
        {
          p_p = &__p;
          goto LABEL_55;
        }

        v6 = 5;
        goto LABEL_75;
      }

      v9 = 3;
    }

    v6 = 5;
    goto LABEL_63;
  }

  if (v28 != 7)
  {
    goto LABEL_62;
  }

  if (__p == 1634692198 && *(&__p + 3) == 842232929)
  {
    v9 = 0;
  }

  else
  {
    if (__p != 1634692198 || *(&__p + 3) != 875983969)
    {
      goto LABEL_62;
    }

    v9 = 1;
  }

  v6 = 7;
LABEL_63:
  v24 = a2[3];
  v25 = *(*a2 + 8 * a3);
  *this = v9;
  *(this + 1) = v24;
  *(this + 2) = a3;
  *(this + 3) = v25;
  if (v6 < 0)
  {
    operator delete(__p);
  }
}