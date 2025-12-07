uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t **std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = result;
    for (i = v1[1]; i != v2; std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(i))
    {
      i -= 32;
    }

    v1[1] = v2;
    v5 = **v3;
    v6 = (*v3)[3];
    v7 = ((*v3)[2] - v5) >> 5;

    return std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::deallocate[abi:ne200100](v6, v5, v7);
  }

  return result;
}

uint64_t std::__function::__value_func<vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *vp::vx::io::Direction_Pair<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>>::Direction_Pair(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2[3];
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2[7];
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(a1 + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 5);
  return a1;
}

void sub_27264327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_DWORD *std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::construct[abi:ne200100]<vp::rpb::Property_Info,vp::rpb::Property_Info const&,0>(_DWORD *result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = CFRetain(*(a2 + 8));
  }

  *(v3 + 1) = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    result = CFRetain(*(a2 + 16));
  }

  *(v3 + 2) = v5;
  *(v3 + 12) = *(a2 + 24);
  return result;
}

uint64_t std::__function::__value_func<vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t **std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = result;
    for (i = v1[1]; i != v2; std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(i))
    {
      i -= 32;
    }

    v1[1] = v2;
    v5 = **v3;
    v6 = (*v3)[3];
    v7 = ((*v3)[2] - v5) >> 5;

    return std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::deallocate[abi:ne200100](v6, v5, v7);
  }

  return result;
}

uint64_t std::__function::__value_func<vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v46 = 0;
  v47 = 1;
  v6 = *(a1 + 16);
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
    v17 = 0;
    *(a3 + 8) = 1;
    *a3 = 0;
LABEL_47:
    v46 = 0;
LABEL_48:
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v17);
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v9, v5);
    if (!v10)
    {
      v54[0] = 0x1300270000000ALL;
      v54[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
      v56 = 0;
      v57 = 0;
      v55 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v58);
      vp::vx::io::operator<<<char const(&)[45]>(&v48, v54, "property exchange does not support property ");
      MEMORY[0x2743CBB40](&v51, v5);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v48);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&cf, v54);
      if (SHIBYTE(v57) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v58, v55, v57 & 0x7FFFFFFFFFFFFFFFLL);
      }

LABEL_16:
      if (v38 == 1)
      {
        v22 = cf;
        cf = 0;
        if (v22)
        {
          CFRetain(v22);
          v43 = 1;
          v39 = v22;
          caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
          CFRelease(v22);
        }

        else
        {
          v43 = 1;
          v39 = 0;
          caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
        }

        if ((v43 & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x38uLL);
          vp::vx::io::Error::Error(&v48, &v39);
          v33 = caulk::bad_expected_access<vp::vx::io::Error>::bad_expected_access(exception, &v48);
        }

        v44 = v39;
        v39 = 0;
        v45 = 1;
        LOBYTE(v48) = 0;
        LOBYTE(v49) = 1;
      }

      else
      {
        v23 = v36;
        v24 = v35;
        v36 = 0uLL;
        *(&v35 + 1) = 0;
        v43 = 0;
        v39 = cf;
        v40 = v24;
        v41 = v23;
        v42 = v37;
        vp::vx::io::convert_error(v54, &v39);
        vp::objc::ID::ID(&v48, v54);
        vp::objc::ID::ID(&v44, &v48);
        v45 = 0;
        vp::objc::ID::~ID(&v48);
        vp::objc::ID::~ID(v54);
        LOBYTE(v48) = 0;
        LOBYTE(v49) = v45;
        if ((v45 & 1) == 0)
        {
          vp::objc::ID::ID(&v48, &v44);
          if ((v49 & 1) == 0)
          {
            if (v47)
            {
              v28 = v46;
              v46 = 0;
              caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
              vp::objc::ID::ID(&v46, &v48);
              vp::objc::ID::~ID(&v48);
              v48 = v28;
              v29 = v49;
              LOBYTE(v49) = v47;
              v47 = v29;
              goto LABEL_31;
            }

            vp::objc::ID::ID(v54, &v48);
            vp::objc::ID::operator=(&v48, &v46);
            vp::objc::ID::operator=(&v46, v54);
            goto LABEL_23;
          }

          if (v47)
          {
LABEL_30:
            v26 = v48;
            v48 = v46;
            v46 = v26;
            goto LABEL_31;
          }

LABEL_22:
          vp::objc::ID::ID(v54, &v46);
          vp::objc::ID::~ID(&v46);
          v46 = v48;
          v48 = 0;
          caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(0);
          vp::objc::ID::ID(&v48, v54);
          v25 = v49;
          LOBYTE(v49) = v47;
          v47 = v25;
LABEL_23:
          vp::objc::ID::~ID(v54);
LABEL_31:
          if (v49 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v48);
          }

          else
          {
            vp::objc::ID::~ID(&v48);
          }

          if (v45 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v44);
          }

          else
          {
            vp::objc::ID::~ID(&v44);
          }

          if (v43 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(v39);
          }

          else if (SHIBYTE(v41) < 0)
          {
            (*(*v42 + 24))(v42, *(&v40 + 1), *(&v41 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          if (v38 == 1)
          {
            caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(cf);
          }

          else if (SHIBYTE(v36) < 0)
          {
            (*(*v37 + 24))(v37, *(&v35 + 1), *(&v36 + 1) & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          goto LABEL_45;
        }
      }

      v48 = v44;
      v44 = 0;
      if (v47)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    v11 = v10;
    v48 = 0x2E002B00000000;
    v49 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Property_Exchange.cpp";
    v51 = 0;
    v52 = 0;
    v50 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v53);
    v12 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(&cf, &v48);
    if (SHIBYTE(v52) < 0)
    {
      (*(*v53[0] + 24))(v53[0], v50, v52 & 0x7FFFFFFFFFFFFFFFLL, 1, v12);
    }

    v13 = CFDataCreate(0, v11[3], v11[4] - v11[3]);
    v14 = v13;
    if (!v13)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v59 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 != CFDataGetTypeID())
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Could not construct");
    }

    v59 = 0;
    if (v38 == 1)
    {
      v16 = cf;
      cf = v14;
    }

    else
    {
      v19 = *(&v36 + 1);
      v18 = v37;
      v36 = 0uLL;
      v20 = *(&v35 + 1);
      v16 = cf;
      *(&v35 + 1) = 0;
      cf = v14;
      caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(0);
      v21 = v38;
      v38 = 1;
      if (v21 != 1)
      {
        if (v19 < 0)
        {
          (*(*v18 + 24))(v18, v20, v19 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_14;
      }
    }

    caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(v16);
LABEL_14:
    caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(0);
    if (v59)
    {
      CFRelease(v59);
    }

    goto LABEL_16;
  }

LABEL_45:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v27 = v47;
  *a3 = 0;
  *(a3 + 8) = v27;
  if (v27)
  {
    v17 = 0;
    *a3 = v46;
    goto LABEL_47;
  }

  vp::objc::ID::ID(a3, &v46);
  if (v47)
  {
    v17 = v46;
    goto LABEL_48;
  }

  vp::objc::ID::~ID(&v46);
}

void sub_272643AD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  __cxa_free_exception(v35);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef((v36 - 72));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27264360CLL);
}

void caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void vp::vx::io::convert_error(vp::vx::io *this, const vp::vx::io::Error *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = CFStringCreateWithBytes(0, "com.apple.coreaudio.VoiceProcessor", 34, 0x8000100u, 0);
  v18 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v8 = *(a2 + 2);
  v7 = (a2 + 16);
  v6 = v8;
  if (SHIBYTE(v7->data) < 0)
  {
    v7 = v6;
  }

  v9 = strlen(v7);
  if (v7)
  {
    v7 = CFStringCreateWithBytes(0, v7, v9, 0x8000100u, 0);
    cf = v7;
    if (!v7)
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v16, "Could not construct");
    }

    v5 = v18;
  }

  else
  {
    cf = 0;
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = v5;
  v19 = *MEMORY[0x277CCA450];
  v12 = v7;
  v20[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v14 = [v10 errorWithDomain:v11 code:543764335 userInfo:v13];
  *this = v14;

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_272643D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void **vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error>::~Expected(const void **this)
{
  if (*(this + 8) == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(*this);
  }

  else
  {
    vp::objc::ID::~ID(this);
  }

  return this;
}

uint64_t vp::Expected<applesauce::CF::TypeRef,vp::vx::io::Error>::~Expected(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::TypeRef,(void *)0>(*a1);
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 40), *(a1 + 16), *(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

uint64_t vp::Expected<applesauce::CF::DataRef,vp::vx::io::Error>::~Expected(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::DataRef,(void *)0>(*a1);
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 40), *(a1 + 16), *(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

vp::vx::io::Error *vp::vx::io::Error::Error(vp::vx::io::Error *this, const vp::vx::io::Error *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 5) = *(a2 + 5);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(this + 2, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v3 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v3;
  }

  return this;
}

{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 5) = *(a2 + 5);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(this + 2, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v3 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v3;
  }

  return this;
}

uint64_t caulk::bad_expected_access<vp::vx::io::Error>::bad_expected_access(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881C6338;
  *(a1 + 8) = *a2;
  *(a1 + 12) = *(a2 + 4);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 40);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external((a1 + 24), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v3;
  }

  return a1;
}

void caulk::bad_expected_access<vp::vx::io::Error>::~bad_expected_access(std::exception *this)
{
  this->__vftable = &unk_2881C6338;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](this[6].__vftable, this[3].__vftable, this[5].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_2881C6338;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](this[6].__vftable, this[3].__vftable, this[5].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::exception::~exception(this);

  JUMPOUT(0x2743CBFA0);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7CE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7CE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_3>,vp::Expected<applesauce::CF::TypeRef,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7CE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()@<X0>(std::pmr *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 2)
  {
    v10 = 0uLL;
    v7 = *(a1 + 8);
    v11 = 0;
    default_resource = v7;
    v5 = *(a1 + 5);
    v6 = *(a1 + 6);
  }

  else
  {
    if (*a2 != 1)
    {
      v10 = 0uLL;
      v11 = 0;
      default_resource = std::pmr::get_default_resource(a1);
      goto LABEL_7;
    }

    v10 = 0uLL;
    v4 = *(a1 + 4);
    v11 = 0;
    default_resource = v4;
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
  }

  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(&v10, v5, v6, (v6 - v5) >> 5);
LABEL_7:
  *a3 = v10;
  v8 = default_resource;
  *(a3 + 16) = v11;
  *(a3 + 24) = v8;
  v10 = 0uLL;
  v11 = 0;
  *(a3 + 32) = 1;
  v13 = &v10;
  return std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void *std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Property_Info*,vp::rpb::Property_Info*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    result = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((result + 3), a4);
    v8 = result;
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[4 * a4];
    while (a2 != a3)
    {
      *v8 = *a2;
      v9 = *(a2 + 8);
      if (v9)
      {
        result = CFRetain(*(a2 + 8));
      }

      *(v8 + 8) = v9;
      v10 = *(a2 + 16);
      if (v10)
      {
        result = CFRetain(*(a2 + 16));
      }

      *(v8 + 16) = v10;
      *(v8 + 24) = *(a2 + 24);
      a2 += 32;
      v8 += 32;
    }

    v7[1] = v8;
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy_deallocate(uint64_t *a1)
{
  v2 = a1 + 1;
  v3 = a1 + 5;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);

  operator delete(a1);
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy(uint64_t a1)
{
  v1 = (a1 + 8);
  v3 = (a1 + 40);
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v1;
  return std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C98;
  v1 = a1 + 1;
  v2 = a1 + 5;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_2>,vp::Expected<std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C98;
  v2 = a1 + 1;
  v4 = a1 + 5;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<vp::Allocator<vp::rpb::Property_Info>,vp::rpb::Property_Info*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(v5);
      v5 += 32;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<vp::rpb::Property_Info,vp::Allocator<vp::rpb::Property_Info> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 32;
    std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::destroy[abi:ne200100]<vp::rpb::Property_Info,0>(v3 - 32);
  }

  if (*a1)
  {
    std::allocator_traits<vp::Allocator<vp::rpb::Property_Info>>::deallocate[abi:ne200100](**(a1 + 32), *a1, (*(a1 + 24) - *a1) >> 5);
  }

  return a1;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::operator()(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  LODWORD(v23) = 2143289344;
  v24 = 1;
  v6 = *(a1 + 16);
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
    *(a3 + 8) = 1;
    *a3 = 2143289344;
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(v9, v5);
    if (v10)
    {
      v16[0] = *(v10 + 5);
      v20 = 1;
    }

    else
    {
      v28[0] = 0x1300240000000ALL;
      v28[1] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Parameter_Exchange.cpp";
      v30 = 0;
      v31 = 0;
      v29 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v32);
      vp::vx::io::operator<<<char const(&)[47]>(&v25, v28, "parameter exchange does not support parameter ");
      MEMORY[0x2743CBB40](&v27, v5);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v25);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v16, v28);
      if (SHIBYTE(v31) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v32, v29, v31 & 0x7FFFFFFFFFFFFFFFLL);
      }

      if ((v20 & 1) == 0)
      {
        vp::vx::io::convert_error(v28, v16);
        vp::objc::ID::ID(&v25, v28);
        vp::objc::ID::ID(&v21, &v25);
        v22 = 0;
        vp::objc::ID::~ID(&v25);
        vp::objc::ID::~ID(v28);
        LOBYTE(v25) = 0;
        v26 = v22;
        if ((v22 & 1) == 0)
        {
          vp::objc::ID::ID(&v25, &v21);
          if ((v26 & 1) == 0)
          {
            if (v24)
            {
              v14 = v23;
              vp::objc::ID::ID(&v23, &v25);
              vp::objc::ID::~ID(&v25);
              LODWORD(v25) = v14;
              v15 = v26;
              v26 = v24;
              v24 = v15;
              goto LABEL_18;
            }

            vp::objc::ID::ID(v28, &v25);
            vp::objc::ID::operator=(&v25, &v23);
            vp::objc::ID::operator=(&v23, v28);
            goto LABEL_17;
          }

          if (v24)
          {
            goto LABEL_8;
          }

LABEL_16:
          vp::objc::ID::ID(v28, &v23);
          vp::objc::ID::~ID(&v23);
          LODWORD(v23) = v25;
          vp::objc::ID::ID(&v25, v28);
          v12 = v26;
          v26 = v24;
          v24 = v12;
LABEL_17:
          vp::objc::ID::~ID(v28);
          goto LABEL_18;
        }

LABEL_7:
        LODWORD(v25) = v21;
        if (v24)
        {
LABEL_8:
          v11 = v25;
          LODWORD(v25) = v23;
          LODWORD(v23) = v11;
LABEL_18:
          if ((v26 & 1) == 0)
          {
            vp::objc::ID::~ID(&v25);
          }

          if ((v22 & 1) == 0)
          {
            vp::objc::ID::~ID(&v21);
          }

          if ((v20 & 1) == 0 && SHIBYTE(v18) < 0)
          {
            (*(*v19 + 24))(v19, v17, v18 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          goto LABEL_25;
        }

        goto LABEL_16;
      }
    }

    caulk::expected<float,vp::vx::io::Error>::value(v16);
    LODWORD(v21) = v16[0];
    v22 = 1;
    LOBYTE(v25) = 0;
    v26 = 1;
    goto LABEL_7;
  }

LABEL_25:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v13 = v24;
  *a3 = 0;
  *(a3 + 8) = v13;
  if (v13)
  {
    *a3 = v23;
  }

  else
  {
    vp::objc::ID::ID(a3, &v23);
    if ((v24 & 1) == 0)
    {
      vp::objc::ID::~ID(&v23);
    }
  }
}

void sub_272644B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, id a18, char a20)
{
  if ((a15 & 1) == 0 && SHIBYTE(a13) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a14, a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if ((a20 & 1) == 0)
  {
    vp::objc::ID::~ID(&a18);
  }

  _Unwind_Resume(a1);
}

const vp::vx::io::Error *caulk::expected<float,vp::vx::io::Error>::value(const vp::vx::io::Error *result)
{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    vp::vx::io::Error::Error(v4, v1);
    v3 = caulk::bad_expected_access<vp::vx::io::Error>::bad_expected_access(exception, v4);
  }

  return result;
}

{
  v1 = result;
  if ((*(result + 48) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    vp::vx::io::Error::Error(v3, v1);
    *exception = &unk_2881C6338;
    vp::vx::io::Error::Error((exception + 1), v3);
  }

  return result;
}

void sub_272644BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (SHIBYTE(a13) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a14, a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B7C50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_1>,vp::Expected<float,vp::rpb::Error> ()(unsigned int,vp::rpb::Scope,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::allocator_traits<vp::Allocator<vp::rpb::Parameter_Info>>::destroy[abi:ne200100]<vp::rpb::Parameter_Info,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::operator()@<X0>(std::pmr *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 2)
  {
    v10 = 0uLL;
    v7 = *(a1 + 8);
    v11 = 0;
    default_resource = v7;
    v5 = *(a1 + 5);
    v6 = *(a1 + 6);
  }

  else
  {
    if (*a2 != 1)
    {
      v10 = 0uLL;
      v11 = 0;
      default_resource = std::pmr::get_default_resource(a1);
      goto LABEL_7;
    }

    v10 = 0uLL;
    v4 = *(a1 + 4);
    v11 = 0;
    default_resource = v4;
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
  }

  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(&v10, v5, v6, (v6 - v5) >> 5);
LABEL_7:
  *a3 = v10;
  v8 = default_resource;
  *(a3 + 16) = v11;
  *(a3 + 24) = v8;
  v10 = 0uLL;
  v11 = 0;
  *(a3 + 32) = 1;
  v13 = &v10;
  return std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void *std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__init_with_size[abi:ne200100]<vp::rpb::Parameter_Info*,vp::rpb::Parameter_Info*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 59)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    result = std::pmr::polymorphic_allocator<std::unique_ptr<vp::vx::components::Audio_Statistics::Payload_Key_State,vp::Allocator_Delete<vp::vx::components::Audio_Statistics::Payload_Key_State>>>::allocate[abi:ne200100]((result + 3), a4);
    v8 = result;
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[4 * a4];
    while (a2 != a3)
    {
      *v8 = *a2;
      v9 = *(a2 + 8);
      if (v9)
      {
        result = CFRetain(*(a2 + 8));
      }

      *(v8 + 8) = v9;
      v10 = *(a2 + 16);
      if (v10)
      {
        result = CFRetain(*(a2 + 16));
      }

      *(v8 + 16) = v10;
      *(v8 + 24) = *(a2 + 24);
      a2 += 32;
      v8 += 32;
    }

    v7[1] = v8;
  }

  return result;
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy_deallocate(uint64_t *a1)
{
  v2 = a1 + 1;
  v3 = a1 + 5;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);

  operator delete(a1);
}

uint64_t **std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::destroy(uint64_t a1)
{
  v1 = (a1 + 8);
  v3 = (a1 + 40);
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v1;
  return std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C08;
  v1 = a1 + 1;
  v2 = a1 + 5;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0,std::allocator<vp::vx::io::Graph::connect(vp::rpb::Item)::$_0>,vp::Expected<std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>,vp::rpb::Error> ()(vp::rpb::Scope)>::~__func(void *a1)
{
  *a1 = &unk_2881B7C08;
  v2 = a1 + 1;
  v4 = a1 + 5;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<vp::rpb::Parameter_Info,vp::Allocator<vp::rpb::Parameter_Info>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_commit<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>(void *result, const char *a2, char *__src, uint64_t a4)
{
  v4 = *(a2 + 1);
  if (v4 > __src)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 2);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v4 + 28 * v5;
  if (v8 < __src)
  {
LABEL_16:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 3);
  if (v9 < v5)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  v11 = result;
  if (v9 == v5)
  {

    return boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>(result, a2, __src, a4);
  }

  else
  {
    if (v8 == __src)
    {
      *v8 = *a4;
      v14 = *(a4 + 4);
      *(v8 + 20) = *(a4 + 20);
      *(v8 + 4) = v14;
      ++*(a2 + 2);
    }

    else
    {
      *v8 = *(v8 - 28);
      *(v8 + 4) = *(v8 - 24);
      *(v8 + 20) = *(v8 - 8);
      ++*(a2 + 2);
      v12 = v8 - 28 - __src;
      if ((v8 - 28) != __src)
      {
        result = memmove(__src + 28, __src, v12);
      }

      *__src = *a4;
      v13 = *(a4 + 4);
      *(__src + 20) = *(a4 + 20);
      *(__src + 4) = v13;
    }

    *v11 = __src;
  }

  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x924924924924924)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x924924924924924)
  {
    v6 = 0x924924924924924;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x924924924924924)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 28 * v8, 4);
  v15 = v14;
  v23[1] = a2;
  v23[2] = v8;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    if (v16 != a3)
    {
      memmove(v14, *(a2 + 1), a3 - v16);
      v18 = &v15[a3 - v16];
    }
  }

  *v18 = *a4;
  v19 = *(a4 + 4);
  *(v18 + 20) = *(a4 + 20);
  *(v18 + 4) = v19;
  if (a3)
  {
    v20 = &v16[28 * v17];
    if (v20 != a3)
    {
      memmove(v18 + 28, a3, v20 - a3);
    }
  }

  v23[0] = 0;
  if (v16)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 28 * *(a2 + 3), 4);
  }

  v21 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v21;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::~scoped_array_deallocator(v23);
  *a1 = &a3[*(a2 + 1) - v13];
  return result;
}

void sub_272645578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 28 * *(a1 + 16), 4);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * (*a2 - a1);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[7 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 7;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

BOOL vp::vx::io::operator<(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6;
    if (v5 == v6)
    {
      return a1[2] < a2[2];
    }
  }

  return result;
}

uint64_t vp::vx::io::Graph_Builder::Graph_Builder(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  *a1 = a2;
  v5 = *a3;
  *(a1 + 24) = *(a3 + 2);
  *(a1 + 8) = v5;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  default_resource = std::pmr::get_default_resource(a1);
  *(a1 + 80) = default_resource;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v7 = std::pmr::get_default_resource(default_resource);
  *(a1 + 136) = v7;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v8 = std::pmr::get_default_resource(v7);
  *(a1 + 168) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v9 = std::pmr::get_default_resource(v8);
  *(a1 + 200) = v9;
  *(a1 + 208) = 0;
  v10 = std::pmr::get_default_resource(v9);
  *(a1 + 216) = v10;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v11 = std::pmr::get_default_resource(v10);
  *(a1 + 248) = v11;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v12 = std::pmr::get_default_resource(v11);
  *(a1 + 280) = v12;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v13 = std::pmr::get_default_resource(v12);
  *(a1 + 336) = v13;
  *(a1 + 344) = 0;
  v14 = std::pmr::get_default_resource(v13);
  *(a1 + 352) = v14;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v15 = std::pmr::get_default_resource(v14);
  *(a1 + 384) = v15;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = std::pmr::get_default_resource(v15);
  return a1;
}

uint64_t vp::vx::io::Graph_Builder::add_node(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(a1 + 72);
  v15 = v3;
  v4 = *a2;
  v16 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v13 = 0;
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  if (!v5 && v6)
  {
LABEL_15:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = *(&v4 + 1);
  v14 = &v5[24 * v6];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(v5, &v14, v3, &v13))
  {
    v14 = v13;
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>(&v12, (a1 + 80), &v14, &v15);
    v7 = *(&v16 + 1);
  }

  else
  {
    v7 = v11;
    if (!*(a1 + 88) && v13)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 72);
  *(a1 + 72) = v8 + 1;
  v9 = v8 | 0x100000000;
  if ((v9 & 0x100000000) != 0)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_272645990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a2)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272645904);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(char *a1, char **a2, unsigned int a3, char **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[24 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>(unint64_t *a1, const char *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a2 + 1);
  if (v5 > *a3)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 2);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v5 + 24 * v6;
  if (v4 > v8)
  {
LABEL_20:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 3);
  if (v9 < v6)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v9 == v6)
  {
    v20 = *a3;

    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>(a1, a2, v20, a4);
  }

  else
  {
    if (v8 == v4)
    {
      *v8 = *a4;
      *(v8 + 8) = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      ++*(a2 + 2);
    }

    else
    {
      v13 = v8 - 24;
      *v8 = *(v8 - 24);
      *(v8 + 8) = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      ++*(a2 + 2);
      if (v8 - 24 != v4)
      {
        v14 = v8 - 24;
        do
        {
          v15 = *(v14 - 24);
          v14 -= 24;
          *v13 = v15;
          v16 = *(v13 - 16);
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v17 = *(v13 + 16);
          *(v13 + 8) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v13 = v14;
        }

        while (v14 != v4);
      }

      *v4 = *a4;
      v18 = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v19 = *(v4 + 16);
      *(v4 + 8) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *a1 = *a3;
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 32);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_272645ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::add_node_decorator(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[15];
  v5 = a1[16];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[14];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[17] + 16))(a1[17], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[14];
  v16 = a1[15];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[14];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[14];
  a1[14] = v18;
  v23 = a1[16];
  *(a1 + 15) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Decorator_Factory>>>::deallocate[abi:ne200100](a1[17], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[15] = v7;
}

void sub_2726460E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726460A8);
}

void vp::vx::io::Graph_Builder::add_node_delegate(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[19];
  v5 = a1[20];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[18];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[21] + 16))(a1[21], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[18];
  v16 = a1[19];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[18];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[18];
  a1[18] = v18;
  v23 = a1[20];
  *(a1 + 19) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Delegate_Factory>>>::deallocate[abi:ne200100](a1[21], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[19] = v7;
}

void sub_2726462D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272646298);
}

void vp::vx::io::Graph_Builder::add_node_command(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[23];
  v5 = a1[24];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[22];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[25] + 16))(a1[25], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[22];
  v16 = a1[23];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[22];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[22];
  a1[22] = v18;
  v23 = a1[24];
  *(a1 + 23) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Node_Command_Factory>>>::deallocate[abi:ne200100](a1[25], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[23] = v7;
}

void sub_2726464C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272646488);
}

uint64_t vp::vx::io::Graph_Builder::add_port(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!*a4)
  {
    _os_crash();
    __break(1u);
    goto LABEL_55;
  }

  v8 = *(a1 + 208);
  *v43 = v8;
  *&v43[4] = a2;
  *&v43[12] = a3;
  v9 = *(a1 + 224);
  v10 = *(a1 + 232);
  v42 = v9;
  if (!v9 && v10)
  {
LABEL_55:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_upper_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(&__src, &v42, &v9[16 * v10], v8);
  v11 = __src;
  v12 = *(a1 + 224);
  if (v12 > __src)
  {
    goto LABEL_56;
  }

  v13 = *(a1 + 232);
  if (!v12 && v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v14 = (v12 + 16 * v13);
  if (__src > v14)
  {
LABEL_56:
    v24 = "this->priv_in_range_or_end(position)";
    v25 = 1862;
    v26 = "emplace";
    goto LABEL_57;
  }

  v15 = *(a1 + 240);
  if (v15 < v13)
  {
LABEL_53:
    v24 = "this->m_holder.capacity() >= this->m_holder.m_size";
    v25 = 2821;
    v26 = "priv_insert_forward_range";
    goto LABEL_57;
  }

  if (v15 == v13)
  {
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>(&v42, (a1 + 216), __src, v43);
  }

  else if (v14 == __src)
  {
    *v14 = *v43;
    v17 = *&v43[4];
    *(v14 + 3) = *&v43[12];
    *(v14 + 4) = v17;
    ++*(a1 + 232);
  }

  else
  {
    *v14 = *(v14 - 4);
    *(v14 + 4) = *(v14 - 12);
    *(v14 + 3) = *(v14 - 1);
    ++*(a1 + 232);
    if (v14 - 16 != v11)
    {
      memmove(v11 + 16, v11, v14 - 16 - v11);
    }

    *v11 = *v43;
    v16 = *&v43[4];
    *(v11 + 3) = *&v43[12];
    *(v11 + 4) = v16;
  }

  *v43 = a2;
  v18 = *(a1 + 208);
  *&v43[8] = a3;
  *&v43[12] = v18;
  v20 = *(a1 + 256);
  v19 = *(a1 + 264);
  if (!v20 && v19)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v21 = *(a1 + 256);
  if (v19)
  {
    v21 = *(a1 + 256);
    v22 = *(a1 + 264);
    do
    {
      if (v22 != 1 && !v21)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v21)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (vp::vx::io::operator<((v21 + 16 * (v22 >> 1)), v43))
      {
        v21 += 16 * (v22 >> 1) + 16;
        v22 += ~(v22 >> 1);
      }

      else
      {
        v22 >>= 1;
      }
    }

    while (v22);
  }

  v23 = v20 + 16 * v19;
  if (v21 == v23)
  {
    goto LABEL_29;
  }

  if (!v21)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (vp::vx::io::operator<(v43, v21))
  {
LABEL_29:
    v24 = "this->priv_in_range_or_end(position)";
    v25 = 1862;
    v26 = "emplace";
    if (v20 <= v21 && v21 <= v23)
    {
      v27 = *(a1 + 272);
      if (v27 >= v19)
      {
        if (v27 == v19)
        {
          boost::container::vector<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>*,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>(&v42, (a1 + 248), v21, v43);
        }

        else if (v21 == v23)
        {
          v30 = *&v43[8];
          *v23 = *v43;
          *(v23 + 8) = v30;
          *(v23 + 12) = v18;
          ++*(a1 + 264);
        }

        else
        {
          *v23 = *(v23 - 16);
          v28 = *(v23 - 4);
          *(v23 + 8) = *(v23 - 8);
          *(v23 + 12) = v28;
          ++*(a1 + 264);
          if (v23 - 16 != v21)
          {
            memmove((v21 + 16), v21, v23 - 16 - v21);
          }

          v29 = *v43;
          *(v21 + 8) = *&v43[8];
          *v21 = v29;
          *(v21 + 12) = *&v43[12];
        }

        goto LABEL_40;
      }

      goto LABEL_53;
    }

LABEL_57:
    __assert_rtn(v26, "vector.hpp", v25, v24);
  }

  if (!v20)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_40:
  v31 = *(a1 + 208);
  *v43 = v31;
  v32 = *a4;
  *&v43[8] = *a4;
  *a4 = 0;
  a4[1] = 0;
  __src = 0;
  v33 = *(a1 + 288);
  v34 = *(a1 + 296);
  if (!v33 && v34)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v39 = *(&v32 + 1);
  v42 = &v33[24 * v34];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::priv_insert_unique_prepare(v33, &v42, v31, &__src))
  {
    v42 = __src;
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>(v40, (a1 + 280), &v42, v43);
    v35 = *&v43[16];
  }

  else
  {
    v35 = v39;
    if (!*(a1 + 288) && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(a1 + 208);
  *(a1 + 208) = v36 + 1;
  v37 = v36 | 0x100000000;
  if ((v37 & 0x100000000) != 0)
  {
    return v37;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_272646A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a2)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272646844);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::priv_insert_unique_prepare(char *a1, char **a2, unsigned int a3, char **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[24 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>(unint64_t *a1, const char *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a2 + 1);
  if (v5 > *a3)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 2);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v5 + 24 * v6;
  if (v4 > v8)
  {
LABEL_20:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 3);
  if (v9 < v6)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v9 == v6)
  {
    v20 = *a3;

    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>(a1, a2, v20, a4);
  }

  else
  {
    if (v8 == v4)
    {
      *v8 = *a4;
      *(v8 + 8) = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      ++*(a2 + 2);
    }

    else
    {
      v13 = v8 - 24;
      *v8 = *(v8 - 24);
      *(v8 + 8) = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      ++*(a2 + 2);
      if (v8 - 24 != v4)
      {
        v14 = v8 - 24;
        do
        {
          v15 = *(v14 - 24);
          v14 -= 24;
          *v13 = v15;
          v16 = *(v13 - 16);
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v17 = *(v13 + 16);
          *(v13 + 8) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v13 = v14;
        }

        while (v14 != v4);
      }

      *v4 = *a4;
      v18 = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v19 = *(v4 + 16);
      *(v4 + 8) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *a1 = *a3;
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 32);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_272646F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,std::shared_ptr<vp::vx::io::Port_Factory>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>*,boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>(void *a1, const char *a2, char *a3, uint64_t *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4 == 0xFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0xFFFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 60)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 16 * v9, 4);
  v16 = v15;
  v24[1] = a2;
  v24[2] = v9;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v15;
  if (v17)
  {
    v19 = v15;
    if (v17 != a3)
    {
      memmove(v15, *(a2 + 1), a3 - v17);
      v19 = &v16[a3 - v17];
    }
  }

  v20 = *a4;
  *(v19 + 2) = *(a4 + 2);
  *v19 = v20;
  *(v19 + 3) = *(a4 + 3);
  if (a3)
  {
    v21 = &v17[16 * v18];
    if (v21 != a3)
    {
      memmove(v19 + 16, a3, v21 - a3);
    }
  }

  v24[0] = 0;
  if (v17)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 16 * *(a2 + 3), 4);
  }

  v22 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v22;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>::~scoped_array_deallocator(v24);
  *a1 = &a3[*(a2 + 1) - v14];
  return result;
}

void sub_2726471E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Node_Terminal_Address,vp::vx::io::Object_ID<vp::vx::io::Port>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 16 * *(a1 + 16), 4);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_upper_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 4;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &v4[4 * (v5 >> 1)];
      if (*v7 <= a4)
      {
        v4 = v7 + 4;
        *a2 = v7 + 4;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>(void *a1, const char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4 == 0xFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0xFFFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 60)
  {
LABEL_25:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 16 * v9, 4);
  v16 = v15;
  v24[1] = a2;
  v24[2] = v9;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v19 = v15;
  if (v17)
  {
    v19 = v15;
    if (v17 != a3)
    {
      memmove(v15, *(a2 + 1), a3 - v17);
      v19 = &v16[a3 - v17];
    }
  }

  *v19 = *a4;
  v20 = *(a4 + 4);
  *(v19 + 3) = *(a4 + 12);
  *(v19 + 4) = v20;
  if (a3)
  {
    v21 = &v17[16 * v18];
    if (v21 != a3)
    {
      memmove(v19 + 16, a3, v21 - a3);
    }
  }

  v24[0] = 0;
  if (v17)
  {
    (*(**a2 + 24))(*a2, *(a2 + 1), 16 * *(a2 + 3), 4);
  }

  v22 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v22;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::~scoped_array_deallocator(v24);
  *a1 = &a3[*(a2 + 1) - v14];
  return result;
}

void sub_2726474EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 16 * *(a1 + 16), 4);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::add_port_decorator(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1[40];
  v5 = a1[41];
  if (v4 < v5)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    *a2 = 0;
    a2[1] = 0;
    v7 = v4 + 2;
    goto LABEL_22;
  }

  v8 = a1[39];
  v9 = (v4 - v8) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v11 = v5 - v8;
  if (v11 >> 3 > v10)
  {
    v10 = v11 >> 3;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF0)
  {
    v12 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (*(*a1[42] + 16))(a1[42], 16 * v12, 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (v13 + 16 * v9);
  *v14 = *a2;
  v7 = v14 + 1;
  *&v15 = v14 + 1;
  *(&v15 + 1) = v13 + 16 * v12;
  v24 = v15;
  *a2 = 0;
  a2[1] = 0;
  v17 = a1[39];
  v16 = a1[40];
  v18 = v14 + v17 - v16;
  if (v16 != v17)
  {
    v19 = (v14 + v17 - v16);
    v20 = a1[39];
    do
    {
      *v19++ = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
    }

    while (v20 != v16);
    do
    {
      v21 = *(v17 + 8);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v17 += 16;
    }

    while (v17 != v16);
  }

  v22 = a1[39];
  a1[39] = v18;
  v23 = a1[41];
  *(a1 + 20) = v24;
  if (v22)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Port_Decorator_Factory>>>::deallocate[abi:ne200100](a1[42], v22, (v23 - v22) >> 4);
  }

LABEL_22:
  a1[40] = v7;
}

void sub_2726476FC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726476C4);
}

uint64_t vp::vx::io::Graph_Builder::add_wire(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*a6)
  {
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v9 = *(a1 + 344);
  v24 = v9;
  *v25 = a2;
  *&v25[8] = a3;
  *&v25[12] = a4;
  v26 = a5;
  __src = 0;
  v10 = *(a1 + 360);
  v11 = *(a1 + 368);
  if (!v10 && v11)
  {
LABEL_21:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v23 = &v10[7 * v11];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_unique_prepare(v10, &v23, v9, &__src))
  {
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>>::priv_insert_commit<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,vp::vx::io::Wire_Address>>(&v23, (a1 + 352), __src, &v24);
  }

  else if (!*(a1 + 360) && __src)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

  v12 = *(a1 + 344);
  v24 = v12;
  v13 = *a6;
  *&v25[4] = *a6;
  *a6 = 0;
  a6[1] = 0;
  __src = 0;
  v14 = *(a1 + 392);
  v15 = *(a1 + 400);
  if (!v14 && v15)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v20 = *(&v13 + 1);
  v23 = &v14[24 * v15];
  if (boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::priv_insert_unique_prepare(v14, &v23, v12, &__src))
  {
    v23 = __src;
    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>(&v21, (a1 + 384), &v23, &v24);
    v16 = *&v25[12];
  }

  else
  {
    v16 = v20;
    if (!*(a1 + 392) && __src)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 344);
  *(a1 + 344) = v17 + 1;
  v18 = v17 | 0x100000000;
  if ((v18 & 0x100000000) != 0)
  {
    return v18;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_272647968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a2)
  {
    if (a16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a16);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272647894);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Wire>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Wire>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::priv_insert_unique_prepare(char *a1, char **a2, unsigned int a3, char **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[24 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

void boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>(unint64_t *a1, const char *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a2 + 1);
  if (v5 > *a3)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 2);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v5 + 24 * v6;
  if (v4 > v8)
  {
LABEL_20:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v9 = *(a2 + 3);
  if (v9 < v6)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v9 == v6)
  {
    v20 = *a3;

    boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>(a1, a2, v20, a4);
  }

  else
  {
    if (v8 == v4)
    {
      *v8 = *a4;
      *(v8 + 8) = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      ++*(a2 + 2);
    }

    else
    {
      v13 = v8 - 24;
      *v8 = *(v8 - 24);
      *(v8 + 8) = *(v8 - 16);
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      ++*(a2 + 2);
      if (v8 - 24 != v4)
      {
        v14 = v8 - 24;
        do
        {
          v15 = *(v14 - 24);
          v14 -= 24;
          *v13 = v15;
          v16 = *(v13 - 16);
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v17 = *(v13 + 16);
          *(v13 + 8) = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v13 = v14;
        }

        while (v14 != v4);
      }

      *v4 = *a4;
      v18 = *(a4 + 8);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v19 = *(v4 + 16);
      *(v4 + 8) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    *a1 = *a3;
  }
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>*,boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_30;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v26[1] = a2;
  v26[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 32);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v26[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v23);
        }

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v24 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v24;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::~scoped_array_deallocator(v26);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_272647EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Wire>,std::shared_ptr<vp::vx::io::Wire_Factory>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

void vp::vx::io::Graph_Builder::add_wire_decorator(void *a1, void *a2)
{
  if (!*a2)
  {
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v4 = a1 + 53;
  v5 = a1[53];
  v6 = a1[54];
  if (v5 < v6)
  {
    v7 = a2[1];
    *v5 = *a2;
    v5[1] = v7;
    *a2 = 0;
    a2[1] = 0;
    v8 = v5 + 2;
    goto LABEL_22;
  }

  v9 = a1[52];
  v10 = (v5 - v9) >> 4;
  v11 = v10 + 1;
  if ((v10 + 1) >> 60)
  {
LABEL_24:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v12 = v6 - v9;
  if (v12 >> 3 > v11)
  {
    v11 = v12 >> 3;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v13 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = (*(*a1[55] + 16))(a1[55], 16 * v13, 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = (v14 + 16 * v10);
  *v15 = *a2;
  v8 = v15 + 1;
  *&v16 = v15 + 1;
  *(&v16 + 1) = v14 + 16 * v13;
  v25 = v16;
  *a2 = 0;
  a2[1] = 0;
  v18 = a1[52];
  v17 = a1[53];
  v19 = v15 + v18 - v17;
  if (v17 != v18)
  {
    v20 = (v15 + v18 - v17);
    v21 = a1[52];
    do
    {
      *v20++ = *v21;
      *v21 = 0;
      *(v21 + 8) = 0;
      v21 += 16;
    }

    while (v21 != v17);
    do
    {
      v22 = *(v18 + 8);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v18 += 16;
    }

    while (v18 != v17);
  }

  v23 = a1[52];
  a1[52] = v19;
  v24 = a1[54];
  *v4 = v25;
  if (v23)
  {
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::io::Wire_Decorator_Factory>>>::deallocate[abi:ne200100](a1[55], v23, (v24 - v23) >> 4);
  }

LABEL_22:
  *v4 = v8;
}

void sub_2726480D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272648098);
}

void vp::vx::io::Graph_Builder::build(vp *a1, uint64_t a2, NSObject **a3)
{
  v20 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  v14 = a2;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, a2, "vp::vx::io::Graph_Builder]", 25);
    v6 = v16;
    v7 = v16;
    v8 = __p[1];
    v9 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      v11 = __p[0];
      if (v7 >= 0)
      {
        v11 = __p;
      }

      v12 = " ";
      if (!v10)
      {
        v12 = "";
      }

      v13 = (v14 + 8);
      if (*(v14 + 31) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      v18 = 2080;
      v19 = v13;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%s%sbuilding new %s graph", buf, 0x20u);
      LOBYTE(v7) = v16;
    }

    if ((v7 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_27264E250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x3B7]) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](STACK[0x3B8], STACK[0x3A0], STACK[0x3B0] & 0x7FFFFFFFFFFFFFFFLL);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27264E350(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_27264E374(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (STACK[0x410])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x410]);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27264E3B8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x27264E3C0);
  }

  __clang_call_terminate(a1);
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *___ZN2vp2vx2io13Graph_Builder5buildEN10applesauce8dispatch2v15queueE_block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = *(v3 + 88);
  if (v5)
  {
    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    do
    {
      if (v9 != 1 && !v8)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v10 = v9 >> 1;
      v11 = (v8 + 24 * (v9 >> 1));
      v13 = *v11;
      v12 = v11 + 6;
      v9 += ~(v9 >> 1);
      if (v13 >= a2)
      {
        v9 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v9);
  }

  v14 = &v4[24 * v5];
  if (v8 == v14)
  {
    LODWORD(v26) = a2;
    v27 = 0;
    *&v28 = 0;
    if (v4 <= v8)
    {
      v24 = 0;
      v16 = v14;
      goto LABEL_27;
    }

LABEL_44:
    __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
  }

  if (!v8)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*v8 > a2)
  {
    LODWORD(v26) = a2;
    v27 = 0;
    *&v28 = 0;
    if (v4 <= v8 && v8 <= v14)
    {
      v24 = 0;
      v16 = v8;
      if (*v8 <= a2)
      {
        v25 = v14;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(v8, &v25, a2, &v24))
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

LABEL_27:
      v24 = v8;
      if (v16 != v4)
      {
        if (!v16)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        v18 = *(v16 - 6);
        v17 = v16 - 24;
        v19 = v18 > a2;
        if (v18 >= a2)
        {
          if (!v19)
          {
            v24 = v17;
            goto LABEL_34;
          }

          v25 = v17;
          if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Node>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>>::priv_insert_unique_prepare(v4, &v25, a2, &v24))
          {
LABEL_34:
            if (!*(v3 + 88) && v24)
            {
              __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
            }

            v23 = v24;
            goto LABEL_37;
          }
        }
      }

LABEL_30:
      v25 = v24;
      boost::container::vector<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>,void>::emplace<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Node>,std::shared_ptr<vp::vx::io::Node_Factory>>>(&v23, (v3 + 80), &v25, &v26);
LABEL_37:
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v8 = v23;
      if (!v23)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_40:
  (***(v8 + 8))(&v26);
  v20 = *(*(*(a1 + 32) + 8) + 40) + 32 * a2;
  v21 = v26;
  v26 = 0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v20, v21);
  *(v20 + 8) = v27;
  *(v20 + 16) = v28;
  return std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](&v26, 0);
}

void sub_27264E774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

unsigned int **boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_equal_range<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(unsigned int **result, unsigned int **a2, unsigned int **a3, unsigned int *a4)
{
  v4 = result;
  v5 = *a2;
  if (*a3 == *a2)
  {
LABEL_10:
    *result = v5;
    result[1] = v5;
    return result;
  }

  v6 = (*a3 - *a2) >> 4;
  v7 = *a4;
  while (1)
  {
    if (v6 != 1 && !v5)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (!v5)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v8 = v6 >> 1;
    v9 = &v5[4 * (v6 >> 1)];
    if (*v9 >= v7)
    {
      break;
    }

    v5 = v9 + 4;
    *a2 = v9 + 4;
    v8 = v6 + ~v8;
LABEL_9:
    v6 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v7 < *v9)
  {
    goto LABEL_9;
  }

  v10 = &v5[4 * v6];
  *a3 = v10;
  v11 = *a2;
  v12 = *a4;
  if (v9 != *a2)
  {
    v13 = (v9 - *a2) >> 4;
    do
    {
      if (v13 != 1 && !v11)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v11)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v14 = v13 >> 1;
      v15 = &v11[4 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 4;
      v13 += ~(v13 >> 1);
      if (v17 >= v12)
      {
        v13 = v14;
      }

      else
      {
        v11 = v16;
      }
    }

    while (v13);
  }

  v18 = v9 + 4;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>,boost::container::dtl::select1st<vp::vx::io::Object_ID<vp::vx::io::Port>>,std::less<vp::vx::io::Object_ID<vp::vx::io::Port>>,vp::Allocator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>>>::priv_upper_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::io::Object_ID<vp::vx::io::Port>,vp::vx::io::Node_Terminal_Address>*,false>,vp::vx::io::Object_ID<vp::vx::io::Port>>(result + 1, &v18, v10, v12);
  *v4 = v11;
  return result;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
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

void *std::unique_ptr<vp::vx::io::Port,vp::Allocator_Delete<vp::vx::io::Port>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 24))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

double _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEINSt3__110unique_ptrINS1_5GraphENS7_14default_deleteIS9_EEEEEEv(uint64_t a1, uint64_t a2)
{
  caulk::unexpected<vp::vx::io::Error>::unexpected(v6, a2);
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 4) = v3;
  *(a1 + 8) = v7;
  result = *&v8;
  *(a1 + 16) = v8;
  v5 = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  return result;
}

void *std::unique_ptr<vp::vx::io::Wire,vp::Allocator_Delete<vp::vx::io::Wire>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 48))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

uint64_t vp::vx::io::Wire::get_terminal(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    return (**result)(result);
  }

  if (!a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void vp::vx::io::operator<<<char const*>(void *a1, uint64_t a2, const char **a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v9);
  v8 = a2;
  v6 = *a3;
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v6, v7);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v9);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v8);
}

void sub_27264EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void vp::vx::io::operator<<<char const(&)[11]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "parameter ", 10);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27264F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::__expected_detail::base<std::shared_ptr<vp::vx::io::Parameter_Controller const>,vp::vx::io::Error>::~base(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else if (*(a1 + 39) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(a1 + 40), *(a1 + 16), *(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return a1;
}

void vp::vx::io::operator<<<char const(&)[10]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "property ", 9);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_27264F214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 4;
        std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Wire *,vp::Allocator_Delete<vp::vx::io::Wire>,std::allocator<vp::vx::io::Wire>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 48))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Wire *,vp::Allocator_Delete<vp::vx::io::Wire>,std::allocator<vp::vx::io::Wire>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t caulk::unexpected<vp::vx::io::Error>::unexpected(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Port *,vp::Allocator_Delete<vp::vx::io::Port>,std::allocator<vp::vx::io::Port>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 24))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Port *,vp::Allocator_Delete<vp::vx::io::Port>,std::allocator<vp::vx::io::Port>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Node *,vp::Allocator_Delete<vp::vx::io::Node>,std::allocator<vp::vx::io::Node>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 112))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Node *,vp::Allocator_Delete<vp::vx::io::Node>,std::allocator<vp::vx::io::Node>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>)>::functor_invoker<vp::vx::io::Graph_Builder::build(applesauce::dispatch::v1::queue)::$_1>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v25 = v3;
  v26 = *(a2 + 8);
  v27 = *(a2 + 24);
  if (v3)
  {
    v4 = v3 + *(*v3 - 24);
    v5 = *(v4 + 1);
    v6 = *(v4 + 2);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = **v2;
    v8 = *(*v7 - 24);
    v9 = *(v7 + v8 + 8);
    v10 = *(v7 + v8 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(v5 + 32);
    *(v5 + 24) = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v12 = *(v2 + 8);
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
    if (v14 >= v13)
    {
      v16 = (v14 - *v12) >> 4;
      if ((v16 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v17 = v13 - *v12;
      v18 = v17 >> 3;
      if (v17 >> 3 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      v32 = v12;
      if (v19)
      {
        if (!(v19 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 0;
      v29 = 16 * v16;
      v30 = 16 * v16;
      v31 = 0;
      std::shared_ptr<vp::vx::io::Node_Command>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>,0>((16 * v16), &v25);
      v15 = v30 + 16;
      v20 = *(v12 + 8) - *v12;
      v21 = v29 - v20;
      memcpy((v29 - v20), *v12, v20);
      v22 = *v12;
      *v12 = v21;
      v28 = v22;
      v29 = v22;
      *(v12 + 8) = v15;
      v30 = v22;
      v23 = *(v12 + 16);
      *(v12 + 16) = v31;
      v31 = v23;
      std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(&v28);
    }

    else
    {
      std::shared_ptr<vp::vx::io::Node_Command>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>,0>(*(v12 + 8), &v25);
      v15 = v14 + 16;
      *(v12 + 8) = v14 + 16;
    }

    *(v12 + 8) = v15;
  }

  return std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](&v25);
}

void sub_27264F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(va1);
  std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<vp::vx::io::Node_Command>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>,0>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void *std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>>::reset[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 24))(v1);
    return (*(*v2[1] + 24))(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Node_Command *,vp::Allocator_Delete<vp::vx::io::Node_Command>,std::allocator<vp::vx::io::Node_Command>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 24))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Node_Command *,vp::Allocator_Delete<vp::vx::io::Node_Command>,std::allocator<vp::vx::io::Node_Command>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *caulk::function_ref<void ()(std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>)>::functor_invoker<vp::vx::io::Graph_Builder::build(applesauce::dispatch::v1::queue)::$_0>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v17 = v3;
  v18 = *(a2 + 1);
  v19 = a2[3];
  v4 = *v2;
  v6 = *(*v2 + 8);
  v5 = *(*v2 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 3;
    if (v9 >> 3 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v24 = v4;
    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = 0;
    v21 = 16 * v8;
    v22 = 16 * v8;
    v23 = 0;
    std::shared_ptr<vp::vx::io::Node_Delegate>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,0>((16 * v8), &v17);
    v7 = (v22 + 16);
    v12 = *(v4 + 8) - *v4;
    v13 = v21 - v12;
    memcpy((v21 - v12), *v4, v12);
    v14 = *v4;
    *v4 = v13;
    v20 = v14;
    v21 = v14;
    *(v4 + 8) = v7;
    v22 = v14;
    v15 = *(v4 + 16);
    *(v4 + 16) = v23;
    v23 = v15;
    std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(&v20);
  }

  else
  {
    std::shared_ptr<vp::vx::io::Node_Delegate>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,0>(v6, &v17);
    v7 = v6 + 2;
    *(v4 + 8) = v6 + 2;
  }

  *(v4 + 8) = v7;
  return std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](&v17);
}

void sub_27264FB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(va1);
  std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<vp::vx::io::Node_Delegate>::shared_ptr[abi:ne200100]<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,0>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void *std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>>::reset[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 32))(v1);
    return (*(*v2[1] + 24))(v2[1], v1, v2[2], v2[3]);
  }

  return result;
}

uint64_t std::__split_buffer<std::shared_ptr<vp::vx::io::Node_Delegate>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::vx::io::Node_Delegate *,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,std::allocator<vp::vx::io::Node_Delegate>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  (*(*v2 + 32))(v2);
  return (*(**(a1 + 32) + 24))(*(a1 + 32), v2, *(a1 + 40), *(a1 + 48));
}

void std::__shared_ptr_pointer<vp::vx::io::Node_Delegate *,vp::Allocator_Delete<vp::vx::io::Node_Delegate>,std::allocator<vp::vx::io::Node_Delegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

std::string *std::optional<std::__fs::filesystem::path>::operator=[abi:ne200100]<std::__fs::filesystem::path const&,void>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

const void **vp::vx::dsp::v2::Graph_Builder::build@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v297[4] = *MEMORY[0x277D85DE8];
  v292 = 0;
  v8 = *MEMORY[0x277CBECE8];
  *buf = 0;
  v293 = CADSPLanguageV1InterpreterCreate();
  v9 = CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(buf);
  std::unordered_map<std::string,std::string>::unordered_map(v9, a2);
  memset(v294, 0, 24);
  std::vector<applesauce::CF::TypeRefPair>::reserve(v294, v296);
  v10 = *&buf[16];
  if (*&buf[16])
  {
    v11 = *&v294[8];
    do
    {
      if (v11 >= *&v294[16])
      {
        v11 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<std::string const&,std::string const&>(v294, v10 + 16, (v10 + 40));
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v11, v10 + 16, (v10 + 40));
        v11 += 2;
      }

      *&v294[8] = v11;
      v10 = *v10;
    }

    while (v10);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v294);
  v289 = v294;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v289);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*&buf[16]);
  v13 = *buf;
  *buf = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v264 = a3;
  v14 = CADSPLanguageV1InterpreterSetPreprocessorMacroDefinitions();
  if (*(a1 + 112) == 1)
  {
    v15 = (a1 + 88);
    v16 = vp::get_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v18 = v294[23];
      v19 = *&v294[8];
      v20 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if ((v18 & 0x80u) == 0)
        {
          v21 = v18;
        }

        else
        {
          v21 = v19;
        }

        if ((v294[23] & 0x80u) == 0)
        {
          v22 = v294;
        }

        else
        {
          v22 = *v294;
        }

        if (v21)
        {
          v23 = " ";
        }

        else
        {
          v23 = "";
        }

        v24 = a1 + 88;
        if (*(a1 + 111) < 0)
        {
          v24 = *v15;
        }

        *buf = 136315650;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = v23;
        *&buf[22] = 2080;
        *&v296 = v24;
        _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%s%sinterpreting file %s", buf, 0x20u);
      }

      if (v294[23] < 0)
      {
        operator delete(*v294);
      }
    }

    CA::DSP::MutableGraphModel::Create(buf, v8);
    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
    v25 = *buf;
    *buf = 0;
    v292 = v25;
    v26 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
    if (*(a1 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *buf = *v15;
      *&buf[16] = *(a1 + 104);
    }

    if (buf[23] >= 0)
    {
      v51 = buf;
    }

    else
    {
      v51 = *buf;
    }

    if (v51)
    {
      if (buf[23] >= 0)
      {
        v52 = buf[23];
      }

      else
      {
        v52 = *&buf[8];
      }

      v53 = CFStringCreateWithBytes(0, v51, v52, 0x8000100u, 0);
      v291 = v53;
      if (!v53)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if ((buf[23] & 0x80) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v53 = 0;
      v291 = 0;
      if ((buf[23] & 0x80) == 0)
      {
        goto LABEL_70;
      }
    }

    operator delete(*buf);
LABEL_70:
    v288 = v292;
    if (v292)
    {
      CFRetain(v292);
    }

    *v294 = 0;
    v54 = CADSPLanguageV1InterpreterInterpretContentsOfFile();
    v55 = *v294;
    if (!v54 && !*v294)
    {
      v55 = CADSPErrorCreate();
      *v294 = v55;
    }

    v289 = v55;
    if (v55)
    {
      v56 = 0;
      v289 = 0;
      *buf = v55;
    }

    else
    {
      v56 = 1;
    }

    buf[8] = v56;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v289);
    v57 = buf[8];
    if (buf[8])
    {
      v290 = buf[8];
    }

    else
    {
      v58 = *buf;
      *buf = 0;
      *v294 = 0;
      v289 = v58;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v294);
      v290 = v57;
      if ((buf[8] & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      }
    }

    v59 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v288);
    if ((v290 & 1) == 0)
    {
      v60 = vp::get_log(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v62 = v294[23];
        v63 = *&v294[8];
        v64 = vp::get_log(v61);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          if ((v62 & 0x80u) == 0)
          {
            v65 = v62;
          }

          else
          {
            v65 = v63;
          }

          if ((v294[23] & 0x80u) == 0)
          {
            v66 = v294;
          }

          else
          {
            v66 = *v294;
          }

          *buf = 136315650;
          *&buf[4] = v66;
          if (v65)
          {
            v67 = " ";
          }

          else
          {
            v67 = "";
          }

          *&buf[12] = 2080;
          *&buf[14] = v67;
          *&buf[22] = 2112;
          *&v296 = v289;
          _os_log_impl(&dword_2724B4000, v64, OS_LOG_TYPE_ERROR, "%s%sfailed to interpret DSP graph file - %@", buf, 0x20u);
        }

        if (v294[23] < 0)
        {
          operator delete(*v294);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
      v292 = 0;
      if ((v290 & 1) == 0)
      {
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v289);
      }
    }

    if (v53)
    {
      CFRelease(v53);
    }

    goto LABEL_158;
  }

  v27 = *(a1 + 144);
  v28 = vp::get_log(v14);
  if (v27 != 1)
  {
    v41 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      v42 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v43 = buf[23];
      v44 = buf[23];
      v45 = *&buf[8];
      v46 = vp::get_log(v42);
      v41 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v44 >= 0)
        {
          v47 = v43;
        }

        else
        {
          v47 = v45;
        }

        v48 = *buf;
        if (v44 >= 0)
        {
          v48 = buf;
        }

        if (v47)
        {
          v49 = " ";
        }

        else
        {
          v49 = "";
        }

        *v294 = 136315394;
        *&v294[4] = v48;
        *&v294[12] = 2080;
        *&v294[14] = v49;
        _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%s%sfailed to build DSP graph - graph file path and graph text are missing", v294, 0x16u);
        LOBYTE(v44) = buf[23];
      }

      if ((v44 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    *a4 = 0;
    default_resource = std::pmr::get_default_resource(v41);
    a4[2] = 0;
    a4[3] = 0;
    a4[1] = default_resource;
    CFRelease(CFDictionaryRef);
    CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v293);
    return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
  }

  v263 = v8;
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    v30 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v31 = buf[23];
    v32 = *&buf[8];
    v33 = vp::get_log(v30);
    v29 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      if ((v31 & 0x80u) == 0)
      {
        v34 = v31;
      }

      else
      {
        v34 = v32;
      }

      v35 = *buf;
      if (buf[23] >= 0)
      {
        v35 = buf;
      }

      if (v34)
      {
        v36 = " ";
      }

      else
      {
        v36 = "";
      }

      *v294 = 136315394;
      *&v294[4] = v35;
      *&v294[12] = 2080;
      *&v294[14] = v36;
      _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%s%sinterpreting text", v294, 0x16u);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v37 = a4;
  v38 = vp::get_log(v29);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 143);
    if ((v39 & 0x8000000000000000) != 0)
    {
      v40 = *(a1 + 120);
      v39 = *(a1 + 128);
    }

    else
    {
      v40 = a1 + 120;
    }

    v262 = 0;
    v68 = 0;
    v69 = (v40 + v39);
LABEL_104:
    if ((v39 - v68) >= 1)
    {
      v70 = &v68[v40];
      v71 = v39 - v68;
      v72 = &v68[v40];
      do
      {
        v73 = memchr(v72, 10, v71);
        if (!v73)
        {
          break;
        }

        if (*v73 == 10)
        {
          if (v73 != v69)
          {
            v74 = v73 - v40;
            if ((v73 - v40) != -1)
            {
              if (v39 - v68 >= v74 - v68)
              {
                v75 = (v74 - v68);
              }

              else
              {
                v75 = (v39 - v68);
              }

              v76 = vp::get_log(v73);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
              {
                v77 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
                v78 = v294[23];
                v260 = *&v294[8];
                log = vp::get_log(v77);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  v79 = v260;
                  if ((v78 & 0x80u) == 0)
                  {
                    v79 = v78;
                  }

                  v80 = v294;
                  if ((v294[23] & 0x80u) != 0)
                  {
                    v80 = *v294;
                  }

                  *buf = 136316162;
                  v81 = v79 == 0;
                  v82 = " ";
                  if (v81)
                  {
                    v82 = "";
                  }

                  *&buf[4] = v80;
                  *&buf[12] = 2080;
                  *&buf[14] = v82;
                  if (v75 >> 31)
                  {
                    v83 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v83 = v75 & 0x7FFFFFFF;
                  }

                  *&buf[22] = 2048;
                  *&v296 = v262;
                  WORD4(v296) = 1040;
                  *(&v296 + 10) = v83;
                  HIWORD(v296) = 2080;
                  v297[0] = v70;
                  _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_DEBUG, "%s%sinterpreting line %2lu - %.*s", buf, 0x30u);
                  ++v262;
                }

                if (v294[23] < 0)
                {
                  operator delete(*v294);
                }
              }

              v68 = v74 + 1;
              if (v74 < v39)
              {
                goto LABEL_104;
              }
            }
          }

          break;
        }

        v72 = v73 + 1;
        v71 = v69 - v72;
      }

      while (v69 - v72 >= 1);
    }
  }

  CA::DSP::MutableGraphModel::Create(buf, v263);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
  v84 = *buf;
  *buf = 0;
  v292 = v84;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(buf);
  v287 = v292;
  a4 = v37;
  if (v292)
  {
    CFRetain(v292);
  }

  *v294 = 0;
  v85 = CADSPLanguageV1InterpreterInterpretUTF8String();
  v86 = *v294;
  if (!v85 && !*v294)
  {
    v86 = CADSPErrorCreate();
    *v294 = v86;
  }

  v289 = v86;
  if (v86)
  {
    v87 = 0;
    v289 = 0;
    *buf = v86;
  }

  else
  {
    v87 = 1;
  }

  buf[8] = v87;
  CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v289);
  v88 = buf[8];
  if (buf[8])
  {
    v290 = buf[8];
  }

  else
  {
    v89 = *buf;
    *buf = 0;
    *v294 = 0;
    v289 = v89;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v294);
    v290 = v88;
    if ((buf[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
    }
  }

  v90 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v287);
  if ((v290 & 1) == 0)
  {
    v91 = vp::get_log(v90);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v92 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v93 = v294[23];
      v94 = *&v294[8];
      v95 = vp::get_log(v92);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        if ((v93 & 0x80u) == 0)
        {
          v96 = v93;
        }

        else
        {
          v96 = v94;
        }

        if ((v294[23] & 0x80u) == 0)
        {
          v97 = v294;
        }

        else
        {
          v97 = *v294;
        }

        *buf = 136315650;
        *&buf[4] = v97;
        if (v96)
        {
          v98 = " ";
        }

        else
        {
          v98 = "";
        }

        *&buf[12] = 2080;
        *&buf[14] = v98;
        *&buf[22] = 2112;
        *&v296 = v289;
        _os_log_impl(&dword_2724B4000, v95, OS_LOG_TYPE_ERROR, "%s%sfailed to interpret DSP graph text - %@", buf, 0x20u);
      }

      if (v294[23] < 0)
      {
        operator delete(*v294);
      }
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
    v292 = 0;
    if ((v290 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v289);
    }
  }

LABEL_158:
  CFRelease(CFDictionaryRef);
  CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(&v293);
  if (v292)
  {
    cf = v292;
    CFRetain(v292);
    *v294 = cf;
    CFRetain(cf);
    memset(v297, 0, 28);
    v296 = 0u;
    if (CADSPGraphGetAudioStreamConfigurationForPort())
    {
      v99 = *&v296;
    }

    else
    {
      v99 = 0.0;
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v294);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&cf);
    for (i = 1; ; ++i)
    {
      v285 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      v113 = CADSPGraphModelCopyPorts();
      *buf = 0;
      *v294 = v113;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
      Count = CFArrayGetCount(*v294);
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v294);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v285);
      if (Count <= i)
      {
        break;
      }

      v284 = v292;
      if (v292)
      {
        CFRetain(v292);
        *v294 = v284;
        if (v284)
        {
          CFRetain(v284);
        }
      }

      else
      {
        *v294 = 0;
      }

      memset(v297, 0, 28);
      v296 = 0u;
      AudioStreamConfigurationForPort = CADSPGraphGetAudioStreamConfigurationForPort();
      if (AudioStreamConfigurationForPort)
      {
        v116 = *&v296;
      }

      else
      {
        v116 = 0.0;
      }

      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v294);
      v117 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v284);
      if (AudioStreamConfigurationForPort && v116 != v99)
      {
        v118 = vp::get_log(v117);
        v101 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
        if (v101)
        {
          v119 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v120 = v294[23];
          v121 = v294[23];
          v122 = *&v294[8];
          v123 = vp::get_log(v119);
          v101 = os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
          if (v101)
          {
            if (v121 >= 0)
            {
              v124 = v120;
            }

            else
            {
              v124 = v122;
            }

            v125 = *v294;
            if (v121 >= 0)
            {
              v125 = v294;
            }

            *buf = 136316162;
            *&buf[4] = v125;
            *&buf[12] = 2080;
            if (v124)
            {
              v126 = " ";
            }

            else
            {
              v126 = "";
            }

            *&buf[14] = v126;
            *&buf[22] = 1024;
            LODWORD(v296) = i;
            WORD2(v296) = 2048;
            *(&v296 + 6) = v116;
            HIWORD(v296) = 2048;
            *v297 = v99;
            v127 = "%s%sfailed to build DSP graph - all input bus sample rates must be equal, but port %u has a sample rate of %lf, not matching %lf";
            goto LABEL_245;
          }

          goto LABEL_246;
        }

        goto LABEL_249;
      }
    }

    v283 = v292;
    if (v292)
    {
      CFRetain(v292);
      *v294 = v283;
      CFRetain(v283);
    }

    else
    {
      *v294 = 0;
    }

    memset(v297, 0, 28);
    v296 = 0u;
    if (CADSPGraphGetAudioStreamConfigurationForPort())
    {
      v128 = *&v296;
    }

    else
    {
      v128 = 0.0;
    }

    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v294);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v283);
    for (j = 1; ; ++j)
    {
      v282 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      v130 = CADSPGraphModelCopyPorts();
      *buf = 0;
      *v294 = v130;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(buf);
      v131 = CFArrayGetCount(*v294);
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v294);
      v132 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v282);
      if (v131 <= j)
      {
        break;
      }

      v281 = v292;
      if (v292)
      {
        CFRetain(v292);
        *v294 = v281;
        if (v281)
        {
          CFRetain(v281);
        }
      }

      else
      {
        *v294 = 0;
      }

      memset(v297, 0, 28);
      v296 = 0u;
      v133 = CADSPGraphGetAudioStreamConfigurationForPort();
      if (v133)
      {
        v134 = *&v296;
      }

      else
      {
        v134 = 0.0;
      }

      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(v294);
      v135 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v281);
      if (v133 && v134 != v128)
      {
        v143 = vp::get_log(v135);
        v101 = os_log_type_enabled(v143, OS_LOG_TYPE_ERROR);
        if (!v101)
        {
          goto LABEL_249;
        }

        v144 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v145 = v294[23];
        v121 = v294[23];
        v146 = *&v294[8];
        v123 = vp::get_log(v144);
        v101 = os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
        if (v101)
        {
          if (v121 >= 0)
          {
            v147 = v145;
          }

          else
          {
            v147 = v146;
          }

          v148 = *v294;
          if (v121 >= 0)
          {
            v148 = v294;
          }

          *buf = 136316162;
          *&buf[4] = v148;
          *&buf[12] = 2080;
          if (v147)
          {
            v149 = " ";
          }

          else
          {
            v149 = "";
          }

          *&buf[14] = v149;
          *&buf[22] = 1024;
          LODWORD(v296) = j;
          WORD2(v296) = 2048;
          *(&v296 + 6) = v134;
          HIWORD(v296) = 2048;
          *v297 = v128;
          v127 = "%s%sfailed to build DSP graph - all output bus sample rates must be equal, but port %u has a sample rate of %lf, not matching %lf";
LABEL_245:
          _os_log_impl(&dword_2724B4000, v123, OS_LOG_TYPE_ERROR, v127, buf, 0x30u);
          LOBYTE(v121) = v294[23];
        }

LABEL_246:
        if ((v121 & 0x80) != 0)
        {
          v111 = *v294;
LABEL_248:
          operator delete(v111);
        }

        goto LABEL_249;
      }
    }

    v280 = 1;
    if (*(a1 + 228) == 1)
    {
      v136 = vp::get_log(v132);
      if (v99 != v128)
      {
        v101 = os_log_type_enabled(v136, OS_LOG_TYPE_ERROR);
        if (!v101)
        {
          goto LABEL_249;
        }

        v137 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v138 = buf[23];
        v104 = buf[23];
        v139 = *&buf[8];
        v106 = vp::get_log(v137);
        v101 = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
        if (!v101)
        {
          goto LABEL_173;
        }

        if (v104 >= 0)
        {
          v140 = v138;
        }

        else
        {
          v140 = v139;
        }

        v141 = *buf;
        if (v104 >= 0)
        {
          v141 = buf;
        }

        if (v140)
        {
          v142 = " ";
        }

        else
        {
          v142 = "";
        }

        *v294 = 136315394;
        *&v294[4] = v141;
        *&v294[12] = 2080;
        *&v294[14] = v142;
        v110 = "%s%sfailed to build DSP graph - I/O bus sample rates of fixed block size graphs must be equal";
        goto LABEL_172;
      }

      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v173 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v174 = v294[23];
        v175 = *&v294[8];
        v176 = vp::get_log(v173);
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          if ((v174 & 0x80u) == 0)
          {
            v177 = v174;
          }

          else
          {
            v177 = v175;
          }

          if ((v294[23] & 0x80u) == 0)
          {
            v178 = v294;
          }

          else
          {
            v178 = *v294;
          }

          v179 = *(a1 + 224);
          v81 = v177 == 0;
          v180 = "";
          *buf = 136315906;
          *&buf[4] = v178;
          if (!v81)
          {
            v180 = " ";
          }

          *&buf[12] = 2080;
          *&buf[14] = v180;
          *&buf[22] = 1024;
          LODWORD(v296) = v179;
          WORD2(v296) = 2048;
          *(&v296 + 6) = v99;
          _os_log_impl(&dword_2724B4000, v176, OS_LOG_TYPE_DEFAULT, "%s%ssetting fixed slice duration using block size %u and sample rate %f", buf, 0x26u);
        }

        if (v294[23] < 0)
        {
          operator delete(*v294);
        }
      }

      v279 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v279);
      v278 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      v161 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v278);
      v280 = 0;
LABEL_308:
      if (*(a1 + 364) == 1)
      {
        v181 = vp::get_log(v161);
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
        {
          v182 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v183 = v294[23];
          v184 = *&v294[8];
          v185 = vp::get_log(v182);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
          {
            if ((v183 & 0x80u) == 0)
            {
              v186 = v183;
            }

            else
            {
              v186 = v184;
            }

            if ((v294[23] & 0x80u) == 0)
            {
              v187 = v294;
            }

            else
            {
              v187 = *v294;
            }

            v81 = v186 == 0;
            v188 = *(a1 + 360);
            *buf = 136315650;
            *&buf[4] = v187;
            if (v81)
            {
              v189 = "";
            }

            else
            {
              v189 = " ";
            }

            *&buf[12] = 2080;
            *&buf[14] = v189;
            *&buf[22] = 1024;
            LODWORD(v296) = v188;
            _os_log_impl(&dword_2724B4000, v185, OS_LOG_TYPE_DEFAULT, "%s%ssetting sample rate conversion algorithm to %u", buf, 0x1Cu);
          }

          if (v294[23] < 0)
          {
            operator delete(*v294);
          }
        }

        v273 = v292;
        if (v292)
        {
          CFRetain(v292);
        }

        CADSPGraphModelSetSampleRateConversionAlgorithm();
        v161 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v273);
      }

      if (*(a1 + 372) == 1)
      {
        v190 = vp::get_log(v161);
        if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
        {
          v191 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v192 = v294[23];
          v193 = *&v294[8];
          v194 = vp::get_log(v191);
          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
          {
            if ((v192 & 0x80u) == 0)
            {
              v195 = v192;
            }

            else
            {
              v195 = v193;
            }

            if ((v294[23] & 0x80u) == 0)
            {
              v196 = v294;
            }

            else
            {
              v196 = *v294;
            }

            v81 = v195 == 0;
            v197 = *(a1 + 368);
            *buf = 136315650;
            *&buf[4] = v196;
            if (v81)
            {
              v198 = "";
            }

            else
            {
              v198 = " ";
            }

            *&buf[12] = 2080;
            *&buf[14] = v198;
            *&buf[22] = 1024;
            LODWORD(v296) = v197;
            _os_log_impl(&dword_2724B4000, v194, OS_LOG_TYPE_DEFAULT, "%s%ssetting sample rate conversion quality to %u", buf, 0x1Cu);
          }

          if (v294[23] < 0)
          {
            operator delete(*v294);
          }
        }

        v272 = v292;
        if (v292)
        {
          CFRetain(v292);
        }

        CADSPGraphModelSetSampleRateConversionQuality();
        v161 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v272);
      }

      if (*(a1 + 377) == 1)
      {
        v199 = vp::get_log(v161);
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          v200 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v201 = buf[23];
          v202 = *&buf[8];
          v203 = vp::get_log(v200);
          if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
          {
            if ((v201 & 0x80u) == 0)
            {
              v204 = v201;
            }

            else
            {
              v204 = v202;
            }

            v205 = *buf;
            if (buf[23] >= 0)
            {
              v205 = buf;
            }

            if (v204)
            {
              v206 = " ";
            }

            else
            {
              v206 = "";
            }

            *v294 = 136315394;
            *&v294[4] = v205;
            *&v294[12] = 2080;
            *&v294[14] = v206;
            _os_log_impl(&dword_2724B4000, v203, OS_LOG_TYPE_DEFAULT, "%s%senabling latency compensation", v294, 0x16u);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        *buf = v292;
        if (v292)
        {
          CFRetain(v292);
        }

        CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(buf);
        v271 = v292;
        if (v292)
        {
          CFRetain(v292);
        }

        CADSPGraphModelSetOptions();
        CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v271);
      }

      *buf = a1;
      *&buf[8] = &v292;
      *&buf[16] = v264;
      vp::vx::dsp::v2::Graph_Builder::exception_guard(a1, "enable DSP graph audio recorders", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::build(vp::vx::dsp::Graph_Macro_Generator const&,vp::vx::dsp::Graph_Feature_Filter const&)::$_0>, buf);
      v291 = 0;
      v270 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      *v294 = 0;
      v213 = CADSPGraphCreateWithModel();
      if (v213)
      {
        v293 = 0;
        *buf = 0;
        v289 = v213;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
        v290 = 1;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v293);
      }

      else
      {
        v246 = *v294;
        if (!*v294)
        {
          v246 = CADSPErrorCreate();
          *v294 = v246;
        }

        v293 = 0;
        *buf = 0;
        v289 = v246;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
        v290 = 0;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v293);
      }

      v214 = CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v270);
      v215 = v290;
      if (v290)
      {
        v216 = v289;
        v289 = 0;
        *buf = v216;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v291);
        v217 = *buf;
        *buf = 0;
        v291 = v217;
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
      }

      else
      {
        v218 = vp::get_log(v214);
        v219 = os_log_type_enabled(v218, OS_LOG_TYPE_ERROR);
        if (v219)
        {
          v220 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v221 = v294[23];
          v222 = *&v294[8];
          v223 = vp::get_log(v220);
          v219 = os_log_type_enabled(v223, OS_LOG_TYPE_ERROR);
          if (v219)
          {
            if ((v221 & 0x80u) == 0)
            {
              v224 = v221;
            }

            else
            {
              v224 = v222;
            }

            if ((v294[23] & 0x80u) == 0)
            {
              v225 = v294;
            }

            else
            {
              v225 = *v294;
            }

            *buf = 136315650;
            *&buf[4] = v225;
            if (v224)
            {
              v226 = " ";
            }

            else
            {
              v226 = "";
            }

            *&buf[12] = 2080;
            *&buf[14] = v226;
            *&buf[22] = 2112;
            *&v296 = v289;
            _os_log_impl(&dword_2724B4000, v223, OS_LOG_TYPE_ERROR, "%s%sfailed to build DSP graph - %@", buf, 0x20u);
          }

          if (v294[23] < 0)
          {
            operator delete(*v294);
          }
        }

        *a4 = 0;
        v227 = std::pmr::get_default_resource(v219);
        a4[2] = 0;
        a4[3] = 0;
        a4[1] = v227;
      }

      if (v290 == 1)
      {
        v228 = CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v289);
        if (!v215)
        {
          goto LABEL_437;
        }
      }

      else
      {
        v228 = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v289);
        if (!v215)
        {
LABEL_437:
          CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v291);
          return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
        }
      }

      if (*(a1 + 40) == 1)
      {
        v229 = vp::get_log(v228);
        if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
        {
          v230 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
          v231 = v294[23];
          v232 = *&v294[8];
          v233 = vp::get_log(v230);
          if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
          {
            v234 = (a1 + 16);
            if ((v231 & 0x80u) == 0)
            {
              v235 = v231;
            }

            else
            {
              v235 = v232;
            }

            if ((v294[23] & 0x80u) == 0)
            {
              v236 = v294;
            }

            else
            {
              v236 = *v294;
            }

            if (v235)
            {
              v237 = " ";
            }

            else
            {
              v237 = "";
            }

            if (*(a1 + 39) < 0)
            {
              v234 = *v234;
            }

            *buf = 136315650;
            *&buf[4] = v236;
            *&buf[12] = 2080;
            *&buf[14] = v237;
            *&buf[22] = 2080;
            *&v296 = v234;
            _os_log_impl(&dword_2724B4000, v233, OS_LOG_TYPE_DEFAULT, "%s%ssetting %s resources path", buf, 0x20u);
          }

          if (v294[23] < 0)
          {
            operator delete(*v294);
          }
        }
      }

      v239 = *(a1 + 176);
      for (k = *(a1 + 184); v239 != k; v239 += 3)
      {
        v269 = v291;
        if (v291)
        {
          CFRetain(v291);
        }

        vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(a1, &v269, "property strip", 1, v239);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v269);
      }

      v241 = *(a1 + 152);
      for (m = *(a1 + 160); v241 != m; v241 += 3)
      {
        v268 = v291;
        if (v291)
        {
          CFRetain(v291);
        }

        vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(a1, &v268, "parameter strip", 0, v241);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v268);
      }

      v243 = *(a1 + 200);
      for (n = *(a1 + 208); v243 != n; v243 += 3)
      {
        v267 = v291;
        if (v291)
        {
          CFRetain(v291);
        }

        vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(a1, &v267, "property strip override", 1, v243);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v267);
      }

      v266 = v291;
      if (v291)
      {
        CFRetain(v291);
      }

      *v294 = &v266;
      *&v294[8] = a1;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK2vp2vx3dsp2v213Graph_Builder20set_parameter_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
      *&v296 = &__block_descriptor_tmp_8031;
      *(&v296 + 1) = v294;
      CADSPGraphEnumerateParameters();
      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v266);
      v265 = v291;
      if (v291)
      {
        CFRetain(v291);
      }

      *v294 = &v265;
      *&v294[8] = a1;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK2vp2vx3dsp2v213Graph_Builder19set_property_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke;
      *&v296 = &__block_descriptor_tmp_178;
      *(&v296 + 1) = v294;
      CADSPGraphEnumerateProperties();
      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v265);
      *v294 = 0;
      v244 = CADSPGraphInitialize();
      v245 = *v294;
      if (!v244 && !*v294)
      {
        v245 = CADSPErrorCreate();
        *v294 = v245;
      }

      v293 = v245;
      if (!v245)
      {
        buf[8] = 1;
        CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v293);
        vp::allocate_unique_noexcept<vp::vx::dsp::v2::Graph,vp::vx::io::Node::Block_Size_Policy &,CA::DSP::Reference<CA::DSP::Graph> &>(buf, *(a1 + 8), &v280, &v291);
      }

      v293 = 0;
      buf[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v293);
      *buf = 0;
      *v294 = 0;
      v289 = v245;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(v294);
      v290 = 0;
      v247 = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(buf);
      v248 = vp::get_log(v247);
      v249 = os_log_type_enabled(v248, OS_LOG_TYPE_ERROR);
      if (v249)
      {
        v250 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v251 = v294[23];
        v252 = v294[23];
        v253 = *&v294[8];
        v254 = vp::get_log(v250);
        v249 = os_log_type_enabled(v254, OS_LOG_TYPE_ERROR);
        if (v249)
        {
          if (v252 >= 0)
          {
            v255 = v251;
          }

          else
          {
            v255 = v253;
          }

          v256 = *v294;
          if (v252 >= 0)
          {
            v256 = v294;
          }

          *buf = 136315650;
          *&buf[4] = v256;
          if (v255)
          {
            v257 = " ";
          }

          else
          {
            v257 = "";
          }

          *&buf[12] = 2080;
          *&buf[14] = v257;
          *&buf[22] = 2112;
          *&v296 = v245;
          _os_log_impl(&dword_2724B4000, v254, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize DSP graph - %@", buf, 0x20u);
          LOBYTE(v252) = v294[23];
        }

        if ((v252 & 0x80) != 0)
        {
          operator delete(*v294);
        }
      }

      *a4 = 0;
      v258 = std::pmr::get_default_resource(v249);
      a4[2] = 0;
      a4[3] = 0;
      a4[1] = v258;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v289);
      goto LABEL_437;
    }

    if (*(a1 + 236) == 1)
    {
      v152 = vp::get_log(v132);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v154 = v294[23];
        v155 = *&v294[8];
        v156 = vp::get_log(v153);
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          if ((v154 & 0x80u) == 0)
          {
            v157 = v154;
          }

          else
          {
            v157 = v155;
          }

          if ((v294[23] & 0x80u) == 0)
          {
            v158 = v294;
          }

          else
          {
            v158 = *v294;
          }

          v159 = *(a1 + 232);
          v81 = v157 == 0;
          v160 = "";
          *buf = 136315906;
          *&buf[4] = v158;
          if (!v81)
          {
            v160 = " ";
          }

          *&buf[12] = 2080;
          *&buf[14] = v160;
          *&buf[22] = 1024;
          LODWORD(v296) = v159;
          WORD2(v296) = 2048;
          *(&v296 + 6) = v128;
          _os_log_impl(&dword_2724B4000, v156, OS_LOG_TYPE_DEFAULT, "%s%ssetting variable slice duration using block size %u and ouptut sample rate %f", buf, 0x26u);
        }

        if (v294[23] < 0)
        {
          operator delete(*v294);
        }
      }

      v277 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v277);
      v276 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      v161 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v276);
      v162 = 2;
LABEL_289:
      v280 = v162;
      goto LABEL_308;
    }

    v163 = *(a1 + 244);
    v164 = vp::get_log(v132);
    if (v163 == 1)
    {
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
      {
        v165 = vp::get_log_context_info(v294, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v166 = v294[23];
        v167 = *&v294[8];
        v168 = vp::get_log(v165);
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          if ((v166 & 0x80u) == 0)
          {
            v169 = v166;
          }

          else
          {
            v169 = v167;
          }

          if ((v294[23] & 0x80u) == 0)
          {
            v170 = v294;
          }

          else
          {
            v170 = *v294;
          }

          v171 = *(a1 + 240);
          v81 = v169 == 0;
          v172 = "";
          *buf = 136315906;
          *&buf[4] = v170;
          if (!v81)
          {
            v172 = " ";
          }

          *&buf[12] = 2080;
          *&buf[14] = v172;
          *&buf[22] = 1024;
          LODWORD(v296) = v171;
          WORD2(v296) = 2048;
          *(&v296 + 6) = v99;
          _os_log_impl(&dword_2724B4000, v168, OS_LOG_TYPE_DEFAULT, "%s%ssetting variable slice duration using block size %u and input sample rate %f", buf, 0x26u);
        }

        if (v294[23] < 0)
        {
          operator delete(*v294);
        }
      }

      v275 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      CADSPGraphModelSetSliceDuration();
      CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v275);
      v274 = v292;
      if (v292)
      {
        CFRetain(v292);
      }

      CADSPGraphModelSetSliceDurationCanVary();
      v161 = CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v274);
      v162 = 3;
      goto LABEL_289;
    }

    v101 = os_log_type_enabled(v164, OS_LOG_TYPE_ERROR);
    if (!v101)
    {
      goto LABEL_249;
    }

    v207 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v208 = buf[23];
    v104 = buf[23];
    v209 = *&buf[8];
    v106 = vp::get_log(v207);
    v101 = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
    if (!v101)
    {
      goto LABEL_173;
    }

    if (v104 >= 0)
    {
      v210 = v208;
    }

    else
    {
      v210 = v209;
    }

    v211 = *buf;
    if (v104 >= 0)
    {
      v211 = buf;
    }

    if (v210)
    {
      v212 = " ";
    }

    else
    {
      v212 = "";
    }

    *v294 = 136315394;
    *&v294[4] = v211;
    *&v294[12] = 2080;
    *&v294[14] = v212;
    v110 = "%s%sfailed to build DSP graph - block size information is missing";
LABEL_172:
    _os_log_impl(&dword_2724B4000, v106, OS_LOG_TYPE_ERROR, v110, v294, 0x16u);
    LOBYTE(v104) = buf[23];
    goto LABEL_173;
  }

  v100 = vp::get_log(0);
  v101 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
  if (!v101)
  {
    goto LABEL_249;
  }

  v102 = vp::get_log_context_info(buf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
  v103 = buf[23];
  v104 = buf[23];
  v105 = *&buf[8];
  v106 = vp::get_log(v102);
  v101 = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
  if (v101)
  {
    if (v104 >= 0)
    {
      v107 = v103;
    }

    else
    {
      v107 = v105;
    }

    v108 = *buf;
    if (v104 >= 0)
    {
      v108 = buf;
    }

    if (v107)
    {
      v109 = " ";
    }

    else
    {
      v109 = "";
    }

    *v294 = 136315394;
    *&v294[4] = v108;
    *&v294[12] = 2080;
    *&v294[14] = v109;
    v110 = "%s%sfailed to build DSP graph - interpreter error";
    goto LABEL_172;
  }

LABEL_173:
  if ((v104 & 0x80) != 0)
  {
    v111 = *buf;
    goto LABEL_248;
  }

LABEL_249:
  *a4 = 0;
  v150 = std::pmr::get_default_resource(v101);
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v150;
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v292);
}

void sub_272651D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **CA::DSP::MutableGraphModel::Create(CA::DSP::MutableGraphModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = CADSPGraphModelCreateMutable();
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void vp::vx::dsp::v2::Graph_Builder::exception_guard(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[0] = 0;
  v9 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  vp::vx::dsp::v2::Graph_Builder::exception_guard(a1, a2, a3, a4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v9, 0);
}

void vp::vx::dsp::v2::Graph_Builder::apply_strip<CADSPGraphStripType>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const std::string::value_type **a5)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *a5, a5[1]);
  }

  else
  {
    v51 = *a5;
  }

  applesauce::CF::make_DataRef(&cf, &v51);
  applesauce::CF::make_DictionaryRef(&v50, cf);
  v8 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v9 = v50;
  log = vp::get_log(v8);
  if (v9)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(&cf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v12 = v49;
      v13 = v49;
      v14 = v48;
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

        p_cf = cf;
        if (v13 >= 0)
        {
          p_cf = &cf;
        }

        if (v16)
        {
          v18 = " ";
        }

        else
        {
          v18 = "";
        }

        v19 = *(a5 + 23);
        v20 = *a5;
        LODWORD(v51.__r_.__value_.__l.__data_) = 136315650;
        *(v51.__r_.__value_.__r.__words + 4) = p_cf;
        if (v19 >= 0)
        {
          v21 = a5;
        }

        else
        {
          v21 = v20;
        }

        WORD2(v51.__r_.__value_.__r.__words[1]) = 2080;
        *(&v51.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(v51.__r_.__value_.__r.__words[2]) = 2080;
        v52 = v21;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%s%ssetting %s", &v51, 0x20u);
        LOBYTE(v13) = v49;
      }

      if ((v13 & 0x80) != 0)
      {
        operator delete(cf);
      }
    }

    cf = 0;
    StripWithResourcePath = CADSPGraphLoadStripWithResourcePath();
    v23 = cf;
    if (!StripWithResourcePath && !cf)
    {
      v23 = CADSPErrorCreate();
      cf = v23;
    }

    v45 = v23;
    if (v23)
    {
      v45 = 0;
      v51.__r_.__value_.__s.__data_[8] = 0;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v45);
      v51.__r_.__value_.__r.__words[0] = 0;
      cf = 0;
      v45 = v23;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&cf);
      v46 = 0;
      v35 = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v51.__r_.__value_.__l.__data_);
      v36 = vp::get_log(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = vp::get_log_context_info(&cf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
        v38 = v49;
        v39 = v49;
        v40 = v48;
        v41 = vp::get_log(v37);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          if (v39 >= 0)
          {
            v42 = v38;
          }

          else
          {
            v42 = v40;
          }

          v43 = cf;
          if (v39 >= 0)
          {
            v43 = &cf;
          }

          LODWORD(v51.__r_.__value_.__l.__data_) = 136315906;
          *(v51.__r_.__value_.__r.__words + 4) = v43;
          WORD2(v51.__r_.__value_.__r.__words[1]) = 2080;
          if (v42)
          {
            v44 = " ";
          }

          else
          {
            v44 = "";
          }

          *(&v51.__r_.__value_.__r.__words[1] + 6) = v44;
          HIWORD(v51.__r_.__value_.__r.__words[2]) = 2080;
          v52 = a3;
          v53 = 2112;
          v54 = v23;
          _os_log_impl(&dword_2724B4000, v41, OS_LOG_TYPE_ERROR, "%s%sfailed to set %s on DSP graph - %@", &v51, 0x2Au);
          LOBYTE(v39) = v49;
        }

        if ((v39 & 0x80) != 0)
        {
          operator delete(cf);
        }
      }

      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v45);
    }

    else
    {
      v51.__r_.__value_.__s.__data_[8] = 1;
      CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v45);
      v46 = 1;
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v24 = vp::get_log_context_info(&cf, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v25 = v49;
    v26 = v49;
    v27 = v48;
    v28 = vp::get_log(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      if (v26 >= 0)
      {
        v29 = v25;
      }

      else
      {
        v29 = v27;
      }

      v30 = cf;
      if (v26 >= 0)
      {
        v30 = &cf;
      }

      if (v29)
      {
        v31 = " ";
      }

      else
      {
        v31 = "";
      }

      v32 = *(a5 + 23);
      v33 = *a5;
      LODWORD(v51.__r_.__value_.__l.__data_) = 136315650;
      *(v51.__r_.__value_.__r.__words + 4) = v30;
      if (v32 >= 0)
      {
        v34 = a5;
      }

      else
      {
        v34 = v33;
      }

      WORD2(v51.__r_.__value_.__r.__words[1]) = 2080;
      *(&v51.__r_.__value_.__r.__words[1] + 6) = v31;
      HIWORD(v51.__r_.__value_.__r.__words[2]) = 2080;
      v52 = v34;
      _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_ERROR, "%s%sfailed to load %s", &v51, 0x20u);
      LOBYTE(v26) = v49;
    }

    if ((v26 & 0x80) != 0)
    {
      operator delete(cf);
    }
  }

  if (v50)
  {
    CFRelease(v50);
  }
}

void sub_27265240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_27265243C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    applesauce::CF::DataRef::~DataRef(&a11);
    if (a20 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    a14 = 0;
    __cxa_end_catch();
    JUMPOUT(0x272652084);
  }

  JUMPOUT(0x27265242CLL);
}

void vp::allocate_unique_noexcept<vp::vx::dsp::v2::Graph,vp::vx::io::Node::Block_Size_Policy &,CA::DSP::Reference<CA::DSP::Graph> &>(uint64_t a1, uint64_t a2, int *a3, CFTypeRef *a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = xmmword_2727566C0;
  (*(*a2 + 16))(a2, 64, 8);
  CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&cf, *a4);
  operator new();
}

void sub_2726527D4(void *a1)
{
  std::unique_ptr<vp::vx::dsp::v2::Graph,vp::Allocator_Delete<vp::vx::dsp::v2::Graph>>::reset[abi:ne200100](v1, 0);
  v4 = __cxa_begin_catch(a1);
  *v1 = 0;
  v1[1] = std::pmr::get_default_resource(v4);
  *v2 = 0;
  v2[1] = 0;

  __cxa_end_catch();
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::build(vp::vx::dsp::Graph_Macro_Generator const&,vp::vx::dsp::Graph_Feature_Filter const&)::$_1>(uint64_t **a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = *(*a1)[1];
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(&__s, v1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v5 = BYTE7(v69);
    v6 = SBYTE7(v69);
    v7 = *(&__s + 1);
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      p_s = __s;
      if (v6 >= 0)
      {
        p_s = &__s;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = p_s;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sconnecting to RPB", buf, 0x16u);
      LOBYTE(v6) = BYTE7(v69);
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__s);
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v60 = &v61;
  v61 = Mutable;
  if (*(v1 + 40) == 1)
  {
    v13 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v13 = *v13;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v60, "Tuning Resources Path", v13);
  }

  if (*(v1 + 80) == 1)
  {
    v14 = (v1 + 56);
    if (*(v1 + 79) < 0)
    {
      v14 = *v14;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v60, "Temporary Directory Path", v14);
  }

  if (*(v1 + 112) == 1)
  {
    v15 = (v1 + 88);
    if (*(v1 + 111) < 0)
    {
      v15 = *v15;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v60, "Absolute '.dspg' File Path", v15);
  }

  if (*(v1 + 144) == 1)
  {
    v16 = (v1 + 120);
    if (*(v1 + 143) < 0)
    {
      v16 = *v16;
    }

    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v60, "Literal '.dspg' Text", v16);
  }

  applesauce::CF::make_ArrayRef(&cf, (v1 + 152));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(&v60, "Absolute '.austrip' File Paths", &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  applesauce::CF::make_ArrayRef(&v58, (v1 + 176));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(&v60, "Absolute '.propstrip' File Paths", &v58);
  if (v58)
  {
    CFRelease(v58);
  }

  applesauce::CF::make_ArrayRef(&v57, (v1 + 200));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(&v60, "Absolute '.propstrip' Override File Paths", &v57);
  if (v57)
  {
    CFRelease(v57);
  }

  v17 = (*(*v2 + 32))(v2);
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(&v60, "Block Size", v17);
  v18 = (*(*v2 + 40))(v2);
  if (v18 < 4)
  {
    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(&v60, "Block Size Policy", off_279E4A2E8[v18]);
  }

  memset(buf, 0, 24);
  std::vector<applesauce::CF::TypeRefPair>::reserve(buf, (*(v1 + 256) - *(v1 + 248)) >> 3);
  v19 = *(v1 + 248);
  for (i = *(v1 + 256); v19 != i; ++v19)
  {
    v21 = *v19;
    *__val = v21;
    v22 = bswap32(v21);
    *(&__s + 1) = v22;
    if ((v22 - 32) > 0x5E || ((v22 >> 8) - 32) > 0x5E || ((v22 << 8 >> 24) - 32) > 0x5E || ((v22 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v67, v21);
    }

    else
    {
      strcpy(&__s + 5, "'");
      LOBYTE(__s) = 39;
      std::string::basic_string[abi:ne200100]<0>(&v67, &__s);
    }

    v23 = *(&buf[0] + 1);
    if (*(&buf[0] + 1) >= *&buf[1])
    {
      v25 = (*(&buf[0] + 1) - *&buf[0]) >> 4;
      if ((v25 + 1) >> 60)
      {
        goto LABEL_103;
      }

      v26 = (*&buf[1] - *&buf[0]) >> 3;
      if (v26 <= v25 + 1)
      {
        v26 = v25 + 1;
      }

      if (*&buf[1] - *&buf[0] >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      *&v70 = buf;
      if (v27)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v27);
      }

      *&__s = 0;
      *(&__s + 1) = 16 * v25;
      v69 = (16 * v25);
      applesauce::CF::TypeRefPair::TypeRefPair<std::string,float &>((16 * v25), &v67, &__val[1]);
      *&v69 = v69 + 16;
      v28 = (*(&__s + 1) + *&buf[0] - *(&buf[0] + 1));
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(buf, *&buf[0], *(&buf[0] + 1), v28);
      v29 = *&buf[0];
      v30 = *&buf[1];
      *&buf[0] = v28;
      v53 = v69;
      *(buf + 8) = v69;
      *&v69 = v29;
      *(&v69 + 1) = v30;
      *&__s = v29;
      *(&__s + 1) = v29;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&__s);
      v24 = v53;
    }

    else
    {
      applesauce::CF::TypeRefPair::TypeRefPair<std::string,float &>(*(&buf[0] + 1), &v67, &__val[1]);
      v24 = v23 + 16;
    }

    *(&buf[0] + 1) = v24;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(buf);
  v56 = CFDictionaryRef;
  *&__s = buf;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&__s);
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::DictionaryRef>(&v60, "Parameters", &v56);
  CFRelease(CFDictionaryRef);
  memset(buf, 0, 24);
  std::vector<applesauce::CF::TypeRefPair>::reserve(buf, (*(v1 + 312) - *(v1 + 304)) >> 4);
  v32 = *(v1 + 304);
  for (j = *(v1 + 312); v32 != j; v32 += 16)
  {
    __val[0] = *v32;
    std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100](&v63, *(v32 + 8));
    v34 = bswap32(__val[0]);
    *(&__s + 1) = v34;
    if ((v34 - 32) > 0x5E || ((v34 >> 8) - 32) > 0x5E || ((v34 << 8 >> 24) - 32) > 0x5E || ((v34 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v67, __val[0]);
    }

    else
    {
      strcpy(&__s + 5, "'");
      LOBYTE(__s) = 39;
      std::string::basic_string[abi:ne200100]<0>(&v67, &__s);
    }

    v35 = *(&buf[0] + 1);
    if (*(&buf[0] + 1) >= *&buf[1])
    {
      v37 = (*(&buf[0] + 1) - *&buf[0]) >> 4;
      if ((v37 + 1) >> 60)
      {
        std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
      }

      v38 = (*&buf[1] - *&buf[0]) >> 3;
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      if (*&buf[1] - *&buf[0] >= 0x7FFFFFFFFFFFFFF0uLL)
      {
        v39 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      *&v70 = buf;
      if (v39)
      {
        std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v39);
      }

      *&__s = 0;
      *(&__s + 1) = 16 * v37;
      v69 = (16 * v37);
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string,applesauce::CF::DictionaryRef &,void,0>((16 * v37), &v67, &v63);
      *&v69 = v69 + 16;
      v40 = (*(&__s + 1) + *&buf[0] - *(&buf[0] + 1));
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(buf, *&buf[0], *(&buf[0] + 1), v40);
      v41 = *&buf[0];
      v42 = *&buf[1];
      *&buf[0] = v40;
      v54 = v69;
      *(buf + 8) = v69;
      *&v69 = v41;
      *(&v69 + 1) = v42;
      *&__s = v41;
      *(&__s + 1) = v41;
      std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&__s);
      v36 = v54;
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string,applesauce::CF::DictionaryRef &,void,0>(*(&buf[0] + 1), &v67, &v63);
      v36 = v35 + 16;
    }

    *(&buf[0] + 1) = v36;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  v43 = applesauce::CF::details::make_CFDictionaryRef(buf);
  v55 = v43;
  *&__s = buf;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&__s);
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::DictionaryRef>(&v60, "Properties", &v55);
  CFRelease(v43);
  if (*(v1 + 364) == 1)
  {
    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(&v60, "SRC Algorithm", *(v1 + 360));
  }

  if (*(v1 + 372) == 1)
  {
    vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(&v60, "SRC Quality", *(v1 + 368));
  }

  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(&v60, "Enable Audio Recorders", *(v1 + 376));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(&v60, "Enable Latency Compensation", *(v1 + 377));
  vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(&v60, "Connect RPB", *(v1 + 378));
  memset(buf, 0, sizeof(buf));
  v44 = localtime((v1 + 384));
  strftime(buf, 0x40uLL, "%Y-%m-%d %H:%M:%S", v44);
  *__val = CFStringCreateWithBytes(0, "Time Stamp", 10, 0x8000100u, 0);
  if (!*__val)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::TypeRef::TypeRef(&value, buf);
  if (!value)
  {
    v64 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    __s = 0u;
    v49 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    LODWORD(v67.__r_.__value_.__l.__data_) = 134217984;
    *(v67.__r_.__value_.__r.__words + 4) = 0;
    _os_log_send_and_compose_impl(v50, &v64, &__s, 80, &dword_2724B4000, v49, 16, "assertion failure: user_info_value.is_valid() -> %llu", &v67);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  CFDictionarySetValue(*v60, *__val, value);
  if (value)
  {
    CFRelease(value);
  }

  if (*__val)
  {
    CFRelease(*__val);
  }

  v45 = v61;
  if (v61)
  {
    CFRetain(v61);
    *&__s = v45;
    v46 = CFGetTypeID(v45);
    if (v46 != CFDictionaryGetTypeID())
    {
      v52 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v52, "Could not construct");
    }
  }

  v47 = v2[3];
  v48 = *(v47 + 80);
  *(v47 + 80) = v45;
  *&__s = v48;
  *(v2[3] + 88) = 1;
  if (v48)
  {
    CFRelease(v48);
  }

  if (v61)
  {
    CFRelease(v61);
  }
}

void sub_2726531BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  __cxa_free_exception(v55);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v56 - 192));
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a32);
  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,char const*>(CFMutableDictionaryRef **a1, char *__s, char *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
LABEL_13:
    value = 0;
    key = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v9 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v15 = 134217984;
    v16 = 0;
    _os_log_send_and_compose_impl(v10, &value, &v17, 80, &dword_2724B4000, v9, 16, "assertion failure: user_info_key.is_valid() -> %llu", &v15);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_17;
  }

  applesauce::CF::TypeRef::TypeRef(&value, a3);
  if (!value)
  {
    v12 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v15 = 134217984;
    v16 = 0;
    _os_log_send_and_compose_impl(v8, &v12, &v17, 80, &dword_2724B4000, v7, 16, "assertion failure: user_info_value.is_valid() -> %llu", &v15);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  CFDictionarySetValue(**a1, key, value);
  if (value)
  {
    CFRelease(value);
  }

  if (key)
  {
    CFRelease(key);
  }
}

void sub_27265357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::make_ArrayRef(CFArrayRef *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v7 = 0x5555555555555558 * ((v4 - *a2) >> 3);
  MEMORY[0x28223BE20](a1);
  v9 = (v25 - v8);
  v25[1] = v6;
  if (v4 != v5)
  {
    bzero(v25 - v8, v7);
    v10 = 0;
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = (v12 + v10);
      if ((*(v12 + v10 + 23) & 0x80000000) == 0)
      {
        break;
      }

      v13 = *v13;
      v14 = strlen(v13);
      if (v13)
      {
        goto LABEL_6;
      }

      v15 = 0;
LABEL_7:
      v16 = v9[v11];
      v9[v11] = v15;
      if (v16)
      {
        CFRelease(v16);
      }

      ++v11;
      v12 = *a2;
      v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      v10 += 24;
      if (v11 >= v6)
      {
        goto LABEL_12;
      }
    }

    v14 = strlen(v13);
LABEL_6:
    v15 = CFStringCreateWithBytes(0, v13, v14, 0x8000100u, 0);
    v26 = v15;
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_7;
  }

LABEL_12:
  std::vector<void const*>::vector[abi:ne200100](&v26, v6);
  p_isa = &v26->isa;
  if (v6)
  {
    v18 = 8 * v6;
    v19 = v9;
    do
    {
      v20 = *v19++;
      *p_isa++ = v20;
      v18 -= 8;
    }

    while (v18);
    p_isa = &v26->isa;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(p_isa, v27);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  *a1 = CFArray;
  if (v4 != v5)
  {
    v22 = (v9 - 1);
    do
    {
      v23 = *&v22[v7];
      if (v23)
      {
        CFRelease(v23);
      }

      v7 -= 8;
    }

    while (v7);
  }
}

void sub_2726537F4(_Unwind_Exception *exception_object)
{
  v6 = *(v4 - 112);
  if (v6)
  {
    *(v4 - 104) = v6;
    operator delete(v6);
  }

  if (v2 != v3)
  {
    v7 = *(v4 - 120);
    v8 = -8 * v7;
    v9 = (v1 + 8 * v7 - 8);
    do
    {
      applesauce::CF::StringRef::~StringRef(v9);
      v9 = (v10 - 8);
      v8 += 8;
    }

    while (v8);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::ArrayRef>(CFMutableDictionaryRef **a1, char *__s, const void **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    v14 = 0;
    key = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v16 = 134217984;
    v17 = 0;
    _os_log_send_and_compose_impl(v9, &v14, &v18, 80, &dword_2724B4000, v8, 16, "assertion failure: user_info_key.is_valid() -> %llu", &v16);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_11;
  }

  v7 = *a3;
  if (!v7)
  {
    v13 = 0;
    v14 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v11 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v16 = 134217984;
    v17 = 0;
    _os_log_send_and_compose_impl(v12, &v13, &v18, 80, &dword_2724B4000, v11, 16, "assertion failure: user_info_value.is_valid() -> %llu", &v16);
    _os_crash_msg();
    __break(1u);
  }

  CFRetain(v7);
  v14 = v7;
  CFDictionarySetValue(**a1, key, v7);
  CFRelease(v7);
  CFRelease(key);
}

void sub_272653A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,unsigned int>(CFMutableDictionaryRef **a1, char *__s, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    v12 = 0;
    key = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *cf = 0u;
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    valuePtr = 134217984;
    v15 = 0;
    _os_log_send_and_compose_impl(v9, &v12, cf, 80, &dword_2724B4000, v8, 16, "assertion failure: user_info_key.is_valid() -> %llu", &valuePtr);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_11;
  }

  valuePtr = a3;
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  cf[0] = v7;
  if (!v7)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  CFDictionarySetValue(**a1, key, v7);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  CFRelease(key);
}

void sub_272653CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string,float &>(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
  }

  return a1;
}

void sub_272653E60(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,applesauce::CF::DictionaryRef>(CFMutableDictionaryRef **a1, char *__s, const void **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
    v14 = 0;
    key = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v16 = 134217984;
    v17 = 0;
    _os_log_send_and_compose_impl(v9, &v14, &v18, 80, &dword_2724B4000, v8, 16, "assertion failure: user_info_key.is_valid() -> %llu", &v16);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  key = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!key)
  {
    goto LABEL_11;
  }

  v7 = *a3;
  if (!v7)
  {
    v13 = 0;
    v14 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v11 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v16 = 134217984;
    v17 = 0;
    _os_log_send_and_compose_impl(v12, &v13, &v18, 80, &dword_2724B4000, v11, 16, "assertion failure: user_info_value.is_valid() -> %llu", &v16);
    _os_crash_msg();
    __break(1u);
  }

  CFRetain(v7);
  v14 = v7;
  CFDictionarySetValue(**a1, key, v7);
  CFRelease(v7);
  CFRelease(key);
}

void sub_2726540D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  applesauce::CF::TypeRef::~TypeRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100](void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string,applesauce::CF::DictionaryRef &,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

uint64_t std::tuple<unsigned int,applesauce::CF::DictionaryRef>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void vp::vx::dsp::v2::Graph_Builder::graph_connect_RPB(vp::vx::dsp::v2::Graph &)const::$_0::operator()<char const*,BOOL>(CFMutableDictionaryRef **a1, char *__s, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = strlen(__s);
  if (!__s)
  {
LABEL_13:
    v16 = 0;
    cf = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v12 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v18 = 134217984;
    v19 = 0;
    _os_log_send_and_compose_impl(v13, &v16, &v20, 80, &dword_2724B4000, v12, 16, "assertion failure: user_info_key.is_valid() -> %llu", &v18);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v7 = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  cf = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v8 = MEMORY[0x277CBED10];
  }

  v9 = *v8;
  v16 = v9;
  if (!v9)
  {
    v15 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 134217984;
    v19 = 0;
    _os_log_send_and_compose_impl(v11, &v15, &v20, 80, &dword_2724B4000, v10, 16, "assertion failure: user_info_value.is_valid() -> %llu", &v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  CFDictionarySetValue(**a1, v7, v9);
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726544B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK2CA3DSP5Graph19EnumeratePropertiesIZNK2vp2vx3dsp2v213Graph_Builder19set_property_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, const void *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetPropertyDirection(&v16, **v3, a2);
  if (v16)
  {
    v5 = 0;
  }

  else
  {
    v5 = cf;
  }

  if ((cf & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v16);
  }

  if (v5)
  {
    v6 = *(v4 + 38);
    v7 = *(v4 + 39);
    if (v6 == v7)
    {
LABEL_12:
      if (*(v4 + 44))
      {
        v14 = a2;
        v10 = 0;
        v11 = v4;
        v12 = &v10;
        v13 = &v14;
        cf = 0;
        LOBYTE(v16) = 3;
        operator new();
      }
    }

    else
    {
      while (1)
      {
        LODWORD(v16) = *v6;
        std::__tuple_leaf<1ul,applesauce::CF::DictionaryRef,false>::__tuple_leaf[abi:ne200100](&cf, *(v6 + 8));
        if (v16 == a2)
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v6 += 16;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(v15, **v3);
      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v18[0] = v8;
      vp::vx::dsp::v2::Graph_Builder::set_property_value(v4, v15, a2, v18);
      if (v18[0])
      {
        CFRelease(v18[0]);
      }

      CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v15);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return 0;
}

void sub_2726548B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void vp::vx::dsp::v2::Graph_Builder::set_property_value(vp *a1, CFTypeRef *a2, const void *a3, const __CFDictionary **a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return;
  }

  v9 = CFStringCreateWithBytes(0, "Value", 5, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(v4, v9);
  CFRelease(cf.__r_.__value_.__l.__data_);
  if (Value)
  {
    CFRetain(Value);
    CFRetain(Value);
    v41[0] = Value;
    p_val = v41;
    v55 = 8;
    CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v53, *a2);
    v11 = CFCopyDescription(Value);
    p_p_val = v11;
    applesauce::CF::details::CFString_get_value<true>(&cf, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v53, a3, &p_val, &cf);
    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v53);
    CFRelease(Value);
    CFRelease(Value);
    return;
  }

  if (!*a4)
  {
    goto LABEL_86;
  }

  v13 = applesauce::CF::details::at_key<char const(&)[5]>(*a4, "Data");
  if (!v13)
  {
LABEL_22:
    if (*a4)
    {
      v19 = applesauce::CF::details::at_key<char const(&)[7]>(*a4, "UInt32");
      if (v19)
      {
        v20 = applesauce::CF::convert_as<unsigned int,0>(v19);
        __val = v20;
        v50 = BYTE4(v20);
        if ((v20 & 0x100000000) != 0)
        {
          p_val = &__val;
          v55 = 4;
          CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v48, *a2);
          std::to_string(&cf, __val);
          vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v48, a3, &p_val, &cf);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v21 = &v48;
LABEL_84:
          CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v21);
          return;
        }
      }

      else
      {
        v50 = 0;
        __val = 0;
      }

      if (*a4)
      {
        v22 = applesauce::CF::details::at_key<char const(&)[7]>(*a4, "UInt64");
        if (v22)
        {
          v23 = v22;
          TypeID = CFNumberGetTypeID();
          if (TypeID == CFGetTypeID(v23))
          {
            switch(CFNumberGetType(v23))
            {
              case kCFNumberSInt8Type:
                cf.__r_.__value_.__s.__data_[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt8Type, &cf);
                goto LABEL_64;
              case kCFNumberSInt16Type:
                LOWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt16Type, &cf);
                goto LABEL_59;
              case kCFNumberSInt32Type:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt32Type, &cf);
                goto LABEL_76;
              case kCFNumberSInt64Type:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberSInt64Type, &cf);
                goto LABEL_71;
              case kCFNumberFloat32Type:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberFloat32Type, &cf);
                goto LABEL_51;
              case kCFNumberFloat64Type:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberFloat64Type, &cf);
                goto LABEL_61;
              case kCFNumberCharType:
                cf.__r_.__value_.__s.__data_[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberCharType, &cf);
LABEL_64:
                v31 = v25 != 0;
                v36 = cf.__r_.__value_.__s.__data_[0];
                if (!v25)
                {
                  v36 = 0;
                }

                v37 = cf.__r_.__value_.__s.__data_[0] < 0 && v25 != 0;
                v32 = (v36 | (v37 << 63 >> 63 << 8));
                goto LABEL_80;
              case kCFNumberShortType:
                LOWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberShortType, &cf);
LABEL_59:
                v33 = v25 == 0;
                v31 = v25 != 0;
                v34 = cf.__r_.__value_.__s.__data_[0];
                data_low = SLOWORD(cf.__r_.__value_.__l.__data_);
                goto LABEL_77;
              case kCFNumberIntType:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberIntType, &cf);
LABEL_76:
                v33 = v25 == 0;
                v31 = v25 != 0;
                v34 = cf.__r_.__value_.__s.__data_[0];
                data_low = SLODWORD(cf.__r_.__value_.__l.__data_);
LABEL_77:
                v38 = data_low & 0xFFFFFFFFFFFFFF00 | v34;
                if (v33)
                {
                  v32 = 0;
                }

                else
                {
                  v32 = v38;
                }

                goto LABEL_80;
              case kCFNumberLongType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberLongType, &cf);
                goto LABEL_71;
              case kCFNumberLongLongType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberLongLongType, &cf);
                goto LABEL_71;
              case kCFNumberFloatType:
                LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                v25 = CFNumberGetValue(v23, kCFNumberFloatType, &cf);
LABEL_51:
                v30 = v25 == 0;
                v31 = v25 != 0;
                v32 = *&cf.__r_.__value_.__l.__data_;
                goto LABEL_72;
              case kCFNumberDoubleType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberDoubleType, &cf);
                goto LABEL_61;
              case kCFNumberCFIndexType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberCFIndexType, &cf);
                goto LABEL_71;
              case kCFNumberNSIntegerType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberNSIntegerType, &cf);
LABEL_71:
                v30 = v25 == 0;
                v31 = v25 != 0;
                v32 = cf.__r_.__value_.__r.__words[0];
                goto LABEL_72;
              case kCFNumberCGFloatType:
                cf.__r_.__value_.__r.__words[0] = 0;
                v25 = CFNumberGetValue(v23, kCFNumberCGFloatType, &cf);
LABEL_61:
                v30 = v25 == 0;
                v31 = v25 != 0;
                v32 = *&cf.__r_.__value_.__l.__data_;
LABEL_72:
                if (v30)
                {
                  v32 = 0;
                }

LABEL_80:
                p_val = v32;
                LOBYTE(v55) = v31;
                if (v25)
                {
                  goto LABEL_81;
                }

                goto LABEL_37;
              default:
                goto LABEL_36;
            }
          }

          v26 = CFBooleanGetTypeID();
          if (v26 == CFGetTypeID(v23))
          {
            p_val = CFBooleanGetValue(v23);
            LOBYTE(v55) = 1;
LABEL_81:
            p_p_val = &p_val;
            v47 = 8;
            CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v45, *a2);
            std::to_string(&cf, p_val);
            vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v45, a3, &p_p_val, &cf);
            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            v21 = &v45;
            goto LABEL_84;
          }
        }

LABEL_36:
        p_val = 0;
        LOBYTE(v55) = 0;
LABEL_37:
        if (*a4)
        {
          v27 = applesauce::CF::details::at_key<char const(&)[8]>(*a4, "Float32");
          if (v27)
          {
            v28 = applesauce::CF::convert_as<float,0>(v27);
            LODWORD(v43) = v28;
            v44 = BYTE4(v28);
            if (v28 >> 32)
            {
              p_p_val = &v43;
              v47 = 4;
              CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v42, *a2);
              std::to_string(&cf, v43);
              vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v42, a3, &p_p_val, &cf);
              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v21 = &v42;
              goto LABEL_84;
            }
          }

          else
          {
            v44 = 0;
            v43 = 0.0;
          }

          applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(&cf, a4);
          p_p_val = applesauce::CF::details::find_at_key_or_optional<double,char const(&)[8]>(*cf.__r_.__value_.__l.__data_);
          LOBYTE(v47) = v29;
          if ((v29 & 1) == 0)
          {
            return;
          }

          v41[0] = &p_p_val;
          v41[1] = 8;
          CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v40, *a2);
          std::to_string(&cf, *&p_p_val);
          vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v40, a3, v41, &cf);
          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v21 = &v40;
          goto LABEL_84;
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v39, "Could not construct");
LABEL_88:
      }
    }

LABEL_86:
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    goto LABEL_88;
  }

  v14 = v13;
  CFRetain(v13);
  v15 = CFGetTypeID(v14);
  if (v15 != CFDataGetTypeID())
  {
    CFRelease(v14);
    goto LABEL_22;
  }

  CFRetain(v14);
  if (CFDataGetBytePtr(v14) && CFDataGetLength(v14))
  {
    BytePtr = CFDataGetBytePtr(v14);
    Length = CFDataGetLength(v14);
    vp::Blob::Blob(&p_val, BytePtr, Length);
    CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v51, *a2);
    v18 = CFCopyDescription(v14);
    p_p_val = v18;
    applesauce::CF::details::CFString_get_value<true>(&cf, v18);
    if (v18)
    {
      CFRelease(v18);
    }

    vp::vx::dsp::v2::Graph_Builder::set_property_value(a1, &v51, a3, &p_val, &cf);
    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }

    CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v51);
  }

  CFRelease(v14);
  CFRelease(v14);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[3],char [3],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t vp::vx::dsp::v2::Graph_Builder::exception_guard(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6[0] = a4;
  return a3(v6);
}

void sub_2726552E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    LOBYTE(a19) = 0;
    a20 = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&a19);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&a19);
    if (*v20)
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&a17, v20);
      v21 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(&a19, "context");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(v21, &a17);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a17);
    }

    vp::get_log_exception_info(&a15);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(uint64_t a1, uint64_t a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::generate_property_value(unsigned int)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 352);
  if (v2)
  {
    v6 = **(v1 + 16);
    (*(*v2 + 48))(&v5);
    v3 = *(v1 + 8);
    v4 = *v3;
    *v3 = v5;
    v5 = v4;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

const void **vp::vx::dsp::v2::Graph_Builder::set_property_value(vp *a1, uint64_t *a2, const void *a3, uint64_t a4, char *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v13 = v38;
    v14 = v38;
    v15 = v37;
    v16 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v14 >= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      if (v14 < 0)
      {
        p_p = __p;
      }

      if (v17)
      {
        v18 = " ";
      }

      else
      {
        v18 = "";
      }

      v19 = bswap32(a3);
      *&buf[1] = v19;
      if ((v19 - 32) > 0x5E || ((v19 >> 8) - 32) > 0x5E || ((v19 << 8 >> 24) - 32) > 0x5E || ((v19 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v35, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v35, buf);
      }

      v20 = &v35;
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v35.__r_.__value_.__r.__words[0];
      }

      if (a5[23] >= 0)
      {
        v21 = a5;
      }

      else
      {
        v21 = *a5;
      }

      *buf = 136315906;
      *&buf[4] = p_p;
      v40 = 2080;
      v41 = v18;
      v42 = 2080;
      v43 = v20;
      v44 = 2080;
      v45 = v21;
      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%s%ssetting DSP graph property %s to %s", buf, 0x2Au);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      LOBYTE(v14) = v38;
    }

    if ((v14 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  result = CA::DSP::Graph::SetProperty(&v33, *a2, a3, *a4, *(a4 + 8));
  if ((v34 & 1) == 0)
  {
    v23 = vp::get_log(result);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = &__p;
      v25 = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v26 = v38;
      v27 = v38;
      v28 = v37;
      v29 = vp::get_log(v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        if (v27 >= 0)
        {
          v30 = v26;
        }

        else
        {
          v30 = v28;
        }

        if (v27 < 0)
        {
          v24 = __p;
        }

        if (v30)
        {
          v31 = " ";
        }

        else
        {
          v31 = "";
        }

        caulk::string_from_4cc(&v35, a3);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v35;
        }

        else
        {
          v32 = v35.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v24;
        v40 = 2080;
        v41 = v31;
        v42 = 2080;
        v43 = v32;
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_ERROR, "%s%sfailed to set DSP graph property %s - %@", buf, 0x2Au);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        LOBYTE(v27) = v38;
      }

      if ((v27 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v33);
  }

  return result;
}

void sub_27265589C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *vp::Blob::Blob(void *this, const void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = a2;
  this[1] = a3;
  if (!a2)
  {
    v7 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v3 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v4, &v7, &v10, 80, &dword_2724B4000, v3, 16, "assertion failure: m_data != nullptr -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v7 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v5 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v6, &v7, &v10, 80, &dword_2724B4000, v5, 16, "assertion failure: m_size != 0 -> %llu", &v8);
    _os_crash_msg();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  return this;
}

void sub_272655A1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const UInt8 *applesauce::CF::details::find_at_key_or_optional<double,char const(&)[8]>(const __CFDictionary *a1)
{
  result = applesauce::CF::details::at_key<char const(&)[8]>(a1, "Float64");
  if (result)
  {
    return applesauce::CF::convert_as<double,0>(result);
  }

  return result;
}

uint64_t ___ZNK2CA3DSP5Graph19EnumerateParametersIZNK2vp2vx3dsp2v213Graph_Builder20set_parameter_valuesENS0_9ReferenceIS1_EEE3__0EEvOT__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  CA::DSP::Graph::GetParameterDirection(&v14, **v3, a2);
  if (v14)
  {
    v5 = 0;
  }

  else
  {
    v5 = v15;
  }

  if ((v15 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v14);
  }

  if (v5)
  {
    for (i = *(v4 + 31); i != *(v4 + 32); i += 2)
    {
      if (*i == a2)
      {
        v7 = i[1];
        CA::DSP::ReferenceCounted<__CADSPGraph *>::ReferenceCounted(&v14, **v3);
        vp::vx::dsp::v2::Graph_Builder::set_parameter_value(v4, &v14, a2, v7);
        CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v14);
        return 0;
      }
    }

    if (*(v4 + 37))
    {
      v13 = a2;
      cf = 0;
      v10 = v4;
      p_cf = &cf;
      v12 = &v13;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(&v14, "parameter");
    }
  }

  return 0;
}

void sub_272655D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **vp::vx::dsp::v2::Graph_Builder::set_parameter_value(vp *a1, uint64_t *a2, uint64_t a3, float a4)
{
  v43 = *MEMORY[0x277D85DE8];
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    log_context_info = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
    v11 = v35;
    v12 = v35;
    v13 = v34;
    v14 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v12 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      if (v12 < 0)
      {
        p_p = __p;
      }

      if (v15)
      {
        v16 = " ";
      }

      else
      {
        v16 = "";
      }

      v17 = bswap32(a3);
      *&buf[1] = v17;
      if ((v17 - 32) > 0x5E || ((v17 >> 8) - 32) > 0x5E || ((v17 << 8 >> 24) - 32) > 0x5E || ((v17 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v32, a3);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v32, buf);
      }

      v18 = &v32;
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v32.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = p_p;
      v37 = 2080;
      v38 = v16;
      v39 = 2080;
      v40 = v18;
      v41 = 2048;
      v42 = a4;
      _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEFAULT, "%s%ssetting DSP graph parameter %s to %f", buf, 0x2Au);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      LOBYTE(v12) = v35;
    }

    if ((v12 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  result = CA::DSP::Graph::SetParameter(&v30, *a2, a4, a3);
  if ((v31 & 1) == 0)
  {
    v20 = vp::get_log(result);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = &__p;
      v22 = vp::get_log_context_info(&__p, a1, "vp::vx::dsp::v2::Graph_Builder]", 30);
      v23 = v35;
      v24 = v35;
      v25 = v34;
      v26 = vp::get_log(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        if (v24 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v25;
        }

        if (v24 < 0)
        {
          v21 = __p;
        }

        if (v27)
        {
          v28 = " ";
        }

        else
        {
          v28 = "";
        }

        caulk::string_from_4cc(&v32, a3);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v32;
        }

        else
        {
          v29 = v32.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v21;
        v37 = 2080;
        v38 = v28;
        v39 = 2080;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_ERROR, "%s%sfailed to set DSP graph parameter %s - %@", buf, 0x2Au);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        LOBYTE(v24) = v35;
      }

      if ((v24 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v30);
  }

  return result;
}

void sub_272656164(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **vp::vx::dsp::v2::Graph_Builder::set_parameter_value(const void **result, const void **a2, uint64_t a3, const __CFNumber *a4)
{
  if (a4)
  {
    v6 = result;
    result = applesauce::CF::convert_as<float,0>(a4);
    if (result >> 32)
    {
      v7 = *a2;
      *a2 = 0;
      v8 = v7;
      vp::vx::dsp::v2::Graph_Builder::set_parameter_value(v6, &v8, a3, *&result);
      return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v8);
    }
  }

  return result;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::generate_parameter_value(unsigned int)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 296);
  if (v2)
  {
    v6 = **(v1 + 16);
    (*(*v2 + 48))(&v5);
    v3 = *(v1 + 8);
    v4 = *v3;
    *v3 = v5;
    v5 = v4;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

const void **caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::dsp::v2::Graph_Builder::build(vp::vx::dsp::Graph_Macro_Generator const&,vp::vx::dsp::Graph_Feature_Filter const&)::$_0>(uint64_t **a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&cf, *(*a1)[1]);
  if (*(v2 + 376) == 1 && *(v2 + 80) == 1)
  {
    v3 = v1[2];
    v54.__val_ = 0;
    v54.__cat_ = std::system_category();
    std::__fs::filesystem::__create_directories((v2 + 56), &v54);
    CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&v52, cf);
    v4 = CADSPGraphModelCopyName();
    v55 = 0;
    v53 = v4;
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v55);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v52);
    v51 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v5 = CADSPGraphModelCopyBoxes();
    v55 = 0;
    v56[0] = v5;
    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v55);
    CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v51);
    v6 = v56[0];
    Count = CFArrayGetCount(v56[0]);
    v8 = Count;
    v9 = v56[0];
    v10 = *MEMORY[0x277CBECE8];
    if (v6 != v56[0] || Count)
    {
      v11 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
        v13 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        v55 = 0;
        v50 = v13;
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v55);
        v48 = v50;
        if (v50)
        {
          CFRetain(v50);
        }

        v14 = CADSPBoxModelCopyName();
        v55 = 0;
        v49 = v14;
        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v55);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v48);
        if (vp::vx::dsp::Graph_Feature_Filter::should_enable_audio_recorders(v3, v53, v49))
        {
          for (i = 0; ; ++i)
          {
            v47 = v50;
            if (v50)
            {
              CFRetain(v50);
            }

            v16 = MEMORY[0x2743CAAA0]();
            CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v47);
            if (v16 <= i)
            {
              break;
            }

            CA::DSP::MutableRecorderTapPointModel::Create(&v55, v10);
            v45 = v53;
            if (v53)
            {
              CFRetain(v53);
            }

            v44 = v49;
            if (v49)
            {
              CFRetain(v49);
            }

            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v44);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v45);
            v43 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPRecorderTapPointModelSetAudioFilePath();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v43);
            v42 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPRecorderTapPointModelSetBoxName();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v42);
            v41 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPRecorderTapPointModelSetPortIndex();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v41);
            v40 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            v39 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPGraphModelAddRecorderTapPoint();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v39);
            CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v40);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v46);
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v55);
          }
        }

        CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v49);
        CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v50);
        ++v11;
      }

      while (v6 != v9 || v11 != v8);
    }

    CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(v56);
    v17 = 0;
    v56[0] = 0x100000000;
    do
    {
      v49 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v18 = CADSPGraphModelCopyPorts();
      v55 = 0;
      v50 = v18;
      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v55);
      CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v49);
      v19 = v50;
      v20 = CFArrayGetCount(v50);
      v21 = v50;
      if (v19 != v50 || v20)
      {
        v22 = 0;
        v23 = v20 - 1;
        do
        {
          v24 = v22;
          v25 = CFArrayGetValueAtIndex(v19, v22);
          v26 = v25;
          if (v25)
          {
            CFRetain(v25);
          }

          v55 = 0;
          v46 = v26;
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v55);
          v37 = v46;
          if (v46)
          {
            CFRetain(v46);
          }

          v27 = CADSPPortModelCopyName();
          v55 = 0;
          v38 = v27;
          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v55);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v37);
          if (vp::vx::dsp::Graph_Feature_Filter::should_enable_audio_recorders(v3, v53, v38))
          {
            CA::DSP::MutableRecorderTapPointModel::Create(&v55, v10);
            v35 = v53;
            if (v53)
            {
              CFRetain(v53);
            }

            v34 = v38;
            if (v38)
            {
              CFRetain(v38);
            }

            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v34);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v35);
            v33 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPRecorderTapPointModelSetAudioFilePath();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v33);
            v32 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPRecorderTapPointModelSetBoxName();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v32);
            v31 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            v30 = v55;
            if (v55)
            {
              CFRetain(v55);
            }

            CADSPGraphModelAddRecorderTapPoint();
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(&v30);
            CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v31);
            CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v36);
            CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v55);
          }

          CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v38);
          CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(&v46);
          v22 = v24 + 1;
        }

        while (v19 != v21 || v23 != v24);
      }

      CA::DSP::ReferenceCounted<__CFArray const*>::~ReferenceCounted(&v50);
      v17 += 4;
    }

    while (v17 != 8);
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v53);
  }

  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);
}

void sub_2726567C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::MutableRecorderTapPointModel::Create(CA::DSP::MutableRecorderTapPointModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = CADSPRecorderTapPointModelCreateMutable();
  return CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(&v3);
}

const void **vp::vx::dsp::v2::anonymous namespace::make_audio_capture_file_path(CFMutableStringRef *a1, uint64_t *a2, const time_t *a3, CFStringRef *a4, CFStringRef *a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 256);
  theString = Mutable;
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  CFStringAppendFormat(Mutable, 0, @"%s/vp.", v13);
  v20 = 0u;
  v21 = 0u;
  *cStr = 0u;
  v19 = 0u;
  v14 = localtime(a3);
  strftime(cStr, 0x40uLL, "%Y%m%d.%H%M%S.", v14);
  CFStringAppendCString(theString, cStr, 0x8000100u);
  if (*a4 && CFStringGetLength(*a4))
  {
    CFStringAppend(theString, *a4);
    CFStringAppendCString(theString, ".", 0x8000100u);
  }

  if (*a5 && CFStringGetLength(*a5))
  {
    CFStringAppend(theString, *a5);
  }

  if ((a6 & 0x100000000) != 0)
  {
    CFStringAppendFormat(theString, 0, @"[%u]", a6);
  }

  CFStringAppendCString(theString, ".caf", 0x8000100u);
  v16 = theString;
  if (theString)
  {
    CFRetain(theString);
  }

  v16 = 0;
  *a1 = theString;
  CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&v16);
  return CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(&theString);
}

void sub_272656BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPRecorderTapPointModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPPortModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CFString *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef&>(void *a1, CFTypeRef cf, const void **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t vp::vx::dsp::Graph_Feature_Filter::should_enable_audio_recorders(id *this, CFTypeRef cf, CFTypeRef a3)
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (cf && (CFRetain(cf), v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    cfa = 0;
    CFRelease(cf);
  }

  else
  {
    cfa = cf;
  }

  if (a3 && (CFRetain(a3), v7 = CFGetTypeID(a3), v7 != CFStringGetTypeID()))
  {
    v21 = 0;
    CFRelease(a3);
    a3 = 0;
  }

  else
  {
    v21 = a3;
  }

  if (*this)
  {
    CFRetain(@"GraphName");
    v8 = @"GraphName";
    v9 = CFGetTypeID(@"GraphName");
    TypeID = CFStringGetTypeID();
    if (v9 == TypeID)
    {
      v24 = @"GraphName";
    }

    else
    {
      v24 = 0;
      CFRelease(@"GraphName");
      v8 = 0;
    }

    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef&>(v26, v8, &cfa);
    CFRetain(@"BoxName");
    v12 = @"BoxName";
    v13 = CFGetTypeID(@"BoxName");
    v14 = CFStringGetTypeID();
    if (v13 == v14)
    {
      v23 = @"BoxName";
    }

    else
    {
      v23 = 0;
      CFRelease(@"BoxName");
      v12 = 0;
    }

    v20 = this;
    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::StringRef&>(v27, v12, &v21);
    v25[0] = v26;
    v25[1] = 2;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v25);
    for (i = 0; i != -4; i -= 2)
    {
      v17 = v27[i + 1];
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = v26[i + 2];
      if (v18)
      {
        CFRelease(v18);
      }
    }

    if (v13 == v14)
    {
      CFRelease(v12);
    }

    if (v9 == TypeID)
    {
      CFRelease(v8);
    }

    CFRetain(CFDictionaryRef);
    v11 = vp::cf::Predicate::evaluate(v20, CFDictionaryRef);
    if (CFDictionaryRef)
    {
      CFRelease(CFDictionaryRef);
    }

    CFRelease(CFDictionaryRef);
    if (a3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 1;
    if (a3)
    {
LABEL_31:
      CFRelease(a3);
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v11;
}