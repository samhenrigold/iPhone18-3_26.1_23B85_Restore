uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::iterator_proxy::~iterator_proxy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::~DictionaryRef_iterator(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

std::string *applesauce::CF::details::to_description_json_style_array(uint64_t a1, CFArrayRef theArray, size_t __len, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a1 + 23) = 1;
  *a1 = 91;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(theArray);
    if (Count)
    {
      if (v9)
      {
        v10 = 0;
        v11 = v9 - 1;
        v12 = 1;
        do
        {
          if ((v12 & 1) == 0)
          {
            std::string::append(a1, ",", 1uLL);
          }

          std::string::basic_string[abi:ne200100](&__b, __len + 2, 32);
          v13 = std::string::insert(&__b, 0, "\n", 1uLL);
          v14 = *&v13->__r_.__value_.__l.__data_;
          v27 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          if (v27 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v27 >= 0)
          {
            v16 = HIBYTE(v27);
          }

          else
          {
            v16 = __p[1];
          }

          std::string::append(a1, v15, v16);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__b.__r_.__value_.__l.__data_);
          }

          applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&__b, theArray, v10);
          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::__value_func[abi:ne200100](v28, a4);
          applesauce::CF::details::to_description_json_style_helper(__p, &__b.__r_.__value_.__l.__data_, __len + 2, v28);
          if (v27 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          if (v27 >= 0)
          {
            v18 = HIBYTE(v27);
          }

          else
          {
            v18 = __p[1];
          }

          std::string::append(a1, v17, v18);
          if (SHIBYTE(v27) < 0)
          {
            operator delete(__p[0]);
          }

          std::__function::__value_func<std::pair<std::string,std::string> ()(applesauce::CF::TypeRef,applesauce::CF::TypeRef)>::~__value_func[abi:ne200100](v28);
          if (__b.__r_.__value_.__r.__words[0])
          {
            CFRelease(__b.__r_.__value_.__l.__data_);
          }

          if (Count - 1 == v10)
          {
            break;
          }

          v12 = 0;
        }

        while (v11 != v10++);
      }
    }
  }

  std::string::basic_string[abi:ne200100](&__b, __len, 32);
  v20 = std::string::insert(&__b, 0, "\n", 1uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, "]", 1uLL);
}

void sub_272613B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a1 = v7;
  return result;
}

void std::vector<void const*>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void const*>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 72))(v7, a2, *v4, v2[2]);
}

uint64_t vp::vx::database::v1::Database::get_configuration(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = a4;
  *&v6 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>;
  *(&v6 + 1) = v5;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find downlink DSP node configuration", a2, &v6);
}

{
  v7 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = a4;
  *&v6 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>;
  *(&v6 + 1) = v5;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find uplink DSP node configuration", a2, &v6);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 64))(v7, a2, *v4, v2[2]);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration_options(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration_Options &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 56))(v7, a2, *v4, v2[2]);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_DSP_Node_ID,vp::vx::DSP_Node_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(v3 + 208);
  v6 = v3 + 200;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*v7 + 48))(v7, a2, *v4, v2[2]);
}

uint64_t vp::vx::database::v1::Database::get_configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a3;
  *&v5 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_Configuration &)::$_0>;
  *(&v5 + 1) = v4;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find downlink configuration", a2, &v5);
}

{
  v4[0] = a1;
  v4[1] = a3;
  *&v5 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_Configuration &)::$_0>;
  *(&v5 + 1) = v4;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(a1, "find uplink configuration", a2, &v5);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Downlink_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(v3 + 208);
  v5 = v3 + 200;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(*v6 + 40))(v6, a2, v2);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Uplink_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(v3 + 208);
  v5 = v3 + 200;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(*v6 + 32))(v6, a2, v2);
}

uint64_t vp::vx::database::v1::Database::get_configuration(vp::vx::database::v1::Database *this, const vp::vx::Configuration_Context *a2, vp::vx::Global_Configuration *a3)
{
  v4[0] = this;
  v4[1] = a3;
  *&v5 = caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Global_Configuration &)::$_0>;
  *(&v5 + 1) = v4;
  return vp::vx::database::v1::Database::evaluate_configuration_context_noexcept(this, "find global configuration", a2, &v5);
}

uint64_t caulk::function_ref<void ()(applesauce::CF::DictionaryRef const&)>::functor_invoker<vp::vx::database::v1::Database::get_configuration(vp::vx::Configuration_Context const&,vp::vx::Global_Configuration &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(v3 + 208);
  v5 = v3 + 200;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(*v6 + 24))(v6, a2, v2);
}

uint64_t vp::vx::database::v1::Database::get_flags(vp::vx::database::v1::Database *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v2 = *(this + 37);
  v3 = *(this + 38);
  if (v2 == v3)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v4 = *v2;
      if (!*v2)
      {
        cf[0] = 0;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      CFRetain(*v2);
      cf[0] = v4;
      applesauce::CF::convert_to<std::string,0>(__p, v4);
      if (v31 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = *__p;
      }

      v6 = v2[1];
      if (v6)
      {
        CFRetain(v2[1]);
        vp::vx::database::v1::Response::set(&v26, v5, v6, 0);
        CFRelease(v6);
      }

      else
      {
        vp::vx::database::v1::Response::set(&v26, v5, 0, 0);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(*__p);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v2 += 2;
    }

    while (v2 != v3);
    v8 = v26;
  }

  v27 = 0;
  plist = vp::vx::database::v1::Response::make_plist(&v25, v8);
  log = vp::get_log(plist);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(cf, this, "vp::vx::database::v1::Database]", 30);
    v12 = v24;
    v13 = v24;
    v14 = cf[1];
    v15 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v13 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v14;
      }

      v17 = cf[0];
      if (v13 >= 0)
      {
        v17 = cf;
      }

      *__p = 136315650;
      *&__p[4] = v17;
      if (v16)
      {
        v18 = " ";
      }

      else
      {
        v18 = "";
      }

      v29 = 2080;
      v30 = v18;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%s%sflags are %@", __p, 0x20u);
      LOBYTE(v13) = v24;
    }

    if ((v13 & 0x80) != 0)
    {
      operator delete(cf[0]);
    }
  }

  v19 = v25;
  if (v25 && (CFRetain(v25), v20 = CFGetTypeID(v19), v20 != CFDictionaryGetTypeID()))
  {
    *__p = 0;
    CFRelease(v19);
  }

  else
  {
    *__p = v19;
  }

  if (*(this + 26))
  {
    v21 = *(this + 26);
  }

  else
  {
    v21 = this + 200;
  }

  (*(*v21 + 16))(v21, __p, &v27);
  if (*__p)
  {
    CFRelease(*__p);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  vp::vx::database::v1::Response::~Response(&v26);
  return v27;
}

void sub_2726144C8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726144FCLL);
  }

  __clang_call_terminate(a1);
}

void vp::vx::database::v1::Database::~Database(vp::vx::database::v1::runtime::File_Manager **this)
{
  vp::vx::database::v1::Database::~Database(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v22 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::database::v1::Database]", 30);
    v4 = v17;
    v5 = v17;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v17;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[62];
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(this + 488) == 1)
  {
    v12 = this[52];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = this[47];
    if (v13)
    {
      CFRelease(v13);
    }
  }

  __p[0] = this + 40;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = this + 37;
  std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](__p);
  v14 = this[36];
  this[36] = 0;
  if (v14)
  {
    vp::vx::database::v1::runtime::File_Manager::~File_Manager(v14);
    MEMORY[0x2743CBFA0]();
  }

  vp::vx::database::v1::runtime::File_Manager::~File_Manager(this + 27);
  v15 = this[26];
  this[26] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  vp::vx::database::v1::runtime::Data_Manager::~Data_Manager((this + 25));
  vp::Context::~Context((this + 1));
}

void sub_27261472C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 11;
      v7 = v4 - 11;
      v8 = v4 - 11;
      do
      {
        v9 = *v8;
        v8 -= 11;
        (*v9)(v7);
        v6 -= 11;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vp::vx::database::v1::syntax::Flag>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vp::vx::database::v1::syntax::Flag>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      CFRelease(v5);
    }
  }

  a1[1] = v2;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyOffset(apple::aiml::flatbuffers2::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Rule>(apple::aiml::flatbuffers2::Verifier *this, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  while (1)
  {
    v7 = a2[v4 + 1];
    v8 = &a2[v4] + v7;
    result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(this, v8 + 4);
    if (!result)
    {
      break;
    }

    v10 = v7 - *(v8 + 1);
    v11 = *(&a2[v4 + 1] + v10);
    if (v11 >= 5)
    {
      if (*(&a2[v4 + 2] + v10))
      {
        result = 0;
        v12 = *(this + 1);
        if (v12 < 5 || v12 - 4 < &v6[v4] + v7 + *(&a2[v4 + 2] + v10) - *this)
        {
          break;
        }
      }
    }

    result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 6u);
    if (!result)
    {
      break;
    }

    if (v11 >= 7)
    {
      if (*(&a2[v4 + 2] + v10 + 2))
      {
        v13 = v7 + *(&a2[v4 + 2] + v10 + 2);
        result = vp::vx::database::v1::fbs::Condition::Verify((&a2[v4 + 1] + v13 + *(&a2[v4 + 1] + v13)), this);
        if (!result)
        {
          break;
        }
      }
    }

    result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 8u);
    if (!result)
    {
      break;
    }

    v14 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v14 + 2) >= 9u)
    {
      v15 = *(v14 + 6);
      if (v15)
      {
        result = vp::vx::database::v1::fbs::Branch::Verify((&a2[v4 + 1] + v7 + v15 + *(&a2[v4 + 1] + v7 + v15)), this);
        if (!result)
        {
          break;
        }
      }
    }

    result = apple::aiml::flatbuffers2::Table::VerifyOffset((v8 + 4), this, 0xAu);
    if (!result)
    {
      break;
    }

    v16 = &a2[v4] + v7 - *(v8 + 1);
    if (*(v16 + 2) >= 0xBu)
    {
      v17 = *(v16 + 7);
      if (v17)
      {
        if ((vp::vx::database::v1::fbs::Branch::Verify((&a2[v4 + 1] + v7 + v17 + *(&a2[v4 + 1] + v7 + v17)), this) & 1) == 0)
        {
          return 0;
        }
      }
    }

    --*(this + 4);
    ++v5;
    ++v4;
    if (v5 >= *a2)
    {
      return 1;
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::String::Verify(vp::vx::database::v1::fbs::plist::String *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::Object::Verify(vp::vx::database::v1::fbs::plist::Object *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  v6 = *v5;
  if (v6 >= 5)
  {
    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v5[2] - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  if (v6 < 7)
  {
    if (v6 < 5)
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  if (!v5[3])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = (this + v5[3] + *(this + v5[3]));
LABEL_12:
  if (!v5[2])
  {
    goto LABEL_41;
  }

  v9 = *(this + v5[2]);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      if (v8 && (vp::vx::database::v1::fbs::plist::Array::Verify(v8, a2) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v9 != 2)
      {
        v10 = v9 != 3 || v8 == 0;
        if (!v10 && !vp::vx::database::v1::fbs::plist::Data::Verify(v8, a2))
        {
          return 0;
        }

        goto LABEL_41;
      }

      if (v8 && !vp::vx::database::v1::fbs::conditions::Constant::Verify(v8, a2))
      {
        return 0;
      }
    }

LABEL_41:
    --*(a2 + 4);
    return 1;
  }

  if (v9 == 4)
  {
    if (v8 && (vp::vx::database::v1::fbs::plist::Dictionary::Verify(v8, a2) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (v9 == 5)
  {
    if (v8 && !vp::vx::database::v1::fbs::plist::Number::Verify(v8, a2))
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (v9 != 6 || v8 == 0)
  {
    goto LABEL_41;
  }

  result = vp::vx::database::v1::fbs::plist::String::Verify(v8, a2);
  if (result)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::plist::Array::Verify(vp::vx::database::v1::fbs::plist::Array *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::plist::Object>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::Data::Verify(vp::vx::database::v1::fbs::plist::Data *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 1uLL, 0)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::plist::Dictionary::Verify(vp::vx::database::v1::fbs::plist::Dictionary *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (vp::vx::database::v1::fbs::plist::String::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (!result)
        {
          return result;
        }

        v10 = *this;
        if (*(this - v10) < 7u)
        {
          goto LABEL_19;
        }

        if (*(this - v10 + 6))
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v10 = *this;
          if (*(this - v10) < 7u)
          {
            goto LABEL_19;
          }
        }

        v11 = *(this - v10 + 6);
        if (!v11)
        {
LABEL_19:
          v12 = 0;
        }

        else
        {
          v12 = (this + v11 + *(this + v11));
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::plist::Object>(a2, v12);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::plist::Number::Verify(vp::vx::database::v1::fbs::plist::Number *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 < 7)
        {
          if (v6 < 5)
          {
            goto LABEL_30;
          }

          v8 = 0;
        }

        else
        {
          v8 = v5[3];
          if (v5[3])
          {
            v8 += this + *(this + v8);
          }
        }

        if (v5[2])
        {
          v9 = *(this + v5[2]);
          if (v9 <= 3)
          {
            switch(v9)
            {
              case 1u:
                result = 0;
                v14 = *(a2 + 1);
                if (v14 < 2)
                {
                  return result;
                }

                v11 = v8 - *a2;
                v12 = v14 - 1;
                break;
              case 2u:
                result = 0;
                v15 = *(a2 + 1);
                if (v15 < 3)
                {
                  return result;
                }

                v11 = v8 - *a2;
                v12 = v15 - 2;
                break;
              case 3u:
                goto LABEL_23;
              default:
                goto LABEL_30;
            }

LABEL_29:
            if (v12 < v11)
            {
              return result;
            }

            goto LABEL_30;
          }

          switch(v9)
          {
            case 4u:
              goto LABEL_21;
            case 5u:
LABEL_23:
              result = 0;
              v13 = *(a2 + 1);
              if (v13 < 5)
              {
                return result;
              }

              v11 = v8 - *a2;
              v12 = v13 - 4;
              goto LABEL_29;
            case 6u:
LABEL_21:
              result = 0;
              v10 = *(a2 + 1);
              if (v10 < 9)
              {
                return result;
              }

              v11 = v8 - *a2;
              v12 = v10 - 8;
              goto LABEL_29;
          }
        }

LABEL_30:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::plist::Object>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = vp::vx::database::v1::fbs::plist::Object::Verify((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::Condition::Verify(vp::vx::database::v1::fbs::Condition *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  v6 = *v5;
  if (v6 >= 5)
  {
    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 3 || v7 - 2 < this + v5[2] - *a2)
      {
        return result;
      }
    }

    if (v6 >= 7)
    {
      if (v5[3])
      {
        result = 0;
        v8 = *(a2 + 1);
        if (v8 < 2 || v8 - 1 < this + v5[3] - *a2)
        {
          return result;
        }
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  if (v6 < 9)
  {
    if (v6 < 7)
    {
      goto LABEL_59;
    }

    goto LABEL_15;
  }

  if (!v5[4])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = (this + v5[4] + *(this + v5[4]));
LABEL_16:
  if (!v5[3])
  {
    goto LABEL_59;
  }

  v10 = *(this + v5[3]);
  if (v10 <= 4)
  {
    if (*(this + v5[3]) > 2u)
    {
      if (v10 == 3)
      {
        if (v9 && !vp::vx::database::v1::fbs::conditions::Match_All::Verify(v9, a2))
        {
          return 0;
        }
      }

      else
      {
        v13 = v10 != 4 || v9 == 0;
        if (!v13 && !vp::vx::database::v1::fbs::conditions::Match_All::Verify(v9, a2))
        {
          return 0;
        }
      }
    }

    else
    {
      if (v10 != 1)
      {
        v11 = v10 != 2 || v9 == 0;
        if (!v11 && !vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(v9, a2))
        {
          return 0;
        }

        goto LABEL_59;
      }

      if (v9 && !vp::vx::database::v1::fbs::conditions::Constant::Verify(v9, a2))
      {
        return 0;
      }
    }

LABEL_59:
    --*(a2 + 4);
    return 1;
  }

  if (*(this + v5[3]) <= 6u)
  {
    if (v10 == 5)
    {
      if (v9 && !vp::vx::database::v1::fbs::conditions::Match_Predicate::Verify(v9, a2))
      {
        return 0;
      }
    }

    else
    {
      v12 = v10 != 6 || v9 == 0;
      if (!v12 && !vp::vx::database::v1::fbs::conditions::Match::Verify(v9, a2))
      {
        return 0;
      }
    }

    goto LABEL_59;
  }

  if (v10 == 7)
  {
    if (v9 && (vp::vx::database::v1::fbs::conditions::When::Verify(v9, a2) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v10 != 8 || v9 == 0)
  {
    goto LABEL_59;
  }

  result = vp::vx::database::v1::fbs::conditions::When_Not::Verify(v9, a2);
  if (result)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::Branch::Verify(vp::vx::database::v1::fbs::Branch *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Decision::Verify((this + v6 + *(this + v6)), a2), result))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_13;
          }

          if (*(this - v7 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_13;
            }
          }

          v8 = *(this - v7 + 6);
          if (!v8)
          {
LABEL_13:
            v9 = 0;
          }

          else
          {
            v9 = (this + v8 + *(this + v8));
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Rule>(a2, v9);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::Decision::Verify(vp::vx::database::v1::fbs::Decision *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  v6 = *v5;
  if (v6 >= 5)
  {
    if (v5[2])
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 3 || v7 - 2 < this + v5[2] - *a2)
      {
        return result;
      }
    }

    if (v6 >= 7)
    {
      if (v5[3])
      {
        result = 0;
        v8 = *(a2 + 1);
        if (v8 < 2 || v8 - 1 < this + v5[3] - *a2)
        {
          return result;
        }
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 8u);
  if (!result)
  {
    return result;
  }

  if (v6 < 9)
  {
    if (v6 < 7)
    {
      goto LABEL_45;
    }

    goto LABEL_15;
  }

  if (!v5[4])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = (this + v5[4] + *(this + v5[4]));
LABEL_16:
  if (!v5[3])
  {
    goto LABEL_45;
  }

  v10 = *(this + v5[3]);
  if (v10 <= 3)
  {
    if (v10 == 1)
    {
      if (v9 && !vp::vx::database::v1::fbs::conditions::Constant::Verify(v9, a2))
      {
        return 0;
      }
    }

    else
    {
      if (v10 != 2)
      {
        v11 = v10 != 3 || v9 == 0;
        if (!v11 && !vp::vx::database::v1::fbs::decisions::Override_Property_List::Verify(v9, a2))
        {
          return 0;
        }

        goto LABEL_45;
      }

      if (v9 && !vp::vx::database::v1::fbs::decisions::Load_Property_List::Verify(v9, a2))
      {
        return 0;
      }
    }

LABEL_45:
    --*(a2 + 4);
    return 1;
  }

  if (v10 == 4)
  {
    if (v9 && !vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(v9, a2))
    {
      return 0;
    }

    goto LABEL_45;
  }

  if (v10 == 5)
  {
    if (v9 && !vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(v9, a2))
    {
      return 0;
    }

    goto LABEL_45;
  }

  if (v10 != 6 || v9 == 0)
  {
    goto LABEL_45;
  }

  result = vp::vx::database::v1::fbs::decisions::Then::Verify(v9, a2);
  if (result)
  {
    goto LABEL_45;
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::decisions::Load_Property_List::Verify(vp::vx::database::v1::fbs::decisions::Load_Property_List *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::decisions::Override_Property_List::Verify(vp::vx::database::v1::fbs::decisions::Override_Property_List *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = (v7 + 1);
        while (apple::aiml::flatbuffers2::Verifier::VerifyString(a2, &v9[*v9]))
        {
          ++v8;
          v9 += 4;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v10 = (this - *this);
          if (*v10 < 7u || (v11 = v10[3]) == 0 || (result = vp::vx::database::v1::fbs::plist::Object::Verify((this + v11 + *(this + v11)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::decisions::Then::Verify(vp::vx::database::v1::fbs::decisions::Then *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Decision::Verify((this + v6 + *(this + v6)), a2), result))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_24;
          }

          if (*(this - v7 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_24;
            }
          }

          v8 = *(this - v7 + 6);
          if (v8 && (v9 = (this + v8), v10 = *v9, *(v9 + v10)))
          {
            v11 = 0;
            v12 = v9 + 1;
            v13 = v9;
            while (1)
            {
              v14 = v13 + v10;
              v16 = v13 + v10 + 4;
              v15 = *v16;
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, &v16[v15]);
              if (!result)
              {
                break;
              }

              v17 = v15 - *&v14[v15 + 4];
              v18 = *&v14[v17 + 4];
              if (v18 >= 5)
              {
                if (*(v13 + v10 + v17 + 8))
                {
                  result = 0;
                  v19 = *(a2 + 1);
                  if (v19 < 2 || v19 - 1 < v12 + v10 + v15 + *(v13 + v10 + v17 + 8) - *a2)
                  {
                    break;
                  }
                }
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(&v16[v15], a2, 6u);
              if (!result)
              {
                break;
              }

              if (v18 >= 7)
              {
                if (*(v13 + v10 + v17 + 10))
                {
                  v20 = v15 + *(v13 + v10 + v17 + 10);
                  if ((vp::vx::database::v1::fbs::Decision::Verify((v13 + v10 + v20 + *(v13 + v10 + v20 + 4) + 4), a2) & 1) == 0)
                  {
                    return 0;
                  }
                }
              }

              --*(a2 + 4);
              ++v11;
              ++v12;
              ++v13;
              if (v11 >= *(v9 + v10))
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Constant::Verify(vp::vx::database::v1::fbs::conditions::Constant *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Feature_Enabled::Verify(vp::vx::database::v1::fbs::conditions::Feature_Enabled *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Match_All::Verify(vp::vx::database::v1::fbs::conditions::Match_All *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Constraint>(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Match_Predicate::Verify(vp::vx::database::v1::fbs::conditions::Match_Predicate *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::conditions::Match::Verify(vp::vx::database::v1::fbs::conditions::Match *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Constraint::Verify((this + v6 + *(this + v6)), a2)))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::conditions::When::Verify(vp::vx::database::v1::fbs::conditions::When *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Condition::Verify((this + v6 + *(this + v6)), a2), result))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          if (*(this - v7) < 7u)
          {
            goto LABEL_24;
          }

          if (*(this - v7 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v7 + 6) + *(this + *(this - v7 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v7 = *this;
            if (*(this - v7) < 7u)
            {
              goto LABEL_24;
            }
          }

          v8 = *(this - v7 + 6);
          if (v8 && (v9 = (this + v8), v10 = *v9, *(v9 + v10)))
          {
            v11 = 0;
            v12 = v9 + 1;
            v13 = v9;
            while (1)
            {
              v14 = v13 + v10;
              v16 = v13 + v10 + 4;
              v15 = *v16;
              result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, &v16[v15]);
              if (!result)
              {
                break;
              }

              v17 = v15 - *&v14[v15 + 4];
              v18 = *&v14[v17 + 4];
              if (v18 >= 5)
              {
                if (*(v13 + v10 + v17 + 8))
                {
                  result = 0;
                  v19 = *(a2 + 1);
                  if (v19 < 2 || v19 - 1 < v12 + v10 + v15 + *(v13 + v10 + v17 + 8) - *a2)
                  {
                    break;
                  }
                }
              }

              result = apple::aiml::flatbuffers2::Table::VerifyOffsetRequired(&v16[v15], a2, 6u);
              if (!result)
              {
                break;
              }

              if (v18 >= 7)
              {
                if (*(v13 + v10 + v17 + 10))
                {
                  v20 = v15 + *(v13 + v10 + v17 + 10);
                  if ((vp::vx::database::v1::fbs::Condition::Verify((v13 + v10 + v20 + *(v13 + v10 + v20 + 4) + 4), a2) & 1) == 0)
                  {
                    return 0;
                  }
                }
              }

              --*(a2 + 4);
              ++v11;
              ++v12;
              ++v13;
              if (v11 >= *(v9 + v10))
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vp::vx::database::v1::fbs::conditions::When_Not::Verify(vp::vx::database::v1::fbs::conditions::When_Not *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = vp::vx::database::v1::fbs::Condition::Verify((this + v6 + *(this + v6)), a2), result))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL vp::vx::database::v1::fbs::Constraint::Verify(vp::vx::database::v1::fbs::Constraint *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = *(this - v5);
      if (v6 < 5)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = vp::vx::database::v1::fbs::plist::String::Verify((this + *(this - v5 + 4) + *(this + *(this - v5 + 4))), a2);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        v7 = -v5;
        v6 = *(this - v5);
      }

      else
      {
        v7 = -v5;
      }

      if (v6 < 7 || (v8 = *(this + v7 + 6), !*(this + v7 + 6)) || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v8 - *a2)
      {
LABEL_12:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
        if (result)
        {
          v10 = (this - v5);
          if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = vp::vx::database::v1::fbs::plist::Object::Verify((this + v11 + *(this + v11)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Constraint>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = vp::vx::database::v1::fbs::Constraint::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, a2);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__parent_path(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_272616850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::database::v1::syntax::Conditions::Conditions(uint64_t this, const vp::Context *a2, char a3)
{
  *this = &unk_2881B6420;
  *(this + 8) = &unk_2881B6450;
  *(this + 16) = &unk_2881B9838;
  *(this + 24) = &unk_2881B9898;
  *(this + 32) = &unk_2881B98F8;
  *(this + 40) = &unk_2881B9920;
  *(this + 48) = &unk_2881B7618;
  *(this + 56) = &unk_2881C6360;
  *(this + 64) = &unk_2881C6448;
  *(this + 72) = &unk_2881B6478;
  *(this + 80) = a3;
  *(this + 88) = &unk_2881B6478;
  *(this + 96) = a2;
  return this;
}

void *vp::vx::database::v1::syntax::Constraints::Constraints(void *a1, uint64_t a2)
{
  *a1 = &unk_2881B64A0;
  a1[1] = &unk_2881B64D0;
  a1[2] = a2;
  CFRetain(@"operation_mode");
  v3 = CFGetTypeID(@"operation_mode");
  if (v3 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 3, @"operation_mode", a1[2]);
    CFRelease(@"operation_mode");
  }

  else
  {
    CFRelease(@"operation_mode");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 3, 0, a1[2]);
  }

  CFRetain(@"chat_flavor");
  v4 = CFGetTypeID(@"chat_flavor");
  if (v4 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 6, @"chat_flavor", a1[2]);
    CFRelease(@"chat_flavor");
  }

  else
  {
    CFRelease(@"chat_flavor");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 6, 0, a1[2]);
  }

  CFRetain(@"input_port_type");
  v5 = CFGetTypeID(@"input_port_type");
  if (v5 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 9, @"input_port_type", a1[2]);
    CFRelease(@"input_port_type");
  }

  else
  {
    CFRelease(@"input_port_type");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 9, 0, a1[2]);
  }

  CFRetain(@"input_port_sub_type_legacy");
  v6 = CFGetTypeID(@"input_port_sub_type_legacy");
  if (v6 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 12, @"input_port_sub_type_legacy");
    CFRelease(@"input_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"input_port_sub_type_legacy");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 12, 0);
  }

  CFRetain(@"input_hw_transport_type");
  v7 = CFGetTypeID(@"input_hw_transport_type");
  if (v7 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 14, @"input_hw_transport_type");
    CFRelease(@"input_hw_transport_type");
  }

  else
  {
    CFRelease(@"input_hw_transport_type");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 14, 0);
  }

  CFRetain(@"input_hw_bluetooth_device_category");
  v8 = CFGetTypeID(@"input_hw_bluetooth_device_category");
  if (v8 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 16, @"input_hw_bluetooth_device_category");
    CFRelease(@"input_hw_bluetooth_device_category");
  }

  else
  {
    CFRelease(@"input_hw_bluetooth_device_category");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 16, 0);
  }

  CFRetain(@"input_hw_data_source");
  v9 = CFGetTypeID(@"input_hw_data_source");
  if (v9 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 18, @"input_hw_data_source");
    CFRelease(@"input_hw_data_source");
  }

  else
  {
    CFRelease(@"input_hw_data_source");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 18, 0);
  }

  CFRetain(@"output_port_type");
  v10 = CFGetTypeID(@"output_port_type");
  if (v10 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 20, @"output_port_type", a1[2]);
    CFRelease(@"output_port_type");
  }

  else
  {
    CFRelease(@"output_port_type");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 20, 0, a1[2]);
  }

  CFRetain(@"output_port_sub_type_legacy");
  v11 = CFGetTypeID(@"output_port_sub_type_legacy");
  if (v11 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 23, @"output_port_sub_type_legacy");
    CFRelease(@"output_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_sub_type_legacy");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 23, 0);
  }

  CFRetain(@"output_port_endpoint_type_legacy");
  v12 = CFGetTypeID(@"output_port_endpoint_type_legacy");
  if (v12 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 25, @"output_port_endpoint_type_legacy");
    CFRelease(@"output_port_endpoint_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_endpoint_type_legacy");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 25, 0);
  }

  CFRetain(@"output_port_is_apple_bluetooth_product");
  v13 = CFGetTypeID(@"output_port_is_apple_bluetooth_product");
  if (v13 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 27), @"output_port_is_apple_bluetooth_product", 1);
    CFRelease(@"output_port_is_apple_bluetooth_product");
  }

  else
  {
    CFRelease(@"output_port_is_apple_bluetooth_product");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 27), 0, 1);
  }

  CFRetain(@"output_port_is_apple_bluetooth_product");
  v14 = CFGetTypeID(@"output_port_is_apple_bluetooth_product");
  if (v14 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 30), @"output_port_is_apple_bluetooth_product", 0);
    CFRelease(@"output_port_is_apple_bluetooth_product");
  }

  else
  {
    CFRelease(@"output_port_is_apple_bluetooth_product");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 30), 0, 0);
  }

  CFRetain(@"output_hw_transport_type");
  v15 = CFGetTypeID(@"output_hw_transport_type");
  if (v15 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 33, @"output_hw_transport_type");
    CFRelease(@"output_hw_transport_type");
  }

  else
  {
    CFRelease(@"output_hw_transport_type");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 33, 0);
  }

  CFRetain(@"output_hw_bluetooth_device_category");
  v16 = CFGetTypeID(@"output_hw_bluetooth_device_category");
  if (v16 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 35, @"output_hw_bluetooth_device_category");
    CFRelease(@"output_hw_bluetooth_device_category");
  }

  else
  {
    CFRelease(@"output_hw_bluetooth_device_category");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 35, 0);
  }

  CFRetain(@"output_hw_data_source");
  v17 = CFGetTypeID(@"output_hw_data_source");
  if (v17 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 37, @"output_hw_data_source");
    CFRelease(@"output_hw_data_source");
  }

  else
  {
    CFRelease(@"output_hw_data_source");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 37, 0);
  }

  CFRetain(@"spatial_chat_is_enabled");
  v18 = CFGetTypeID(@"spatial_chat_is_enabled");
  if (v18 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 39), @"spatial_chat_is_enabled", 1);
    CFRelease(@"spatial_chat_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 39), 0, 1);
  }

  CFRetain(@"spatial_chat_is_enabled");
  v19 = CFGetTypeID(@"spatial_chat_is_enabled");
  if (v19 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 42), @"spatial_chat_is_enabled", 0);
    CFRelease(@"spatial_chat_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 42), 0, 0);
  }

  CFRetain(@"spatial_headtracking_is_enabled");
  v20 = CFGetTypeID(@"spatial_headtracking_is_enabled");
  if (v20 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 45), @"spatial_headtracking_is_enabled", 1);
    CFRelease(@"spatial_headtracking_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_headtracking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 45), 0, 1);
  }

  CFRetain(@"spatial_headtracking_is_enabled");
  v21 = CFGetTypeID(@"spatial_headtracking_is_enabled");
  if (v21 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 48), @"spatial_headtracking_is_enabled", 0);
    CFRelease(@"spatial_headtracking_is_enabled");
  }

  else
  {
    CFRelease(@"spatial_headtracking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 48), 0, 0);
  }

  CFRetain(@"media_chat_is_enabled");
  v22 = CFGetTypeID(@"media_chat_is_enabled");
  if (v22 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 51), @"media_chat_is_enabled", 1);
    CFRelease(@"media_chat_is_enabled");
  }

  else
  {
    CFRelease(@"media_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 51), 0, 1);
  }

  CFRetain(@"media_chat_is_enabled");
  v23 = CFGetTypeID(@"media_chat_is_enabled");
  if (v23 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 54), @"media_chat_is_enabled", 0);
    CFRelease(@"media_chat_is_enabled");
  }

  else
  {
    CFRelease(@"media_chat_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 54), 0, 0);
  }

  CFRetain(@"media_playback_on_external_device_is_enabled");
  v24 = CFGetTypeID(@"media_playback_on_external_device_is_enabled");
  if (v24 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 57), @"media_playback_on_external_device_is_enabled", 1);
    CFRelease(@"media_playback_on_external_device_is_enabled");
  }

  else
  {
    CFRelease(@"media_playback_on_external_device_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 57), 0, 1);
  }

  CFRetain(@"media_playback_on_external_device_is_enabled");
  v25 = CFGetTypeID(@"media_playback_on_external_device_is_enabled");
  if (v25 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 60), @"media_playback_on_external_device_is_enabled", 0);
    CFRelease(@"media_playback_on_external_device_is_enabled");
  }

  else
  {
    CFRelease(@"media_playback_on_external_device_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 60), 0, 0);
  }

  CFRetain(@"stereo_to_mono_mix_is_enabled");
  v26 = CFGetTypeID(@"stereo_to_mono_mix_is_enabled");
  if (v26 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 63), @"stereo_to_mono_mix_is_enabled", 1);
    CFRelease(@"stereo_to_mono_mix_is_enabled");
  }

  else
  {
    CFRelease(@"stereo_to_mono_mix_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 63), 0, 1);
  }

  CFRetain(@"stereo_to_mono_mix_is_enabled");
  v27 = CFGetTypeID(@"stereo_to_mono_mix_is_enabled");
  if (v27 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 66), @"stereo_to_mono_mix_is_enabled", 0);
    CFRelease(@"stereo_to_mono_mix_is_enabled");
  }

  else
  {
    CFRelease(@"stereo_to_mono_mix_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 66), 0, 0);
  }

  CFRetain(@"voice_processing_is_bypassed");
  v28 = CFGetTypeID(@"voice_processing_is_bypassed");
  if (v28 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 69), @"voice_processing_is_bypassed", 1);
    CFRelease(@"voice_processing_is_bypassed");
  }

  else
  {
    CFRelease(@"voice_processing_is_bypassed");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 69), 0, 1);
  }

  CFRetain(@"voice_processing_is_bypassed");
  v29 = CFGetTypeID(@"voice_processing_is_bypassed");
  if (v29 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 72), @"voice_processing_is_bypassed", 0);
    CFRelease(@"voice_processing_is_bypassed");
  }

  else
  {
    CFRelease(@"voice_processing_is_bypassed");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 72), 0, 0);
  }

  CFRetain(@"voice_processing_is_disabled");
  v30 = CFGetTypeID(@"voice_processing_is_disabled");
  if (v30 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 75), @"voice_processing_is_disabled", 1);
    CFRelease(@"voice_processing_is_disabled");
  }

  else
  {
    CFRelease(@"voice_processing_is_disabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 75), 0, 1);
  }

  CFRetain(@"voice_processing_is_disabled");
  v31 = CFGetTypeID(@"voice_processing_is_disabled");
  if (v31 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 78), @"voice_processing_is_disabled", 0);
    CFRelease(@"voice_processing_is_disabled");
  }

  else
  {
    CFRelease(@"voice_processing_is_disabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 78), 0, 0);
  }

  CFRetain(@"voice_processing_is_done_in_hardware");
  v32 = CFGetTypeID(@"voice_processing_is_done_in_hardware");
  if (v32 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 81), @"voice_processing_is_done_in_hardware", 1);
    CFRelease(@"voice_processing_is_done_in_hardware");
  }

  else
  {
    CFRelease(@"voice_processing_is_done_in_hardware");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 81), 0, 1);
  }

  CFRetain(@"voice_processing_is_done_in_hardware");
  v33 = CFGetTypeID(@"voice_processing_is_done_in_hardware");
  if (v33 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 84), @"voice_processing_is_done_in_hardware", 0);
    CFRelease(@"voice_processing_is_done_in_hardware");
  }

  else
  {
    CFRelease(@"voice_processing_is_done_in_hardware");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 84), 0, 0);
  }

  CFRetain(@"spatial_mode");
  v34 = CFGetTypeID(@"spatial_mode");
  if (v34 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 87, @"spatial_mode");
    CFRelease(@"spatial_mode");
  }

  else
  {
    CFRelease(@"spatial_mode");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 87, 0);
  }

  CFRetain(@"hardware_mic_input_channel_count");
  v35 = CFGetTypeID(@"hardware_mic_input_channel_count");
  if (v35 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 89, @"hardware_mic_input_channel_count");
    CFRelease(@"hardware_mic_input_channel_count");
  }

  else
  {
    CFRelease(@"hardware_mic_input_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 89, 0);
  }

  CFRetain(@"hardware_ref_input_channel_count");
  v36 = CFGetTypeID(@"hardware_ref_input_channel_count");
  if (v36 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 91, @"hardware_ref_input_channel_count");
    CFRelease(@"hardware_ref_input_channel_count");
  }

  else
  {
    CFRelease(@"hardware_ref_input_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 91, 0);
  }

  CFRetain(@"client_nev_output_channel_count");
  v37 = CFGetTypeID(@"client_nev_output_channel_count");
  if (v37 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 93, @"client_nev_output_channel_count");
    CFRelease(@"client_nev_output_channel_count");
  }

  else
  {
    CFRelease(@"client_nev_output_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 93, 0);
  }

  CFRetain(@"client_fev_input_channel_count");
  v38 = CFGetTypeID(@"client_fev_input_channel_count");
  if (v38 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 95, @"client_fev_input_channel_count");
    CFRelease(@"client_fev_input_channel_count");
  }

  else
  {
    CFRelease(@"client_fev_input_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 95, 0);
  }

  CFRetain(@"hardware_mix_output_channel_count");
  v39 = CFGetTypeID(@"hardware_mix_output_channel_count");
  if (v39 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 97, @"hardware_mix_output_channel_count");
    CFRelease(@"hardware_mix_output_channel_count");
  }

  else
  {
    CFRelease(@"hardware_mix_output_channel_count");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 97, 0);
  }

  CFRetain(@"vocoder_sample_rate");
  v40 = CFGetTypeID(@"vocoder_sample_rate");
  if (v40 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 99, @"vocoder_sample_rate");
    CFRelease(@"vocoder_sample_rate");
  }

  else
  {
    CFRelease(@"vocoder_sample_rate");
    vp::vx::database::v1::syntax::Constraints::Number::Number(a1 + 99, 0);
  }

  CFRetain(@"vocoder_type");
  v41 = CFGetTypeID(@"vocoder_type");
  if (v41 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 101, @"vocoder_type");
    CFRelease(@"vocoder_type");
  }

  else
  {
    CFRelease(@"vocoder_type");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 101, 0);
  }

  CFRetain(@"tap_stream_is_enabled");
  v42 = CFGetTypeID(@"tap_stream_is_enabled");
  if (v42 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 103), @"tap_stream_is_enabled", 1);
    CFRelease(@"tap_stream_is_enabled");
  }

  else
  {
    CFRelease(@"tap_stream_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 103), 0, 1);
  }

  CFRetain(@"tap_stream_is_enabled");
  v43 = CFGetTypeID(@"tap_stream_is_enabled");
  if (v43 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 106), @"tap_stream_is_enabled", 0);
    CFRelease(@"tap_stream_is_enabled");
  }

  else
  {
    CFRelease(@"tap_stream_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 106), 0, 0);
  }

  CFRetain(@"other_audio_advanced_ducking_is_enabled");
  v44 = CFGetTypeID(@"other_audio_advanced_ducking_is_enabled");
  if (v44 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 109), @"other_audio_advanced_ducking_is_enabled", 1);
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
  }

  else
  {
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 109), 0, 1);
  }

  CFRetain(@"other_audio_advanced_ducking_is_enabled");
  v45 = CFGetTypeID(@"other_audio_advanced_ducking_is_enabled");
  if (v45 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 112), @"other_audio_advanced_ducking_is_enabled", 0);
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
  }

  else
  {
    CFRelease(@"other_audio_advanced_ducking_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 112), 0, 0);
  }

  CFRetain(@"is_in_emergency_call");
  v46 = CFGetTypeID(@"is_in_emergency_call");
  if (v46 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 115), @"is_in_emergency_call", 1);
    CFRelease(@"is_in_emergency_call");
  }

  else
  {
    CFRelease(@"is_in_emergency_call");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 115), 0, 1);
  }

  CFRetain(@"is_in_emergency_call");
  v47 = CFGetTypeID(@"is_in_emergency_call");
  if (v47 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 118), @"is_in_emergency_call", 0);
    CFRelease(@"is_in_emergency_call");
  }

  else
  {
    CFRelease(@"is_in_emergency_call");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 118), 0, 0);
  }

  CFRetain(@"virtual_audio_plugin_mode");
  v48 = CFGetTypeID(@"virtual_audio_plugin_mode");
  if (v48 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 121, @"virtual_audio_plugin_mode");
    CFRelease(@"virtual_audio_plugin_mode");
  }

  else
  {
    CFRelease(@"virtual_audio_plugin_mode");
    vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(a1 + 121, 0);
  }

  CFRetain(@"offload_airpods_noise_suppression_is_enabled");
  v49 = CFGetTypeID(@"offload_airpods_noise_suppression_is_enabled");
  if (v49 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 123), @"offload_airpods_noise_suppression_is_enabled", 1);
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
  }

  else
  {
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 123), 0, 1);
  }

  CFRetain(@"offload_airpods_noise_suppression_is_enabled");
  v50 = CFGetTypeID(@"offload_airpods_noise_suppression_is_enabled");
  if (v50 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 126), @"offload_airpods_noise_suppression_is_enabled", 0);
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
  }

  else
  {
    CFRelease(@"offload_airpods_noise_suppression_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 126), 0, 0);
  }

  CFRetain(@"automatic_mic_mode_is_enabled");
  v51 = CFGetTypeID(@"automatic_mic_mode_is_enabled");
  if (v51 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 129), @"automatic_mic_mode_is_enabled", 1);
    CFRelease(@"automatic_mic_mode_is_enabled");
  }

  else
  {
    CFRelease(@"automatic_mic_mode_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 129), 0, 1);
  }

  CFRetain(@"automatic_mic_mode_is_enabled");
  v52 = CFGetTypeID(@"automatic_mic_mode_is_enabled");
  if (v52 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 132), @"automatic_mic_mode_is_enabled", 0);
    CFRelease(@"automatic_mic_mode_is_enabled");
  }

  else
  {
    CFRelease(@"automatic_mic_mode_is_enabled");
    vp::vx::database::v1::syntax::Constraints::Boolean::Boolean((a1 + 132), 0, 0);
  }

  CFRetain(@"airpods_offload_mode");
  v53 = CFGetTypeID(@"airpods_offload_mode");
  if (v53 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 135, @"airpods_offload_mode", a1[2]);
    CFRelease(@"airpods_offload_mode");
  }

  else
  {
    CFRelease(@"airpods_offload_mode");
    vp::vx::database::v1::syntax::Constraints::String::String(a1 + 135, 0, a1[2]);
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::Decisions::Decisions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2881B6740;
  *(a1 + 8) = &unk_2881B6770;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = &unk_2881BEBD0;
  *(a1 + 40) = &unk_2881B97D8;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  CFRetain(&stru_2881C8580);
  v6 = CFGetTypeID(&stru_2881C8580);
  if (v6 == CFStringGetTypeID())
  {
    v7 = &stru_2881C8580;
  }

  else
  {
    CFRelease(&stru_2881C8580);
    v7 = 0;
  }

  *(a1 + 64) = &unk_2881B9750;
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 88) = v7;
  v21 = *(a1 + 16);
  CFRetain(@"Global");
  v8 = CFGetTypeID(@"Global");
  if (v8 == CFStringGetTypeID())
  {
    v9 = @"Global";
  }

  else
  {
    CFRelease(@"Global");
    v9 = 0;
  }

  *(a1 + 96) = &unk_2881B9750;
  *(a1 + 104) = v21;
  *(a1 + 120) = v9;
  v22 = *(a1 + 16);
  CFRetain(@"Uplink");
  v10 = CFGetTypeID(@"Uplink");
  if (v10 == CFStringGetTypeID())
  {
    v11 = @"Uplink";
  }

  else
  {
    CFRelease(@"Uplink");
    v11 = 0;
  }

  *(a1 + 128) = &unk_2881B9750;
  *(a1 + 136) = v22;
  *(a1 + 152) = v11;
  v23 = *(a1 + 16);
  CFRetain(@"Downlink");
  v12 = CFGetTypeID(@"Downlink");
  if (v12 == CFStringGetTypeID())
  {
    v13 = @"Downlink";
  }

  else
  {
    CFRelease(@"Downlink");
    v13 = 0;
  }

  *(a1 + 160) = &unk_2881B9750;
  *(a1 + 168) = v23;
  *(a1 + 184) = v13;
  v14 = *(a1 + 16);
  *(a1 + 192) = &unk_2881B9CF0;
  *(a1 + 200) = v14;
  *(a1 + 208) = &unk_2881BE228;
  *(a1 + 216) = v14;
  CFRetain(@"input_port_type_legacy");
  v15 = CFGetTypeID(@"input_port_type_legacy");
  if (v15 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 224), @"input_port_type_legacy", *(a1 + 16));
    CFRelease(@"input_port_type_legacy");
  }

  else
  {
    CFRelease(@"input_port_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 224), 0, *(a1 + 16));
  }

  CFRetain(@"input_port_sub_type_legacy");
  v16 = CFGetTypeID(@"input_port_sub_type_legacy");
  if (v16 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 248), @"input_port_sub_type_legacy", *(a1 + 16));
    CFRelease(@"input_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"input_port_sub_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 248), 0, *(a1 + 16));
  }

  CFRetain(@"output_port_type_legacy");
  v17 = CFGetTypeID(@"output_port_type_legacy");
  if (v17 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 272), @"output_port_type_legacy", *(a1 + 16));
    CFRelease(@"output_port_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 272), 0, *(a1 + 16));
  }

  CFRetain(@"output_port_sub_type_legacy");
  v18 = CFGetTypeID(@"output_port_sub_type_legacy");
  if (v18 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 296), @"output_port_sub_type_legacy", *(a1 + 16));
    CFRelease(@"output_port_sub_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_sub_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 296), 0, *(a1 + 16));
  }

  CFRetain(@"output_port_endpoint_type_legacy");
  v19 = CFGetTypeID(@"output_port_endpoint_type_legacy");
  if (v19 == CFStringGetTypeID())
  {
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 320), @"output_port_endpoint_type_legacy", *(a1 + 16));
    CFRelease(@"output_port_endpoint_type_legacy");
  }

  else
  {
    CFRelease(@"output_port_endpoint_type_legacy");
    vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser((a1 + 320), 0, *(a1 + 16));
  }

  return a1;
}

uint64_t vp::vx::database::v1::syntax::Flags::Flags(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881B76F0;
  *(a1 + 8) = &unk_2881B7720;
  *(a1 + 16) = a2;
  CFRetain(@"enable_physical_device_id_fix");
  v3 = CFGetTypeID(@"enable_physical_device_id_fix");
  if (v3 == CFStringGetTypeID())
  {
    *(a1 + 24) = &unk_2881B76C8;
    CFRetain(@"enable_physical_device_id_fix");
    *(a1 + 32) = @"enable_physical_device_id_fix";
    *(a1 + 40) = 1;
    CFRelease(@"enable_physical_device_id_fix");
  }

  else
  {
    CFRelease(@"enable_physical_device_id_fix");
    *(a1 + 24) = &unk_2881B76C8;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void *std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_272618B4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_272618E30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::database::v1::syntax::Flags::~Flags(vp::vx::database::v1::syntax::Flags *this)
{
  *this = &unk_2881B76F0;
  *(this + 1) = &unk_2881B7720;
  v1 = *(this + 4);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_2881B76F0;
  *(this + 1) = &unk_2881B7720;
  v1 = *(this + 4);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::database::v1::syntax::Decisions::~Decisions(vp::vx::database::v1::syntax::Decisions *this)
{
  v2 = *(this + 41);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 35);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 29);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 19);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 11);
  if (v10)
  {
    CFRelease(v10);
  }
}

{
  vp::vx::database::v1::syntax::Decisions::~Decisions(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x2743CBA00](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((v3 + 320));
  *(v3 + 320) = v5;
  *(v3 + 336) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

void std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 88;
      v6 = v3 - 88;
      v7 = (v3 - 88);
      do
      {
        v8 = *v7;
        v7 -= 11;
        (*v8)(v6);
        v5 -= 88;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_3>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B65D0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Flag>::__vdeallocate((v3 + 296));
  *(v3 + 296) = v5;
  *(v3 + 312) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

void std::vector<vp::vx::database::v1::syntax::Flag>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<vp::vx::database::v1::syntax::Flag>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_2>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6588;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Rule>::__vdeallocate((v3 + 320));
  *(v3 + 320) = v5;
  *(v3 + 336) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_1>,void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6540;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v5 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a1 + 8);
  std::vector<vp::vx::database::v1::syntax::Flag>::__vdeallocate((v3 + 296));
  *(v3 + 296) = v5;
  *(v3 + 312) = v2;
  memset(v6, 0, sizeof(v6));
  v7 = v6;
  std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](&v7);
  return result;
}

uint64_t std::__function::__func<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0,std::allocator<vp::vx::database::v1::Database::load(unsigned int,std::__fs::filesystem::path const&)::$_0>,void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B64F8;
  a2[1] = v2;
  return result;
}

void *vp::vx::database::v1::syntax::decisions::Replace_4CC::Parser::Parser(void *a1, CFTypeRef cf, uint64_t a3)
{
  *a1 = &unk_2881BE1D0;
  if (cf)
  {
    CFRetain(cf);
  }

  a1[1] = cf;
  a1[2] = a3;
  return a1;
}

vp::vx::database::v1::runtime::File_Manager ***vp::vx::database::v1::load(_OWORD *a1, uint64_t a2, uint64_t a3, const Context *a4)
{
  v202 = *MEMORY[0x277D85DE8];
  *&v163 = 0;
  *(&v163 + 1) = a2;
  v164 = xmmword_272756650;
  v7 = (*(*a2 + 16))(a2, 504, 8);
  *v7 = &unk_2881B63C0;
  v8 = vp::Context::Context((v7 + 8), a4);
  *(v7 + 200) = &unk_2881B6358;
  log = vp::get_log(v8);
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    log_context_info = vp::get_log_context_info(&__p, v7 + 200, "vp::vx::database::v1::runtime::Data_Manager]", 43);
    v12 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v13 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    size = __p.__pn_.__r_.__value_.__l.__size_;
    v15 = vp::get_log(log_context_info);
    v10 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v13 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = size;
      }

      p_p = __p.__pn_.__r_.__value_.__r.__words[0];
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      if (v16)
      {
        v18 = " ";
      }

      else
      {
        v18 = "";
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = p_p;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v18;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%s%screated", buf, 0x16u);
      LOBYTE(v13) = *(&__p.__pn_.__r_.__value_.__s + 23);
    }

    if ((v13 & 0x80) != 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  *(v7 + 208) = 0;
  *(v7 + 216) = &unk_2881B7678;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0u;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 0;
  *(v7 + 280) = 1065353216;
  v19 = vp::get_log(v10);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    v21 = vp::get_log_context_info(&__p, v7 + 216, "vp::vx::database::v1::runtime::File_Manager]", 43);
    v22 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v23 = __p.__pn_.__r_.__value_.__l.__size_;
    v24 = vp::get_log(v21);
    v20 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if ((v22 & 0x80u) == 0)
      {
        v25 = v22;
      }

      else
      {
        v25 = v23;
      }

      v26 = __p.__pn_.__r_.__value_.__r.__words[0];
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      if (v25)
      {
        v27 = " ";
      }

      else
      {
        v27 = "";
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v26;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v27;
      _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%s%screated", buf, 0x16u);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  *(v7 + 488) = 0;
  *(v7 + 496) = 0;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0u;
  *(v7 + 320) = 0u;
  *(v7 + 329) = 0u;
  v28 = vp::get_log(v20);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = vp::get_log_context_info(&__p, v7, "vp::vx::database::v1::Database]", 30);
    v30 = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v31 = __p.__pn_.__r_.__value_.__l.__size_;
    v32 = vp::get_log(v29);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if ((v30 & 0x80u) == 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = v31;
      }

      v34 = __p.__pn_.__r_.__value_.__r.__words[0];
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__p;
      }

      if (v33)
      {
        v35 = " ";
      }

      else
      {
        v35 = "";
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v34;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v35;
      _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_DEFAULT, "%s%screated", buf, 0x16u);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  v36 = std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](&v163, v7);
  if (v163)
  {
    v37 = v163;
    v38 = vp::get_log(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = vp::get_log_context_info(buf, v37, "vp::vx::database::v1::Database]", 30);
      v40 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v41 = buf[0].__r_.__value_.__l.__size_;
      v42 = vp::get_log(v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        if ((v40 & 0x80u) == 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = v41;
        }

        v44 = buf[0].__r_.__value_.__r.__words[0];
        if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = buf;
        }

        if (v43)
        {
          v45 = " ";
        }

        else
        {
          v45 = "";
        }

        v46 = *(a3 + 23);
        v47 = *a3;
        LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__pn_.__r_.__value_.__r.__words + 4) = v44;
        if (v46 >= 0)
        {
          v48 = a3;
        }

        else
        {
          v48 = v47;
        }

        WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v45;
        HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
        v196 = v48;
        _os_log_impl(&dword_2724B4000, v42, OS_LOG_TYPE_DEBUG, "%s%swill load %s file", &__p, 0x20u);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    v162 = a1;
    std::__fs::filesystem::path::parent_path[abi:ne200100](&v173, a3);
    if (*(v37 + 247) < 0)
    {
      operator delete(*(v37 + 224));
    }

    *(v37 + 224) = v173;
    *(v37 + 240) = v174;
    HIBYTE(v174) = 0;
    LOBYTE(v173) = 0;
    std::__fs::filesystem::path::extension[abi:ne200100](&__p, a3);
    std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(buf, ".xml");
    v203.__data_ = buf;
    v49 = std::__fs::filesystem::operator==[abi:ne200100](&__p, v203);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (v49)
    {
      v50 = xmlNewParserCtxt();
      v180[0] = v50;
      if (*(a3 + 23) >= 0)
      {
        v51 = a3;
      }

      else
      {
        v51 = *a3;
      }

      __p.__pn_.__r_.__value_.__r.__words[0] = xmlCtxtReadFile(v50, v51, 0, 2048);
      operator new();
    }

    std::__fs::filesystem::path::extension[abi:ne200100](&__p, a3);
    std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(buf, ".bin");
    v204.__data_ = buf;
    v52 = std::__fs::filesystem::operator==[abi:ne200100](&__p, v204);
    v53 = v52;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if (v53)
      {
        goto LABEL_72;
      }
    }

    else if (v53)
    {
LABEL_72:
      if (*(a3 + 23) >= 0)
      {
        v54 = a3;
      }

      else
      {
        v54 = *a3;
      }

      std::ifstream::basic_ifstream(buf, v54, 4);
      std::istream::seekg();
      std::istream::tellg();
      v55 = v197;
      std::istream::seekg();
      v56 = (v55 + 63) & 0xFFFFFFFFFFFFFFC0;
      v57 = malloc_type_aligned_alloc(0x40uLL, v56, 0x100004077774924uLL);
      std::istream::read();
      v58 = std::filebuf::close();
      if (!v58)
      {
        std::ios_base::clear((buf + *(buf[0].__r_.__value_.__r.__words[0] - 24)), *(&buf[1].__r_.__value_.__r.__words[1] + *(buf[0].__r_.__value_.__r.__words[0] - 24)) | 4);
      }

      v169[0] = v57;
      v169[1] = ((v55 + 63) & 0xFFFFFFFFFFFFFFC0);
      v170 = xmmword_272756660;
      v171 = 0;
      v172 = 1;
      if (v56 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      if (!v56)
      {
        goto LABEL_171;
      }

      v59 = *v57;
      if (v59 < 1)
      {
        goto LABEL_171;
      }

      if (v56 - 1 < v59)
      {
        goto LABEL_171;
      }

      v60 = v57 + v59;
      v58 = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v169, v57 + v59);
      if (!v58)
      {
        goto LABEL_171;
      }

      v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v57 + v59), v169, 4u);
      if (!v58)
      {
        goto LABEL_171;
      }

      v61 = *v60;
      if (*&v60[-v61] < 5u)
      {
        goto LABEL_106;
      }

      if (*&v60[-v61 + 4])
      {
        v58 = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(v169, &v60[*&v60[-v61 + 4] + *&v60[*&v60[-v61 + 4]]], 4uLL, 0);
        if (!v58)
        {
          goto LABEL_171;
        }

        v61 = *v60;
        if (*&v60[-v61] < 5u)
        {
          goto LABEL_106;
        }
      }

      v62 = *&v60[-v61 + 4];
      if (!v62)
      {
LABEL_106:
        v63 = 0;
      }

      else
      {
        v63 = &v60[v62 + *&v60[v62]];
      }

      v58 = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<vp::vx::database::v1::fbs::Rule>(v169, v63);
      if (!v58 || (v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v57 + v59), v169, 6u), !v58))
      {
LABEL_171:
        v130 = vp::get_log(v58);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          v131 = vp::get_log_context_info(v167, v37, "vp::vx::database::v1::Database]", 30);
          v132 = v168;
          v133 = v168;
          v134 = v167[1];
          v135 = vp::get_log(v131);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            if (v133 >= 0)
            {
              v136 = v132;
            }

            else
            {
              v136 = v134;
            }

            v137 = v167[0];
            if (v133 >= 0)
            {
              v137 = v167;
            }

            if (v136)
            {
              v138 = " ";
            }

            else
            {
              v138 = "";
            }

            v139 = *(a3 + 23);
            v140 = *a3;
            LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
            *(__p.__pn_.__r_.__value_.__r.__words + 4) = v137;
            if (v139 >= 0)
            {
              v141 = a3;
            }

            else
            {
              v141 = v140;
            }

            WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
            *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v138;
            HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
            v196 = v141;
            _os_log_impl(&dword_2724B4000, v135, OS_LOG_TYPE_ERROR, "%s%sfailed to verify %s file", &__p, 0x20u);
            LOBYTE(v133) = v168;
          }

          if ((v133 & 0x80) != 0)
          {
            operator delete(v167[0]);
          }
        }

        v129 = 0;
        v142 = 0;
        if (!v57)
        {
LABEL_189:
          buf[0].__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
          *(buf[0].__r_.__value_.__r.__words + *(buf[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
          MEMORY[0x2743CBA00](&buf[0].__r_.__value_.__r.__words[2]);
          std::istream::~istream();
          v143 = MEMORY[0x2743CBE30](&v194);
          if (v142)
          {
            v144 = vp::get_log(v143);
            a1 = v162;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
            {
              v145 = vp::get_log_context_info(buf, v37, "vp::vx::database::v1::Database]", 30);
              v146 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
              v147 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
              v148 = buf[0].__r_.__value_.__l.__size_;
              v149 = vp::get_log(v145);
              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
              {
                if (v147 >= 0)
                {
                  v150 = v146;
                }

                else
                {
                  v150 = v148;
                }

                v151 = buf[0].__r_.__value_.__r.__words[0];
                if (v147 >= 0)
                {
                  v151 = buf;
                }

                if (v150)
                {
                  v152 = " ";
                }

                else
                {
                  v152 = "";
                }

                v153 = *(a3 + 23);
                v154 = *a3;
                LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
                *(__p.__pn_.__r_.__value_.__r.__words + 4) = v151;
                if (v153 >= 0)
                {
                  v155 = a3;
                }

                else
                {
                  v155 = v154;
                }

                WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v152;
                HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
                v196 = v155;
                _os_log_impl(&dword_2724B4000, v149, OS_LOG_TYPE_DEBUG, "%s%sdid load %s file", &__p, 0x20u);
                LOBYTE(v147) = *(&buf[0].__r_.__value_.__s + 23);
              }

              if ((v147 & 0x80) != 0)
              {
                operator delete(buf[0].__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_208;
          }

LABEL_207:
          std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](&v163, 0);
          a1 = v162;
          goto LABEL_208;
        }

LABEL_188:
        MEMORY[0x2743CBF70](v57, 0x1000C8077774924);
        v142 = v129;
        goto LABEL_189;
      }

      v76 = *v60;
      if (*&v60[-v76] >= 7u)
      {
        if (!*&v60[-v76 + 6])
        {
          goto LABEL_211;
        }

        v58 = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(v169, &v60[*&v60[-v76 + 6] + *&v60[*&v60[-v76 + 6]]], 4uLL, 0);
        if (!v58)
        {
          goto LABEL_171;
        }

        v76 = *v60;
        if (*&v60[-v76] >= 7u)
        {
LABEL_211:
          v77 = *&v60[-v76 + 6];
          if (v77)
          {
            v78 = &v60[v77];
            v160 = *&v60[v77];
            if (*&v60[v77 + v160])
            {
              v79 = 0;
              v80 = v57 + v59 + v160 + v77 + 10;
              do
              {
                v81 = v80 - 6;
                v82 = *(v80 - 6);
                v58 = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(v169, (v80 - 6 + v82));
                if (!v58)
                {
                  goto LABEL_171;
                }

                v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v81 + v82), v169, 4u);
                if (!v58)
                {
                  goto LABEL_171;
                }

                v83 = v80 + v82 - *(v81 + v82);
                if (*(v83 - 6) >= 5u)
                {
                  v84 = *(v83 - 2);
                  if (v84)
                  {
                    v58 = vp::vx::database::v1::fbs::plist::String::Verify((v80 + v82 + v84 + *(v80 + v82 + v84 - 6) - 6), v169);
                    if (!v58)
                    {
                      goto LABEL_171;
                    }
                  }
                }

                v58 = apple::aiml::flatbuffers2::Table::VerifyOffset((v81 + v82), v169, 6u);
                if (!v58)
                {
                  goto LABEL_171;
                }

                v85 = v82 - *(v81 + v82);
                if (*(v80 + v85 - 6) >= 7u)
                {
                  v86 = *(v80 + v85);
                  if (v86)
                  {
                    v58 = vp::vx::database::v1::fbs::plist::Object::Verify((v80 + v82 + v86 + *(v80 + v82 + v86 - 6) - 6), v169);
                    if ((v58 & 1) == 0)
                    {
                      goto LABEL_171;
                    }
                  }
                }

                LODWORD(v170) = v170 - 1;
                ++v79;
                v80 += 4;
              }

              while (v79 < *&v78[v160]);
            }
          }
        }
      }

      v159 = a3;
      LODWORD(v170) = v170 - 1;
      v87 = *v57;
      v88 = (v57 + v87);
      v161.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      default_resource = std::pmr::get_default_resource(v161.__d_.__rep_);
      v187 = 0;
      *v186 = 0;
      v188 = default_resource;
      v189 = 0;
      v190 = default_resource;
      v191 = 0;
      v192 = 1065353216;
      vp::vx::database::v1::syntax::Conditions::Conditions(&v185, *(v37 + 105), *(v37 + 192));
      vp::vx::database::v1::syntax::Constraints::Constraints(&__p, v186);
      if (*(v37 + 288))
      {
        v90 = *(v37 + 288);
      }

      else
      {
        v90 = v37 + 216;
      }

      v91 = v37;
      vp::vx::database::v1::syntax::Decisions::Decisions(v167, v186, v90);
      vp::vx::database::v1::syntax::Flags::Flags(v165, v186);
      v180[0] = &v185;
      v180[1] = &__p;
      v180[2] = v167;
      v180[3] = v165;
      v182 = 0;
      v184 = 0;
      *v198 = &unk_2881B6588;
      *&v198[8] = v37;
      *&v198[24] = v198;
      std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::swap[abi:ne200100](v198, &v181);
      v92 = std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::~__value_func[abi:ne200100](v198);
      *v198 = &unk_2881B65D0;
      *&v198[8] = v37;
      *&v198[24] = v198;
      std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::swap[abi:ne200100](v92, v183);
      std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::~__value_func[abi:ne200100](v198);
      v93 = *v88;
      v94 = -v93;
      v95 = v88 - v93;
      v96 = *(v88 - v93);
      if (v96 >= 7)
      {
        v97 = *(v95 + 3);
        if (!*(v95 + 3))
        {
          goto LABEL_137;
        }

        v98 = *(v88 + v97);
        v178[1] = 0;
        v178[0] = 0;
        v179 = 0;
        v99 = *(v88 + v97 + v98);
        if (v99)
        {
          *v199 = v178;
          std::allocator<vp::vx::database::v1::syntax::Flag>::allocate_at_least[abi:ne200100](v99);
        }

        if (v182)
        {
          *cf = *v178;
          v177 = v179;
          v179 = 0;
          v178[1] = 0;
          v178[0] = 0;
          (*(*v182 + 48))(v182, cf);
          *v198 = cf;
          std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](v198);
        }

        *v198 = v178;
        std::vector<vp::vx::database::v1::syntax::Flag>::__destroy_vector::operator()[abi:ne200100](v198);
        v100 = *v88;
        v94 = -v100;
        v96 = *(v88 - v100);
      }

      if (v96 < 5)
      {
LABEL_153:
        v115.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v116 = vp::get_log(v115.__d_.__rep_);
        a3 = v159;
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v117 = vp::get_log_context_info(v178, v91, "vp::vx::database::v1::Database]", 30);
          v118 = HIBYTE(v179);
          v119 = SHIBYTE(v179);
          v120 = v178[1];
          v121 = vp::get_log(v117);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
          {
            if (v119 >= 0)
            {
              v122 = v118;
            }

            else
            {
              v122 = v120;
            }

            v123 = v178[0];
            if (v119 >= 0)
            {
              v123 = v178;
            }

            v124 = " ";
            v125 = v122 == 0;
            v126 = *(v159 + 23);
            v127 = *v159;
            *v198 = 136315906;
            if (v125)
            {
              v124 = "";
            }

            *&v198[4] = v123;
            *&v198[12] = 2080;
            if (v126 >= 0)
            {
              v128 = v159;
            }

            else
            {
              v128 = v127;
            }

            *&v198[14] = v124;
            *&v198[22] = 2080;
            *&v198[24] = v128;
            *v199 = 2048;
            *&v199[2] = v115.__d_.__rep_ - v161.__d_.__rep_;
            _os_log_impl(&dword_2724B4000, v121, OS_LOG_TYPE_DEFAULT, "%s%sparsed %s file in %llu us", v198, 0x2Au);
            LOBYTE(v119) = HIBYTE(v179);
          }

          if ((v119 & 0x80) != 0)
          {
            operator delete(v178[0]);
          }
        }

        std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Rule>)>::~__value_func[abi:ne200100](v183);
        std::__function::__value_func<void ()(std::vector<vp::vx::database::v1::syntax::Flag>)>::~__value_func[abi:ne200100](&v181);
        v165[0] = &unk_2881B76F0;
        v165[1] = &unk_2881B7720;
        if (v166)
        {
          CFRelease(v166);
        }

        vp::vx::database::v1::syntax::Decisions::~Decisions(v167);
        vp::vx::database::v1::syntax::Constraints::~Constraints(&__p);
        std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::~__hash_table(v186);
        v129 = 1;
        goto LABEL_188;
      }

LABEL_137:
      v101 = v88 + v94;
      v102 = *(v101 + 2);
      if (*(v101 + 2))
      {
        v103 = (v88 + v102);
        v104 = *v103;
        v178[1] = 0;
        v178[0] = 0;
        v179 = 0;
        std::vector<vp::vx::database::v1::syntax::Rule>::reserve(v178, *(v103 + v104));
        v105 = *(v103 + v104);
        if (v105)
        {
          v106 = 4 * v105;
          v107 = (v57 + v87 + v104 + v102 + 4);
          do
          {
            vp::vx::database::v1::fbs::Parser::parse_rule(v198, v180, (v107 + *v107));
            v108 = v178[1];
            if (v178[1] >= v179)
            {
              v111 = std::vector<vp::vx::database::v1::syntax::Rule>::__emplace_back_slow_path<vp::vx::database::v1::syntax::Rule>(v178, v198);
            }

            else
            {
              *(v178[1] + 4) = *&v198[8];
              *v108 = &unk_2881BA308;
              v109 = *&v198[16];
              *&v198[16] = 0u;
              *(v108 + 1) = v109;
              *(v108 + 5) = 0;
              *(v108 + 3) = 0u;
              *(v108 + 4) = 0u;
              v110 = *v199;
              *v199 = 0;
              *(v108 + 2) = v110;
              *(v108 + 3) = *&v199[16];
              memset(&v199[8], 0, 24);
              *(v108 + 10) = 0;
              *(v108 + 4) = v200;
              *(v108 + 10) = v201;
              v200 = 0u;
              v201 = 0;
              v111 = (v108 + 88);
            }

            v178[1] = v111;
            *v198 = &unk_2881BA308;
            v175 = &v200;
            std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v175);
            v175 = &v199[8];
            std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v175);
            v112 = *v199;
            *v199 = 0;
            if (v112)
            {
              (*(*v112 + 8))(v112);
            }

            v113 = *&v198[24];
            *&v198[24] = 0;
            if (v113)
            {
              (*(*v113 + 8))(v113);
            }

            v114 = *&v198[16];
            *&v198[16] = 0;
            if (v114)
            {
              (*(*v114 + 8))(v114);
            }

            ++v107;
            v106 -= 4;
          }

          while (v106);
        }

        v91 = v37;
        if (v184)
        {
          *v198 = *v178;
          *&v198[16] = v179;
          v179 = 0;
          v178[1] = 0;
          v178[0] = 0;
          (*(*v184 + 48))(v184, v198);
          v175 = v198;
          std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v175);
        }

        v175 = v178;
        std::vector<vp::vx::database::v1::syntax::Rule>::__destroy_vector::operator()[abi:ne200100](&v175);
      }

      goto LABEL_153;
    }

    v64 = vp::get_log(v52);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = vp::get_log_context_info(buf, v37, "vp::vx::database::v1::Database]", 30);
      v66 = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v67 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
      v68 = buf[0].__r_.__value_.__l.__size_;
      v69 = vp::get_log(v65);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        if (v67 >= 0)
        {
          v70 = v66;
        }

        else
        {
          v70 = v68;
        }

        v71 = buf[0].__r_.__value_.__r.__words[0];
        if (v67 >= 0)
        {
          v71 = buf;
        }

        if (v70)
        {
          v72 = " ";
        }

        else
        {
          v72 = "";
        }

        v73 = *(a3 + 23);
        v74 = *a3;
        LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__pn_.__r_.__value_.__r.__words + 4) = v71;
        if (v73 >= 0)
        {
          v75 = a3;
        }

        else
        {
          v75 = v74;
        }

        WORD2(__p.__pn_.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__pn_.__r_.__value_.__r.__words[1] + 6) = v72;
        HIWORD(__p.__pn_.__r_.__value_.__r.__words[2]) = 2080;
        v196 = v75;
        _os_log_impl(&dword_2724B4000, v69, OS_LOG_TYPE_ERROR, "%s%sfailed to load %s file - file extension is unknown", &__p, 0x20u);
        LOBYTE(v67) = *(&buf[0].__r_.__value_.__s + 23);
      }

      if ((v67 & 0x80) != 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_207;
  }

LABEL_208:
  v156 = v163;
  v157 = v164;
  *&v163 = 0;
  *a1 = v156;
  a1[1] = v157;
  return std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](&v163, 0);
}

vp::vx::database::v1::runtime::File_Manager ***std::unique_ptr<vp::vx::database::v1::Database,vp::Allocator_Delete<vp::vx::database::v1::Database>>::reset[abi:ne200100](vp::vx::database::v1::runtime::File_Manager ***result, vp::vx::database::v1::runtime::File_Manager **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    vp::vx::database::v1::Database::~Database(v2);
    return (*(*v3[1] + 3))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t (***vp::vx::database::v1::syntax::Decisions::decision_parser(uint64_t (***a1)(), vp::vx::database::v1::syntax *this, char *a3))()
{
  v4 = vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3);
  result = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
  if (v4 <= 0x20DC4A37C84CA775)
  {
    v6 = a1 + 8;
    if (v4 != 0x15CE13B6EBF78EEBLL)
    {
      v6 = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
    }

    if (v4 == 0x5FD833547E612B6)
    {
      v7 = a1 + 20;
    }

    else
    {
      v7 = v6;
    }

    v8 = a1 + 31;
    if (v4 != 0xFA8D3F1EAAA6E2DBLL)
    {
      v8 = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
    }

    if (v4 == 0xEAFC51725DBE15E2)
    {
      v9 = a1 + 4;
    }

    else
    {
      v9 = v8;
    }

    if (v4 <= 0x5FD833547E612B5)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = a1 + 16;
    if (v4 != 0xAF39C4B30C4672C9)
    {
      v11 = vp::vx::database::v1::syntax::Decision::Parser::null(void)::s_null;
    }

    if (v4 == 0x93D9A281211A9D2ALL)
    {
      v12 = a1 + 28;
    }

    else
    {
      v12 = v11;
    }

    if (v4 == 0x8F68728B58B84FB1)
    {
      v13 = a1 + 34;
    }

    else
    {
      v13 = v12;
    }

    if (v4 <= 0xEAFC51725DBE15E1)
    {
      return v13;
    }

    else
    {
      return v10;
    }
  }

  if (v4 <= 0x4297744E444740C5)
  {
    if (v4 <= 0x261384A0B045AF23)
    {
      if (v4 == 0x20DC4A37C84CA776)
      {
        return a1 + 26;
      }

      if (v4 != 0x25E63182C153C7D0)
      {
        return result;
      }

      return a1 + 37;
    }

    if (v4 == 0x261384A0B045AF24)
    {
      return a1 + 37;
    }

    v14 = v4 == 0x380E881B6CDDE6DALL;
    v15 = a1 + 24;
LABEL_39:
    if (v14)
    {
      return v15;
    }

    return result;
  }

  if (v4 > 0x4CD3D1C9D4F7076ELL)
  {
    if (v4 != 0x4CD3D1C9D4F7076FLL)
    {
      v14 = v4 == 0x776A156492500CA7;
      v15 = a1 + 12;
      goto LABEL_39;
    }

    return a1 + 40;
  }

  if (v4 == 0x4297744E444740C6)
  {
    return a1 + 5;
  }

  if (v4 == 0x45B18BED1A55B0B3)
  {
    return a1 + 40;
  }

  return result;
}

void non-virtual thunk tovp::vx::database::v1::syntax::Decisions::~Decisions(vp::vx::database::v1::syntax::Decisions *this)
{
  vp::vx::database::v1::syntax::Decisions::~Decisions((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::database::v1::syntax::Decisions::~Decisions((this - 8));
}

void vp::vx::database::v1::syntax::Decisions::create_decision(int *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = (a2 - *a2);
  if (*v4 >= 7u && v4[3])
  {
    v5 = *(a2 + v4[3]);
    if (v5 > 3)
    {
      switch(v5)
      {
        case 4u:
          operator new();
        case 5u:
          operator new();
        case 6u:
          operator new();
      }
    }

    else
    {
      switch(v5)
      {
        case 1u:
          operator new();
        case 2u:
          operator new();
        case 3u:
          operator new();
      }
    }
  }

  *a3 = 0;
}

void sub_27261C400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  a17 = &a13;
  std::vector<applesauce::CF::StringRef,vp::Allocator<applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&a17);
  __clang_call_terminate(a1);
}

void vp::Decorator::~Decorator(vp::Decorator *this)
{
  v2 = *(this + 1);
  *this = &unk_2881C6738;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 1);
  *this = &unk_2881C6738;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void *vp::Decorator::Decorator(void *result, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2881C6738;
  result[1] = v2;
  if (!v2)
  {
    v5 = 0;
    memset(v8, 0, sizeof(v8));
    v3 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v6 = 134217984;
    v7 = 0;
    _os_log_send_and_compose_impl(v4, &v5, v8, 80, &dword_2724B4000, v3, 16, "assertion failure: m_vp != nullptr -> %llu", &v6);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void sub_27261CA88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void virtual thunk tovp::vx::DSP_Node_Factory::~DSP_Node_Factory(vp::vx::DSP_Node_Factory *this)
{
  vp::vx::DSP_Node_Factory::~DSP_Node_Factory((this + *(*this - 24)));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::DSP_Node_Factory::~DSP_Node_Factory((this + *(*this - 24)));
}

void vp::vx::DSP_Node_Factory::~DSP_Node_Factory(vp::vx::DSP_Node_Factory *this)
{
  v27 = *MEMORY[0x277D85DE8];
  *this = &unk_2881B67A0;
  *(this + 159) = &unk_2881B67D0;
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::vx::get_log_context_info(__p, this);
    v4 = v22;
    v5 = v22;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v24 = v9;
      v25 = 2080;
      v26 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v22;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(this + 157);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 1239) < 0)
  {
    operator delete(*(this + 152));
  }

  if (*(this + 1215) < 0)
  {
    operator delete(*(this + 149));
  }

  vp::vx::data_flow::State<void>::~State(this + 292);
  vp::vx::data_flow::State<void>::~State(this + 286);
  vp::vx::data_flow::State<void>::~State(this + 280);
  vp::vx::data_flow::State<void>::~State(this + 274);
  vp::vx::data_flow::State<void>::~State(this + 268);
  v12 = *(this + 130);
  if (v12)
  {
    v13 = *(this + 131);
    v14 = *(this + 130);
    if (v13 != v12)
    {
      do
      {
        v13 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v13 - 8));
      }

      while (v13 != v12);
      v14 = *(this + 130);
    }

    *(this + 131) = v12;
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>>>::deallocate[abi:ne200100](*(this + 133), v14, (*(this + 132) - v14) >> 5);
  }

  v15 = *(this + 126);
  if (v15)
  {
    v16 = *(this + 127);
    v17 = *(this + 126);
    if (v16 != v15)
    {
      do
      {
        v16 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v16 - 8));
      }

      while (v16 != v15);
      v17 = *(this + 126);
    }

    *(this + 127) = v15;
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>>>::deallocate[abi:ne200100](*(this + 129), v17, (*(this + 128) - v17) >> 5);
  }

  boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::~vector(this + 74);
  boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::~vector(this + 22);
  vp::vx::data_flow::State<void>::~State(this + 38);
  vp::vx::data_flow::State<void>::~State(this + 32);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 96);
  vp::vx::data_flow::State<void>::~State(this + 18);
  vp::vx::data_flow::State<void>::~State(this + 12);
  v18 = *(this + 5);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(this + 3);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  *(this + 159) = &unk_2881C6630;
  v20 = *(this + 161);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

{
  vp::vx::DSP_Node_Factory::~DSP_Node_Factory(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::get_log_context_info(vp::vx *this, const vp::vx::DSP_Node_Factory *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "[", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "vp::vx::DSP_Node_Factory]", 24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ":", 1);
  v11 = *(a2 + 1);
  if (HIDWORD(v11) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *&v9 = &v12;
  v4 = (off_2881B6A90[HIDWORD(v11)])(&v9, &v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, ":", 1);
  v6 = MEMORY[0x2743CBAF0](&v14, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
  std::stringbuf::str[abi:ne200100](&v9, &v15);
  *this = v9;
  *(this + 2) = v10;
  v13[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v14 = v7;
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x2743CBE30](&v18);
}

void sub_27261D00C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14);
  MEMORY[0x2743CBE30](&a30);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27261CFECLL);
}

void *boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    do
    {
      --v2;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(v3);
      v3 += 48;
    }

    while (v2);
  }

  if (a1[3])
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>::deallocate(a1, a1[1]);
  }

  return a1;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B67F0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(uint64_t a1)
{
  vp::vx::data_flow::State<void>::~State((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

int *vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      vp::vx::data_flow::State<void>::unregister_listener(a1, v2);
      *(a1 + 24) = 0;
    }

    v4 = 0;
    vp::vx::data_flow::State<void>::~State(a1);
    *a1 = 0;
    *(a1 + 8) = 0u;
    v5 = 0u;
    vp::vx::data_flow::State<void>::~State(&v4);
  }

  return vp::vx::data_flow::State<void>::~State(a1);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
}

const void *std::stringbuf::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

char *vp::reflect_value_name_tag<vp::vx::Downlink_DSP_Node_ID,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Downlink_DSP_Node_ID)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Downlink_DSP_Node_ID)0,128ul>(int a1)
{
  result = "vp::vx::Downlink_DSP_Node_ID::Voice_Mix]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Downlink_DSP_Node_ID::Voice]";
      break;
    case 2:
      result = "vp::vx::Downlink_DSP_Node_ID::Dynamics]";
      break;
    case 3:
      result = "vp::vx::Downlink_DSP_Node_ID::Hardware]";
      break;
    case 4:
      result = "(vp::vx::Downlink_DSP_Node_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Downlink_DSP_Node_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Downlink_DSP_Node_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Downlink_DSP_Node_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Downlink_DSP_Node_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Downlink_DSP_Node_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Downlink_DSP_Node_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Downlink_DSP_Node_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Downlink_DSP_Node_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Downlink_DSP_Node_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Downlink_DSP_Node_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Downlink_DSP_Node_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Downlink_DSP_Node_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Downlink_DSP_Node_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Downlink_DSP_Node_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Downlink_DSP_Node_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Downlink_DSP_Node_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Downlink_DSP_Node_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Downlink_DSP_Node_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Downlink_DSP_Node_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Downlink_DSP_Node_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Downlink_DSP_Node_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Downlink_DSP_Node_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Downlink_DSP_Node_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Downlink_DSP_Node_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Downlink_DSP_Node_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Downlink_DSP_Node_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Downlink_DSP_Node_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Downlink_DSP_Node_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Downlink_DSP_Node_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Downlink_DSP_Node_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Downlink_DSP_Node_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Downlink_DSP_Node_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Downlink_DSP_Node_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Downlink_DSP_Node_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Downlink_DSP_Node_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Downlink_DSP_Node_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Downlink_DSP_Node_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Downlink_DSP_Node_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Downlink_DSP_Node_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Downlink_DSP_Node_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Downlink_DSP_Node_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Downlink_DSP_Node_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Downlink_DSP_Node_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Downlink_DSP_Node_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Downlink_DSP_Node_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Downlink_DSP_Node_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Downlink_DSP_Node_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Downlink_DSP_Node_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Downlink_DSP_Node_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Downlink_DSP_Node_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Downlink_DSP_Node_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Downlink_DSP_Node_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Downlink_DSP_Node_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Downlink_DSP_Node_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Downlink_DSP_Node_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Downlink_DSP_Node_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Downlink_DSP_Node_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Downlink_DSP_Node_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Downlink_DSP_Node_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Downlink_DSP_Node_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Downlink_DSP_Node_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Downlink_DSP_Node_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Downlink_DSP_Node_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Downlink_DSP_Node_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Downlink_DSP_Node_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Downlink_DSP_Node_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Downlink_DSP_Node_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Downlink_DSP_Node_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Downlink_DSP_Node_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Downlink_DSP_Node_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Downlink_DSP_Node_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Downlink_DSP_Node_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Downlink_DSP_Node_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Downlink_DSP_Node_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Downlink_DSP_Node_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Downlink_DSP_Node_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Downlink_DSP_Node_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Downlink_DSP_Node_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Downlink_DSP_Node_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Downlink_DSP_Node_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Downlink_DSP_Node_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Downlink_DSP_Node_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Downlink_DSP_Node_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Downlink_DSP_Node_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Downlink_DSP_Node_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Downlink_DSP_Node_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Downlink_DSP_Node_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Downlink_DSP_Node_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Downlink_DSP_Node_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Downlink_DSP_Node_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Downlink_DSP_Node_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Downlink_DSP_Node_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Downlink_DSP_Node_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Downlink_DSP_Node_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Downlink_DSP_Node_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Downlink_DSP_Node_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Downlink_DSP_Node_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Downlink_DSP_Node_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Downlink_DSP_Node_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Downlink_DSP_Node_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Downlink_DSP_Node_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Downlink_DSP_Node_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Downlink_DSP_Node_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Downlink_DSP_Node_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Downlink_DSP_Node_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Downlink_DSP_Node_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Downlink_DSP_Node_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Downlink_DSP_Node_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Downlink_DSP_Node_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Downlink_DSP_Node_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Downlink_DSP_Node_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Downlink_DSP_Node_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Downlink_DSP_Node_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Downlink_DSP_Node_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Downlink_DSP_Node_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Downlink_DSP_Node_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Downlink_DSP_Node_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Downlink_DSP_Node_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Downlink_DSP_Node_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Downlink_DSP_Node_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Downlink_DSP_Node_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Downlink_DSP_Node_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Downlink_DSP_Node_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Downlink_DSP_Node_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

char *vp::reflect_value_name_tag<vp::vx::Uplink_DSP_Node_ID,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Uplink_DSP_Node_ID)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Uplink_DSP_Node_ID)0,128ul>(int a1)
{
  result = "vp::vx::Uplink_DSP_Node_ID::Hardware]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Uplink_DSP_Node_ID::Echo]";
      break;
    case 2:
      result = "vp::vx::Uplink_DSP_Node_ID::Content]";
      break;
    case 3:
      result = "(vp::vx::Uplink_DSP_Node_ID)3]";
      break;
    case 4:
      result = "(vp::vx::Uplink_DSP_Node_ID)4]";
      break;
    case 5:
      result = "(vp::vx::Uplink_DSP_Node_ID)5]";
      break;
    case 6:
      result = "(vp::vx::Uplink_DSP_Node_ID)6]";
      break;
    case 7:
      result = "(vp::vx::Uplink_DSP_Node_ID)7]";
      break;
    case 8:
      result = "(vp::vx::Uplink_DSP_Node_ID)8]";
      break;
    case 9:
      result = "(vp::vx::Uplink_DSP_Node_ID)9]";
      break;
    case 10:
      result = "(vp::vx::Uplink_DSP_Node_ID)10]";
      break;
    case 11:
      result = "(vp::vx::Uplink_DSP_Node_ID)11]";
      break;
    case 12:
      result = "(vp::vx::Uplink_DSP_Node_ID)12]";
      break;
    case 13:
      result = "(vp::vx::Uplink_DSP_Node_ID)13]";
      break;
    case 14:
      result = "(vp::vx::Uplink_DSP_Node_ID)14]";
      break;
    case 15:
      result = "(vp::vx::Uplink_DSP_Node_ID)15]";
      break;
    case 16:
      result = "(vp::vx::Uplink_DSP_Node_ID)16]";
      break;
    case 17:
      result = "(vp::vx::Uplink_DSP_Node_ID)17]";
      break;
    case 18:
      result = "(vp::vx::Uplink_DSP_Node_ID)18]";
      break;
    case 19:
      result = "(vp::vx::Uplink_DSP_Node_ID)19]";
      break;
    case 20:
      result = "(vp::vx::Uplink_DSP_Node_ID)20]";
      break;
    case 21:
      result = "(vp::vx::Uplink_DSP_Node_ID)21]";
      break;
    case 22:
      result = "(vp::vx::Uplink_DSP_Node_ID)22]";
      break;
    case 23:
      result = "(vp::vx::Uplink_DSP_Node_ID)23]";
      break;
    case 24:
      result = "(vp::vx::Uplink_DSP_Node_ID)24]";
      break;
    case 25:
      result = "(vp::vx::Uplink_DSP_Node_ID)25]";
      break;
    case 26:
      result = "(vp::vx::Uplink_DSP_Node_ID)26]";
      break;
    case 27:
      result = "(vp::vx::Uplink_DSP_Node_ID)27]";
      break;
    case 28:
      result = "(vp::vx::Uplink_DSP_Node_ID)28]";
      break;
    case 29:
      result = "(vp::vx::Uplink_DSP_Node_ID)29]";
      break;
    case 30:
      result = "(vp::vx::Uplink_DSP_Node_ID)30]";
      break;
    case 31:
      result = "(vp::vx::Uplink_DSP_Node_ID)31]";
      break;
    case 32:
      result = "(vp::vx::Uplink_DSP_Node_ID)32]";
      break;
    case 33:
      result = "(vp::vx::Uplink_DSP_Node_ID)33]";
      break;
    case 34:
      result = "(vp::vx::Uplink_DSP_Node_ID)34]";
      break;
    case 35:
      result = "(vp::vx::Uplink_DSP_Node_ID)35]";
      break;
    case 36:
      result = "(vp::vx::Uplink_DSP_Node_ID)36]";
      break;
    case 37:
      result = "(vp::vx::Uplink_DSP_Node_ID)37]";
      break;
    case 38:
      result = "(vp::vx::Uplink_DSP_Node_ID)38]";
      break;
    case 39:
      result = "(vp::vx::Uplink_DSP_Node_ID)39]";
      break;
    case 40:
      result = "(vp::vx::Uplink_DSP_Node_ID)40]";
      break;
    case 41:
      result = "(vp::vx::Uplink_DSP_Node_ID)41]";
      break;
    case 42:
      result = "(vp::vx::Uplink_DSP_Node_ID)42]";
      break;
    case 43:
      result = "(vp::vx::Uplink_DSP_Node_ID)43]";
      break;
    case 44:
      result = "(vp::vx::Uplink_DSP_Node_ID)44]";
      break;
    case 45:
      result = "(vp::vx::Uplink_DSP_Node_ID)45]";
      break;
    case 46:
      result = "(vp::vx::Uplink_DSP_Node_ID)46]";
      break;
    case 47:
      result = "(vp::vx::Uplink_DSP_Node_ID)47]";
      break;
    case 48:
      result = "(vp::vx::Uplink_DSP_Node_ID)48]";
      break;
    case 49:
      result = "(vp::vx::Uplink_DSP_Node_ID)49]";
      break;
    case 50:
      result = "(vp::vx::Uplink_DSP_Node_ID)50]";
      break;
    case 51:
      result = "(vp::vx::Uplink_DSP_Node_ID)51]";
      break;
    case 52:
      result = "(vp::vx::Uplink_DSP_Node_ID)52]";
      break;
    case 53:
      result = "(vp::vx::Uplink_DSP_Node_ID)53]";
      break;
    case 54:
      result = "(vp::vx::Uplink_DSP_Node_ID)54]";
      break;
    case 55:
      result = "(vp::vx::Uplink_DSP_Node_ID)55]";
      break;
    case 56:
      result = "(vp::vx::Uplink_DSP_Node_ID)56]";
      break;
    case 57:
      result = "(vp::vx::Uplink_DSP_Node_ID)57]";
      break;
    case 58:
      result = "(vp::vx::Uplink_DSP_Node_ID)58]";
      break;
    case 59:
      result = "(vp::vx::Uplink_DSP_Node_ID)59]";
      break;
    case 60:
      result = "(vp::vx::Uplink_DSP_Node_ID)60]";
      break;
    case 61:
      result = "(vp::vx::Uplink_DSP_Node_ID)61]";
      break;
    case 62:
      result = "(vp::vx::Uplink_DSP_Node_ID)62]";
      break;
    case 63:
      result = "(vp::vx::Uplink_DSP_Node_ID)63]";
      break;
    case 64:
      result = "(vp::vx::Uplink_DSP_Node_ID)64]";
      break;
    case 65:
      result = "(vp::vx::Uplink_DSP_Node_ID)65]";
      break;
    case 66:
      result = "(vp::vx::Uplink_DSP_Node_ID)66]";
      break;
    case 67:
      result = "(vp::vx::Uplink_DSP_Node_ID)67]";
      break;
    case 68:
      result = "(vp::vx::Uplink_DSP_Node_ID)68]";
      break;
    case 69:
      result = "(vp::vx::Uplink_DSP_Node_ID)69]";
      break;
    case 70:
      result = "(vp::vx::Uplink_DSP_Node_ID)70]";
      break;
    case 71:
      result = "(vp::vx::Uplink_DSP_Node_ID)71]";
      break;
    case 72:
      result = "(vp::vx::Uplink_DSP_Node_ID)72]";
      break;
    case 73:
      result = "(vp::vx::Uplink_DSP_Node_ID)73]";
      break;
    case 74:
      result = "(vp::vx::Uplink_DSP_Node_ID)74]";
      break;
    case 75:
      result = "(vp::vx::Uplink_DSP_Node_ID)75]";
      break;
    case 76:
      result = "(vp::vx::Uplink_DSP_Node_ID)76]";
      break;
    case 77:
      result = "(vp::vx::Uplink_DSP_Node_ID)77]";
      break;
    case 78:
      result = "(vp::vx::Uplink_DSP_Node_ID)78]";
      break;
    case 79:
      result = "(vp::vx::Uplink_DSP_Node_ID)79]";
      break;
    case 80:
      result = "(vp::vx::Uplink_DSP_Node_ID)80]";
      break;
    case 81:
      result = "(vp::vx::Uplink_DSP_Node_ID)81]";
      break;
    case 82:
      result = "(vp::vx::Uplink_DSP_Node_ID)82]";
      break;
    case 83:
      result = "(vp::vx::Uplink_DSP_Node_ID)83]";
      break;
    case 84:
      result = "(vp::vx::Uplink_DSP_Node_ID)84]";
      break;
    case 85:
      result = "(vp::vx::Uplink_DSP_Node_ID)85]";
      break;
    case 86:
      result = "(vp::vx::Uplink_DSP_Node_ID)86]";
      break;
    case 87:
      result = "(vp::vx::Uplink_DSP_Node_ID)87]";
      break;
    case 88:
      result = "(vp::vx::Uplink_DSP_Node_ID)88]";
      break;
    case 89:
      result = "(vp::vx::Uplink_DSP_Node_ID)89]";
      break;
    case 90:
      result = "(vp::vx::Uplink_DSP_Node_ID)90]";
      break;
    case 91:
      result = "(vp::vx::Uplink_DSP_Node_ID)91]";
      break;
    case 92:
      result = "(vp::vx::Uplink_DSP_Node_ID)92]";
      break;
    case 93:
      result = "(vp::vx::Uplink_DSP_Node_ID)93]";
      break;
    case 94:
      result = "(vp::vx::Uplink_DSP_Node_ID)94]";
      break;
    case 95:
      result = "(vp::vx::Uplink_DSP_Node_ID)95]";
      break;
    case 96:
      result = "(vp::vx::Uplink_DSP_Node_ID)96]";
      break;
    case 97:
      result = "(vp::vx::Uplink_DSP_Node_ID)97]";
      break;
    case 98:
      result = "(vp::vx::Uplink_DSP_Node_ID)98]";
      break;
    case 99:
      result = "(vp::vx::Uplink_DSP_Node_ID)99]";
      break;
    case 100:
      result = "(vp::vx::Uplink_DSP_Node_ID)100]";
      break;
    case 101:
      result = "(vp::vx::Uplink_DSP_Node_ID)101]";
      break;
    case 102:
      result = "(vp::vx::Uplink_DSP_Node_ID)102]";
      break;
    case 103:
      result = "(vp::vx::Uplink_DSP_Node_ID)103]";
      break;
    case 104:
      result = "(vp::vx::Uplink_DSP_Node_ID)104]";
      break;
    case 105:
      result = "(vp::vx::Uplink_DSP_Node_ID)105]";
      break;
    case 106:
      result = "(vp::vx::Uplink_DSP_Node_ID)106]";
      break;
    case 107:
      result = "(vp::vx::Uplink_DSP_Node_ID)107]";
      break;
    case 108:
      result = "(vp::vx::Uplink_DSP_Node_ID)108]";
      break;
    case 109:
      result = "(vp::vx::Uplink_DSP_Node_ID)109]";
      break;
    case 110:
      result = "(vp::vx::Uplink_DSP_Node_ID)110]";
      break;
    case 111:
      result = "(vp::vx::Uplink_DSP_Node_ID)111]";
      break;
    case 112:
      result = "(vp::vx::Uplink_DSP_Node_ID)112]";
      break;
    case 113:
      result = "(vp::vx::Uplink_DSP_Node_ID)113]";
      break;
    case 114:
      result = "(vp::vx::Uplink_DSP_Node_ID)114]";
      break;
    case 115:
      result = "(vp::vx::Uplink_DSP_Node_ID)115]";
      break;
    case 116:
      result = "(vp::vx::Uplink_DSP_Node_ID)116]";
      break;
    case 117:
      result = "(vp::vx::Uplink_DSP_Node_ID)117]";
      break;
    case 118:
      result = "(vp::vx::Uplink_DSP_Node_ID)118]";
      break;
    case 119:
      result = "(vp::vx::Uplink_DSP_Node_ID)119]";
      break;
    case 120:
      result = "(vp::vx::Uplink_DSP_Node_ID)120]";
      break;
    case 121:
      result = "(vp::vx::Uplink_DSP_Node_ID)121]";
      break;
    case 122:
      result = "(vp::vx::Uplink_DSP_Node_ID)122]";
      break;
    case 123:
      result = "(vp::vx::Uplink_DSP_Node_ID)123]";
      break;
    case 124:
      result = "(vp::vx::Uplink_DSP_Node_ID)124]";
      break;
    case 125:
      result = "(vp::vx::Uplink_DSP_Node_ID)125]";
      break;
    case 126:
      result = "(vp::vx::Uplink_DSP_Node_ID)126]";
      break;
    case 127:
      result = "(vp::vx::Uplink_DSP_Node_ID)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Uplink_DSP_Node_ID)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void *vp::vx::DSP_Node_Factory::new_node@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v241[2] = *MEMORY[0x277D85DE8];
  *v174 = 0;
  *&v174[16] = 0;
  *&v174[24] = 0;
  *&v174[8] = std::pmr::get_default_resource(a1);
  log = vp::get_log(*&v174[8]);
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    log_context_info = vp::vx::get_log_context_info(__p, a1);
    v10 = __p[23];
    v11 = __p[23];
    v12 = *&__p[8];
    v13 = vp::get_log(log_context_info);
    v8 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = *__p;
      if (v11 >= 0)
      {
        v15 = __p;
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v15;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEBUG, "%s%swill create node", &buf, 0x16u);
      LOBYTE(v11) = __p[23];
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  if (!atomic_load((a1 + 1264)))
  {
    v8 = *(a1 + 1248);
    if (v8)
    {
      (*(*v8 + 16))(__p);
      v19 = *__p;
      *__p = 0;
      std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v174, v19);
      *&v174[8] = *&__p[8];
      *&v174[24] = *&__p[24];
      v8 = std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](__p, 0);
      v20 = *v174;
      if (!*v174)
      {
        goto LABEL_35;
      }

      v21 = vp::get_log(v8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = vp::vx::get_log_context_info(&buf, a1);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        v24 = vp::get_log(v22);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          v26 = buf.__r_.__value_.__r.__words[0];
          v27 = vp::vx::detail::convert_to_c_str(*(a1 + 8));
          p_buf = &buf;
          if (v25 < 0)
          {
            p_buf = v26;
          }

          v29 = " ";
          *__p = 136315650;
          *&__p[4] = p_buf;
          *&__p[12] = 2080;
          if (!size)
          {
            v29 = "";
          }

          *&__p[14] = v29;
          *&__p[22] = 2080;
          *&__p[24] = v27;
          _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEFAULT, "%s%srecycle old %s DSP graph", __p, 0x20u);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v8 = (*(*v20 + 88))(__p, v20);
      if (cf != 1)
      {
        if ((__p[39] & 0x80000000) != 0)
        {
          (*(*v192 + 24))(v192, *&__p[16], *&__p[32] & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        v8 = std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v174, 0);
      }
    }
  }

  v18 = *v174;
  if (*v174)
  {
LABEL_227:
    (*(*v18 + 128))(__p, v18);
    v153 = *__p;
    *__p = 0;
    *&__p[8] = 0;
    v154 = *(a1 + 1256);
    *(a1 + 1248) = v153;
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }
    }

    atomic_store(0, (a1 + 1264));
    v155 = v18 + *(*v18 - 24);
    v157 = *(v155 + 8);
    v156 = *(v155 + 16);
    if (v156)
    {
      atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *v223 = *(a1 + 8);
    if (*&v223[4] == 0xFFFFFFFFLL)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    buf.__r_.__value_.__r.__words[0] = &v175;
    v152 = (off_2881B6A80[*&v223[4]])(__p, &buf, v223);
    if (*(v157 + 23) < 0)
    {
      operator delete(*v157);
    }

    v158 = *__p;
    *(v157 + 16) = *&__p[16];
    *v157 = v158;
    __p[23] = 0;
    __p[0] = 0;
    if (v156)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v156);
    }

    goto LABEL_237;
  }

LABEL_35:
  v30 = vp::get_log(v8);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  v172 = a4;
  if (v31)
  {
    v32 = vp::vx::get_log_context_info(&buf, a1);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = buf.__r_.__value_.__l.__size_;
    }

    v34 = vp::get_log(v32);
    v31 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      v35 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v36 = buf.__r_.__value_.__r.__words[0];
      v37 = vp::vx::detail::convert_to_c_str(*(a1 + 8));
      v38 = &buf;
      if (v35 < 0)
      {
        v38 = v36;
      }

      v39 = " ";
      *__p = 136315650;
      *&__p[4] = v38;
      *&__p[12] = 2080;
      if (!v33)
      {
        v39 = "";
      }

      *&__p[14] = v39;
      *&__p[22] = 2080;
      *&__p[24] = v37;
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEFAULT, "%s%screate new %s DSP graph", __p, 0x20u);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  default_resource = std::pmr::get_default_resource(v31);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = default_resource;
  vp::vx::data_flow::State<void>::get_value((a1 + 48), __p);
  v41 = vp::vx::data_flow::Value::view_storage(__p);
  v42 = *(v41 + 16);
  *&buf.__r_.__value_.__l.__data_ = *v41;
  buf.__r_.__value_.__r.__words[2] = v42;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *v41 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(v227, (v41 + 24));
  v228 = *(v41 + 64);
  v229 = *(v41 + 80);
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 80) = 0;
  v230 = *(v41 + 88);
  v231 = *(v41 + 104);
  *(v41 + 88) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  v232 = *(v41 + 112);
  v233 = *(v41 + 128);
  *(v41 + 112) = 0;
  *(v41 + 120) = 0;
  *(v41 + 128) = 0;
  v234 = *(v41 + 136);
  v235 = *(v41 + 152);
  *(v41 + 136) = 0;
  *(v41 + 144) = 0;
  *(v41 + 152) = 0;
  v236 = *(v41 + 160);
  v237 = *(v41 + 176);
  *(v41 + 160) = 0;
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;
  v238 = *(v41 + 184);
  vp::vx::data_flow::Value::~Value(__p);
  v43 = *(a1 + 24);
  if (v43)
  {
    v44 = std::__shared_weak_count::lock(v43);
    if (v44)
    {
      v45 = v44;
      v46 = *(a1 + 16);
      if (v46)
      {
        p_shared_owners = &v44->__shared_owners_;
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, &buf.__r_.__value_.__l.__data_);
        v48 = *(&v230 + 1);
        v49 = v230;
        atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
        while (v49 != v48)
        {
          vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, v49);
          v49 += 3;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        v50 = *(&v228 + 1);
        v51 = v228;
        atomic_fetch_add_explicit(p_shared_owners, 1uLL, memory_order_relaxed);
        while (v51 != v50)
        {
          vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, v51);
          v51 += 3;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        v52 = *(&v232 + 1);
        v53 = v232;
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        while (v53 != v52)
        {
          vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(a1, v46, v53);
          v53 += 3;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }
  }

  std::unordered_map<std::string,std::string>::unordered_map(&v182, v227);
  v54 = v182;
  v55 = v183;
  v182 = 0;
  v183 = 0;
  *v223 = v54;
  *&v223[8] = v55;
  v56 = v184;
  *&v223[16] = v184;
  v224 = v185;
  v225 = v186;
  if (v185)
  {
    v57 = v184[1];
    if ((v55 & (v55 - 1)) != 0)
    {
      if (v57 >= v55)
      {
        v57 %= v55;
      }
    }

    else
    {
      v57 &= v55 - 1;
    }

    v56 = 0;
    v54[v57] = &v223[16];
    v184 = 0;
    v185 = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v56);
  v58 = v182;
  v182 = 0;
  if (v58)
  {
    operator delete(v58);
  }

  block_size = vp::vx::detail::get_value<BOOL>(a1 + 96);
  if (block_size)
  {
    block_size = vp::vx::DSP_Node_Factory::get_block_size(a1);
    v60 = block_size;
  }

  else
  {
    v60 = 1;
  }

  v61 = std::pmr::get_default_resource(block_size);
  *&__p[8] = 0;
  *&__p[16] = 0;
  *__p = v61;
  vp::vx::data_flow::State<void>::get_value((a1 + 152), __p);
  v62 = *vp::vx::data_flow::Value::view_storage(__p);
  vp::vx::data_flow::Value::~Value(__p);
  std::to_string(__p, vcvtad_u64_f64(v62));
  std::string::basic_string[abi:ne200100]<0>(&__ec, "IO_SAMPLE_RATE");
  p_ec = &__ec;
  v63 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v223, &__ec, &p_ec);
  v64 = v63;
  if (*(v63 + 63) < 0)
  {
    operator delete(v63[5]);
  }

  *(v64 + 5) = *__p;
  v64[7] = *&__p[16];
  __p[23] = 0;
  __p[0] = 0;
  if (SHIBYTE(v240) < 0)
  {
    operator delete(*&__ec.__val_);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  std::to_string(__p, v60);
  std::string::basic_string[abi:ne200100]<0>(&__ec, "IO_BLOCK_SIZE");
  p_ec = &__ec;
  v65 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v223, &__ec, &p_ec);
  v66 = v65;
  if (*(v65 + 63) < 0)
  {
    operator delete(*(v65 + 5));
  }

  *(v66 + 40) = *__p;
  *(v66 + 7) = *&__p[16];
  __p[23] = 0;
  __p[0] = 0;
  if (SHIBYTE(v240) < 0)
  {
    operator delete(*&__ec.__val_);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  *&__ec.__val_ = &unk_2881B6830;
  __ec.__cat_ = v223;
  v241[0] = &__ec;
  v67 = *(a1 + 184);
  v68 = *(a1 + 192);
  if (!v67 && v68)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v68)
  {
    v69 = &v67[12 * v68];
    do
    {
      if (!v67)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v70 = v67 + 6;
      p_ec = std::pmr::get_default_resource(v65);
      v188 = 0;
      v189 = 0;
      vp::vx::data_flow::State<void>::get_value(v70, &p_ec);
      v71 = vp::vx::data_flow::Value::view_storage(&p_ec);
      v72 = *(v71 + 32);
      v73 = *(v71 + 16);
      *__p = *v71;
      *&__p[16] = v73;
      *&__p[32] = v72;
      vp::vx::data_flow::Value::~Value(&p_ec);
      if (!v241[0])
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v74 = v70 - 6;
      v65 = (*(*v241[0] + 48))(v241[0], v74, __p);
      v67 = v74 + 12;
    }

    while (v74 + 12 != v69);
  }

  v75 = std::__function::__value_func<void ()(std::string const&,CA::StreamDescription const&)>::~__value_func[abi:ne200100](&__ec);
  *&__ec.__val_ = &unk_2881B6878;
  __ec.__cat_ = v223;
  v241[0] = &__ec;
  v76 = *(a1 + 600);
  v77 = *(a1 + 608);
  if (!v76 && v77)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v77)
  {
    v78 = &v76[12 * v77];
    do
    {
      if (!v76)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v79 = v76 + 6;
      p_ec = std::pmr::get_default_resource(v75);
      v188 = 0;
      v189 = 0;
      vp::vx::data_flow::State<void>::get_value(v79, &p_ec);
      v80 = vp::vx::data_flow::Value::view_storage(&p_ec);
      v81 = *(v80 + 32);
      v82 = *(v80 + 16);
      *__p = *v80;
      *&__p[16] = v82;
      *&__p[32] = v81;
      vp::vx::data_flow::Value::~Value(&p_ec);
      if (!v241[0])
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v83 = v79 - 6;
      v75 = (*(*v241[0] + 48))(v241[0], v83, __p);
      v76 = v83 + 12;
    }

    while (v83 + 12 != v78);
  }

  v84 = std::__function::__value_func<void ()(std::string const&,CA::StreamDescription const&)>::~__value_func[abi:ne200100](&__ec);
  if (*(a1 + 136))
  {
    v85 = std::pmr::get_default_resource(v84);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v85;
    vp::vx::data_flow::State<void>::get_value((a1 + 128), __p);
    v86 = *vp::vx::data_flow::Value::view_storage(__p);
    vp::vx::data_flow::Value::~Value(__p);
    std::to_string(__p, v86);
    std::string::basic_string[abi:ne200100]<0>(&__ec, "FFT_BLOCK_SIZE");
    p_ec = &__ec;
    v84 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v223, &__ec, &p_ec);
    v87 = v84;
    if (*(v84 + 63) < 0)
    {
      operator delete(*(v84 + 40));
    }

    *(v87 + 40) = *__p;
    *(v87 + 56) = *&__p[16];
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v240) < 0)
    {
      operator delete(*&__ec.__val_);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  v181 = 0;
  if (*(a1 + 1104))
  {
    v88 = std::pmr::get_default_resource(v84);
    *&__p[8] = 0;
    *&__p[16] = 0;
    *__p = v88;
    vp::vx::data_flow::State<void>::get_value((a1 + 1096), __p);
    v89 = vp::vx::data_flow::Value::view_storage(__p);
    v90 = *v89;
    *v89 = 0;
    vp::vx::data_flow::Value::~Value(__p);
    if (v90)
    {
      CFRetain(v90);
      vp::cf::Predicate::create(__p, v90);
      CFRelease(v90);
      if (*__p)
      {
        vp::objc::ID::ID(v180, __p);
        vp::objc::ID::operator=(&v181, v180);
        vp::objc::ID::~ID(v180);
      }

      vp::objc::ID::~ID(__p);
      CFRelease(v90);
    }
  }

  *&__p[8] = a3;
  __p[16] = 0;
  LOBYTE(v192) = 0;
  cf = 0;
  v194.__r_.__value_.__s.__data_[0] = 0;
  v195 = 0;
  v196.__r_.__value_.__s.__data_[0] = 0;
  v197 = 0;
  LOBYTE(v198) = 0;
  v200 = 0;
  v203 = 0;
  LOBYTE(v204) = 0;
  v205 = 0;
  LOBYTE(v206) = 0;
  v207 = 0;
  __src = 0;
  v209 = 0;
  p_p_p_ec = &v212;
  v210 = 0;
  v215 = 0;
  LOBYTE(v216) = 0;
  v217 = 0;
  LOBYTE(v218) = 0;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  memset(v202, 0, 25);
  memset(v201, 0, sizeof(v201));
  v212 = 0u;
  v213 = 0u;
  *__p = &unk_2881B7E58;
  std::optional<std::__fs::filesystem::path>::operator=[abi:ne200100]<std::__fs::filesystem::path const&,void>(&v196, &buf);
  if (v200 == 1)
  {
    if (v199 < 0)
    {
      operator delete(v198);
    }

    v200 = 0;
  }

  v92 = *(&v230 + 1);
  v93 = v230;
  if (v230 != *(&v230 + 1))
  {
    v94 = std::system_category();
    do
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v94;
      std::__fs::filesystem::__status(v93, &__ec);
      if (p_ec)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v94;
        if (p_ec != 255)
        {
          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](v201, v93);
        }
      }

      ++v93;
    }

    while (v93 != v92);
  }

  v95 = *(&v228 + 1);
  v96 = v228;
  if (v228 != *(&v228 + 1))
  {
    v97 = std::system_category();
    do
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v97;
      std::__fs::filesystem::__status(v96, &__ec);
      if (p_ec)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v97;
        if (p_ec != 255)
        {
          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](&v201[1] + 8, v96);
        }
      }

      ++v96;
    }

    while (v96 != v95);
  }

  v98 = *(&v232 + 1);
  v99 = v232;
  if (v232 != *(&v232 + 1))
  {
    v100 = std::system_category();
    do
    {
      __ec.__val_ = 0;
      __ec.__cat_ = v100;
      std::__fs::filesystem::__status(v99, &__ec);
      if (p_ec)
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v100;
        if (p_ec != 255)
        {
          std::vector<std::__fs::filesystem::path>::push_back[abi:ne200100](v202, v99);
        }
      }

      ++v99;
    }

    while (v99 != v98);
  }

  v102 = *(&v234 + 1);
  v101 = v234;
  if (v234 != *(&v234 + 1))
  {
    v103 = v209;
    do
    {
      v104 = *v101;
      v105 = v101[1];
      if (v103 >= v210)
      {
        v106 = __src;
        v107 = v103 - __src;
        v108 = (v103 - __src) >> 3;
        v109 = v108 + 1;
        if ((v108 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v110 = v210 - __src;
        if ((v210 - __src) >> 2 > v109)
        {
          v109 = v110 >> 2;
        }

        if (v110 >= 0x7FFFFFFFFFFFFFF8)
        {
          v111 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v111 = v109;
        }

        if (v111)
        {
          std::allocator<std::pair<unsigned int,float>>::allocate_at_least[abi:ne200100](v111);
        }

        v112 = v108;
        v113 = (8 * v108);
        *v113 = v104;
        v113[1] = v105;
        v103 = (8 * v108 + 8);
        v114 = &v113[-2 * v112];
        memcpy(v114, v106, v107);
        v115 = __src;
        __src = v114;
        v209 = v103;
        v210 = 0;
        if (v115)
        {
          operator delete(v115);
        }
      }

      else
      {
        *v103 = v104;
        *(v103 + 1) = v105;
        v103 += 8;
      }

      v209 = v103;
      v101 += 2;
    }

    while (v101 != v102);
  }

  v116 = *(a1 + 1016);
  v117 = *(a1 + 1008);
  while (v116 != v117)
  {
    v116 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v116 - 8));
  }

  *(a1 + 1016) = v117;
  p_ec = &unk_2881B68C0;
  v188 = a1;
  p_p_ec = &p_ec;
  v118 = v212;
  *&v212 = 0;
  if (v118 == v211)
  {
    (*(*v118 + 32))(v118);
  }

  else if (v118)
  {
    (*(*v118 + 40))(v118);
  }

  if (!p_p_ec)
  {
    goto LABEL_154;
  }

  if (p_p_ec != &p_ec)
  {
    p_p_p_ec = &p_p_ec;
    *&v212 = p_p_ec;
LABEL_154:
    *p_p_p_ec = 0;
    goto LABEL_156;
  }

  *&v212 = v211;
  (*(*p_p_ec + 3))();
LABEL_156:
  std::__function::__value_func<applesauce::CF::NumberRef ()>::~__value_func[abi:ne200100](&p_ec);
  v120 = *(&v236 + 1);
  for (i = v236; i != v120; i += 4)
  {
    v121 = *i;
    v122 = *(i + 1);
    if (v122)
    {
      CFRetain(*(i + 1));
    }

    v179 = v122;
    v123 = v213;
    if (v213 >= *(&v213 + 1))
    {
      v125 = (v213 - *(&v212 + 1)) >> 4;
      v126 = v125 + 1;
      if ((v125 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v127 = *(&v213 + 1) - *(&v212 + 1);
      if ((*(&v213 + 1) - *(&v212 + 1)) >> 3 > v126)
      {
        v126 = v127 >> 3;
      }

      if (v127 >= 0x7FFFFFFFFFFFFFF0)
      {
        v128 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v128 = v126;
      }

      v241[1] = &v212 + 8;
      if (v128)
      {
        std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::allocate_at_least[abi:ne200100](v128);
      }

      v129 = (16 * v125);
      *&__ec.__val_ = 0;
      __ec.__cat_ = v129;
      v241[0] = 0;
      LODWORD(v129->__vftable) = v121;
      v129[1].__vftable = v122;
      v179 = 0;
      v240 = 16 * v125 + 16;
      std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__swap_out_circular_buffer(&v212 + 1, &__ec);
      v124 = v213;
      std::__split_buffer<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::~__split_buffer(&__ec);
    }

    else
    {
      *v213 = v121;
      *(v123 + 8) = v122;
      v124 = v123 + 16;
      v179 = 0;
    }

    *&v213 = v124;
  }

  v130 = *(a1 + 1048);
  v131 = *(a1 + 1040);
  while (v130 != v131)
  {
    v130 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener((v130 - 8));
  }

  *(a1 + 1048) = v131;
  *&__ec.__val_ = &unk_2881B69A8;
  __ec.__cat_ = a1;
  v241[0] = &__ec;
  v132 = v215;
  v215 = 0;
  a4 = v172;
  if (v132 == v214)
  {
    (*(*v132 + 32))(v132);
  }

  else if (v132)
  {
    (*(*v132 + 40))(v132);
  }

  if (!v241[0])
  {
    v133 = &v215;
    goto LABEL_182;
  }

  if (v241[0] != &__ec)
  {
    v133 = v241;
    v215 = v241[0];
LABEL_182:
    *v133 = 0;
    goto LABEL_184;
  }

  v215 = v214;
  (*(*v241[0] + 24))();
LABEL_184:
  std::__function::__value_func<applesauce::CF::DictionaryRef ()>::~__value_func[abi:ne200100](&__ec);
  HIBYTE(v220) = v238;
  v134 = vp::vx::detail::get_value<BOOL>(a1 + 96);
  if (v134)
  {
    v134 = vp::vx::DSP_Node_Factory::get_block_size(a1);
    *&v202[24] = v134;
    v203 = 1;
    if (v205 == 1)
    {
      v205 = 0;
    }

    if ((v207 & 1) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_199;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      goto LABEL_201;
    }

    v134 = vp::vx::DSP_Node_Factory::get_block_size(a1);
    if (v203 == 1)
    {
      v203 = 0;
    }

    if (v205 == 1)
    {
      v205 = 0;
    }

    v206 = v134;
    v135 = 1;
    goto LABEL_200;
  }

  v134 = vp::vx::DSP_Node_Factory::get_block_size(a1);
  if (v203 == 1)
  {
    v203 = 0;
  }

  v204 = v134;
  v205 = 1;
  if (v207 == 1)
  {
LABEL_199:
    v135 = 0;
LABEL_200:
    v207 = v135;
  }

LABEL_201:
  if (*(a1 + 1080))
  {
    v136 = std::pmr::get_default_resource(v134);
    v176 = 0uLL;
    v175 = v136;
    vp::vx::data_flow::State<void>::get_value((a1 + 1072), &v175);
    v137 = *vp::vx::data_flow::Value::view_storage(&v175);
    vp::vx::data_flow::Value::~Value(&v175);
  }

  else
  {
    v137 = 0;
  }

  LOBYTE(v220) = v137 & 1;
  v138 = std::pmr::get_default_resource(v134);
  v176 = 0uLL;
  v175 = v138;
  vp::vx::data_flow::State<void>::get_value((a1 + 1120), &v175);
  v139 = *vp::vx::data_flow::Value::view_storage(&v175);
  vp::vx::data_flow::Value::~Value(&v175);
  v221 = v139;
  v141 = std::pmr::get_default_resource(v140);
  v176 = 0uLL;
  v175 = v141;
  vp::vx::data_flow::State<void>::get_value((a1 + 1144), &v175);
  v142 = *vp::vx::data_flow::Value::view_storage(&v175);
  vp::vx::data_flow::Value::~Value(&v175);
  v216 = v142;
  v217 = 1;
  v144 = std::pmr::get_default_resource(v143);
  v176 = 0uLL;
  v175 = v144;
  vp::vx::data_flow::State<void>::get_value((a1 + 1168), &v175);
  v145 = *vp::vx::data_flow::Value::view_storage(&v175);
  vp::vx::data_flow::Value::~Value(&v175);
  v218 = v145;
  v219 = 1;
  if (*(a1 + 1215) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, *(a1 + 1192), *(a1 + 1200));
  }

  else
  {
    v178 = *(a1 + 1192);
  }

  v146 = &__p[16];
  if (v192 == 1)
  {
    if ((__p[39] & 0x80000000) != 0)
    {
      operator delete(*&__p[16]);
    }

    *&__p[16] = v178;
    *(&v178.__r_.__value_.__s + 23) = 0;
    v178.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    *&__p[16] = v178;
    memset(&v178, 0, sizeof(v178));
    LOBYTE(v192) = 1;
  }

  if ((__p[39] & 0x80000000) != 0)
  {
    v146 = *&__p[16];
    v147 = strlen(*&__p[16]);
    if (!*&__p[16])
    {
      v148 = 0;
      goto LABEL_216;
    }
  }

  else
  {
    v147 = strlen(&__p[16]);
  }

  v148 = CFStringCreateWithBytes(0, v146, v147, 0x8000100u, 0);
  v175 = v148;
  if (!v148)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

LABEL_216:
  v149 = cf;
  cf = v148;
  if (v149)
  {
    CFRelease(v149);
  }

  std::optional<std::__fs::filesystem::path>::operator=[abi:ne200100]<std::__fs::filesystem::path const&,void>(&v194, (a1 + 1216));
  v222 = *(a1 + 1240);
  vp::vx::dsp::v2::Graph_Builder::build(__p, v223, &v181, &v175);
  v150 = v175;
  v175 = 0;
  std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v174, v150);
  *&v174[8] = v176;
  *&v174[24] = v177;
  std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](&v175, 0);
  vp::vx::dsp::Graph_Builder::~Graph_Builder(__p);
  vp::objc::ID::~ID(&v181);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*&v223[16]);
  v151 = *v223;
  *v223 = 0;
  if (v151)
  {
    operator delete(v151);
  }

  *__p = &v236;
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v234)
  {
    *(&v234 + 1) = v234;
    operator delete(v234);
  }

  *__p = &v232;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = &v230;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  *__p = &v228;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v227[2]);
  v152 = v227[0];
  v227[0] = 0;
  if (v152)
  {
    operator delete(v152);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v18 = *v174;
  if (*v174)
  {
    goto LABEL_227;
  }

LABEL_237:
  v159 = vp::get_log(v152);
  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
  {
    v160 = vp::vx::get_log_context_info(&buf, a1);
    v161 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v162 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v163 = buf.__r_.__value_.__l.__size_;
    v164 = vp::get_log(v160);
    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
    {
      if (v162 >= 0)
      {
        v165 = v161;
      }

      else
      {
        v165 = v163;
      }

      v166 = buf.__r_.__value_.__r.__words[0];
      if (v162 >= 0)
      {
        v166 = &buf;
      }

      if (v165)
      {
        v167 = " ";
      }

      else
      {
        v167 = "";
      }

      *v223 = 136315394;
      *&v223[4] = v166;
      *&v223[12] = 2080;
      *&v223[14] = v167;
      _os_log_impl(&dword_2724B4000, v164, OS_LOG_TYPE_DEBUG, "%s%sdid create node", v223, 0x16u);
      LOBYTE(v162) = *(&buf.__r_.__value_.__s + 23);
    }

    if ((v162 & 0x80) != 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v168 = *v174;
  v169 = *&v174[16];
  *v174 = 0;
  *a4 = v168;
  a4[1] = v169;
  return std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](v174, 0);
}

void sub_27261F844(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::unique_ptr<vp::vx::dsp::Graph,vp::Allocator_Delete<vp::vx::dsp::Graph>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::detail::convert_to_c_str(unint64_t a1)
{
  v3 = a1;
  if (HIDWORD(a1) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v2;
  return (off_2881B67E0[HIDWORD(a1)])(&v4, &v3);
}

{
  v3 = a1;
  if (HIDWORD(a1) == 0xFFFFFFFF)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v2;
  return (off_2881B8E28[HIDWORD(a1)])(&v4, &v3);
}

uint64_t vp::vx::detail::get_value<BOOL>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_2881B6C08[v1])(&v4, a1);
}

uint64_t vp::vx::DSP_Node_Factory::get_block_size(vp::vx::DSP_Node_Factory *this)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = std::pmr::get_default_resource(this);
  vp::vx::data_flow::State<void>::get_value(this + 18, v4);
  v2 = *vp::vx::data_flow::Value::view_storage(v4);
  vp::vx::data_flow::Value::~Value(v4);
  return v2;
}

void sub_27261FC20(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::string const&,CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<applesauce::CF::NumberRef ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<applesauce::CF::DictionaryRef ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void vp::vx::dsp::Graph_Builder::~Graph_Builder(vp::vx::dsp::Graph_Builder *this)
{
  *this = &unk_2881B7E40;
  std::__function::__value_func<applesauce::CF::DictionaryRef ()>::~__value_func[abi:ne200100](this + 328);
  v4 = (this + 304);
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<applesauce::CF::NumberRef ()>::~__value_func[abi:ne200100](this + 272);
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v4 = (this + 200);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 152);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 144) == 1 && *(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 112) == 1 && *(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(this + 40) == 1 && *(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void vp::vx::DSP_Node_Configuration::~DSP_Node_Configuration(vp::vx::DSP_Node_Configuration *this)
{
  v3 = (this + 160);
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = (this + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 24);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

const void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvEUlT_E1_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_18Uplink_DSP_Node_IDENS9_20Downlink_DSP_Node_IDEEEEEEEDcSH_DpT0_@<X0>(void *a1@<X8>, int *a2@<X1>)
{
  result = vp::reflect_value_name_tag<vp::vx::Downlink_DSP_Node_ID,128ul>(*a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

const void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvEUlT_E1_EEJONS0_6__baseILNS0_6_TraitE0EJNS9_18Uplink_DSP_Node_IDENS9_20Downlink_DSP_Node_IDEEEEEEEDcSH_DpT0_@<X0>(void *a1@<X8>, int *a2@<X1>)
{
  result = vp::reflect_value_name_tag<vp::vx::Uplink_DSP_Node_ID,128ul>(*a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E0_NS_9allocatorISC_EEFN10applesauce2CF13DictionaryRefEjEEclEOj(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v12 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = *(v4 + 16);
  if (!v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_7:
    *a3 = 0;
    return;
  }

  v11[0] = v4;
  v11[1] = &v12;
  (*(*v8 + 24))(v9);
  if (v10 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v13 = v11;
  (off_2881B69E0[v10])(&v13, v9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2726201A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::DictionaryRef,vp::vx::data_flow::State<applesauce::CF::DictionaryRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B6810[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF13DictionaryRefEN2vp2vx9data_flow5StateISA_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

int *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF13DictionaryRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_@<X0>(uint64_t **a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v30 = *a2;
  v31 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *v4;
  v7 = *(*v4 + 4);
  v6 = *(*v4 + 5);
  *&v32 = *v4;
  *(&v32 + 1) = v7;
  v33 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *v4[1];
  v8 = v5 + 131;
  v9 = v5[131];
  v10 = v5[132];
  if (v9 >= v10)
  {
    v12 = v5[130];
    v13 = (v9 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - v12;
    v15 = v14 >> 4;
    if (v14 >> 4 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v38 = v5 + 133;
    if (v16)
    {
      if (v16 >> 59)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (*(*v5[133] + 16))(v5[133], 32 * v16, 8);
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    v36 = (v17 + 32 * v13);
    *&v37 = v36;
    *(&v37 + 1) = v17 + 32 * v16;
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF13DictionaryRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v36, &v30, &v32);
    *&v37 = v37 + 32;
    v18 = v5[131];
    v19 = v5[130];
    v20 = v36 + v19 - v18;
    if (v19 != v18)
    {
      v21 = v5[130];
      v22 = v36 + v19 - v18;
      do
      {
        *v22 = *v21;
        *(v22 + 8) = *(v21 + 8);
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v22 + 6) = *(v21 + 24);
        v21 += 32;
        v22 += 32;
      }

      while (v21 != v18);
      do
      {
        v19 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(v19) + 8;
      }

      while (v19 != v18);
    }

    v23 = v5[130];
    v5[130] = v20;
    v24 = v5[132];
    v29 = v37;
    *v8 = v37;
    *&v37 = v23;
    *(&v37 + 1) = v24;
    v35 = v23;
    v36 = v23;
    std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>> &>::~__split_buffer(&v35);
    v11 = v29;
  }

  else
  {
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF13DictionaryRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v5[131], &v30, &v32);
    v11 = v9 + 32;
    *v8 = v9 + 32;
  }

  *v8 = v11;
  v25 = v33;
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  default_resource = std::pmr::get_default_resource(v25);
  v33 = 0;
  v32 = default_resource;
  v39 = v30;
  v35 = v31;
  v36 = &v39;
  *&v37 = &v32;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v31, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &v35);
  v27 = vp::vx::data_flow::Value::view_storage(&v32);
  *a3 = *v27;
  *v27 = 0;
  vp::vx::data_flow::Value::~Value(&v32);
  return vp::vx::data_flow::State<void>::~State(&v30);
}

void sub_2726204B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>> &>::~__split_buffer(va);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  vp::vx::data_flow::State<void>::~State(&a12);
  _Unwind_Resume(a1);
}

int *_ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF13DictionaryRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(uint64_t a1, int *a2, __int128 *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(&v7, a2);
  *a1 = v7;
  v5 = v8;
  *(a1 + 8) = v8;
  v8 = 0uLL;
  *(a1 + 24) = 0;
  if (v5)
  {
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    operator new();
  }

  return vp::vx::data_flow::State<void>::~State(&v7);
}

void sub_272620668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(i - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::compare_value(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = (v3 | *a3) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return CFEqual(v3, v4) != 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::DictionaryRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6A00;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::DictionaryRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6A00;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EEclEOjSS_(uint64_t a1, unsigned int *a2, CFTypeRef *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 16);
      if (v10)
      {
        atomic_fetch_add((v7 + 1264), 1u);
        v11 = *(v7 + 8);
        v12 = *(a1 + 32);
        if (v5)
        {
          CFRetain(v5);
        }

        v13 = vp::vx::detail::convert_to_c_str(v11);
        v14 = bswap32(v12);
        *(&__s.__r_.__value_.__l.__data_ + 1) = v14;
        if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v19, v12);
        }

        else
        {
          strcpy(&__s.__r_.__value_.__s.__data_[5], "'");
          __s.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v19, &__s);
        }

        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v19;
        }

        else
        {
          v15 = v19.__r_.__value_.__r.__words[0];
        }

        if (v5)
        {
          v16 = CFCopyDescription(v5);
          v23 = v16;
          applesauce::CF::details::CFString_get_value<true>(&__p, v16);
          if (v16)
          {
            CFRelease(v16);
          }

          vp::vx::detail::strip(&__s, &__p);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__s, "null");
        }

        p_s = &__s;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v22, "%s property %s override is %s", v17, v13, v15, p_s);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if (v5 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        v19 = v22;
        memset(&v22, 0, sizeof(v22));
        v20 = 1;
        if (HIDWORD(v11))
        {
          (*(*v10 + 32))(v10, v4, &v19);
        }

        else
        {
          (*(*v10 + 24))(v10, v4, &v19);
        }

        if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!v5)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        operator delete(v22.__r_.__value_.__l.__data_);
        if (v5)
        {
LABEL_41:
          CFRelease(v5);
        }
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_272620EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a13);
  _Unwind_Resume(a1);
}

std::string *vp::vx::detail::strip(std::string *a1, std::string *a2)
{
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v31 = 10;
  v6 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v5, v5 + size, &v31);
  v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = a2->__r_.__value_.__l.__size_;
  }

  std::string::erase(a2, v6 - v8, v8 + v7 - v6);
  v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v10 = a2->__r_.__value_.__r.__words[0];
  v11 = a2->__r_.__value_.__l.__size_;
  if (v9 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2->__r_.__value_.__r.__words[0];
  }

  if (v9 >= 0)
  {
    v13 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = a2->__r_.__value_.__l.__size_;
  }

  v14 = (v12 + v13);
  if (v13)
  {
    v15 = v13 - 2;
    while (1)
    {
      v16 = v12;
      v12 = (v12 + 1);
      if (v12 == v14)
      {
        break;
      }

      v17 = v15--;
      if (v16->__r_.__value_.__s.__data_[0] == 32 && v16->__r_.__value_.__s.__data_[1] == 32)
      {
        if (v16 != v14)
        {
          if (&v16->__r_.__value_.__s.__data_[2] != v14)
          {
            v18 = 32;
            v19 = 1;
            do
            {
              v20 = v18;
              v18 = v12->__r_.__value_.__s.__data_[v19];
              if (v20 != 32 || v18 != 32)
              {
                v16->__r_.__value_.__s.__data_[1] = v18;
                v16 = (v16 + 1);
              }

              ++v19;
              --v17;
            }

            while (v17);
            v9 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
            v10 = a2->__r_.__value_.__r.__words[0];
            v11 = a2->__r_.__value_.__l.__size_;
          }

          v14 = (&v16->__r_.__value_.__l.__data_ + 1);
        }

        break;
      }
    }
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = v11;
  }

  else
  {
    v10 = a2;
  }

  std::string::erase(a2, v14 - v10, v10 + v9 - v14);
  v21 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v22 = a2->__r_.__value_.__r.__words[0];
    v23 = a2->__r_.__value_.__l.__size_;
    if (!v23)
    {
      goto LABEL_41;
    }

LABEL_38:
    v24 = v22;
    while (v24->__r_.__value_.__s.__data_[0] == 32)
    {
      v24 = (v24 + 1);
      if (!--v23)
      {
        goto LABEL_41;
      }
    }

    v25 = v24 - v22;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_44:
    v26 = a2->__r_.__value_.__r.__words[0];
    v21 = a2->__r_.__value_.__l.__size_;
    goto LABEL_45;
  }

  v22 = a2;
  v23 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (*(&a2->__r_.__value_.__s + 23))
  {
    goto LABEL_38;
  }

LABEL_41:
  v25 = -1;
  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_42:
  v26 = a2;
LABEL_45:
  v27 = v26 + v21;
  while (v21)
  {
    v28 = *--v27;
    --v21;
    if (v28 != 32)
    {
      v29 = v27 - v26;
      return std::string::basic_string(a1, a2, v25, v29, &v32);
    }
  }

  v29 = -1;
  return std::string::basic_string(a1, a2, v25, v29, &v32);
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, char *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B6A48;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED0Ev(void *a1)
{
  *a1 = &unk_2881B6A48;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF13DictionaryRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED1Ev(void *a1)
{
  *a1 = &unk_2881B6A48;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E0_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF13DictionaryRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  *a2 = v2;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E0_NS_9allocatorISC_EEFN10applesauce2CF13DictionaryRefEjEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B69A8;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E_NS_9allocatorISC_EEFN10applesauce2CF9NumberRefEjEEclEOj(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v12 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = *(v4 + 16);
  if (!v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_7:
    *a3 = 0;
    return;
  }

  v11[0] = v4;
  v11[1] = &v12;
  (*(*v8 + 16))(v9);
  if (v10 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v13 = v11;
  (off_2881B68F8[v10])(&v13, v9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2726214E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2881B6800[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISA_EEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSA_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

int *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF9NumberRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_@<X0>(uint64_t **a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v30 = *a2;
  v31 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *v4;
  v7 = *(*v4 + 4);
  v6 = *(*v4 + 5);
  *&v32 = *v4;
  *(&v32 + 1) = v7;
  v33 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *v4[1];
  v8 = v5 + 127;
  v9 = v5[127];
  v10 = v5[128];
  if (v9 >= v10)
  {
    v12 = v5[126];
    v13 = (v9 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - v12;
    v15 = v14 >> 4;
    if (v14 >> 4 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v38 = v5 + 129;
    if (v16)
    {
      if (v16 >> 59)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (*(*v5[129] + 16))(v5[129], 32 * v16, 8);
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    v36 = (v17 + 32 * v13);
    *&v37 = v36;
    *(&v37 + 1) = v17 + 32 * v16;
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF9NumberRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v36, &v30, &v32);
    *&v37 = v37 + 32;
    v18 = v5[127];
    v19 = v5[126];
    v20 = v36 + v19 - v18;
    if (v19 != v18)
    {
      v21 = v5[126];
      v22 = v36 + v19 - v18;
      do
      {
        *v22 = *v21;
        *(v22 + 8) = *(v21 + 8);
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v22 + 6) = *(v21 + 24);
        v21 += 32;
        v22 += 32;
      }

      while (v21 != v18);
      do
      {
        v19 = vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(v19) + 8;
      }

      while (v19 != v18);
    }

    v23 = v5[126];
    v5[126] = v20;
    v24 = v5[128];
    v29 = v37;
    *v8 = v37;
    *&v37 = v23;
    *(&v37 + 1) = v24;
    v35 = v23;
    v36 = v23;
    std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>> &>::~__split_buffer(&v35);
    v11 = v29;
  }

  else
  {
    _ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF9NumberRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(v5[127], &v30, &v32);
    v11 = v9 + 32;
    *v8 = v9 + 32;
  }

  *v8 = v11;
  v25 = v33;
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  default_resource = std::pmr::get_default_resource(v25);
  v33 = 0;
  v32 = default_resource;
  v39 = v30;
  v35 = v31;
  v36 = &v39;
  *&v37 = &v32;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v31, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &v35);
  v27 = vp::vx::data_flow::Value::view_storage(&v32);
  *a3 = *v27;
  *v27 = 0;
  vp::vx::data_flow::Value::~Value(&v32);
  return vp::vx::data_flow::State<void>::~State(&v30);
}

void sub_2726217F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>> &>::~__split_buffer(va);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  vp::vx::data_flow::State<void>::~State(&a12);
  _Unwind_Resume(a1);
}

int *_ZNSt3__116allocator_traitsIN2vp9AllocatorINS1_2vx16DSP_Node_Factory8ListenerIN10applesauce2CF9NumberRefEEEEEE9constructB8ne200100IS9_JRNS3_9data_flow5StateIS8_EEZZZZNS4_8new_nodeENS3_2io5ModelENS2_ISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSM_ENKUlSM_E_clISF_EESP_SM_EUlSM_T0_E_ELi0EEEvRSA_PSM_DpOT0_(uint64_t a1, int *a2, __int128 *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(&v7, a2);
  *a1 = v7;
  v5 = v8;
  *(a1 + 8) = v8;
  v8 = 0uLL;
  *(a1 + 24) = 0;
  if (v5)
  {
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    operator new();
  }

  return vp::vx::data_flow::State<void>::~State(&v7);
}

void sub_2726219A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>,vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    vp::vx::DSP_Node_Factory::Listener<applesauce::CF::DictionaryRef>::~Listener(i - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::vx::DSP_Node_Factory::Listener<applesauce::CF::NumberRef>>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::NumberRef>::compare_value(uint64_t a1, const __CFNumber **a2, const __CFNumber **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3)
  {
    if (v4)
    {
      v5 = CFNumberCompare(v3, v4, 0);
    }

    else
    {
      v5 = kCFCompareGreaterThan;
    }
  }

  else if (v4)
  {
    v5 = kCFCompareLessThan;
  }

  else
  {
    v5 = kCFCompareEqualTo;
  }

  return v5 == kCFCompareEqualTo;
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::NumberRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::NumberRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6918;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::NumberRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::NumberRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6918;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::NumberRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EEclEOjSS_(uint64_t a1, unsigned int *a2, CFTypeRef *a3)
{
  v26[20] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 16);
      if (v10)
      {
        atomic_fetch_add((v7 + 1264), 1u);
        v11 = *(v7 + 8);
        v12 = *(a1 + 32);
        if (v5)
        {
          CFRetain(v5);
        }

        v13 = vp::vx::detail::convert_to_c_str(v11);
        v14 = bswap32(v12);
        *(&__s.__r_.__value_.__l.__data_ + 1) = v14;
        if ((v14 - 32) > 0x5E || ((v14 >> 8) - 32) > 0x5E || ((v14 << 8 >> 24) - 32) > 0x5E || ((v14 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v20, v12);
        }

        else
        {
          strcpy(&__s.__r_.__value_.__s.__data_[5], "'");
          __s.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v20, &__s);
        }

        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v20;
        }

        else
        {
          v15 = v20.__r_.__value_.__r.__words[0];
        }

        if (v5)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&__s);
          applesauce::CF::convert_to<float,0>(v5);
          std::ostream::operator<<();
          std::stringbuf::str[abi:ne200100](&v18, &__s.__r_.__value_.__l.__size_);
          __s.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
          *(__s.__r_.__value_.__r.__words + *(__s.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
          __s.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v25 < 0)
          {
            operator delete(__p);
          }

          __s.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&__s.__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x2743CBE30](v26);
          vp::vx::detail::strip(&v19, &v18);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v19, "null");
        }

        v17 = &v19;
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v19.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v21, "%s parameter %s override is %s", v16, v13, v15, v17);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if (v5 && SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        __s = v21;
        memset(&v21, 0, sizeof(v21));
        v23 = 1;
        if (HIDWORD(v11))
        {
          (*(*v10 + 32))(v10, v4, &__s);
        }

        else
        {
          (*(*v10 + 24))(v10, v4, &__s);
        }

        if (v23 == 1 && SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!v5)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        operator delete(v21.__r_.__value_.__l.__data_);
        if (v5)
        {
LABEL_41:
          CFRelease(v5);
        }
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_2726222D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::NumberRef::~NumberRef(&a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  applesauce::CF::NumberRef::~NumberRef(&a13);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B6960;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED0Ev(void *a1)
{
  *a1 = &unk_2881B6960;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZZZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSB_ENKUlSB_E_clINS3_9data_flow5StateIN10applesauce2CF9NumberRefEEEEESE_SB_EUlSB_T0_E_NS_9allocatorISO_EEFvjRKSL_EED1Ev(void *a1)
{
  *a1 = &unk_2881B6960;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIZZZN2vp2vx16DSP_Node_Factory8new_nodeENS9_2io5ModelENS8_9AllocatorISt4byteEEENK3__0clEvENKUlT_E_clIjEEDaSH_EUlSH_E_EEJONS0_6__baseILNS0_6_TraitE1EJN10applesauce2CF9NumberRefENS9_9data_flow5StateISS_EEEEEEEEDcSH_DpT0_(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  *a2 = v2;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlT_E_NS_9allocatorISC_EEFN10applesauce2CF9NumberRefEjEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B68C0;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E0_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEEclESQ_SU_(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v24;
  std::string::basic_string[abi:ne200100](&v24, v6 + 7);
  if ((v26 & 0x80u) != 0)
  {
    v7 = v24;
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

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "_OUTPUT");
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24 + v26;
  }

  else
  {
    v9 = v24 + v25;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  std::to_string(&v23, vcvtad_u64_f64(*a3));
  if ((v26 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v25;
  }

  v12 = __p;
  std::string::basic_string[abi:ne200100](__p, v11 + 12);
  if (v22 < 0)
  {
    v12 = __p[0];
  }

  if (v11)
  {
    if ((v26 & 0x80u) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "_SAMPLE_RATE");
  v27 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p, &v27);
  v15 = v14;
  if (*(v14 + 63) < 0)
  {
    operator delete(v14[5]);
  }

  *(v15 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v23, *(a3 + 28));
  if ((v26 & 0x80u) == 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v25;
  }

  v17 = __p;
  std::string::basic_string[abi:ne200100](__p, v16 + 14);
  if (v22 < 0)
  {
    v17 = __p[0];
  }

  if (v16)
  {
    if ((v26 & 0x80u) == 0)
    {
      v18 = &v24;
    }

    else
    {
      v18 = v24;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_CHANNEL_COUNT");
  v27 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p, &v27);
  v20 = v19;
  if (*(v19 + 63) < 0)
  {
    operator delete(v19[5]);
  }

  *(v20 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E0_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6878;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEEclESQ_SU_(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v24;
  std::string::basic_string[abi:ne200100](&v24, v6 + 6);
  if ((v26 & 0x80u) != 0)
  {
    v7 = v24;
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

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "_INPUT");
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24 + v26;
  }

  else
  {
    v9 = v24 + v25;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  std::to_string(&v23, vcvtad_u64_f64(*a3));
  if ((v26 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v25;
  }

  v12 = __p;
  std::string::basic_string[abi:ne200100](__p, v11 + 12);
  if (v22 < 0)
  {
    v12 = __p[0];
  }

  if (v11)
  {
    if ((v26 & 0x80u) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24;
    }

    memmove(v12, v13, v11);
  }

  strcpy(v12 + v11, "_SAMPLE_RATE");
  v27 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p, &v27);
  v15 = v14;
  if (*(v14 + 63) < 0)
  {
    operator delete(v14[5]);
  }

  *(v15 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v23, *(a3 + 28));
  if ((v26 & 0x80u) == 0)
  {
    v16 = v26;
  }

  else
  {
    v16 = v25;
  }

  v17 = __p;
  std::string::basic_string[abi:ne200100](__p, v16 + 14);
  if (v22 < 0)
  {
    v17 = __p[0];
  }

  if (v16)
  {
    if ((v26 & 0x80u) == 0)
    {
      v18 = &v24;
    }

    else
    {
      v18 = v24;
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, "_CHANNEL_COUNT");
  v27 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p, &v27);
  v20 = v19;
  if (*(v19 + 63) < 0)
  {
    operator delete(v19[5]);
  }

  *(v20 + 5) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN2vp2vx16DSP_Node_Factory8new_nodeENS3_2io5ModelENS2_9AllocatorISt4byteEEENK3__0clEvEUlRKT_RKT0_E_NS_9allocatorISH_EEFvRKNS_12basic_stringIcNS_11char_traitsIcEENSI_IcEEEERKN2CA17StreamDescriptionEEE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B6830;
  a2[1] = v2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<BOOL vp::vx::detail::get_value<BOOL>(std::variant<BOOL,vp::vx::data_flow::State<BOOL>> const&)::{lambda(BOOL const&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,BOOL,vp::vx::data_flow::State<BOOL>> const&>(std::pmr *a1, int *a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value(a2, v5);
  v3 = *vp::vx::data_flow::Value::view_storage(v5);
  vp::vx::data_flow::Value::~Value(v5);
  return v3;
}

void sub_272622D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

double vp::vx::DSP_Node_Factory::get_configuration(void)const::$_0::operator()<std::__fs::filesystem::path>(const vp::vx::DSP_Node_Factory *a1, uint64_t a2, const std::string::value_type **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a3, a3[1]);
  }

  else
  {
    v22 = *a3;
  }

  v7 = (*(*a2 + 32))(&v23, a2, v6, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  log = vp::get_log(v7);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::vx::get_log_context_info(__p, a1);
    v10 = v21;
    v11 = v21;
    v12 = __p[1];
    v13 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v11 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = __p[0];
      if (v11 >= 0)
      {
        v15 = __p;
      }

      if (v14)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      v17 = *a3;
      if (*(a3 + 23) >= 0)
      {
        v17 = a3;
      }

      *buf = 136315906;
      v18 = &v23;
      if (SHIBYTE(v24) < 0)
      {
        v18 = v23;
      }

      v26 = v15;
      v27 = 2080;
      v28 = v16;
      v29 = 2080;
      v30 = v17;
      v31 = 2080;
      v32 = v18;
      _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_INFO, "%s%sadjust %s to %s", buf, 0x2Au);
      LOBYTE(v11) = v21;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *&v23;
  *a3 = v23;
  a3[2] = v24;
  return result;
}