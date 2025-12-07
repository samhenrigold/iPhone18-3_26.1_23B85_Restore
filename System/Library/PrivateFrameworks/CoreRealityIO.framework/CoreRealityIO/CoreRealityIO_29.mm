void sub_24766DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (*(v21 - 81) < 0)
  {
    operator delete(*(v21 - 104));
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a16);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&a17);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned int>::~pair(&a18);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_7>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24766DF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v20 = *v18;
  if (*v18)
  {
    v15[3].__vftable = v20;
    operator delete(v20);
  }

  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a15);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v17);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v21);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958E88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t *std::__shared_ptr_emplace<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v4);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 32));
  return realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 24));
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285958ED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285958F28;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285958F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8>,void ()(void)>::operator()(uint64_t a1)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  REAnimationComponentGetComponentType();
  v4[0] = &unk_285958FC8;
  v4[1] = v1;
  v4[3] = v4;
  v2 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v4, v2);
  RENetworkMarkComponentDirty();
  return std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v4);
}

void sub_24766E2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8,std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285958FC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  result = REAnimationComponentActiveAnimationCount();
  if (result)
  {

    return MEMORY[0x282153810](v2);
  }

  return result;
}

uint64_t std::__function::__func<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1},std::allocator<realityio::SkeletalAnimationAggregationBuilder::run(realityio::Inputs *)::$_8::operator() const(void)::{lambda(REComponent *)#1}>,void ()(REComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *RIO_MTLX::Value::isA<int>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void *RIO_MTLX::TypedValue<int>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<int>::TYPE(void)::v, "integer");
  }

  return RIO_MTLX::TypedValue<int>::TYPE(void)::v;
}

uint64_t RIO_MTLX::toValueString<int>@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_24766E574(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::anonymous namespace::dataToString<int>(unsigned int *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v4 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= 0xFFFFFEFB;
  *(&v9[2] + *(v4 - 24)) = 6;
  MEMORY[0x24C1A8F00](&v10, *a1);
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  v9[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_24766E7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::anonymous namespace::stringToData<int>(const std::string *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5, a1, 24);
  MEMORY[0x24C1A8E60](v5, a2);
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v9);
}

void sub_24766E934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void RIO_MTLX::TypedValue<BOOL>::TYPE()
{
  if ((atomic_load_explicit(&_MergedGlobals_44, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_44))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE53428, "BOOLean");

    __cxa_guard_release(&_MergedGlobals_44);
  }
}

std::string *RIO_MTLX::toValueString<BOOL>@<X0>(RIO_MTLX *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
}

void sub_24766EA04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::anonymous namespace::dataToString<BOOL>(RIO_MTLX *a1, std::string *a2)
{
  if (*a1 == 1)
  {
    v3 = RIO_MTLX::VALUE_STRING_TRUE(a1);
  }

  else
  {
    v3 = RIO_MTLX::VALUE_STRING_FALSE(a1);
  }

  return std::string::operator=(a2, v3);
}

RIO_MTLX *RIO_MTLX::anonymous namespace::stringToData<BOOL>(uint64_t a1, char *a2)
{
  result = RIO_MTLX::VALUE_STRING_TRUE(a1);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = *(result + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(result + 1);
  }

  if (v6 == v7)
  {
    v9 = v5 >= 0 ? a1 : *a1;
    v10 = v8 >= 0 ? result : *result;
    result = memcmp(v9, v10, v6);
    if (!result)
    {
      v17 = 1;
      goto LABEL_29;
    }
  }

  result = RIO_MTLX::VALUE_STRING_FALSE(result);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = *(result + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(result + 1);
  }

  if (v12 == v13)
  {
    v15 = v11 >= 0 ? a1 : *a1;
    v16 = v14 >= 0 ? result : *result;
    result = memcmp(v15, v16, v12);
    if (!result)
    {
      v17 = 0;
LABEL_29:
      *a2 = v17;
    }
  }

  return result;
}

const void *RIO_MTLX::Value::isA<float>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void *RIO_MTLX::TypedValue<float>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<float>::TYPE(void)::v, "float");
  }

  return RIO_MTLX::TypedValue<float>::TYPE(void)::v;
}

uint64_t RIO_MTLX::toValueString<float>@<X0>(float *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_24766EC68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIO_MTLX::anonymous namespace::dataToString<float>(float *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v3 = v8[0];
  *(&v8[1] + *(v8[0] - 24)) &= 0xFFFFFEFB;
  *(&v8[2] + *(v3 - 24)) = 6;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  v8[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8[2] = v4;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v12);
}

void sub_24766EE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::anonymous namespace::stringToData<float>(const std::string *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v5, a1, 24);
  MEMORY[0x24C1A8E50](v5, a2);
  v5[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v5 + *(v5[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v5[2] = v3;
  v6 = MEMORY[0x277D82878] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v7);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v9);
}

void sub_24766F028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

const void *RIO_MTLX::Value::isA<RIO_MTLX::Color3>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v, "color3");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<RIO_MTLX::Color3>(float *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
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
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++a1;
    --v4;
  }

  while (v4);
}

void sub_24766F1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

const void *RIO_MTLX::Value::isA<RIO_MTLX::Color4>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v, "color4");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v;
}

const void *RIO_MTLX::Value::isA<RIO_MTLX::Vector2>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v, "vector2");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<RIO_MTLX::Vector2>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    __p = 0;
    v15 = 0;
    v16 = 0;
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
      v8 = HIBYTE(v16);
    }

    else
    {
      v8 = v15;
    }

    v9 = std::string::append(a2, p_p, v8);
    if (v6)
    {
      v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
      v11 = v10[23];
      if (v11 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = *(v10 + 23);
      }

      else
      {
        v13 = *(v10 + 1);
      }

      std::string::append(a2, v12, v13);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
}

void sub_24766F498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

const void *RIO_MTLX::Value::isA<RIO_MTLX::Vector3>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v, "vector3");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<RIO_MTLX::Vector3>(float *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 3;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
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
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++a1;
    --v4;
  }

  while (v4);
}

void sub_24766F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

float RIO_MTLX::fromValueString<RIO_MTLX::Vector3>(RIO_MTLX *a1)
{
  v7 = 0;
  v6 = 0;
  v2 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v8, a1, v2);
  v3 = 0;
  v4 = &v6;
  do
  {
    v3 += 24;
    v4 = (v4 + 4);
  }

  while (v3 != 72);
  v9 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  return *&v6;
}

void sub_24766F718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v11 - 24) = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v11 - 24));
  _Unwind_Resume(a1);
}

const void *RIO_MTLX::Value::isA<RIO_MTLX::Vector4>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v, "vector4");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v;
}

const void *RIO_MTLX::Value::isA<RIO_MTLX::Matrix33>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v, "matrix33");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v;
}

const void *RIO_MTLX::Value::isA<RIO_MTLX::Matrix44>(const void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v, "matrix44");
  }

  return &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v;
}

const void *RIO_MTLX::Value::isA<std::string>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void *RIO_MTLX::TypedValue<std::string>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<std::string>::TYPE(void)::v, "string");
  }

  return RIO_MTLX::TypedValue<std::string>::TYPE(void)::v;
}

std::string *RIO_MTLX::toValueString<std::string>@<X0>(std::string *__return_ptr a1@<X8>, std::string *__str@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::operator=(a1, __str);
}

void sub_24766FAF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RIO_MTLX::fromValueString<std::string>@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::operator=(a2, __str);
}

void sub_24766FB48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void *RIO_MTLX::Value::isA<std::vector<int>>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void RIO_MTLX::TypedValue<std::vector<int>>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53400))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE53440, "integerarray");

    __cxa_guard_release(&qword_27EE53400);
  }
}

const void *RIO_MTLX::Value::isA<std::vector<BOOL>>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53408))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE53458, "BOOLeanarray");

    __cxa_guard_release(&qword_27EE53408);
  }
}

const void *RIO_MTLX::Value::isA<std::vector<float>>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void RIO_MTLX::TypedValue<std::vector<float>>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53410))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE53470, "floatarray");

    __cxa_guard_release(&qword_27EE53410);
  }
}

const void *RIO_MTLX::Value::isA<std::vector<std::string>>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void *RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE()
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v, "stringarray");
  }

  return RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v;
}

void RIO_MTLX::toValueString<std::vector<std::string>>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      memset(&v14, 0, sizeof(v14));
      std::string::operator=(&v14, (v3 + v5));
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v14;
      }

      else
      {
        v7 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      v9 = std::string::append(a2, v7, size);
      if (++v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v3 = *a1;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_24767001C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void RIO_MTLX::fromValueString<std::vector<std::string>>(RIO_MTLX *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v8, a1, v4);
  v5 = v8[0];
  v6 = v8[1];
  while (v5 != v6)
  {
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, v5);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v5;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

const void *RIO_MTLX::Value::isA<long>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void RIO_MTLX::TypedValue<long>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53418))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE53488, "integer");

    __cxa_guard_release(&qword_27EE53418);
  }
}

const void *RIO_MTLX::Value::isA<double>(const void *result)
{
  if (result)
  {
  }

  return result;
}

void RIO_MTLX::TypedValue<double>::TYPE()
{
  if ((atomic_load_explicit(&qword_27EE53420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53420))
  {
    std::string::basic_string[abi:ne200100]<0>(qword_27EE534A0, "float");

    __cxa_guard_release(&qword_27EE53420);
  }
}

__int128 *RIO_MTLX::Value::_creatorMap(RIO_MTLX::Value *this)
{
  {
    RIO_MTLX::Value::_creatorMap(void)::v = 0u;
    *&qword_27EE52368 = 0u;
    dword_27EE52378 = 1065353216;
  }

  return &RIO_MTLX::Value::_creatorMap(void)::v;
}

uint64_t RIO_MTLX::Value::createValueFromStrings(RIO_MTLX::Value *a1, uint64_t *a2)
{
  RIO_MTLX::Value::_creatorMap(a1);
  v4 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(&RIO_MTLX::Value::_creatorMap(void)::v, a2);
  RIO_MTLX::Value::_creatorMap(v4);
  if (!v4)
  {

    RIO_MTLX::TypedValue<std::string>::createFromString(a1);
  }

  v5 = v4[5];

  return v5(a1);
}

void sub_247670460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *RIO_MTLX::registryint(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<int>::ValueRegistry(&RIO_MTLX::registryint(void)::registryint);
  }

  return &RIO_MTLX::registryint(void)::registryint;
}

void *RIO_MTLX::registryBOOL(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<BOOL>::ValueRegistry(&RIO_MTLX::registryBOOL(void)::registryBOOL);
  }

  return &RIO_MTLX::registryBOOL(void)::registryBOOL;
}

void *RIO_MTLX::registryfloat(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<float>::ValueRegistry(&RIO_MTLX::registryfloat(void)::registryfloat);
  }

  return &RIO_MTLX::registryfloat(void)::registryfloat;
}

void *RIO_MTLX::registryColor3(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Color3>::ValueRegistry(&RIO_MTLX::registryColor3(void)::registryColor3);
  }

  return &RIO_MTLX::registryColor3(void)::registryColor3;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Color4>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = (a1 + 8);
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
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
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++v3;
    --v4;
  }

  while (v4);
}

void sub_2476707DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryColor4(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Color4>::ValueRegistry(&RIO_MTLX::registryColor4(void)::registryColor4);
  }

  return &RIO_MTLX::registryColor4(void)::registryColor4;
}

void *RIO_MTLX::registryVector2(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Vector2>::ValueRegistry(&RIO_MTLX::registryVector2(void)::registryVector2);
  }

  return &RIO_MTLX::registryVector2(void)::registryVector2;
}

void *RIO_MTLX::registryVector3(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Vector3>::ValueRegistry(&RIO_MTLX::registryVector3(void)::registryVector3);
  }

  return &RIO_MTLX::registryVector3(void)::registryVector3;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = (a1 + 8);
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = 4;
  do
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v6 = HIBYTE(v14);
    }

    else
    {
      v6 = v13;
    }

    v7 = std::string::append(a2, p_p, v6);
    if (v4 != 1)
    {
      v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
      v9 = v8[23];
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
        v11 = *(v8 + 1);
      }

      std::string::append(a2, v10, v11);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    ++v3;
    --v4;
  }

  while (v4);
}

void sub_247670AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryVector4(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Vector4>::ValueRegistry(&RIO_MTLX::registryVector4(void)::registryVector4);
  }

  return &RIO_MTLX::registryVector4(void)::registryVector4;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = 0;
  v4 = (a1 + 8);
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v5 = v4;
    v6 = 3;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
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
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (v3 != 2 || v6 != 1)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      ++v5;
      --v6;
    }

    while (v6);
    ++v3;
    v4 += 3;
  }

  while (v3 != 3);
}

void sub_247670C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryMatrix33(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix33>::ValueRegistry(&RIO_MTLX::registryMatrix33(void)::registryMatrix33);
  }

  return &RIO_MTLX::registryMatrix33(void)::registryMatrix33;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = 0;
  v4 = (a1 + 8);
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  do
  {
    v5 = v4;
    v6 = 4;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
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
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (v3 != 3 || v6 != 1)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      ++v5;
      --v6;
    }

    while (v6);
    ++v3;
    v4 += 4;
  }

  while (v3 != 4);
}

void sub_247670DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryMatrix44(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix44>::ValueRegistry(&RIO_MTLX::registryMatrix44(void)::registryMatrix44);
  }

  return &RIO_MTLX::registryMatrix44(void)::registryMatrix44;
}

void *RIO_MTLX::registrystring(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::string>::ValueRegistry(&RIO_MTLX::registrystring(void)::registrystring);
  }

  return &RIO_MTLX::registrystring(void)::registrystring;
}

void RIO_MTLX::TypedValue<std::vector<int>>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
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
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (++v6 < (*(a1 + 16) - *(a1 + 8)) >> 2)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      v3 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v3) >> 2);
  }
}

void sub_247671048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryIntVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<int>>::ValueRegistry(&RIO_MTLX::registryIntVec(void)::registryIntVec);
  }

  return &RIO_MTLX::registryIntVec(void)::registryIntVec;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      memset(&__p, 0, sizeof(__p));
      v12 = (*(*(a1 + 8) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1;
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

      v7 = std::string::append(a2, p_p, size);
      if (++v4 < *(a1 + 16))
      {
        v8 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v7);
        v9 = v8[23];
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
          v11 = *(v8 + 1);
        }

        std::string::append(a2, v10, v11);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    while (v4 < *(a1 + 16));
  }
}

void sub_2476711F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryBoolVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<BOOL>>::ValueRegistry(&RIO_MTLX::registryBoolVec(void)::registryBoolVec);
  }

  return &RIO_MTLX::registryBoolVec(void)::registryBoolVec;
}

void RIO_MTLX::TypedValue<std::vector<float>>::getValueString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
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
        v8 = HIBYTE(v16);
      }

      else
      {
        v8 = v15;
      }

      v9 = std::string::append(a2, p_p, v8);
      if (++v6 < (*(a1 + 16) - *(a1 + 8)) >> 2)
      {
        v10 = RIO_MTLX::ARRAY_PREFERRED_SEPARATOR(v9);
        v11 = v10[23];
        if (v11 >= 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = *v10;
        }

        if (v11 >= 0)
        {
          v13 = *(v10 + 23);
        }

        else
        {
          v13 = *(v10 + 1);
        }

        std::string::append(a2, v12, v13);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }

      v3 = *(a1 + 8);
      v5 += 4;
    }

    while (v6 < (*(a1 + 16) - v3) >> 2);
  }
}

void sub_2476713AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *RIO_MTLX::registryFloatVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<float>>::ValueRegistry(&RIO_MTLX::registryFloatVec(void)::registryFloatVec);
  }

  return &RIO_MTLX::registryFloatVec(void)::registryFloatVec;
}

void *RIO_MTLX::registryStringVec(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<std::vector<std::string>>::ValueRegistry(&RIO_MTLX::registryStringVec(void)::registryStringVec);
  }

  return &RIO_MTLX::registryStringVec(void)::registryStringVec;
}

uint64_t RIO_MTLX::TypedValue<long>::getValueString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v4 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= 0xFFFFFEFB;
  *(&v9[2] + *(v4 - 24)) = 6;
  MEMORY[0x24C1A8F20](&v10, *(a1 + 8));
  std::stringbuf::str();
  *a2 = v7;
  a2[2] = v8;
  v9[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_247671718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::registrylong(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<long>::ValueRegistry(&RIO_MTLX::registrylong(void)::registrylong);
  }

  return &RIO_MTLX::registrylong(void)::registrylong;
}

uint64_t RIO_MTLX::TypedValue<double>::getValueString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v4 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= 0xFFFFFEFB;
  *(&v9[2] + *(v4 - 24)) = 6;
  MEMORY[0x24C1A8EE0](&v10, *(a1 + 8));
  std::stringbuf::str();
  *a2 = v7;
  a2[2] = v8;
  v9[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v10 = v5;
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v14);
}

void sub_2476719D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *RIO_MTLX::registrydouble(RIO_MTLX *this)
{
  {
    RIO_MTLX::ValueRegistry<double>::ValueRegistry(&RIO_MTLX::registrydouble(void)::registrydouble);
  }

  return &RIO_MTLX::registrydouble(void)::registrydouble;
}

void *RIO_MTLX::Value::initValueTypeRegistry(RIO_MTLX::Value *this)
{
  v1 = RIO_MTLX::registryint(this);
  v2 = RIO_MTLX::registryBOOL(v1);
  v3 = RIO_MTLX::registryfloat(v2);
  v4 = RIO_MTLX::registryColor3(v3);
  v5 = RIO_MTLX::registryColor4(v4);
  v6 = RIO_MTLX::registryVector2(v5);
  v7 = RIO_MTLX::registryVector3(v6);
  v8 = RIO_MTLX::registryVector4(v7);
  v9 = RIO_MTLX::registryMatrix33(v8);
  v10 = RIO_MTLX::registryMatrix44(v9);
  v11 = RIO_MTLX::registrystring(v10);
  v12 = RIO_MTLX::registryIntVec(v11);
  v13 = RIO_MTLX::registryBoolVec(v12);
  v14 = RIO_MTLX::registryFloatVec(v13);
  v15 = RIO_MTLX::registryStringVec(v14);
  v16 = RIO_MTLX::registrylong(v15);

  return RIO_MTLX::registrydouble(v16);
}

void *std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::string>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<RIO_MTLX::TypedValue<std::string>>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285959290;
  RIO_MTLX::TypedValue<std::string>::TypedValue(a1 + 3, a2);
  return a1;
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::string>::TypedValue(void *a1, __int128 *a2)
{
  *a1 = &unk_2859592E0;
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

uint64_t RIO_MTLX::TypedValue<std::string>::~TypedValue(uint64_t a1)
{
  *a1 = &unk_2859592E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::string>::~TypedValue(uint64_t a1)
{
  *a1 = &unk_2859592E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A91B0);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_247672024(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](v1);
  _Unwind_Resume(a1);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<int>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<int>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<int>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<int>::TYPE();
    v3 = RIO_MTLX::TypedValue<int>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<int>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<int>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<int>::createFromString(const std::string *a1)
{
  v2 = 0;
  operator new();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(uint64_t *a1)
{
  v2 = std::__string_hash<char>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, a1);
  v3 = *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
  if (!*(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&RIO_MTLX::Value::_creatorMap(void)::v + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
    {
      v7 = v2 % *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
    }
  }

  else
  {
    v7 = (*(&RIO_MTLX::Value::_creatorMap(void)::v + 1) - 1) & v2;
  }

  v8 = *(RIO_MTLX::Value::_creatorMap(void)::v + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t *a1, __int128 **a2)
{
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, a1);
  v4 = v3;
  v5 = *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
  if (!*(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(*(&RIO_MTLX::Value::_creatorMap(void)::v + 8));
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *(&RIO_MTLX::Value::_creatorMap(void)::v + 1))
    {
      v8 = v3 % *(&RIO_MTLX::Value::_creatorMap(void)::v + 1);
    }
  }

  else
  {
    v8 = (*(&RIO_MTLX::Value::_creatorMap(void)::v + 1) - 1) & v3;
  }

  v9 = *(RIO_MTLX::Value::_creatorMap(void)::v + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= v5)
      {
        v11 %= v5;
      }
    }

    else
    {
      v11 &= v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](&RIO_MTLX::Value::_creatorMap(void)::v, v10 + 2, a1))
  {
    goto LABEL_17;
  }

  return v10;
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<BOOL>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<BOOL>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(qword_27EE53428))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<BOOL>::TYPE();
    v3 = qword_27EE53428;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(qword_27EE53428, &v3)[5] = RIO_MTLX::TypedValue<BOOL>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<BOOL>::createFromString(uint64_t a1)
{
  v2 = 0;
  operator new();
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859593A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<float>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<float>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<float>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<float>::TYPE();
    v3 = RIO_MTLX::TypedValue<float>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<float>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<float>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<float>::createFromString(const std::string *a1)
{
  v2 = 0;
  operator new();
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Color3>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Color3>::createFromString(RIO_MTLX *a1)
{
  v7 = 0;
  v6 = 0;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v8, a1, v3);
  v4 = 0;
  v5 = &v6;
  do
  {
    v4 += 24;
    v5 = (v5 + 4);
  }

  while (v4 != 72);
  v9 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  operator new();
}

void sub_247672E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Color3>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859594B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Color4>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Color4>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Color4>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Color4>::createFromString(RIO_MTLX *a1)
{
  v6 = 0uLL;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v7, a1, v3);
  v4 = 0;
  v5 = &v6;
  do
  {
    v4 += 24;
    v5 = (v5 + 4);
  }

  while (v4 != 96);
  v8 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  operator new();
}

void sub_2476730F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Color4>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Vector2>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Vector2>::createFromString(RIO_MTLX *a1)
{
  v4 = 0;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v5, a1, v3);
  v6 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  operator new();
}

void sub_2476733A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Vector2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859595C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Vector3>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Vector3>::createFromString;
  }

  return a1;
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Vector3>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Vector4>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Vector4>::createFromString(RIO_MTLX *a1)
{
  v6 = 0uLL;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v7, a1, v3);
  v4 = 0;
  v5 = &v6;
  do
  {
    v4 += 24;
    v5 = (v5 + 4);
  }

  while (v4 != 96);
  v8 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  operator new();
}

void sub_2476738A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Vector4>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859596D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix33>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>::createFromString(RIO_MTLX *a1)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v12, a1, v3);
  v4 = 0;
  v5 = 0;
  for (i = v10; ; i = (i + 12))
  {
    v7 = v4;
    v8 = i;
    v9 = 3;
    do
    {
      v8 += 4;
      v7 += 24;
      --v9;
    }

    while (v9);
    ++v5;
    v4 += 72;
    if (v5 == 3)
    {
      v13 = v12;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
      operator new();
    }
  }
}

void sub_247673B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Matrix33>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<RIO_MTLX::Matrix44>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE();
    v3 = &RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>::createFromString(RIO_MTLX *a1)
{
  memset(v10, 0, sizeof(v10));
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(v11, a1, v3);
  v4 = 0;
  v5 = 0;
  for (i = v10; ; ++i)
  {
    v7 = v4;
    v8 = i;
    v9 = 4;
    do
    {
      v8 += 4;
      v7 += 24;
      --v9;
    }

    while (v9);
    ++v5;
    v4 += 96;
    if (v5 == 4)
    {
      v12 = v11;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
      operator new();
    }
  }
}

void sub_247673E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 72) = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<RIO_MTLX::Matrix44>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859597E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::string>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::string>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<std::string>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::string>::TYPE();
    v3 = RIO_MTLX::TypedValue<std::string>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<std::string>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<std::string>::createFromString;
  }

  return a1;
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<int>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<int>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(qword_27EE53440))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<int>>::TYPE();
    v3 = qword_27EE53440;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(qword_27EE53440, &v3)[5] = RIO_MTLX::TypedValue<std::vector<int>>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<int>>::createFromString(RIO_MTLX *a1)
{
  __src = 0;
  v16 = 0;
  v17 = 0;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(&v18, a1, v3);
  v5 = v19;
  for (i = v18; i != v5; ++i)
  {
    LODWORD(v20) = 0;
    v6 = v16;
    if (v16 >= v17)
    {
      v8 = __src;
      v9 = v16 - __src;
      v10 = (v16 - __src) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v12 = v17 - __src;
      if ((v17 - __src) >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v13);
      }

      *(4 * v10) = v20;
      v7 = 4 * v10 + 4;
      memcpy(0, v8, v9);
      v14 = __src;
      __src = 0;
      v16 = v7;
      v17 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v16 = v20;
      v7 = (v6 + 4);
    }

    v16 = v7;
  }

  v20 = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::TypedValue<std::vector<int>>,std::allocator<RIO_MTLX::TypedValue<std::vector<int>>>,std::vector<int> const&,0>(&v18, &__src);
}

void sub_247674260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24767433C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::vector<int>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859598B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<int>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859598B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<BOOL>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<BOOL>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(qword_27EE53458))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<BOOL>>::TYPE();
    v3 = qword_27EE53458;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(qword_27EE53458, &v3)[5] = RIO_MTLX::TypedValue<std::vector<BOOL>>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::createFromString(RIO_MTLX *a1)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(&v15, a1, v3);
  v5 = v16;
  for (i = v15; i != v5; i += 24)
  {
    LOBYTE(v17) = 0;
    v6 = v13;
    if (v13 == v14 << 6)
    {
      if ((v13 + 1) < 0)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v7 = v14 << 7;
      if (v14 << 7 <= (v13 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v7 = (v13 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v13 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__p, v8);
      v6 = v13;
    }

    v13 = v6 + 1;
    v9 = v6 >> 6;
    v10 = 1 << v6;
    if (v17 == 1)
    {
      v11 = *(__p + v9) | v10;
    }

    else
    {
      v11 = *(__p + v9) & ~v10;
    }

    *(__p + v9) = v11;
  }

  v17 = &v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::TypedValue<std::vector<BOOL>>,std::allocator<RIO_MTLX::TypedValue<std::vector<BOOL>>>,std::vector<BOOL> const&,0>(&v15, &__p);
}

void sub_2476746A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_247674858(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859598F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::vector<BOOL>>::~TypedValue(void *a1)
{
  *a1 = &unk_285959940;
  v2 = a1[1];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<BOOL>>::~TypedValue(void *a1)
{
  *a1 = &unk_285959940;
  v1 = a1[1];
  if (v1)
  {
    operator delete(v1);
  }

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<float>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<float>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(qword_27EE53470))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<float>>::TYPE();
    v3 = qword_27EE53470;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(qword_27EE53470, &v3)[5] = RIO_MTLX::TypedValue<std::vector<float>>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<float>>::createFromString(RIO_MTLX *a1)
{
  __src = 0;
  v16 = 0;
  v17 = 0;
  v3 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(&v18, a1, v3);
  v5 = v19;
  for (i = v18; i != v5; ++i)
  {
    LODWORD(v20) = 0;
    v6 = v16;
    if (v16 >= v17)
    {
      v8 = __src;
      v9 = v16 - __src;
      v10 = (v16 - __src) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        std::vector<char const*>::__throw_length_error[abi:ne200100]();
      }

      v12 = v17 - __src;
      if ((v17 - __src) >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v13);
      }

      *(4 * v10) = v20;
      v7 = 4 * v10 + 4;
      memcpy(0, v8, v9);
      v14 = __src;
      __src = 0;
      v16 = v7;
      v17 = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v16 = v20;
      v7 = (v6 + 4);
    }

    v16 = v7;
  }

  v20 = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  std::allocate_shared[abi:ne200100]<RIO_MTLX::TypedValue<std::vector<float>>,std::allocator<RIO_MTLX::TypedValue<std::vector<float>>>,std::vector<float> const&,0>(&v18, &__src);
}

void sub_247674BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_247674CCC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *RIO_MTLX::TypedValue<std::vector<float>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859599C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void RIO_MTLX::TypedValue<std::vector<float>>::~TypedValue(void *a1)
{
  *a1 = &unk_2859599C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<std::vector<std::string>>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE();
    v3 = RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(RIO_MTLX::TypedValue<std::vector<std::string>>::TYPE(void)::v, &v3)[5] = RIO_MTLX::TypedValue<std::vector<std::string>>::createFromString;
  }

  return a1;
}

void sub_247674F44(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24767500C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<std::vector<std::string>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIO_MTLX::TypedValue<std::vector<std::string>>::~TypedValue(uint64_t a1)
{
  *a1 = &unk_285959A50;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_285959A50;
  v3 = (a1 + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x24C1A91B0](a1, 0xA1C4030951706);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<long>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<long>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(qword_27EE53488))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<long>::TYPE();
    v3 = qword_27EE53488;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(qword_27EE53488, &v3)[5] = RIO_MTLX::TypedValue<long>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<long>::createFromString(const std::string *a1)
{
  v3 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4, a1, 24);
  MEMORY[0x24C1A8E70](v4, &v3);
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v8);
  operator new();
}

void sub_247675414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

RIO_MTLX::Value *RIO_MTLX::ValueRegistry<double>::ValueRegistry(RIO_MTLX::Value *a1)
{
  RIO_MTLX::Value::_creatorMap(a1);
  RIO_MTLX::TypedValue<double>::TYPE();
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::find<std::string>(qword_27EE534A0))
  {
    RIO_MTLX::Value::_creatorMap(0);
    RIO_MTLX::TypedValue<double>::TYPE();
    v3 = qword_27EE534A0;
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<RIO_MTLX::Value> (*)(std::string const&)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(qword_27EE534A0, &v3)[5] = RIO_MTLX::TypedValue<double>::createFromString;
  }

  return a1;
}

void RIO_MTLX::TypedValue<double>::createFromString(const std::string *a1)
{
  v3 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v4, a1, 24);
  MEMORY[0x24C1A8E40](v4, &v3);
  v4[0] = *MEMORY[0x277D82818];
  v2 = *(MEMORY[0x277D82818] + 72);
  *(v4 + *(v4[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v4[2] = v2;
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v8);
  operator new();
}

void sub_2476757BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<RIO_MTLX::TypedValue<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285959B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t RIOPxrSdfAttributeSpecGetTypeID()
{
  if (RIOPxrSdfAttributeSpecGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfAttributeSpecGetTypeID::onceToken, &__block_literal_global_29);
  }

  return RIOPxrSdfAttributeSpecGetTypeID::typeID;
}

void __RIOPxrSdfAttributeSpecGetTypeID_block_invoke()
{
  if (!RIOPxrSdfAttributeSpecGetTypeID::typeID)
  {
    RIOPxrSdfAttributeSpecGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfAttributeSpecHasColorSpace(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207528](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfAttributeSpecCopyLayer(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(&v5, v1);
  v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(&v5);
  v3 = v6;
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return v2;
}

void sub_247675A20(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfSpec *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v1 = a1;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfAttributeSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, ("N32pxrInternal__aapl__pxrReserved__16SdfAttributeSpecE" & 0x7FFFFFFFFFFFFFFFLL), v2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v1;
}

void sub_247675B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfAttributeSpecIsBlocked(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDefaultValue(&v3, (a1 + 16));
  IsImpl = v4;
  if (v4)
  {
    if (!strcmp((*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfValueBlockE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      IsImpl = 1;
    }

    else if ((IsImpl & 4) != 0)
    {
    }

    else
    {
      IsImpl = 0;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v3);
  return IsImpl;
}

void sub_247675C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void realityio::ShadowComponentBuilder::ShadowComponentBuilder(realityio::ShadowComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[23] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "ShadowComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kShadowComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE534C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE534C8))
  {
    operator new();
  }

  v4[0] = _MergedGlobals_45;
  v4[1] = unk_27EE534C0;
  if (unk_27EE534C0)
  {
    atomic_fetch_add_explicit((unk_27EE534C0 + 8), 1uLL, memory_order_relaxed);
  }

  v8[0] = &unk_285959C90;
  v8[3] = v8;
  v7[0] = &unk_285959D10;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, v4, v8, v7);
}

void sub_247676404(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  MEMORY[0x24C1A91B0](v63, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  *(v64 - 184) = &a46;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v64 - 184));
  MEMORY[0x24C1A91B0](v62, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v61, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE534C8);
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

void realityio::ShadowComponentBuilder::run(realityio::ShadowComponentBuilder *this, realityio::Inputs *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[4] = a2;
  v2 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v8, v3, v2);
  v4 = atomic_load(&realityio::tokens::ShadowBuilderTokens);
  if (v4)
  {
    realityio::getAttributeValue<BOOL>(&v9, v8, v4);
    v5 = v9;
    v6 = v10;
    if ((v9 & 1) == 0 && v12 < 0)
    {
      operator delete(__p);
    }

    v7 = v6 & 1 | ((v5 & 1) == 0);
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShadowBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShadowBuilderTokens_StaticTokenType>>::_TryToCreateData();
}

void sub_247676914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ShadowComponentBuilder::clear(realityio::ShadowComponentBuilder *this, realityio::Inputs *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v4 = a2;
  v5[0] = &unk_285959E90;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*v2 + 16))(v2, v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_247676A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::ShadowComponentBuilder::~ShadowComponentBuilder(realityio::ShadowComponentBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::ShadowComponentBuilder::ShadowComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959D90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = **(a1 + 8);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v3, v4, v13);
  if (v13[0])
  {
    v5 = v14;
    v12 = v14;
    if (v14)
    {
      RERetain();
      if (**(a1 + 24) == 1)
      {
        REShadowMapComponentGetComponentType();
        v6 = *(a1 + 16);
        *&buf = &unk_285959E00;
        *(&buf + 1) = v2;
        v16 = v6;
        p_buf = &buf;
        v7 = REEntityGetOrAddComponentByClass();
        std::function<void ()(REComponent *)>::operator()(&buf, v7);
        RENetworkMarkComponentDirty();
        std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](&buf);
      }

      else
      {
        REShadowMapComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v11, *(a1 + 16));
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v11);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = Text;
    _os_log_impl(&dword_247485000, v8, OS_LOG_TYPE_DEFAULT, "Stopping operation to set shadow component because entity no longer exists for prim %s", &buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  }

LABEL_9:
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v12);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v13);
}

void sub_2476772E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va2);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio22ShadowComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959E00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

atomic_uint **_ZNSt3__110__function6__funcIZZN9realityio22ShadowComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  v3 = atomic_load(&realityio::tokens::ShadowBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShadowBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShadowBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v4 = *(v3 + 8);
  v17 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::getAttributeValue<float>(&v18, *(a1 + 16), &v17);
  v5 = v18;
  v6 = *&v19;
  if ((v18 & 1) == 0 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = atomic_load(&realityio::tokens::ShadowBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShadowBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShadowBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  v9 = *(v8 + 16);
  v17 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v17 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::getAttributeValue<float>(&v18, *(a1 + 16), &v17);
  v10 = v18;
  v11 = *&v19;
  if ((v18 & 1) == 0 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = -1.0;
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v18, *(a1 + 16));
  v13 = v19;
  if (v19)
  {
    if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v19) + 14))
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }
  }

  v17 = v13;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v17);
  v14 = v19;
  if (v19 && atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v18, &v17);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
  v15 = v19;
  if (v19 && atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v15 + 8))(v15);
  }

  if (v7 > -0.5)
  {
    REShadowMapComponentSetDepthBias();
  }

  if (v12 > -0.5)
  {
    REShadowMapComponentSetDistance();
  }

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v17);
}

void sub_2476776C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio22ShadowComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio22ShadowComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285959E90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v1 = **(a1 + 1);
  v2 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v1, v2, v5);
  if (v5[0])
  {
    v4 = v6;
    if (v6)
    {
      RERetain();
      REShadowMapComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }
  }

  else
  {
    v4 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v4);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v5);
}

void sub_247677904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::ShadowComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrUsdUtilsSdfCopySpec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8[6] = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4)
  {
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v7, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>(v8, (a3 + 16));
    operator new();
  }

  return 0;
}

void sub_247677CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::~__value_func[abi:ne200100](v17 - 104);
  *(v17 - 104) = &a14;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v17 - 104));
  *(v17 - 104) = &a17;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v17 - 104));
  _Unwind_Resume(a1);
}

void sub_247677DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v20 = 24;
  while (1)
  {
    v21 = *(&a20 + v20);
    if (v21 && atomic_fetch_add_explicit(v21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v21 + 8))(v21);
    }

    v20 -= 16;
    if (v20 == -8)
    {
      JUMPOUT(0x247677DC4);
    }
  }
}

void sub_247677E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    if (atomic_fetch_add_explicit(a21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  JUMPOUT(0x247677DC4);
}

void sub_247677FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959F10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285959FA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>,std::allocator<std::__bind<BOOL (&)(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *),std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::reference_wrapper<pxrInternal__aapl__pxrReserved__::SdfPath const>,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&,std::placeholders::__ph<4> const&,std::placeholders::__ph<5> const&,std::placeholders::__ph<6> const&,std::placeholders::__ph<7> const&,std::placeholders::__ph<8> const&,std::placeholders::__ph<9> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfSpecType,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL,std::optional<pxrInternal__aapl__pxrReserved__::VtValue> *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::MeshAssetBuilder::kOutputName(realityio::MeshAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::MeshAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_247678328(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::MeshAssetBuilder::MeshAssetBuilder(realityio::MeshAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "MeshAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kMeshAssetBuilderIdentifier);
  realityio::generateMeshAssetBuilderDirtyStageSubscription(&v4);
  v8[0] = &unk_28595A240;
  v8[3] = v8;
  v7[0] = &unk_28595A350;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2476784A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t isTexCoord3(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1)
{
  v6[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  v6[1] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v6);
  v1 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v1))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    return 1;
  }

  if (!atomic_load(v1))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  return pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
}

uint64_t realityio::MeshAssetBuilder::run(realityio::MeshAssetBuilder *this, realityio::Inputs *a2)
{
  v357 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  v250 = v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v325, v3, v2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v325))
  {
    realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v324, 2034, this, 0, 0, 0);
    v322 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v323 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v320 = 0;
    v319 = 0;
    v321 = 0;
    v5 = realityio::MeshModelDescriptorBuilder::kModelDescriptorOutputName(v4);
    realityio::Inputs::getAccumulatedValues<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>(a2, v5, &v338);
    if (v338 != 1 || (v6 = v340, v7 = v339, v340 == v339))
    {
      realityio::Result<std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,realityio::DetailedError>::~Result(&v338);
    }

    else
    {
      v8 = 0;
      do
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v353[8] = v9;
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          *&v353[8] = 0;
        }

        *v353 = v10;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v315, (v10 + 8));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v316, (v10 + 12));
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf[0].i64, v11, &v315);
        if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrimInPrototype(v272, buf);
          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v272))
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v335, v272);
            if (v8)
            {
              if (v335.__r_.__value_.__r.__words[0] == v322)
              {
                operator new();
              }
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v346, &v335);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v346 + 1, v335.__r_.__value_.__r.__words + 1);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v346[1], &v315);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v346[1] + 1, &v316);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v322, v346);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v322 + 4, v346 + 1);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v323, &v346[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v323 + 4, &v346[1] + 1);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v346[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v346);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v335);
            v8 = 1;
          }

          if ((BYTE8(v272[1]) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v272[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v272[1]);
          if (*(&v272[0] + 1))
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v272[0] + 1));
          }
        }

        std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::push_back[abi:ne200100](&v319, v353);
        if ((buf[1].i8[8] & 7) != 0)
        {
          atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
        if (buf[0].i64[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v315);
        if (*&v353[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v353[8]);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v7 += 2;
      }

      while (v7 != v6);
      v12 = realityio::Result<std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>,realityio::DetailedError>::~Result(&v338);
      v13 = realityio::MaterialAssetBuilder::kMaterialDataName(v12);
      realityio::Inputs::getAccumulatedValues<realityio::MaterialAssetDataT *>(a2, v13, &v315);
      v313 = 0;
      v312 = 0;
      v314 = 0;
      if (v315)
      {
        std::vector<realityio::MaterialAssetDataT *>::__init_with_size[abi:ne200100]<realityio::MaterialAssetDataT **,realityio::MaterialAssetDataT **>(&v312, v317, v318, (v318 - v317) >> 3);
      }

      EntityGeneratingDataForPrim = realityio::internal::PrimToEntityMap::getEntityGeneratingDataForPrim((*a2 + 16), &v325);
      if (EntityGeneratingDataForPrim && *(EntityGeneratingDataForPrim + 96) == 1 && !*(EntityGeneratingDataForPrim + 72))
      {
        v249 = *(*(*(a2 + 5) + 16) + 272) ^ 1;
      }

      else
      {
        v249 = 0;
      }

      v310 = 0;
      v309 = 0;
      v311 = 0;
      v308[1] = 0;
      v308[0] = 0;
      v307 = v308;
      v15 = v306;
      v306[1] = 0;
      v306[0] = 0;
      v305 = v306;
      v304[1] = 0;
      v304[0] = 0;
      v303 = v304;
      v302[1] = 0;
      v302[0] = 0;
      v301 = v302;
      v300 = 0;
      v299 = REMeshAssetDescriptorCreate();
      if (v299)
      {
        ServiceLocator = REEngineGetServiceLocator();
        MEMORY[0x24C1A4230](ServiceLocator);
        v17 = *(*a2 + 304);
        v18 = *(a2 + 5);
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
        MaterialIndexAssignor::make(&v338, &v312, &v319, v17, v18, v19, this);
        v297 = 0;
        v296 = 0;
        v298 = 0;
        v247 = *(*a2 + 304);
        memset(v295, 0, sizeof(v295));
        v21 = v319;
        v251 = v320;
        if (v319 == v320)
        {
          goto LABEL_497;
        }

        v252 = 0;
        v248 = *(MEMORY[0x277D86788] + 48);
        v263 = *(MEMORY[0x277D86748] + 48);
        while (1)
        {
          v23 = *v21;
          v22 = v21[1];
          *&v294 = *v21;
          *(&v294 + 1) = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v293, (v23 + 8));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v293 + 1, (v23 + 12));
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v291, v24, &v293);
          v25 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&v307, &v293);
          if (v308 != v25)
          {
            v253 = v21;
            v26 = *(v25 + 36);
            goto LABEL_42;
          }

          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v289, v32, &v293);
          pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(PrimAtPath);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() & 1) == 0)
          {
            if ((v290 & 7) != 0)
            {
              atomic_fetch_add_explicit((v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            goto LABEL_125;
          }

          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v288 = 0;
          v286 = MEMORY[0x277D867B8] + 16;
          v34 = atomic_load(MEMORY[0x277D86568]);
          if (!v34)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v283, &v286, v34, 0);
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v279, &v284, &v285);
          MEMORY[0x24C1A5DE0](&v278, "primvars:st");
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          buf[1].i64[1] = 0;
          buf[0].i64[0] = MEMORY[0x277D867B8] + 16;
          v35 = atomic_load(MEMORY[0x277D86568]);
          if (!v35)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v335, buf, v35, 0);
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v272, &v335.__r_.__value_.__l.__size_, &v335.__r_.__value_.__r.__words[2]);
          v36 = atomic_load(MEMORY[0x277D86568]);
          if (!v36)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
          }

          v37 = *(v36 + 216);
          v343 = v37;
          if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v343 &= 0xFFFFFFFFFFFFFFF8;
          }

          v346[1] = 0;
          v346[0] = 0;
          *&v347 = 0;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v346, &v343, &v344, 1uLL);
          pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
          realityio::findFirstUVMeshAttributeNameFromShader(&v333, v353, v38);
          MEMORY[0x24C1A5280](v353);
          v331 = v346;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v331);
          if ((v343 & 7) != 0)
          {
            atomic_fetch_add_explicit((v343 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v253 = v21;
          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v331, buf);
          v39 = v332[0];
          v40 = v331;
          if (v332[0] != v331)
          {
            do
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v346, v40 + 1, v40 + 4);
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              *(&v354 + 1) = 0;
              *v353 = MEMORY[0x277D867B8] + 16;
              if ((BYTE8(v347) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v347 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v347);
              if (v346[1])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v346[1]);
              }

              v41 = atomic_load(MEMORY[0x277D86568]);
              if (!v41)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
              }

              pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v343, v353, v41, 0);
              pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v346, &v344, &v345);
              v42 = atomic_load(MEMORY[0x277D86568]);
              if (!v42)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
              }

              v43 = *(v42 + 216);
              v342 = v43;
              if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v342 &= 0xFFFFFFFFFFFFFFF8;
              }

              memset(v328, 0, sizeof(v328));
              std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v328, &v342, &v343, 1uLL);
              pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
              realityio::findFirstUVMeshAttributeNameFromShader(&__p, v329, v44);
              MEMORY[0x24C1A5280](v329);
              v334 = v328;
              std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v334);
              if ((v342 & 7) != 0)
              {
                atomic_fetch_add_explicit((v342 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                if (__p.__r_.__value_.__l.__size_)
                {
LABEL_127:
                  std::string::operator=(&v333, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if ((BYTE8(v347) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v347 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v347);
                  if (v346[1])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v346[1]);
                  }

                  MEMORY[0x24C1A5510](&v343);
                  MEMORY[0x24C1A5AA0](v353);
                  break;
                }

                operator delete(__p.__r_.__value_.__l.__data_);
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                goto LABEL_127;
              }

              if ((BYTE8(v347) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v347 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v347);
              if (v346[1])
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v346[1]);
              }

              MEMORY[0x24C1A5510](&v343);
              MEMORY[0x24C1A5AA0](v353);
              v40 += 3;
            }

            while (v40 != v39);
          }

          if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!v333.__r_.__value_.__l.__size_)
            {
LABEL_145:
              std::string::basic_string[abi:ne200100]<0>(v276, "");
              goto LABEL_146;
            }
          }

          else if (!*(&v333.__r_.__value_.__s + 23))
          {
            goto LABEL_145;
          }

          v78 = std::string::basic_string[abi:ne200100]<0>(v353, "primvars:");
          if ((v333.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v79 = &v333;
          }

          else
          {
            v79 = v333.__r_.__value_.__r.__words[0];
          }

          if ((v333.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v333.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v333.__r_.__value_.__l.__size_;
          }

          v81 = std::string::append(v78, v79, size);
          v82 = *&v81->__r_.__value_.__l.__data_;
          v277 = v81->__r_.__value_.__r.__words[2];
          *v276 = v82;
          v81->__r_.__value_.__l.__size_ = 0;
          v81->__r_.__value_.__r.__words[2] = 0;
          v81->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v354) < 0)
          {
            operator delete(*v353);
          }

LABEL_146:
          *v353 = &v331;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](v353);
          if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v333.__r_.__value_.__l.__data_);
          }

          if ((BYTE8(v272[1]) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v272[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v272[1]);
          if (*(&v272[0] + 1))
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v272[0] + 1));
          }

          MEMORY[0x24C1A5510](&v335);
          MEMORY[0x24C1A5AA0](buf);
          if (SHIBYTE(v277) < 0)
          {
            if (!v276[1])
            {
              goto LABEL_160;
            }

            v83 = v276[0];
          }

          else
          {
            if (!HIBYTE(v277))
            {
              goto LABEL_160;
            }

            v83 = v276;
          }

          MEMORY[0x24C1A5DE0](buf, v83);
          if ((v278 & 7) != 0)
          {
            atomic_fetch_add_explicit((v278 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v278 = buf[0].i64[0];
LABEL_160:
          LOBYTE(v328[0]) = 0;
          pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(buf[0].i64, &v325);
          v84 = buf[0].i64[1];
          if (buf[0].i64[1])
          {
            if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&buf[0].i64[1]) + 14))
            {
              v84 = buf[0].i64[0];
            }

            else
            {
              v84 = 0;
            }
          }

          v275 = v84;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v275);
          v85 = atomic_load(&realityio::tokens::MeshBuilderTokens);
          if (!v85)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::MeshBuilderTokens);
          }

          RealityKitStage = realityio::getRealityKitStageMetadata<BOOL>(&v275, (v85 + 112), v328);
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v275);
          v87 = buf[0].i64[1];
          if (buf[0].i64[1] && atomic_fetch_add_explicit((buf[0].i64[1] + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            v87 = (*(*v87 + 8))(v87);
          }

          v329[0] = 0;
          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v87);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
          {
            if (*(*(*(a2 + 5) + 16) + 272) == 1)
            {
              realityio::createGeomModelDescriptorWithPrimitivePrim(&v289, 0x40, 0x40u, 64, 32, 64, buf[0].i64);
              v97 = v329[0];
              if (v329[0] != buf[0].i64[0])
              {
                v329[0] = buf[0].i64[0];
                buf[0].i64[0] = v97;
              }

              realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(buf[0].i64);
LABEL_415:
              if (v329[0])
              {
                goto LABEL_416;
              }

              v26 = -1;
              if (v300)
              {
                goto LABEL_457;
              }

              v103 = 0;
              goto LABEL_461;
            }

            *v353 = 0;
            IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v289);
            if (IsValid)
            {
              pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(IsValid);
              pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
              IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
              if (IsA)
              {
                pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(IsA);
                pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                v100 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                if (!v100)
                {
                  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(v100);
                  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                  v154 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                  if (v154)
                  {
                    v155 = atomic_load(&realityio::tokens::CubeMeshBuilderTokens);
                    if (!v155)
                    {
                      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CubeMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CubeMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::CubeMeshBuilderTokens);
                    }

                    realityio::getAttributeValue<float>(buf[0].i64, &v289, (v155 + 8));
                    v156 = buf[0].u8[0];
                    v157 = buf[0].i32[2];
                    if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                    {
                      operator delete(buf[1].i64[1]);
                    }

                    memset(buf, 0, 28);
                    REGeomBuildBoxDefaultOptions();
                    if (v156)
                    {
                      v158 = v157;
                    }

                    else
                    {
                      *&v158 = 2.0;
                    }

                    buf[0].i32[3] = v158;
                    buf[1].i32[0] = v158;
                    buf[1].i32[1] = v158;
                    v272[0] = buf[0];
                    *(v272 + 12) = *(buf + 12);
                    BoxDescriptor = REMeshAssetCreateBoxDescriptor();
                    if (!*v353)
                    {
                      goto LABEL_411;
                    }
                  }

                  else
                  {
                    pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(v154);
                    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                    v159 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
                    if (v159)
                    {
                      v160 = atomic_load(&realityio::tokens::CylinderMeshBuilderTokens);
                      if (!v160)
                      {
                        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::CylinderMeshBuilderTokens);
                      }

                      realityio::getAttributeValue<float>(buf[0].i64, &v289, (v160 + 24));
                      v161 = buf[0].u8[0];
                      v162 = *&buf[0].i32[2];
                      if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                      {
                        operator delete(buf[1].i64[1]);
                      }

                      if (!v161)
                      {
                        v162 = 1.0;
                      }

                      v163 = atomic_load(&realityio::tokens::CylinderMeshBuilderTokens);
                      if (!v163)
                      {
                        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CylinderMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::CylinderMeshBuilderTokens);
                      }

                      realityio::getAttributeValue<float>(buf[0].i64, &v289, (v163 + 16));
                      v164 = buf[0].u8[0];
                      v165 = buf[0].i32[2];
                      if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                      {
                        operator delete(buf[1].i64[1]);
                      }

                      memset(buf, 0, 24);
                      REGeomBuildCylinderDefaultOptions();
                      if (v164)
                      {
                        v166 = *&v165;
                      }

                      else
                      {
                        v166 = 2.0;
                      }

                      *&buf[0].i32[3] = v162;
                      *(buf[0].i64 + 4) = __PAIR64__(LODWORD(v162), LODWORD(v166));
                      strcpy(buf[0].i8, "@");
                      v272[0] = buf[0];
                      *&v272[1] = buf[1].i64[0];
                      BoxDescriptor = REMeshAssetCreateCylinderDescriptor();
                      if (!*v353)
                      {
                        goto LABEL_411;
                      }
                    }

                    else
                    {
                      pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(v159);
                      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
                      if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
                      {
                        v167 = atomic_load(&realityio::tokens::CapsuleMeshBuilderTokens);
                        if (!v167)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::CapsuleMeshBuilderTokens);
                        }

                        buf[0].i32[0] = 1056964608;
                        realityio::getAttributeValueWithDefaultValue<float>((v167 + 24), buf, &v289);
                        v169 = v168;
                        v170 = atomic_load(&realityio::tokens::CapsuleMeshBuilderTokens);
                        if (!v170)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::CapsuleMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::CapsuleMeshBuilderTokens);
                        }

                        buf[0].i32[0] = 1065353216;
                        realityio::getAttributeValueWithDefaultValue<float>((v170 + 16), buf, &v289);
                        v172 = v171;
                        memset(buf, 0, 20);
                        REGeomBuildCapsuleDefaultOptions();
                        *&v173 = v172 + v169 * 2.0;
                        buf[0].i64[1] = __PAIR64__(v173, LODWORD(v169));
                        strcpy(buf[0].i8, "@");
                        strcpy(&buf[0].i8[4], " ");
                        v272[0] = buf[0];
                        LODWORD(v272[1]) = buf[1].i32[0];
                        BoxDescriptor = REMeshAssetCreateCapsuleDescriptor();
                        if (!*v353)
                        {
                          goto LABEL_411;
                        }
                      }

                      else
                      {
                        if (!pxrInternal__aapl__pxrReserved__::UsdPrim::IsA<pxrInternal__aapl__pxrReserved__::UsdGeomCone>(&v289))
                        {
                          goto LABEL_412;
                        }

                        v174 = atomic_load(&realityio::tokens::ConeMeshBuilderTokens);
                        if (!v174)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::ConeMeshBuilderTokens);
                        }

                        buf[0].i32[0] = 1065353216;
                        realityio::getAttributeValueWithDefaultValue<float>((v174 + 24), buf, &v289);
                        v175 = atomic_load(&realityio::tokens::ConeMeshBuilderTokens);
                        if (!v175)
                        {
                          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ConeMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::ConeMeshBuilderTokens);
                        }

                        buf[0].i32[0] = 0x40000000;
                        realityio::getAttributeValueWithDefaultValue<float>((v175 + 16), buf, &v289);
                        REGeomBuildConeDefaultOptions();
                        BoxDescriptor = REMeshAssetCreateConeDescriptor();
                        if (!*v353)
                        {
                          goto LABEL_411;
                        }
                      }
                    }
                  }

LABEL_410:
                  RERelease();
                  goto LABEL_411;
                }

                v101 = atomic_load(&realityio::tokens::SphereMeshBuilderTokens);
                if (!v101)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::SphereMeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::SphereMeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::SphereMeshBuilderTokens);
                }

                realityio::getAttributeValue<float>(buf[0].i64, &v289, (v101 + 8));
                if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                {
                  operator delete(buf[1].i64[1]);
                }

                REGeomBuildSphereDefaultOptions();
                BoxDescriptor = REMeshAssetCreateSphereDescriptor();
                if (*v353)
                {
                  goto LABEL_410;
                }

LABEL_411:
                *v353 = BoxDescriptor;
              }
            }

LABEL_412:
            v176 = v300;
            if (v300 != *v353)
            {
              v300 = *v353;
              *v353 = v176;
            }

            realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(v353);
            goto LABEL_415;
          }

          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v333.__r_.__value_.__r.__words[0] = MEMORY[0x277D866A8] + 16;
          realityio::createModelDescriptorFromUsdGeomMesh(&v333, &v278, 1, RealityKitStage, v247, buf[0].i64);
          v88 = v329[0];
          if (v329[0] != buf[0].i64[0])
          {
            v329[0] = buf[0].i64[0];
            buf[0].i64[0] = v88;
          }

          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(buf[0].i64);
          if (!v329[0])
          {
            MEMORY[0x24C1A4DB0](&v333);
            v103 = 0;
            v26 = -1;
            goto LABEL_461;
          }

          v274 = v329[0];
          RERetain();
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          v90 = v89;
          v91 = v294;
          AttributeCount = REGeomModelDescriptorGetAttributeCount();
          v93 = *(v91 + 56);
          v94 = *(v91 + 64);
          if (((v94 - v93) >> 5) + AttributeCount < 0xC9)
          {
            if (v93 != v94)
            {
              v104 = 0;
              do
              {
                pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf[0].i64, v90, v93);
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *&v272[0] = MEMORY[0x277D86788] + 16;
                if (*(&v272[0] + 1) && (*(*(&v272[0] + 1) + 57) & 8) == 0 && v248(v272))
                {
                  pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetInbetweens(v353, v272);
                  v106 = *v353;
                  v105 = *&v353[8];
                  v346[0] = v353;
                  std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::__destroy_vector::operator()[abi:ne200100](v346);
                  if (v105 != v106)
                  {
                    v108 = *(realityio::logObjects(v107) + 24);
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                    {
                      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v346, buf);
                      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v346);
                      *v353 = 136315138;
                      *&v353[4] = Text;
                      _os_log_impl(&dword_247485000, v108, OS_LOG_TYPE_DEFAULT, "USD blend shape inbetweens on: %s are not currently supported by RealityIO.", v353, 0xCu);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v346);
                    }
                  }

                  v335.__r_.__value_.__r.__words[0] = v274;
                  if (v274)
                  {
                    RERetain();
                  }

                  v110 = realityio::addAttributeFromUsdSkelBlendShape(&v335, v93 + 8, v272);
                  v111 = realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v335);
                  if (v110)
                  {
                    v104 = 1;
                  }

                  else
                  {
                    v112 = *(realityio::logObjects(v111) + 24);
                    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                    {
                      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v346, buf);
                      v113 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v346);
                      *v353 = 136315138;
                      *&v353[4] = v113;
                      _os_log_impl(&dword_247485000, v112, OS_LOG_TYPE_DEFAULT, "Could not ingest blend shape %s", v353, 0xCu);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v346);
                    }
                  }
                }

                MEMORY[0x24C1A5630](v272);
                if ((buf[1].i8[8] & 7) != 0)
                {
                  atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
                if (buf[0].i64[1])
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
                }

                v93 = (v93 + 32);
              }

              while (v93 != v94);
              realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v274);
              if (v104)
              {
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *(&v354 + 1) = 0;
                *v353 = MEMORY[0x277D86780] + 16;
                MEMORY[0x24C1A58A0](buf, v353);
                pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v335, v353);
                if (v335.__r_.__value_.__l.__size_ && (*(v335.__r_.__value_.__l.__size_ + 57) & 8) == 0 && (*(v335.__r_.__value_.__r.__words[0] + 32))(&v335))
                {
                  MEMORY[0x24C1A4F20](v346);
                  pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(v272, v346, &v335);
                  if (v346[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v346[1]);
                  }

                  v331 = *pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(v272);
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v331);
                  pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(v346, &v331);
                  if ((BYTE8(v347) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v347 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v347);
                  if (v346[1])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v346[1]);
                  }

                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v331);
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v272[2]);
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(v272 + 1);
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(v272);
                }

                MEMORY[0x24C1A53A0](&v335);
                v114 = v297;
                if (v297 >= v298)
                {
                  v115 = std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdPrim const&>(&v296, &v289);
                }

                else
                {
                  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdPrim const&,0>(v297, &v289);
                  v115 = v114 + 32;
                }

                v297 = v115;
                *&v272[0] = &v352;
                std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelInbetweenShape>::__destroy_vector::operator()[abi:ne200100](v272);
                *&v272[0] = &v351.n128_u64[1];
                std::vector<pxrInternal__aapl__pxrReserved__::UsdSkelBlendShapeQuery::_BlendShape>::__destroy_vector::operator()[abi:ne200100](v272);
                if (buf[2].i64[0])
                {
                  buf[2].i64[1] = buf[2].i64[0];
                  operator delete(buf[2].i64[0]);
                }

                if ((buf[1].i8[8] & 7) != 0)
                {
                  atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
                if (buf[0].i64[1])
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
                }

                MEMORY[0x24C1A5620](v353);
              }

              goto LABEL_224;
            }
          }

          else
          {
            v95 = *(realityio::logObjects(AttributeCount) + 24);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = (*(v91 + 64) - *(v91 + 56)) >> 5;
              buf[0].i32[0] = 134217984;
              *(buf[0].i64 + 4) = v96;
              _os_log_impl(&dword_247485000, v95, OS_LOG_TYPE_DEFAULT, "Skipping %zu blend shape paths to avoid exceeding attribute limit", buf, 0xCu);
            }
          }

          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v274);
LABEL_224:
          v332[0] = 0;
          v332[1] = 0;
          v331 = v332;
          v347 = 0u;
          *v346 = 0u;
          LODWORD(v348) = 1065353216;
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(buf, &v333.__r_.__value_.__l.__size_, &v333.__r_.__value_.__r.__words[2]);
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(&v343, buf);
          if ((buf[1].i8[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((buf[1].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
          if (buf[0].i64[1])
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
          }

          v116 = v344;
          v117 = v343;
          v262 = v343;
          while (v116 != v117)
          {
            v116 = (v116 - 32);
            v118 = *pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v116);
            if ((v118 & 7) != 0 && (atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v118 &= 0xFFFFFFFFFFFFFFF8;
            }

            *&v272[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v116);
            buf[0].i64[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v272);
            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) != 0 || (isTexCoord3(v116))
            {
              goto LABEL_252;
            }

            *&v272[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v116);
            buf[0].i64[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(v272);
            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              goto LABEL_252;
            }

            if (!atomic_load(MEMORY[0x277D86578]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
LABEL_252:
              v125 = isTexCoord3(v116);
              v271 = v118;
              if ((v118 & 7) != 0 && (atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v271 &= 0xFFFFFFFFFFFFFFF8;
              }

              realityio::TexcoordID::TexcoordID(buf, &v271, -1, v125);
              if ((v271 & 7) != 0)
              {
                atomic_fetch_add_explicit((v271 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (!*std::__tree<realityio::TexcoordID>::__find_equal<realityio::TexcoordID>(&v331, v353, buf))
              {
                operator new();
              }

              if (buf[0].i32[1] != -1)
              {
                if (v346[1])
                {
                  v126 = vcnt_s8(v346[1]);
                  v126.i16[0] = vaddlv_u8(v126);
                  if (v126.u32[0] > 1uLL)
                  {
                    v127 = buf[0].i32[1];
                    if (v346[1] <= buf[0].i32[1])
                    {
                      v127 = buf[0].i32[1] % v346[1];
                    }
                  }

                  else
                  {
                    v127 = (v346[1] - 1) & buf[0].i32[1];
                  }

                  v128 = *(v346[0] + v127);
                  if (v128)
                  {
                    for (i = *v128; i; i = *i)
                    {
                      v130 = i[1];
                      if (v130 == buf[0].i32[1])
                      {
                        if (*(i + 4) == buf[0].i32[1])
                        {
                          goto LABEL_277;
                        }
                      }

                      else
                      {
                        if (v126.u32[0] > 1uLL)
                        {
                          if (v130 >= v346[1])
                          {
                            v130 %= v346[1];
                          }
                        }

                        else
                        {
                          v130 &= v346[1] - 1;
                        }

                        if (v130 != v127)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                operator new();
              }

LABEL_277:
              if (buf[2].i8[7] < 0)
              {
                operator delete(buf[1].i64[0]);
              }

              if ((buf[0].i8[8] & 7) != 0)
              {
                atomic_fetch_add_explicit((buf[0].i64[1] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v118 & 7) != 0)
              {
LABEL_282:
                atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else if ((v118 & 7) != 0)
            {
              goto LABEL_282;
            }

            v117 = v262;
          }

          v131 = 0;
          memset(buf, 0, sizeof(buf));
          v132 = 1;
          LODWORD(v272[0]) = 0;
          do
          {
            v133 = v132;
            if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v346[0], v346[1], v131))
            {
              std::deque<int>::push_back(buf, v272);
            }

            v132 = 0;
            LODWORD(v272[0]) = v131 + 1;
            v131 = 1;
          }

          while ((v133 & 1) != 0);
          memset(v272, 0, sizeof(v272));
          v134 = 3;
          *v353 = 2;
          do
          {
            if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v346[0], v346[1], v134 - 1))
            {
              std::deque<int>::push_back(v272, v353);
            }

            *v353 = v134++;
          }

          while (v134 != 7);
          v135 = v331;
          if (v331 != v332)
          {
            do
            {
              realityio::TexcoordID::TexcoordID(v353, (v135 + 4));
              LODWORD(v136) = *&v353[4];
              if (*&v353[4] != -1)
              {
                goto LABEL_315;
              }

              if ((BYTE8(v355) & 1) != 0 || !buf[2].i64[1])
              {
                if (*(&v272[2] + 1))
                {
                  realityio::TexcoordID::setIndex(v353, *(*(*(&v272[0] + 1) + ((*&v272[2] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v272[2] & 0x3FF)));
                  v272[2] = vaddq_s64(v272[2], xmmword_2477680B0);
                  if (*&v272[2] >= 0x800uLL)
                  {
                    operator delete(**(&v272[0] + 1));
                    *(&v272[0] + 1) += 8;
                    *&v272[2] -= 1024;
                  }
                }

                else
                {
                  v137 = *(realityio::logObjects(*&v353[4]) + 24);
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                  {
                    v138 = *&v353[8];
                    if ((v353[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v353[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      v138 &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v139 = v138 & 0xFFFFFFFFFFFFFFF8;
                    if ((v138 & 0xFFFFFFFFFFFFFFF8) != 0)
                    {
                      v140 = (v139 + 16);
                      if (*(v139 + 39) < 0)
                      {
                        v140 = *v140;
                      }
                    }

                    else
                    {
                      v140 = "";
                    }

                    LODWORD(v335.__r_.__value_.__l.__data_) = 136316162;
                    *(v335.__r_.__value_.__r.__words + 4) = v140;
                    WORD2(v335.__r_.__value_.__r.__words[1]) = 1024;
                    *(&v335.__r_.__value_.__r.__words[1] + 6) = 6 - buf[2].i32[2];
                    WORD1(v335.__r_.__value_.__r.__words[2]) = 1024;
                    HIDWORD(v335.__r_.__value_.__r.__words[2]) = 2;
                    LOWORD(v336) = 1024;
                    *(&v336 + 2) = 6 - DWORD2(v272[2]);
                    HIWORD(v336) = 1024;
                    v337 = 6;
                    _os_log_impl(&dword_247485000, v137, OS_LOG_TYPE_DEFAULT, "Could not allocate a material buffer for '%s'. %d of %d float2 and %d of %d float4 buffers have been assigned already.", &v335, 0x24u);
                    if ((v138 & 7) != 0)
                    {
                      atomic_fetch_add_explicit(v139, 0xFFFFFFFE, memory_order_release);
                    }
                  }
                }
              }

              else
              {
                realityio::TexcoordID::setIndex(v353, *(*(buf[0].i64[1] + ((buf[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (buf[2].i16[0] & 0x3FF)));
                buf[2] = vaddq_s64(buf[2], xmmword_2477680B0);
                if (buf[2].i64[0] >= 0x800uLL)
                {
                  operator delete(*buf[0].i64[1]);
                  buf[0].i64[1] += 8;
                  buf[2].i64[0] -= 1024;
                }
              }

              v136 = *&v353[4];
              if (*&v353[4] != -1)
              {
LABEL_315:
                std::to_string(&__p, v136);
                v141 = std::string::insert(&__p, 0, "UV");
                v142 = *&v141->__r_.__value_.__l.__data_;
                v335.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
                *&v335.__r_.__value_.__l.__data_ = v142;
                v141->__r_.__value_.__l.__size_ = 0;
                v141->__r_.__value_.__r.__words[2] = 0;
                v141->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v143 = *&v353[8];
                if ((v353[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v353[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v143 &= 0xFFFFFFFFFFFFFFF8;
                }

                v136 = REGeomModelDescriptorAddAttributeAlias();
                if ((v143 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v335.__r_.__value_.__l.__data_);
                }
              }

              v144 = *&v353[8];
              if ((v353[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v353[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v144 &= 0xFFFFFFFFFFFFFFF8;
              }

              v145 = (v144 & 0xFFFFFFFFFFFFFFF8);
              if ((v144 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                EmptyString = (v145 + 4);
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v136);
              }

              v147 = *(EmptyString + 23);
              v148 = v147;
              if ((v147 & 0x80u) != 0)
              {
                v147 = *(EmptyString + 8);
              }

              if (v147 >= 9)
              {
                if (v148 < 0)
                {
                  EmptyString = *EmptyString;
                }

                EmptyString = strncmp(EmptyString, "primvars:", 9uLL);
                v149 = EmptyString == 0;
              }

              else
              {
                v149 = 0;
              }

              if ((v144 & 7) != 0)
              {
                atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_release);
              }

              if (v149)
              {
                v150 = *&v353[8];
                if ((v353[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v353[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v150 &= 0xFFFFFFFFFFFFFFF8;
                }

                if ((v150 & 0xFFFFFFFFFFFFFFF8) == 0)
                {
                  pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
                }

                pxrInternal__aapl__pxrReserved__::TfStringGetSuffix();
                if ((v150 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (REGeomModelDescriptorGetAttributeIndex() == -1)
                {
                  v151 = *&v353[8];
                  if ((v353[8] & 7) != 0 && (atomic_fetch_add_explicit((*&v353[8] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v151 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  REGeomModelDescriptorAddAttributeAlias();
                  if ((v151 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }
                }

                if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v335.__r_.__value_.__l.__data_);
                }
              }

              if (SBYTE7(v355) < 0)
              {
                operator delete(v354);
              }

              if ((v353[8] & 7) != 0)
              {
                atomic_fetch_add_explicit((*&v353[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v152 = v135[1];
              if (v152)
              {
                do
                {
                  v153 = v152;
                  v152 = *v152;
                }

                while (v152);
              }

              else
              {
                do
                {
                  v153 = v135[2];
                  _ZF = *v153 == v135;
                  v135 = v153;
                }

                while (!_ZF);
              }

              v135 = v153;
            }

            while (v153 != v332);
          }

          std::deque<int>::~deque[abi:ne200100](v272);
          std::deque<int>::~deque[abi:ne200100](buf);
          buf[0].i64[0] = &v343;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](buf);
          std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v346);
          std::__tree<realityio::TexcoordID>::destroy(&v331, v332[0]);
          MEMORY[0x24C1A4DB0](&v333);
          if (!v329[0])
          {
            v26 = -1;
            goto LABEL_457;
          }

LABEL_416:
          std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::push_back[abi:ne200100](v295, &v294);
          v26 = REMeshAssetDescriptorAddModel();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v272, &v293);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v272 + 1, &v293 + 1);
          DWORD2(v272[0]) = v26;
          if (!*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(&v307, v353, v272))
          {
            operator new();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v272);
          v270 = v329[0];
          if (v329[0])
          {
            RERetain();
          }

          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(buf[0].i64, &v289);
          v177 = v341[0];
          if (!v341[0])
          {
            goto LABEL_430;
          }

          v178 = v341;
          do
          {
            v179 = v178;
            v180 = v177 + 4;
            v181 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v177 + 4, buf);
            v182 = 1;
            if (!v181)
            {
              v182 = 0;
              v178 = v177;
            }

            v177 = v177[v182];
          }

          while (v177);
          if (v178 == v341 || (!v181 ? (v183 = v180) : (v183 = v179 + 4), pxrInternal__aapl__pxrReserved__::SdfPath::operator<(buf, v183)))
          {
LABEL_430:
            v178 = v341;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
          LODWORD(v335.__r_.__value_.__l.__data_) = *(v178 + 15);
          v185 = v178[8];
          v184 = v178[9];
          v186 = v184 - v185;
          if (v184 == v185)
          {
            v196 = REGeomModelDescriptorSetMaterialAssignmentForModel();
            pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v196);
            pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
            if ((pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA() & 1) == 0)
            {
              FaceCount = REGeomModelDescriptorGetFaceCount();
              std::vector<unsigned int>::vector[abi:ne200100](buf[0].i64, FaceCount, &v335);
              REGeomModelDescriptorSetMaterialAssignmentsPerFace();
              v195 = buf[0].i64[0];
              if (buf[0].i64[0])
              {
                buf[0].i64[1] = buf[0].i64[0];
LABEL_452:
                operator delete(v195);
              }
            }
          }

          else
          {
            v187 = REGeomModelDescriptorGetFaceCount();
            std::vector<unsigned int>::vector[abi:ne200100](v353, v187, &v335);
            v188 = 0;
            if (0xAAAAAAAAAAAAAAABLL * (v186 >> 3) <= 1)
            {
              v189 = 1;
            }

            else
            {
              v189 = 0xAAAAAAAAAAAAAAABLL * (v186 >> 3);
            }

            do
            {
              pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(v272, (v178[8] + 24 * v188));
              realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v272, buf);
              if (buf[0].i8[0])
              {
                v190 = *(v178[11] + 4 * v188);
                if (v190 != -1)
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&buf[0].u64[1]);
                  v191 = buf[2].i64[1];
                  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&buf[0].u64[1]);
                  v192 = buf[2].i64[1] + 4 * buf[0].i64[1];
                  if (v191 != v192)
                  {
                    v193 = *v353;
                    do
                    {
                      v194 = *v191;
                      if (v194 < v187)
                      {
                        *(v193 + 4 * v194) = v190;
                      }

                      ++v191;
                    }

                    while (v191 != v192);
                  }
                }
              }

              realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(buf);
              if ((BYTE8(v272[1]) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v272[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v272[1]);
              if (*(&v272[0] + 1))
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v272[0] + 1));
              }

              ++v188;
            }

            while (v188 != v189);
            REGeomModelDescriptorSetMaterialAssignmentsPerFace();
            v195 = *v353;
            if (*v353)
            {
              *&v353[8] = *v353;
              goto LABEL_452;
            }
          }

          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&v270);
          v198 = v310;
          if (v310 >= v311)
          {
            v199 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v309, &v293);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v310, &v293);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v198 + 1, &v293 + 1);
            v199 = v198 + 2;
          }

          v310 = v199;
LABEL_457:
          if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
          {
            v200 = v294;
            buf[0].i64[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            v201 = *(v200 + 24);
            v202 = buf[0].i64[0];
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            if (v201 != v202)
            {
              std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<true,0>(buf, (v294 + 16), (v294 + 24));
              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(&v303, buf, buf);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf[0].i64[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
            }
          }

          v103 = 1;
LABEL_461:
          realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(v329);
          if (SHIBYTE(v277) < 0)
          {
            operator delete(v276[0]);
          }

          if ((v278 & 7) != 0)
          {
            atomic_fetch_add_explicit((v278 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v282 & 7) != 0)
          {
            atomic_fetch_add_explicit((v282 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v281);
          if (v280)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v280);
          }

          MEMORY[0x24C1A5510](&v283);
          MEMORY[0x24C1A5AA0](&v286);
          if ((v290 & 7) != 0)
          {
            atomic_fetch_add_explicit((v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v289.__r_.__value_.__r.__words[2]);
          if (v289.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v289.__r_.__value_.__l.__size_);
          }

          if ((v103 & 1) == 0)
          {
LABEL_474:
            v21 = v253;
            goto LABEL_475;
          }

LABEL_42:
          if (!v252)
          {
            v252 = *v294;
          }

          if (v26 == -1)
          {
            goto LABEL_474;
          }

          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
          v28 = v27;
          v29 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
          if (v29 && (pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8)), pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v266, v30, (v294 + 16)), pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v266)))
          {
            v31 = (v294 + 16);
          }

          else
          {
            v31 = &v293;
          }

          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v289, v28, v31);
          if (v29)
          {
            if ((v269 & 7) != 0)
            {
              atomic_fetch_add_explicit((v269 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v268);
            if (v267)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v267);
            }
          }

          pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v272, 1.0);
          v21 = v253;
          LODWORD(v335.__r_.__value_.__l.__data_) = v289.__r_.__value_.__l.__data_;
          v335.__r_.__value_.__l.__size_ = v289.__r_.__value_.__l.__size_;
          if (v289.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v289.__r_.__value_.__l.__size_ + 48), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v335.__r_.__value_.__r.__words[2], &v289.__r_.__value_.__r.__words[2]);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v335.__r_.__value_.__r.__words[2] + 1, &v289.__r_.__value_.__r.__words[2] + 1);
          v336 = v290;
          if ((v290 & 7) != 0 && (atomic_fetch_add_explicit((v290 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v336 &= 0xFFFFFFFFFFFFFFF8;
          }

          while ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v335) & 1) != 0)
          {
            if (LODWORD(v335.__r_.__value_.__l.__data_) == v325 && *&v335.__r_.__value_.__r.__words[1] == v326)
            {
              v45 = v336;
              if ((v327 ^ v336) < 8)
              {
                goto LABEL_113;
              }
            }

            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v286 = MEMORY[0x277D86748] + 16;
            if (v287 && (*(v287 + 57) & 8) == 0 && v263(&v286))
            {
              pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v353, 1.0);
              pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(buf, 1.0);
              MEMORY[0x24C1A54B0](v346, &v286);
              pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
              v279 = v346;
              std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&v279);
              MEMORY[0x24C1A4BE0](v346, buf);
              *v353 = *v346;
              v354 = v347;
              v355 = v348;
              v356 = v349;
              *v346 = v272[0];
              v347 = v272[1];
              v348 = v272[2];
              v349 = v273;
              pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
              v272[0] = *v346;
              v272[1] = v347;
              v272[2] = v348;
              v273 = v349;
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v346, &v335);
              v46 = atomic_load(&realityio::tokens::MeshBuilderTokens);
              if (!v46)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::MeshBuilderTokens);
              }

              realityio::MutableDirtyPropertyTable::addProperty((this + 136), v346, (v46 + 88));
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v346);
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v346, &v335);
              v47 = atomic_load(&realityio::tokens::MeshBuilderTokens);
              if (!v47)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MeshBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MeshBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::MeshBuilderTokens);
              }

              realityio::MutableDirtyPropertyTable::addProperty((this + 136), v346, (v47 + 96));
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v346);
            }

            pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(buf[0].i64, &v335);
            LODWORD(v335.__r_.__value_.__l.__data_) = buf[0].i32[0];
            if (v335.__r_.__value_.__l.__size_)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v335.__r_.__value_.__l.__size_);
            }

            v335.__r_.__value_.__l.__size_ = buf[0].u64[1];
            buf[0].i64[1] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v335.__r_.__value_.__r.__words[2], buf[1].i32);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v335.__r_.__value_.__r.__words[2] + 4, &buf[1].i32[1]);
            if ((v336 & 7) != 0)
            {
              atomic_fetch_add_explicit((v336 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v336 = buf[1].i64[1];
            buf[1].i64[1] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf[1].i64);
            if (buf[0].i64[1])
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf[0].i64[1]);
            }

            MEMORY[0x24C1A54D0](&v286);
          }

          v45 = v336;
LABEL_113:
          v258 = v272[1];
          v260 = v272[0];
          v254 = v273;
          v256 = v272[2];
          if ((v45 & 7) != 0)
          {
            atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v335.__r_.__value_.__r.__words[2]);
          v48 = v335.__r_.__value_.__l.__size_;
          if (v335.__r_.__value_.__l.__size_)
          {
            v48 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v335.__r_.__value_.__l.__size_);
          }

          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v48);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          v49 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
          v51 = v254;
          v51.i32[3] = 1.0;
          v52 = v256;
          v52.i32[3] = 0;
          v255 = v51;
          v257 = v52;
          v53 = v258;
          v53.i32[3] = 0;
          v259 = v53;
          v54 = v260;
          v54.i32[3] = 0;
          v261 = v54;
          if (((v49 | v249) & 1) == 0)
          {
            _Q0 = realityio::getGeomPrimitiveOrientation(&v289, v50);
            v56 = 0;
            _S1 = _Q0.n128_u32[1];
            _S3 = _Q0.n128_u32[2];
            __asm { FMLS            S2, S3, V0.S[2] }

            _S5 = _Q0.n128_u32[3];
            __asm { FMLA            S2, S5, V0.S[3] }

            v66 = vmuls_lane_f32(_Q0.n128_f32[2], _Q0, 3);
            v67.f32[0] = vmuls_lane_f32(_Q0.n128_f32[1], _Q0, 3);
            HIDWORD(v68) = 0;
            LODWORD(v68) = _S2;
            *(&v68 + 1) = (v66 + (_Q0.n128_f32[0] * _Q0.n128_f32[1])) + (v66 + (_Q0.n128_f32[0] * _Q0.n128_f32[1]));
            *(&v68 + 2) = -(v67.f32[0] - (_Q0.n128_f32[0] * _Q0.n128_f32[2])) - (v67.f32[0] - (_Q0.n128_f32[0] * _Q0.n128_f32[2]));
            v69 = -(v66 - (_Q0.n128_f32[0] * _Q0.n128_f32[1])) - (v66 - (_Q0.n128_f32[0] * _Q0.n128_f32[1]));
            __asm
            {
              FMLA            S4, S1, V0.S[1]
              FMLA            S4, S5, V0.S[3]
              FMLA            S6, S3, V0.S[1]
            }

            *&v73 = v69;
            *(&v73 + 1) = _S4 - (_Q0.n128_f32[0] * _Q0.n128_f32[0]);
            *(&v73 + 1) = COERCE_UNSIGNED_INT(_S6 + _S6);
            v67.f32[1] = -(_Q0.n128_f32[0] * _Q0.n128_f32[3]);
            v74 = vmla_laneq_f32(v67, _Q0.n128_u64[0], _Q0, 2);
            *&v75 = vadd_f32(v74, v74);
            __asm
            {
              FMLA            S4, S3, V0.S[2]
              FMLS            S3, S1, V0.S[1]
            }

            *(&v75 + 1) = _S3;
            v272[0] = v68;
            v272[1] = v73;
            v272[2] = v75;
            v273 = xmmword_247757270;
            do
            {
              buf[v56] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v261, COERCE_FLOAT(v272[v56])), v259, *&v272[v56], 1), v257, v272[v56], 2), v255, v272[v56], 3);
              ++v56;
            }

            while (v56 != 4);
          }

          buf[0].i64[0] = REGeomInstanceCreate();
          REMeshAssetDescriptorAddInstance();
          realityio::WrappedRERef<REGeomInstance *>::~WrappedRERef(buf[0].i64);
          if ((v290 & 7) != 0)
          {
            atomic_fetch_add_explicit((v290 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

LABEL_125:
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v289.__r_.__value_.__r.__words[2]);
          if (v289.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v289.__r_.__value_.__l.__size_);
          }

LABEL_475:
          if ((v292 & 7) != 0)
          {
            atomic_fetch_add_explicit((v292 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v15 = &v291;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v291.__r_.__value_.__r.__words[2]);
          if (v291.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v291.__r_.__value_.__l.__size_);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v293);
          v20 = *(&v294 + 1);
          if (*(&v294 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v294 + 1));
          }

          v21 += 2;
          if (v21 == v251)
          {
LABEL_497:
            v203 = realityio::SkeletonPoseDefinitionBuilder::kOutputName(v20);
            v346[1] = 0;
            v346[0] = 0;
            v204 = *(a2 + 3);
            if (v204)
            {
              v346[1] = std::__shared_weak_count::lock(v204);
              if (v346[1])
              {
                v346[0] = *(a2 + 2);
              }
            }

            MEMORY[0x24C1A5E00](&v347, v203);
            v205 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 1), v346);
            v206 = v205;
            v208 = v207;
            if (v205 == v207)
            {
              std::operator+<char>();
              v209 = std::string::append(&v289, ") at prim path (");
              v210 = *&v209->__r_.__value_.__l.__data_;
              v291.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
              *&v291.__r_.__value_.__l.__data_ = v210;
              v209->__r_.__value_.__l.__size_ = 0;
              v209->__r_.__value_.__r.__words[2] = 0;
              v209->__r_.__value_.__r.__words[0] = 0;
              String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v250);
              v212 = *(String + 23);
              if (v212 >= 0)
              {
                v213 = String;
              }

              else
              {
                v213 = *String;
              }

              if (v212 >= 0)
              {
                v214 = *(String + 23);
              }

              else
              {
                v214 = *(String + 8);
              }

              v215 = std::string::append(&v291, v213, v214);
              v216 = *&v215->__r_.__value_.__l.__data_;
              v335.__r_.__value_.__r.__words[2] = v215->__r_.__value_.__r.__words[2];
              *&v335.__r_.__value_.__l.__data_ = v216;
              v215->__r_.__value_.__l.__size_ = 0;
              v215->__r_.__value_.__r.__words[2] = 0;
              v215->__r_.__value_.__r.__words[0] = 0;
              v217 = std::string::append(&v335, ")");
              v218 = *&v217->__r_.__value_.__l.__data_;
              *&v354 = *(&v217->__r_.__value_.__l + 2);
              *v353 = v218;
              v217->__r_.__value_.__l.__size_ = 0;
              v217->__r_.__value_.__r.__words[2] = 0;
              v217->__r_.__value_.__r.__words[0] = 0;
              realityio::DetailedError::DetailedError(buf, 204, &realityio::FoundationErrorCategory(void)::instance, v353);
              *(v272 + 8) = buf[0];
              *(&v272[1] + 8) = buf[1];
              *(&v272[2] + 7) = *(&buf[1].i64[1] + 7);
              v219 = buf[2].i8[7];
              memset(&buf[1], 0, 24);
              LOBYTE(v272[0]) = 0;
              HIBYTE(v272[2]) = v219;
              if (SBYTE7(v354) < 0)
              {
                operator delete(*v353);
              }

              if (SHIBYTE(v335.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v335.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v291.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v289.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              do
              {
                v220 = *(v206 + 5);
                v222 = *(v220 + 16);
                v221 = *(v220 + 24);
                if (v221)
                {
                  atomic_fetch_add_explicit(&v221->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if ((*(v206 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v223 = ((*(v206 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
                }

                else
                {
                  v223 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v205);
                }

                realityio::Outputs::getRawValue<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT *>(v222, v223, buf);
                v224 = buf[0].u8[0];
                if ((buf[0].i8[0] & 1) == 0)
                {
                  *v353 = *(buf + 8);
                  if (buf[2].i8[15] < 0)
                  {
                    std::string::__init_copy_ctor_external(&v354, buf[1].i64[1], buf[2].u64[0]);
                    v21 = v354;
                    LOBYTE(v15) = BYTE7(v355);
                    if ((buf[0].i8[0] & 1) == 0 && buf[2].i8[15] < 0)
                    {
                      operator delete(buf[1].i64[1]);
                    }
                  }

                  else
                  {
                    *&v355 = buf[2].i64[1];
                    v354 = *(&buf[1] + 8);
                    v21 = buf[1].i64[1];
                    LOBYTE(v15) = buf[2].i8[15];
                  }
                }

                if (v221)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v221);
                }

                if (v224)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(1uLL);
                }

                if ((v15 & 0x80) != 0)
                {
                  operator delete(v21);
                }

                v206 = *v206;
              }

              while (v206 != v208);
              LOBYTE(v272[0]) = 1;
              memset(v272 + 8, 0, 24);
            }

            if ((v347 & 7) != 0)
            {
              atomic_fetch_add_explicit((v347 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v346[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v346[1]);
            }

            if (LOBYTE(v272[0]) == 1)
            {
              v225 = *(&v272[0] + 1);
              for (j = *&v272[1]; v225 != j; ++v225)
              {
                v227 = *v225;
                v228 = REMeshAssetDescriptorAddSkeleton();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(buf, (v227 + 16));
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf[0].i32[1], (v227 + 20));
                buf[0].i64[1] = v228;
                std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>(&v305, buf, buf);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
                v229 = *(v227 + 8);
                if (v229)
                {
                  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<true,0>(buf, (v227 + 16), v229);
                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(&v303, buf, buf);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf[0].i64[1]);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
                }
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(buf);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            v343 = 0;
            ModelCount = REMeshAssetDescriptorGetModelCount();
            if (ModelCount)
            {
              memset(v353, 0, sizeof(v353));
              *&v354 = 0;
              v231 = *(a2 + 5);
              PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v325);
              v233 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(PrimPath);
              std::string::basic_string[abi:ne200100]<0>(v346, "Mesh");
              v234 = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v325);
              AssetURLFromBundle = realityio::ImportSessionImpl::getAssetURLFromBundle(*(v231 + 16), v233, v346, v234, v353);
              if (SBYTE7(v347) < 0)
              {
                operator delete(v346[0]);
              }

              if (AssetURLFromBundle)
              {
                v346[0] = REMemoryAssetParametersCreate();
                REMemoryAssetParametersSetAsyncRegistration();
                REMemoryAssetParametersSetAssetName();
                v236 = REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsWithParameters();
                v335.__r_.__value_.__r.__words[0] = v236;
                v237 = v343;
                if (v343 != v236)
                {
                  v343 = v236;
                  v335.__r_.__value_.__r.__words[0] = v237;
                }

                realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v335);
                ModelCount = realityio::WrappedRERef<REMemoryAssetParameters *>::~WrappedRERef(v346);
              }

              else
              {
                v240 = REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsyncRegistration();
                v346[0] = v240;
                v241 = v343;
                if (v343 != v240)
                {
                  v343 = v240;
                  v346[0] = v241;
                }

                ModelCount = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v346);
              }

              if (SBYTE7(v354) < 0)
              {
                operator delete(*v353);
              }
            }

            else if (v300)
            {
              *v353 = REAssetRegistrationOptionsCreate();
              v238 = REAssetHandleCreateFromAssetRegistrationOptions();
              v346[0] = v238;
              v239 = v343;
              if (v343 != v238)
              {
                v343 = v238;
                v346[0] = v239;
              }

              realityio::WrappedRERef<REAsset *>::~WrappedRERef(v346);
              ModelCount = realityio::WrappedRERef<void *>::~WrappedRERef(v353);
            }

            if (v343)
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v353, &v325);
              operator new();
            }

            v242 = *(realityio::logObjects(ModelCount) + 24);
            if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
            {
              *v353 = 0;
              _os_log_impl(&dword_247485000, v242, OS_LOG_TYPE_DEFAULT, "Could not create valid meshAssetRef.", v353, 2u);
            }

            realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v343);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v331);
            if (buf[2].i8[15] < 0)
            {
              operator delete(buf[1].i64[1]);
            }

            if (buf[1].i8[7] < 0)
            {
              operator delete(buf[0].i64[0]);
            }

            realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v272);
            buf[0].i64[0] = v295;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](buf);
            buf[0].i64[0] = &v296;
            std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](buf);
            realityio::Result<MaterialIndexAssignor,realityio::DetailedError>::~Result(&v338, v243);
            break;
          }
        }
      }

      realityio::WrappedRERef<REMeshAssetDescriptor *>::~WrappedRERef(&v299);
      realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(&v300);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v301, v302[0]);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(&v303, v304[0]);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v305, v306[0]);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&v307, v308[0]);
      v338 = &v309;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v338);
      if (v312)
      {
        v313 = v312;
        operator delete(v312);
      }

      realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&v315);
    }

    v338 = &v319;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v338);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v323);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v322);
    realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v324, v244, v245);
  }

  if ((v327 & 7) != 0)
  {
    atomic_fetch_add_explicit((v327 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v326 + 8);
  result = v326;
  if (v326)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v326);
  }

  return result;
}

void sub_24767C43C(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef((v1 - 208));
  realityio::WrappedRERef<REGeomModelDescriptor *>::~WrappedRERef(&STACK[0x488]);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if ((STACK[0x250] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x250] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x258]);
  MEMORY[0x24C1A5510](&STACK[0x278]);
  MEMORY[0x24C1A5AA0](&STACK[0x290]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x2B0]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x2D0]);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&STACK[0x2F8]);
  if (STACK[0x308])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x308]);
  }

  STACK[0xA50] = &STACK[0x310];
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0xA50]);
  STACK[0xA50] = &STACK[0x328];
  std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&STACK[0xA50]);
  realityio::Result<MaterialIndexAssignor,realityio::DetailedError>::~Result(&STACK[0x538], v3);
  realityio::WrappedRERef<REMeshAssetDescriptor *>::~WrappedRERef(&STACK[0x340]);
  realityio::WrappedRERef<REAssetDescriptor *>::~WrappedRERef(&STACK[0x348]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&STACK[0x350], STACK[0x358]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(&STACK[0x368], STACK[0x370]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&STACK[0x380], STACK[0x388]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(&STACK[0x398], STACK[0x3A0]);
  STACK[0x538] = &STACK[0x3B0];
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&STACK[0x538]);
  v4 = STACK[0x3C8];
  if (STACK[0x3C8])
  {
    STACK[0x3D0] = v4;
    operator delete(v4);
  }

  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&STACK[0x3E0]);
  STACK[0x538] = &STACK[0x418];
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x538]);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(&STACK[0x430]);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&STACK[0x440], v5, v6);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrimInPrototype(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X0>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a1, this + 1, &v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  }

  else
  {
    *a1 = 1;
    a1[1] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    a1[3] = 0;
  }
}

void sub_24767D1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void MaterialIndexAssignor::make(_BYTE *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, pxrInternal__aapl__pxrReserved__::UsdStage *a6, uint64_t *a7)
{
  v192 = *MEMORY[0x277D85DE8];
  LODWORD(v174) = 0;
  v176[0] = 0;
  v175 = v176;
  v178[1] = 0;
  v178[0] = 0;
  v176[1] = 0;
  v177 = v178;
  v181 = 0uLL;
  v180[1] = 0;
  v180[0] = 0;
  v179 = v180;
  v182 = 0;
  *&v10 = 0xFFFFFFFFLL;
  *(&v10 + 1) = 0xFFFFFFFFLL;
  v183 = v10;
  v185[1] = 0;
  v185[0] = 0;
  v184 = v185;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::concurrent_unordered_base(v186, 8uLL, &v188);
  v135 = a7;
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::concurrent_unordered_base(v187, 8uLL, &v188);
  v12 = *a2;
  v11 = a2[1];
  v13 = v11 - *a2;
  v14 = *(&v181 + 1);
  v15 = v181;
  if (*(&v181 + 1) == v181)
  {
    v16 = v11 - *a2;
  }

  else
  {
    do
    {
      v14 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v14 - 1);
    }

    while (v14 != v15);
    v16 = a2[1] - *a2;
  }

  *(&v181 + 1) = v15;
  std::vector<realityio::WrappedRERef<REAsset *>>::reserve(&v181, v16 >> 2);
  v141 = a3;
  if (v11 != v12)
  {
    v17 = 0;
    if ((v13 >> 3) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13 >> 3;
    }

    do
    {
      v19 = *(*a2 + 8 * v17);
      if (v19)
      {
        if (*(v19 + 8))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v188, *(*a2 + 8 * v17));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v188 + 1, (v19 + 4));
          BYTE8(v188) = 0;
          if (v180 == std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v179, &v188))
          {
            v20 = (*(&v181 + 1) - v181) >> 3;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v162, &v188);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v162 + 1, &v188 + 1);
            LOBYTE(v162[1]) = BYTE8(v188);
            v163 = v20;
            std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::__emplace_unique_key_args<MaterialIndexAssignor::MaterialKey,std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>>(&v179, v162, v162);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v162);
            v162[0] = *(v19 + 8);
            if (v162[0])
            {
              RERetain();
            }

            v21 = *(&v181 + 1);
            if (*(&v181 + 1) >= v182)
            {
              v22 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(&v181, v162);
            }

            else
            {
              **(&v181 + 1) = v162[0];
              v22 = v21 + 8;
              v162[0] = 0;
            }

            *(&v181 + 1) = v22;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(v162);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v188);
        }

        if (*(v19 + 16))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v188, v19);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v188 + 1, (v19 + 4));
          BYTE8(v188) = 1;
          if (v180 == std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v179, &v188))
          {
            v23 = (*(&v181 + 1) - v181) >> 3;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v162, &v188);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v162 + 1, &v188 + 1);
            LOBYTE(v162[1]) = BYTE8(v188);
            v163 = v23;
            std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::__emplace_unique_key_args<MaterialIndexAssignor::MaterialKey,std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>>(&v179, v162, v162);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v162);
            v162[0] = *(v19 + 16);
            if (v162[0])
            {
              RERetain();
            }

            v24 = *(&v181 + 1);
            if (*(&v181 + 1) >= v182)
            {
              v25 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(&v181, v162);
            }

            else
            {
              **(&v181 + 1) = v162[0];
              v25 = v24 + 8;
              v162[0] = 0;
            }

            *(&v181 + 1) = v25;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(v162);
            LOBYTE(v174) = 1;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v188);
        }
      }

      ++v17;
    }

    while (v18 != v17);
  }

  v27 = *a3;
  v26 = a3[1];
  v28 = *(&v181 + 1);
  v29 = v181;
  v30 = (*(&v181 + 1) - v181) >> 3;
  v153 = -1;
  std::vector<unsigned int>::vector[abi:ne200100](&__p, v30, &v153);
  v137 = v29;
  v138 = v28;
  v133 = v30;
  if (v26 == v27)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = (*a3 + 16 * v31);
      v35 = *v34;
      v36 = v34[1];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        v152 = 0;
        v155 = 0;
        v156 = 0;
        v157 = 0;
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v162, a6, (v35 + 8));
        v37 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        *&v188 = MEMORY[0x277D866C8] + 16;
        BoundSubsetsAndCoverage = realityio::getBoundSubsetsAndCoverage(v37, &v155, &v152);
        MEMORY[0x24C1A4EF0](&v188);
        v39 = BoundSubsetsAndCoverage & v152 ^ 1;
        if (BoundSubsetsAndCoverage && v156 != v155)
        {
          v40 = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 3) <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = 0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 3);
          }

          do
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            *(&v189 + 1) = 0;
            *&v188 = MEMORY[0x277D867B8] + 16;
            if (!atomic_load(MEMORY[0x277D86568]))
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
            }

            pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v154, &v150);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148, &v154);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148 + 1, &v154 + 1);
            v149 = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v154);
            v43 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v179, &v148);
            if (v180 == v43)
            {
              v39 = 1;
            }

            else
            {
              v44 = v43[6];
              if (*(__p + v44) == -1)
              {
                *(__p + v44) = v32++;
              }
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v148);
            MEMORY[0x24C1A5510](&v150);
            MEMORY[0x24C1A5AA0](&v188);
            v40 += 24;
            --v41;
          }

          while (v41);
        }

        if (v39)
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          *(&v189 + 1) = 0;
          *&v188 = MEMORY[0x277D867B8] + 16;
          if (!atomic_load(MEMORY[0x277D86568]))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v154, &v150);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148, &v154);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148 + 1, &v154 + 1);
          v149 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          a3 = v141;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v154);
          v46 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v179, &v148);
          if (v180 != v46)
          {
            v47 = v46[6];
            if (*(__p + v47) == -1)
            {
              *(__p + v47) = v32++;
            }
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v148);
          MEMORY[0x24C1A5510](&v150);
          MEMORY[0x24C1A5AA0](&v188);
        }

        else
        {
          a3 = v141;
        }

        if ((v164 & 7) != 0)
        {
          atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v163);
        if (v162[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v162[1]);
        }

        v162[0] = &v155;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](v162);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v31 = ++v33;
    }

    while ((v26 - v27) >> 4 > v33);
  }

  if (v138 != v137)
  {
    v48 = __p;
    if (v133 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v133;
    }

    v50 = v49;
    while (1)
    {
      if (*v48 == -1)
      {
        *v48 = v32++;
      }

      ++v48;
      if (!--v50)
      {
        v162[0] = 0;
        v162[1] = 0;
        v163 = 0;
        *&v188 = v162;
        BYTE8(v188) = 0;
        std::vector<realityio::WrappedRERef<REAsset *>>::__vallocate[abi:ne200100](v162, v133);
      }
    }
  }

  v162[0] = 0;
  v162[1] = 0;
  v163 = 0;
  std::vector<realityio::WrappedRERef<REAsset *>>::__vdeallocate(&v181);
  v181 = *v162;
  v182 = v163;
  v162[0] = 0;
  v162[1] = 0;
  v163 = 0;
  v51 = v179;
  if (v179 != v180)
  {
    v52 = __p;
    do
    {
      v51[6] = v52[v51[6]];
      v53 = v51[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v51[2];
          v55 = *v54 == v51;
          v51 = v54;
        }

        while (!v55);
      }

      v51 = v54;
    }

    while (v54 != v180);
  }

  *&v188 = v162;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v188);
  if (__p)
  {
    v159 = __p;
    operator delete(__p);
  }

  v56 = a3[1] - *a3;
  if (v56)
  {
    v57 = 0;
    v58 = v56 >> 4;
    if (v58 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = v58;
    }

    while (1)
    {
      v60 = *(*a3 + 16 * v57);
      if (v60)
      {
        break;
      }

LABEL_106:
      if (++v57 == v59)
      {
        goto LABEL_139;
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148, (v60 + 8));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v148 + 1, (v60 + 12));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&__p, a6, &v148);
    hasMaterialXSurface = realityio::hasMaterialXSurface(&__p, v61);
    if ((hasMaterialXSurface & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(hasMaterialXSurface), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), !pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA()) || (pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(), v162[0] = (MEMORY[0x277D866A8] + 16), v64 = realityio::isCatmullClarkSurface(v162, v63) & a4, MEMORY[0x24C1A4DB0](v162), (v64 & 1) == 0))
    {
      MaterialIndexAssignor::registerNonSubdGPrim(&v174, &__p);
LABEL_101:
      if ((v161 & 7) != 0)
      {
        atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v160);
      if (v159)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v159);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v148);
      goto LABEL_106;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v162, &__p);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v188, v162);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v188 + 1, v162 + 1);
    WORD4(v188) = 1;
    HIDWORD(v188) = -1;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v162);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v162[0] = (MEMORY[0x277D866A8] + 16);
    v65 = realityio::getBoundSubsetsAndCoverage(v162, &v189, (&v188 | 9));
    MEMORY[0x24C1A4DB0](v162);
    v66 = v189;
    v67 = (*(&v189 + 1) - v189) >> 3;
    v68 = 0xAAAAAAAAAAAAAAABLL * v67;
    if (*(&v189 + 1) == v189)
    {
      if ((v65 & 1) == 0)
      {
LABEL_126:
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v164 = 0;
        v162[0] = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(MEMORY[0x277D86568]))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v154, &v155);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v150, &v154);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v150 + 1, &v154 + 1);
        v151 = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v154);
        v80 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v179, &v150);
        v81 = v80;
        if (v180 != v80)
        {
          HIDWORD(v188) = v80[6];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v150);
        MEMORY[0x24C1A5510](&v155);
        MEMORY[0x24C1A5AA0](v162);
        if (v180 != v81)
        {
LABEL_130:
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v150, &__p);
          std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo,0>(v162, &v150, &v188);
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>(&v177, v162, v162);
          if (v166)
          {
            v167 = v166;
            operator delete(v166);
          }

          v155 = v165;
          std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v155);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v163);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v162);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v150);
          BYTE1(v174) = 1;
          goto LABEL_135;
        }

LABEL_134:
        MaterialIndexAssignor::registerNonSubdGPrim(&v174, &__p);
LABEL_135:
        if (*(&v190 + 1))
        {
          *&v191 = *(&v190 + 1);
          operator delete(*(&v190 + 1));
        }

        v162[0] = &v189;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](v162);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        a3 = v141;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v188);
        goto LABEL_101;
      }

      LOBYTE(v70) = 0;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      if (v68 <= 1)
      {
        v71 = 1;
      }

      else
      {
        v71 = 0xAAAAAAAAAAAAAAABLL * v67;
      }

      do
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v164 = 0;
        v162[0] = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(MEMORY[0x277D86568]))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        v70 |= realityio::isMaterialX(&v155, v73);
        MEMORY[0x24C1A5510](&v155);
        MEMORY[0x24C1A5AA0](v162);
        v69 += 24;
        --v71;
      }

      while (v71);
      if ((v65 & 1) == 0)
      {
        if (v70)
        {
          goto LABEL_134;
        }

        goto LABEL_126;
      }
    }

    if (BYTE9(v188) == 1 && (v70 & 1) == 0)
    {
      std::vector<unsigned int>::resize((&v190 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(&v189 + 1) - v189) >> 3), &MaterialIndexAssignor::kInvalidMaterialIndex);
      if (*(&v66 + 1) == v66)
      {
        goto LABEL_130;
      }

      v74 = 0;
      v75 = 0;
      if (v68 <= 1)
      {
        v68 = 1;
      }

      v76 = 1;
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v164 = 0;
        v162[0] = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(MEMORY[0x277D86568]))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v154, &v155);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v150, &v154);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v150 + 1, &v154 + 1);
        v151 = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v154);
        v78 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(&v179, &v150);
        if (v180 == v78)
        {
          v76 = 0;
        }

        else
        {
          *(*(&v190 + 1) + 4 * v75) = v78[6];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v150);
        MEMORY[0x24C1A5510](&v155);
        MEMORY[0x24C1A5AA0](v162);
        ++v75;
        v74 += 24;
      }

      while (v68 != v75);
      if (v76)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_134;
  }

LABEL_139:
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v83 = v135;
  v84 = v175;
  v85 = MEMORY[0x277D82818];
  if (v175 != v176)
  {
    v142 = *(MEMORY[0x277D82818] + 64);
    v143 = *MEMORY[0x277D82818];
    v140 = *(MEMORY[0x277D82818] + 72);
    do
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v162);
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v83 + 1));
      v87 = *(Name + 23);
      if (v87 >= 0)
      {
        v88 = Name;
      }

      else
      {
        v88 = *Name;
      }

      if (v87 >= 0)
      {
        v89 = *(Name + 23);
      }

      else
      {
        v89 = *(Name + 8);
      }

      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, v88, v89);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "_baseColor_", 11);
      v91 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "_", 1);
      v92 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "_", 1);
      v93 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "_", 1);
      v94 = std::ostream::operator<<();
      v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "_", 1);
      LOBYTE(v188) = *(v84 + 48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, &v188, 1);
      std::stringbuf::str();
      v148 = 0;
      __p = REAssetManagerCreateAssetHandle();
      if (__p)
      {
        v155 = REMaterialAssetBuilderCreate();
        if (v155)
        {
          REMaterialAssetBuilderSetName();
          REMaterialAssetBuilderSetMaterialDefinition();
          REMaterialAssetBuilderSetColor4F();
          v96 = REAssetManagerMaterialAssetBuilderBuildAsync();
          v150 = v96;
          if (v96)
          {
            v148 = v96;
            v150 = 0;
          }

          realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v150);
        }

        realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v155);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
      if (SBYTE7(v189) < 0)
      {
        operator delete(v188);
      }

      if (v148)
      {
        if (*(*(a5 + 16) + 40))
        {
          realityio::LiveSceneManager::queueForDeferredAssetLoad(*(*(a5 + 16) + 40), &v148);
        }

        v147 = v148;
        RERetain();
        realityio::Builder::addAsset(v83, &v147, 0);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v147);
        v145 = *(v84 + 2);
        v97 = *(v84 + 48);
        *&v188 = *(v84 + 49);
        *(&v188 + 7) = v84[7];
        v98 = v185[0];
        if (!v185[0])
        {
LABEL_179:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v99 = v98;
            v100 = v98[3].u8[0];
            if (v100 <= v97)
            {
              v101 = v99[2];
              if (v100 != v97)
              {
                break;
              }

              v102 = vmovn_s32(vcgtq_f32(v101, v145));
              if ((v102.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v145, v101)).u8[0] & 1) == 0 || v145.f32[1] >= v101.f32[1] && (v145.f32[1] != v101.f32[1] || v145.f32[2] >= v101.f32[2] && (v145.f32[2] != v101.f32[2] || (v102.i8[6] & 1) == 0))))
              {
                break;
              }
            }

            v98 = v99->i64[0];
            if (!v99->i64[0])
            {
              goto LABEL_179;
            }
          }

          if (v100 >= v97)
          {
            v103 = vmovn_s32(vcgtq_f32(v145, v101));
            if ((v103.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v101, v145)).u8[0] & 1) == 0 || v101.f32[1] >= v145.f32[1] && (v101.f32[1] != v145.f32[1] || v101.f32[2] >= v145.f32[2] && (v101.f32[2] != v145.f32[2] || (v103.i8[6] & 1) == 0))))
            {
              break;
            }
          }

          v98 = v99->i64[1];
          if (!v98)
          {
            goto LABEL_179;
          }
        }

        std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](&v181, &v148);
        v83 = v135;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v148);
      v162[0] = v143;
      *(v162 + *(v143 - 3)) = v142;
      v163 = v140;
      v164 = MEMORY[0x277D82878] + 16;
      if (v170 < 0)
      {
        operator delete(v169);
      }

      v164 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v165);
      std::iostream::~basic_iostream();
      MEMORY[0x24C1A9110](v171);
      v104 = v84[1];
      if (v104)
      {
        do
        {
          v105 = v104;
          v104 = *v104;
        }

        while (v104);
      }

      else
      {
        do
        {
          v105 = v84[2];
          v55 = *v105 == v84;
          v84 = v105;
        }

        while (!v55);
      }

      v84 = v105;
    }

    while (v105 != v176);
  }

  if (BYTE3(v174))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v162);
    v106 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v83 + 1));
    v107 = *(v106 + 23);
    if (v107 >= 0)
    {
      v108 = v106;
    }

    else
    {
      v108 = *v106;
    }

    if (v107 >= 0)
    {
      v109 = *(v106 + 23);
    }

    else
    {
      v109 = *(v106 + 8);
    }

    v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163, v108, v109);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, "_vertexColor", 12);
    std::stringbuf::str();
    v148 = 0;
    __p = REAssetManagerCreateAssetHandle();
    if (__p)
    {
      v155 = REMaterialAssetBuilderCreate();
      if (v155)
      {
        REMaterialAssetBuilderSetName();
        REMaterialAssetBuilderSetMaterialDefinition();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        v111 = REAssetManagerMaterialAssetBuilderBuildAsync();
        v150 = v111;
        if (v111)
        {
          v148 = v111;
          v150 = 0;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v150);
      }

      realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v155);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
    if (SBYTE7(v189) < 0)
    {
      operator delete(v188);
    }

    if (v148)
    {
      if (*(*(a5 + 16) + 40))
      {
        realityio::LiveSceneManager::queueForDeferredAssetLoad(*(*(a5 + 16) + 40), &v148);
      }

      v146 = v148;
      RERetain();
      realityio::Builder::addAsset(v135, &v146, 0);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v146);
      *(&v183 + 1) = (*(&v181 + 1) - v181) >> 3;
      std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](&v181, &v148);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v148);
    v162[0] = *v85;
    v112 = *(v85 + 72);
    *(v162 + *(v162[0] - 3)) = *(v85 + 64);
    v163 = v112;
    v164 = MEMORY[0x277D82878] + 16;
    if (v170 < 0)
    {
      operator delete(v169);
    }

    v164 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v165);
    std::iostream::~basic_iostream();
    MEMORY[0x24C1A9110](v171);
  }

  if (BYTE2(v174) == 1)
  {
    v162[0] = *(*(a5 + 16) + 248);
    if (v162[0])
    {
      RERetain();
      if (v162[0])
      {
        *&v183 = (*(&v181 + 1) - v181) >> 3;
        std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](&v181, v162);
        v113 = *(*(a5 + 16) + 40);
        if (v113)
        {
          realityio::LiveSceneManager::queueForDeferredAssetLoad(v113, v162);
        }
      }
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v162);
  }

  v114 = v177;
  if (v177 != v178)
  {
    do
    {
      MaterialIndexAssignor::updateSentinelToRealIndex((v114 + 6), -2, v183);
      MaterialIndexAssignor::updateSentinelToRealIndex((v114 + 6), -3, SDWORD2(v183));
      if (*(v114 + 15) == -4)
      {
        v115 = v185[0];
        if (v185[0])
        {
          v116 = *(v114 + 128);
          v117 = *(v114 + 7);
          LODWORD(v118) = HIDWORD(v114[14]);
          LODWORD(v119) = v114[15];
          v120 = v185;
          do
          {
            v121 = v115[3].u8[0];
            if (v121 < v116 || v121 == v116 && ((v122 = v115[2], v123 = vmovn_s32(vcgtq_f32(v117, v122)), (v123.i8[0] & 1) != 0) || (vmovn_s32(vceqq_f32(v122, v117)).u8[0] & 1) != 0 && (v122.f32[1] < v118 || v122.f32[1] == v118 && (v122.f32[2] < v119 || v122.f32[2] == v119 && (v123.i8[6] & 1) != 0))))
            {
              v115 = (v115 + 8);
            }

            else
            {
              v120 = v115;
            }

            v115 = v115->i64[0];
          }

          while (v115);
          if (v120 != v185)
          {
            v124 = v120[3].u8[0];
            if (v124 <= v116)
            {
              if (v124 != v116 || (v125 = v120[2], v126 = vmovn_s32(vcgtq_f32(v125, v117)), (v126.i8[0] & 1) == 0) && ((vmovn_s32(vceqq_f32(v117, v125)).u8[0] & 1) == 0 || v118 >= v125.f32[1] && (v118 != v125.f32[1] || v119 >= v125.f32[2] && (v119 != v125.f32[2] || (v126.i8[6] & 1) == 0))))
              {
                *(v114 + 15) = v120[4].i64[0];
              }
            }
          }
        }
      }

      v127 = v114[1];
      if (v127)
      {
        do
        {
          v128 = v127;
          v127 = *v127;
        }

        while (v127);
      }

      else
      {
        do
        {
          v128 = v114[2];
          v55 = *v128 == v114;
          v114 = v128;
        }

        while (!v55);
      }

      v114 = v128;
    }

    while (v128 != v178);
  }

  MaterialIndexAssignor::MaterialIndexAssignor(v162, &v174);
  *a1 = 1;
  MaterialIndexAssignor::MaterialIndexAssignor((a1 + 8), v162);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(&v173, v129);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(&v172, v130);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v171[0]);
  *&v188 = &v168;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v188);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(v167);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(v165[1].__locale_);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v163);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(v187, v131);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(v186, v132);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v185[0]);
  v162[0] = &v181;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](v162);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(v180[0]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(v178[0]);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v176[0]);
}

void sub_24767EAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&a36);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a29);
  if (*(v43 - 185) < 0)
  {
    operator delete(*(v43 - 208));
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a43);
  realityio::types::Ok<MaterialIndexAssignor>::~Ok(&STACK[0x600], v45);
  _Unwind_Resume(a1);
}

uint64_t realityio::getRealityKitStageMetadata<BOOL>(uint64_t *a1, void *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v3 = a3;
  if (*a1)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *a3;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v20, v7);
    v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v20);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v23, v8);
    v9 = v21;
    if (v21 && atomic_fetch_add_explicit(v21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      v9 = (*(*v9 + 8))(v9);
    }

    if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    std::operator+<char>();
    ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
    v11 = ValueAtPath;
    if (ValueAtPath && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(ValueAtPath))
    {
      v12 = *(v11 + 8);
      if ((v12 & 4) != 0)
      {
        v11 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(v11);
      }

      v5 = *v11;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TfStringToLower();
      v13 = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
      v14 = v13;
      if (v13 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(v13))
      {
        v15 = *(v14 + 1);
        if ((v15 & 4) != 0)
        {
          v3 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(v14);
        }

        else
        {
          v3 = v14;
        }
      }

      v5 = *v3;
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

    v16 = v23;
    v23 = 0;
    if (v16)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v16, *(v16 + 8));
      MEMORY[0x24C1A91B0](v16, 0x1020C4062D53EE8);
    }
  }

  return v5 & 1;
}

void sub_24767F020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary((v21 - 24));
  _Unwind_Resume(a1);
}

void sub_24767F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  JUMPOUT(0x24767F060);
}

void std::deque<int>::push_back(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v13);
    }

    a1[4] = v8 - 1024;
    v14 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<int *>::emplace_back<int *&>(a1, &v14);
    v4 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v4 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
}

void sub_24767F54C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0::~$_0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1);
}

uint64_t realityio::MeshAssetBuilder::clear(realityio::MeshAssetBuilder *this, realityio::Inputs *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::MeshAssetBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>(v5, v6, &v25);
  if (v25)
  {
    v7 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      v20[0] = 1;
      v21 = v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }

    else
    {
      v20[0] = 1;
      v21 = v26;
    }
  }

  else
  {
    v23 = v26;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v27;
    }

    v20[0] = 0;
    v21 = v23;
    v22 = v24;
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v25);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v20[0])
  {
    v8 = v21;
    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
    {
      if (*(v21 + 159) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *(v21 + 136), *(v21 + 144));
      }

      else
      {
        v18 = *(v21 + 136);
      }

      if (*(v8 + 183) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v8 + 160), *(v8 + 168));
      }

      else
      {
        __p = *(v8 + 160);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, (v8 + 184));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, (v8 + 188));
      realityio::ImportSession::assetDescriptorCacheEject(&v18, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    v9 = *(a2 + 5);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v25, v10, (a2 + 32));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v23, &v25);
    realityio::ImportSession::clearMeshAsset(v9, &v23);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
    if ((v27.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v27.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26 + 8);
    v11 = v26;
    if (v26)
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
    }

    v13 = *(this + 2);
    v12 = *(this + 3);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = realityio::MeshAssetBuilder::kOutputName(v11);
    std::mutex::lock((v13 + 64));
    if (v13 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v13 + 40, v14))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v13 + 40), v14);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v13, v14);
    std::mutex::unlock((v13 + 64));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  return realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v20);
}

void sub_24767F878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a20);
  _Unwind_Resume(a1);
}

void realityio::MeshAssetBuilder::~MeshAssetBuilder(realityio::MeshAssetBuilder *this)
{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

void *std::vector<realityio::WrappedRERef<REAsset *>>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *> const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      RERetain();
    }

    result = v3 + 1;
    a1[1] = (v3 + 1);
  }

  a1[1] = result;
  return result;
}

uint64_t MaterialIndexAssignor::updateSentinelToRealIndex(uint64_t result, int a2, int a3)
{
  if (*(result + 12) == a2)
  {
    *(result + 12) = a3;
    v3 = *(result + 24) - *(result + 16);
    if (v3)
    {
      if ((*(result + 9) & 1) == 0)
      {
        v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
        v5 = *(result + 40);
        if (v4 <= 1)
        {
          v4 = 1;
        }

        do
        {
          if (*v5 == a2)
          {
            *v5 = a3;
          }

          ++v5;
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<MaterialIndexAssignor::MaterialKey const,unsigned long>,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<MaterialIndexAssignor::MaterialKey const,unsigned long>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void MaterialIndexAssignor::MaterialKey::~MaterialKey(MaterialIndexAssignor::MaterialKey *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 11);
    if (v2)
    {
      *(a1 + 12) = v2;
      operator delete(v2);
    }

    v3 = (a1 + 64);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 48));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));
    operator delete(a1);
  }
}

void MaterialIndexAssignor::GPrimInfo::~GPrimInfo(MaterialIndexAssignor::GPrimInfo *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

uint64_t std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t *std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = (a1 + 8);
  do
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v3 + 4, a2) || v3[4] == *a2 && *(v3 + 40) < *(a2 + 8))
    {
      ++v3;
    }

    else
    {
      v5 = v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v2 == v5 || (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v5 + 4) & 1) != 0 || *a2 == v5[4] && *(a2 + 8) < *(v5 + 40))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::__emplace_unique_key_args<MaterialIndexAssignor::MaterialKey,std::pair<MaterialIndexAssignor::MaterialKey,unsigned long>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_11;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v3 + 4) & 1) == 0 && (*a2 != v6[4] || *(a2 + 8) >= *(v6 + 40)))
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_11;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6 + 4, a2);
    if ((result & 1) == 0 && (v6[4] != *a2 || *(v6 + 40) >= *(a2 + 8)))
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (!*v4)
  {
LABEL_11:
    operator new();
  }

  return result;
}

uint64_t MaterialIndexAssignor::registerNonSubdGPrim(uint64_t **this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  result = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (!result)
  {
    return result;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v57, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v63, &v57);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v64, &v57 + 1);
  v65 = 0;
  v66 = -1;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v57 = (MEMORY[0x277D866C8] + 16);
  BoundSubsetsAndCoverage = realityio::getBoundSubsetsAndCoverage(&v57, &v67, (&v63 | 9));
  MEMORY[0x24C1A4EF0](&v57);
  v6 = BoundSubsetsAndCoverage & HIBYTE(v65) ^ 1;
  if (BoundSubsetsAndCoverage)
  {
    v7 = v67;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(&v67 + 1) - v67) >> 3);
    std::vector<unsigned int>::resize((&v68 + 8), v8, &MaterialIndexAssignor::kInvalidMaterialIndex);
    if (*(&v7 + 1) != v7)
    {
      v9 = 0;
      v10 = 0;
      if (v8 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8;
      }

      v12 = MEMORY[0x277D86568];
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        *&v59 = 0;
        v57 = (MEMORY[0x277D867B8] + 16);
        if (!atomic_load(v12))
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(v12);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v45, &v40);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v54, &v45);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v54 + 1, &v45 + 1);
        v55 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
        v14 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>((this + 7), &v54);
        if (this + 8 == v14)
        {
          v6 = 1;
        }

        else
        {
          *(*(&v68 + 1) + 4 * v10) = v14[6];
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v54);
        MEMORY[0x24C1A5510](&v40);
        MEMORY[0x24C1A5AA0](&v57);
        ++v10;
        v9 += 24;
      }

      while (v11 != v10);
    }
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v56 = 0;
    v54 = MEMORY[0x277D867B8] + 16;
    if (!atomic_load(MEMORY[0x277D86568]))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v57, v53);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v50, &v57);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v51, &v57 + 1);
    v52 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
    v16 = std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::find<MaterialIndexAssignor::MaterialKey>((this + 7), &v50);
    if (this + 8 != v16)
    {
      v17 = *(v16 + 12);
      v66 = v17;
      if (BoundSubsetsAndCoverage)
      {
        v18 = *(&v68 + 1);
        if (v69 != *(&v68 + 1))
        {
          v19 = (v69 - *(&v68 + 1)) >> 2;
          if (v19 <= 1)
          {
            v19 = 1;
          }

          do
          {
            if (*v18 == -1)
            {
              *v18 = v17;
            }

            ++v18;
            --v19;
          }

          while (v19);
        }
      }

      goto LABEL_84;
    }

    v20 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v49[0] = MEMORY[0x277D866C8] + 16;
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(v20);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorPrimvar(&v57, v49);
      if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar() && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v57))
      {
        *(this + 3) = 1;
        v66 = -3;
        if (BoundSubsetsAndCoverage)
        {
          v21 = *(&v68 + 1);
          if (v69 != *(&v68 + 1))
          {
            v22 = (v69 - *(&v68 + 1)) >> 2;
            if (v22 <= 1)
            {
              v22 = 1;
            }

            do
            {
              if (*v21 == -1)
              {
                *v21 = -3;
              }

              ++v21;
              --v22;
            }

            while (v22);
          }
        }
      }

      else
      {
        *(this + 2) = 1;
        v66 = -2;
        if (BoundSubsetsAndCoverage)
        {
          v35 = *(&v68 + 1);
          if (v69 != *(&v68 + 1))
          {
            v36 = (v69 - *(&v68 + 1)) >> 2;
            if (v36 <= 1)
            {
              v36 = 1;
            }

            do
            {
              if (*v35 == -1)
              {
                *v35 = -2;
              }

              ++v35;
              --v36;
            }

            while (v36);
          }
        }
      }

      if ((BYTE8(v59) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v59 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v59 & 7) != 0)
      {
        atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58 + 8);
      v37 = v58;
      if (!v58)
      {
        goto LABEL_83;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::GetDisplayColorAttr(&v45, v49);
      v44 = 0;
      v43 = xmmword_247757260;
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v45) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v45))
      {
        realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&v45, &v57);
        if (v57 == 1)
        {
          v40 = v58;
          v41 = v59;
          v42 = v60;
          if (v60)
          {
            v23 = (v60 - 4);
            if (*(&v41 + 1))
            {
              v23 = *(&v41 + 1);
            }

            atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
          }

          if (v40)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v40);
            v39 = *v42;
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v40);
            v38 = v42[1];
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v40);
            __asm { FMOV            V0.4S, #1.0 }

            _Q0.i64[0] = __PAIR64__(v38, v39);
            _Q0.i32[2] = v42[2];
            v43 = _Q0;
          }

          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v40);
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(&v57);
      }

      realityio::assignGamutFromAttribute(&v43, &v44, &v45);
      v66 = -4;
      v70 = v43;
      LOBYTE(v71) = v44;
      v29 = this[2];
      if (!v29)
      {
LABEL_91:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v30 = v29;
          v31 = *(v29 + 48);
          if (v31 <= v44)
          {
            v32 = *(v30 + 2);
            if (v31 != v44)
            {
              break;
            }

            v33 = vmovn_s32(vcgtq_f32(v32, v43));
            if ((v33.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v43, v32)).u8[0] & 1) == 0 || *(&v43 + 1) >= v32.f32[1] && (*(&v43 + 1) != v32.f32[1] || *(&v43 + 2) >= v32.f32[2] && (*(&v43 + 2) != v32.f32[2] || (v33.i8[6] & 1) == 0))))
            {
              break;
            }
          }

          v29 = *v30;
          if (!*v30)
          {
            goto LABEL_91;
          }
        }

        if (v31 >= v44)
        {
          v34 = vmovn_s32(vcgtq_f32(v43, v32));
          if ((v34.i8[0] & 1) == 0 && ((vmovn_s32(vceqq_f32(v32, v43)).u8[0] & 1) == 0 || v32.f32[1] >= *(&v43 + 1) && (v32.f32[1] != *(&v43 + 1) || v32.f32[2] >= *(&v43 + 2) && (v32.f32[2] != *(&v43 + 2) || (v34.i8[6] & 1) == 0))))
          {
            break;
          }
        }

        v29 = v30[1];
        if (!v29)
        {
          goto LABEL_91;
        }
      }

      if ((v48 & 7) != 0)
      {
        atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
      v37 = v46;
      if (!v46)
      {
        goto LABEL_83;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
LABEL_83:
    MEMORY[0x24C1A4EF0](v49);
LABEL_84:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
    MEMORY[0x24C1A5510](v53);
    MEMORY[0x24C1A5AA0](&v54);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v54, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo,0>(&v57, &v54, &v63);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>(this + 4, &v57, &v57);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  *&v40 = &v59 + 8;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v54);
  if (*(&v68 + 1))
  {
    *&v69 = *(&v68 + 1);
    operator delete(*(&v68 + 1));
  }

  v57 = &v67;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v57);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v63);
}

void sub_2476807DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, int a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::~pair(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>(uint64_t **a1, void *a2, uint64_t a3)
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
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v3 + 4))
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

    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6 + 4, a2);
    if (!result)
    {
      break;
    }

    v4 = v6 + 1;
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

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo,0>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a3 + 4));
  *(a1 + 24) = *(a3 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a3 + 40);
  *(a1 + 72) = *(a3 + 56);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v7 = *(a3 + 80);
  *(a1 + 80) = *(a3 + 64);
  *(a1 + 96) = v7;
  return a1;
}

uint64_t MaterialIndexAssignor::MaterialIndexAssignor(uint64_t a1, unint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a2 + 16);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = a1 + 16;
  v7 = *(a2 + 24);
  *(a1 + 24) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 8) = v4;
    *v4 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(a1 + 8) = v6;
  }

  *(a1 + 32) = *(a2 + 32);
  v8 = (a2 + 40);
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  v10 = a1 + 40;
  v11 = *(a2 + 48);
  *(a1 + 48) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 32) = v8;
    *v8 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a1 + 32) = v10;
  }

  *(a1 + 56) = *(a2 + 56);
  v12 = (a2 + 64);
  v13 = *(a2 + 64);
  *(a1 + 64) = v13;
  v14 = a1 + 64;
  v15 = *(a2 + 72);
  *(a1 + 72) = v15;
  if (v15)
  {
    *(v13 + 16) = v14;
    *(a2 + 56) = v12;
    *v12 = 0;
    *(a2 + 72) = 0;
  }

  else
  {
    *(a1 + 56) = v14;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v16 = (a2 + 128);
  v17 = *(a2 + 128);
  *(a1 + 128) = v17;
  v18 = a1 + 128;
  v19 = *(a2 + 136);
  *(a1 + 136) = v19;
  if (v19)
  {
    *(v17 + 16) = v18;
    *(a2 + 120) = v16;
    *v16 = 0;
    *(a2 + 136) = 0;
  }

  else
  {
    *(a1 + 120) = v18;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 168) = 0;
  v20 = tbb::internal::allocate_via_handler_v3(0x20);
  v20[3] = 0;
  *v20 = 0;
  *(a1 + 176) = v20;
  *(a1 + 188) = 1082130432;
  __dmb(0xBu);
  *(a1 + 192) = 0u;
  v21 = a1 + 192;
  *(a1 + 152) = 8;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  v45 = *(a1 + 176);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(a1 + 144, 0, &v45);
  if (a1 != a2)
  {
    v22 = 0;
    v23 = *(a1 + 144);
    *(a1 + 144) = *(a2 + 144);
    *(a2 + 144) = v23;
    v24 = *(a1 + 168);
    *(a1 + 168) = *(a2 + 168);
    *(a2 + 168) = v24;
    v25 = *(a1 + 176);
    *(a1 + 176) = *(a2 + 176);
    *(a2 + 176) = v25;
    v26 = a2 + 192;
    do
    {
      v27 = *(v21 + v22);
      __dmb(0xBu);
      v28 = *(v26 + v22);
      __dmb(0xBu);
      *(v21 + v22) = v28;
      __dmb(0xBu);
      *(v26 + v22) = v27;
      v22 += 8;
    }

    while (v22 != 512);
    v45 = *(a1 + 152);
    v29 = *(a2 + 152);
    __dmb(0xBu);
    *(a1 + 152) = v29;
    v30 = v45;
    __dmb(0xBu);
    *(a2 + 152) = v30;
    v31 = *(a1 + 188);
    *(a1 + 188) = *(a2 + 188);
    *(a2 + 188) = v31;
  }

  *(a1 + 704) = *(a2 + 704);
  *(a1 + 728) = 0;
  v32 = tbb::internal::allocate_via_handler_v3(0x20);
  v32[3] = 0;
  *v32 = 0;
  *(a1 + 736) = v32;
  *(a1 + 748) = 1082130432;
  __dmb(0xBu);
  *(a1 + 712) = 8;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  v45 = *(a1 + 736);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(a1 + 704, 0, &v45);
  if (a1 != a2)
  {
    v33 = 0;
    v34 = *(a1 + 704);
    *(a1 + 704) = *(a2 + 704);
    *(a2 + 704) = v34;
    v35 = *(a1 + 728);
    *(a1 + 728) = *(a2 + 728);
    *(a2 + 728) = v35;
    v36 = *(a1 + 736);
    *(a1 + 736) = *(a2 + 736);
    v37 = a1 + 752;
    *(a2 + 736) = v36;
    v38 = a2 + 752;
    do
    {
      v39 = *(v37 + v33);
      __dmb(0xBu);
      v40 = *(v38 + v33);
      __dmb(0xBu);
      *(v37 + v33) = v40;
      __dmb(0xBu);
      *(v38 + v33) = v39;
      v33 += 8;
    }

    while (v33 != 512);
    v45 = *(a1 + 712);
    v41 = *(a2 + 712);
    __dmb(0xBu);
    *(a1 + 712) = v41;
    v42 = v45;
    __dmb(0xBu);
    *(a2 + 712) = v42;
    v43 = *(a1 + 748);
    *(a1 + 748) = *(a2 + 748);
    *(a2 + 748) = v43;
  }

  return a1;
}

void sub_247680F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::~split_ordered_list(v9 + 720);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(v10, v16);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*v14);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*v13);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*v12);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*v11);
  _Unwind_Resume(a1);
}

uint64_t realityio::types::Ok<MaterialIndexAssignor>::~Ok(uint64_t a1, void *a2)
{
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(a1 + 704, a2);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(a1 + 144, v3);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 128));
  v5 = (a1 + 80);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*(a1 + 64));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*(a1 + 40));
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 16));
  return a1;
}

uint64_t realityio::TexcoordID::TexcoordID(uint64_t a1, void *a2, int a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  realityio::TexcoordID::setIndex(a1, a3);
  pxrInternal__aapl__pxrReserved__::TfToken::operator=(v8, a2);
  *(a1 + 40) = a4;
  if (*v8)
  {
    realityio::TexcoordID::computeNormalizedName(a1);
    if (a3 == -1)
    {
      realityio::TexcoordID::getIndexFromName(a1);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "UV");
    std::to_string(&v14, a3);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v15, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A5E00](&v18, __p);
    if (&v18 == v8)
    {
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v8 = v18;
      v18 = 0;
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_2476811C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 + 39) < 0)
  {
    operator delete(*(v26 + 16));
  }

  if ((*v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

_DWORD *std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<true,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 3, a3 + 1);
  return a1;
}

__n128 std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0>,unsigned long ()(std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595A0B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_24768164C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x24C1A91B0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_0>,unsigned long ()(std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<char const*> *,std::shared_ptr<std::vector<char const*>>::__shared_ptr_default_delete<std::vector<char const*>,std::vector<char const*>>,std::allocator<std::vector<char const*>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<std::vector<char const*> *,std::shared_ptr<std::vector<char const*>>::__shared_ptr_default_delete<std::vector<char const*>,std::vector<char const*>>,std::allocator<std::vector<char const*>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **std::default_delete<std::vector<char const*>>::operator()[abi:ne200100](void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

__n128 std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595A1C0;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 8) - **(a1 + 8);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v27 = v5;
    do
    {
      v6 = (**(a1 + 8) + v3);
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8[8] != v8[7])
      {
        v9 = *(*(a1 + 16) + 24);
        if (!v9)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v10 = (*(*v9 + 48))(v9, v8 + 7);
        v11 = v10;
        if (v10 != -1)
        {
          v12 = *(a1 + 24);
          ModelName = REMeshAssetGetModelName();
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (v14 >= v15)
          {
            v17 = (v14 - *v12) >> 5;
            v18 = v17 + 1;
            if ((v17 + 1) >> 59)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v19 = v15 - *v12;
            if (v19 >> 4 > v18)
            {
              v18 = v19 >> 4;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFE0)
            {
              v20 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<REBlendWeightsMeshMap>>(v12, v20);
            }

            v21 = 32 * v17;
            *v21 = 2;
            *(v21 + 8) = ModelName;
            *(v21 + 16) = 0;
            *(v21 + 24) = v11;
            v16 = 32 * v17 + 32;
            v22 = *(v12 + 8) - *v12;
            v23 = v21 - v22;
            memcpy((v21 - v22), *v12, v22);
            v24 = *v12;
            *v12 = v23;
            *(v12 + 8) = v16;
            *(v12 + 16) = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v14 = 2;
            *(v14 + 8) = ModelName;
            *(v14 + 16) = 0;
            v16 = v14 + 32;
            *(v14 + 24) = v11;
          }

          *(v12 + 8) = v16;
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v33, *(a1 + 40), (v8 + 1));
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v28 = MEMORY[0x277D866A8] + 16;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v40[3] = 0;
          v40[0] = MEMORY[0x277D86780] + 16;
          MEMORY[0x24C1A4DB0](&v28);
          if ((v36 & 7) != 0)
          {
            atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
          if (v34)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
          }

          pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v38, v40);
          if (v39 && (*(v39 + 57) & 8) == 0 && (*(v38 + 32))(&v38))
          {
            MEMORY[0x24C1A4F20](&v28);
            pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(&v33, &v28, &v38);
            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            v32 = *pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetAnimQuery(&v33);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v32);
            pxrInternal__aapl__pxrReserved__::UsdSkelAnimQuery::GetPrim(&v28, &v32);
            if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && !*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(*(a1 + 48), &v41, v8 + 1))
            {
              operator new();
            }

            if ((v31 & 7) != 0)
            {
              atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
            if (v29)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
            }

            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v32);
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v37);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v34);
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(&v33);
          }

          MEMORY[0x24C1A53A0](&v38);
          MEMORY[0x24C1A5620](v40);
        }
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      ++v4;
      v3 += 16;
    }

    while (v27 != v4);
  }

  if (*(*(a1 + 56) + 8) != **(a1 + 56) && *(*(a1 + 24) + 8) != **(a1 + 24))
  {
    v25 = *(a1 + 64);
    AssetWithDefinitionsAndWeightNames = REBlendShapeWeightsDefinitionAssetCreateAssetWithDefinitionsAndWeightNames();
    if (*v25)
    {
      RERelease();
    }

    *v25 = AssetWithDefinitionsAndWeightNames;
  }
}

void sub_247681D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&a14);
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::~UsdSkelSkeletonQuery(&a15);
  MEMORY[0x24C1A53A0](&a25);
  MEMORY[0x24C1A5620](va);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1,std::allocator<anonymous namespace::createBlendShapeDefinitions(realityio::ImportSession &,pxrInternal__aapl__pxrReserved__::UsdStage const&,REAssetManager *,REAsset *,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int> const&,std::vector<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>> const&,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned long ()(std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::string>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_247682368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v30);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetBuilder::MeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MeshAssetBuilder::MeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::GPrimsOnPrimGeneratingEntityOnlyInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595A2B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::GPrimsOnPrimGeneratingEntityOnlyInputDescriptor::~GPrimsOnPrimGeneratingEntityOnlyInputDescriptor(realityio::GPrimsOnPrimGeneratingEntityOnlyInputDescriptor *this)
{
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void realityio::GPrimsOnPrimGeneratingEntityOnlyInputDescriptor::resolvedPrimPaths(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
  if (a2 + 56 != v6 && *(*(a2 + 24) + 104 * *(v6 + 40) + 24) == *a1)
  {
    v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2 + 48, a1);
    if (a2 + 56 != v7)
    {
      v8 = *(a2 + 24);
      if (v8)
      {
        v9 = (v8 + 104 * *(v7 + 40));
        v10 = v9[7];
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a3, vcvtps_u32_f32((v9[12] + v9[9]) / *(a3 + 32)));
        if (v10 != (v9 + 8))
        {
          do
          {
            std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, v10 + 7);
            v11 = *(v10 + 1);
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
                v12 = *(v10 + 2);
                v13 = *v12 == v10;
                v10 = v12;
              }

              while (!v13);
            }

            v10 = v12;
          }

          while (v12 != (v9 + 8));
        }

        v14 = v9[10];
        v15 = (v9 + 11);
        if (v14 != v15)
        {
          do
          {
            std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, v14 + 7);
            v16 = *(v14 + 1);
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = *(v14 + 2);
                v13 = *v17 == v14;
                v14 = v17;
              }

              while (!v13);
            }

            v14 = v17;
          }

          while (v17 != v15);
        }
      }
    }
  }
}

_DWORD *std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdPrim>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdPrim const&,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), (a2 + 16));
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a2 + 20));
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_247682914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetBuilder::MeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::MeshAssetBuilder::MeshAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::getAttributeValue<std::string>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<std::string>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247682B28(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *realityio::Result<std::string,realityio::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (a1[31] < 0)
    {
      v2 = 8;
LABEL_6:
      operator delete(*&a1[v2]);
    }
  }

  else if (a1[47] < 0)
  {
    v2 = 24;
    goto LABEL_6;
  }

  return a1;
}

void realityio::getAttributeValue<std::string>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v35.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(&v35))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(&v35);
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, *v6, *(v6 + 8));
        }

        else
        {
          v7 = *v6;
          v32.__r_.__value_.__r.__words[2] = *(v6 + 16);
          *&v32.__r_.__value_.__l.__data_ = v7;
        }

        *a3 = 1;
        *(a3 + 8) = v32;
        goto LABEL_45;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v35);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<std::string>(&v35);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v34, v13);
        if (v34.__r_.__value_.__l.__size_)
        {
          v15 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(v14);
          if (*(v15 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v32, *v15, *(v15 + 8));
          }

          else
          {
            v16 = *v15;
            v32.__r_.__value_.__r.__words[2] = *(v15 + 16);
            *&v32.__r_.__value_.__l.__data_ = v16;
          }

          *a3 = 1;
          *(a3 + 8) = v32;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = *&v32.__r_.__value_.__l.__data_;
          v27 = v33;
          *(a3 + 24) = *(&v32.__r_.__value_.__l + 2);
          *(a3 + 32) = v27;
          *(a3 + 39) = *(&v33 + 7);
          LOBYTE(v27) = HIBYTE(v33);
          v33 = 0uLL;
          v32.__r_.__value_.__r.__words[2] = 0;
          *a3 = 0;
          *(a3 + 47) = v27;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v34);
        goto LABEL_45;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = *&v32.__r_.__value_.__l.__data_;
      v25 = v33;
      *(a3 + 24) = *(&v32.__r_.__value_.__l + 2);
      *(a3 + 32) = v25;
      *(a3 + 39) = *(&v33 + 7);
      LOBYTE(v25) = HIBYTE(v33);
      v33 = 0uLL;
      v32.__r_.__value_.__r.__words[2] = 0;
      *a3 = 0;
      *(a3 + 47) = v25;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_45:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        return;
      }

      v24 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v17 = std::string::append(&v29, ") at the given time: ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v28;
      }

      else
      {
        v19 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v21 = std::string::append(&v34, v19, size);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v31 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = *&v32.__r_.__value_.__l.__data_;
      v23 = v33;
      *(a3 + 24) = *(&v32.__r_.__value_.__l + 2);
      *(a3 + 32) = v23;
      *(a3 + 39) = *(&v33 + 7);
      LOBYTE(v23) = HIBYTE(v33);
      v33 = 0uLL;
      v32.__r_.__value_.__r.__words[2] = 0;
      *a3 = 0;
      *(a3 + 47) = v23;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v24 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v24);
    goto LABEL_45;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = *&v32.__r_.__value_.__l.__data_;
  v10 = v33;
  *(a3 + 24) = *(&v32.__r_.__value_.__l + 2);
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v33 + 7);
  LOBYTE(v10) = HIBYTE(v33);
  v33 = 0uLL;
  v32.__r_.__value_.__r.__words[2] = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}