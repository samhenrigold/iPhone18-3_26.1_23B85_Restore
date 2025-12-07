uint64_t HALS_Box::GetPropertyDataSize(HALS_Box *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1651861859)
  {
    if (mSelector > 1651010920)
    {
      if (mSelector == 1651010921 || mSelector == 1651013225)
      {
        return 4;
      }

      v7 = 1651536495;
    }

    else
    {
      if (mSelector == 1650682915 || mSelector == 1650751011)
      {
        return 0;
      }

      v7 = 1651007861;
    }

    goto LABEL_16;
  }

  if (mSelector <= 1668575851)
  {
    if (mSelector == 1651861860)
    {
      return 8;
    }

    if (mSelector == 1652060006)
    {
      return 4;
    }

    v7 = 1652060014;
    goto LABEL_16;
  }

  if (mSelector == 1668575852)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = ___ZNK8HALS_Box17GetNumberControlsEv_block_invoke;
    v15 = &unk_1E8673B28;
    v16 = &v20;
    v17 = this;
    v9 = (*(*this + 64))(this, a2);
    HALB_CommandGate::ExecuteCommand(v9, &v12);
LABEL_22:
    v11 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
    return (4 * v11);
  }

  if (mSelector == 1870098020)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 0x40000000;
    v14 = ___ZNK8HALS_Box35GetNumberOfControlsUsingClassFilterEjPKj_block_invoke;
    v15 = &unk_1E8673B50;
    v19 = a4 >> 2;
    v17 = this;
    v18 = a5;
    v16 = &v20;
    v10 = (*(*this + 64))(this, a2);
    HALB_CommandGate::ExecuteCommand(v10, &v12);
    goto LABEL_22;
  }

  v7 = 1953653102;
LABEL_16:
  if (mSelector == v7)
  {
    return 4;
  }

  return HALS_Object::GetPropertyDataSize(this, a2, a3);
}

uint64_t ___ZNK8HALS_Box17GetNumberControlsEv_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 216))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE36BFD0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK8HALS_Box35GetNumberOfControlsUsingClassFilterEjPKj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 216))(v2);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = (*(*v2 + 224))(v2, v5);
      v8 = v6;
      v9 = *(a1 + 56);
      v10 = *(a1 + 48);
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_12;
      }

      v12 = *(v6 + 20);
      v13 = 1;
      do
      {
        v14 = *v10++;
        IsSubClass = HALB_Info::IsSubClass(v12, v14);
        if (IsSubClass)
        {
          break;
        }
      }

      while (v13++ < v9);
      if (IsSubClass)
      {
LABEL_12:
        ++*(*(*(a1 + 32) + 8) + 24);
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      v5 = (v5 + 1);
    }

    while (v5 != v4);
  }
}

uint64_t HALS_Box::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 <= 1651536494)
  {
    if (v4 <= 1651007860)
    {
      v5 = v4 == 1650682915;
      v6 = 1650751011;
    }

    else
    {
      v5 = v4 == 1651007861 || v4 == 1651010921;
      v6 = 1651013225;
    }

LABEL_19:
    if (!v5 && v4 != v6)
    {
      return HALS_Object::IsPropertySettable(0, a2, a3);
    }

    return result;
  }

  if (v4 <= 1652060013)
  {
    v5 = v4 == 1651536495 || v4 == 1651861860;
    v6 = 1652060006;
    goto LABEL_19;
  }

  if (v4 != 1953653102 && v4 != 1668575852)
  {
    if (v4 == 1652060014)
    {
      return 1;
    }

    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_Box::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 > 1652060005)
  {
    if (v3 > 1869638758)
    {
      if (v3 > 1937007733)
      {
        if (v3 == 1937007734)
        {
          return result;
        }

        v5 = 1953653102;
      }

      else
      {
        if (v3 == 1869638759)
        {
          return result;
        }

        v5 = 1870098020;
      }
    }

    else if (v3 > 1668047218)
    {
      if (v3 == 1668047219)
      {
        return result;
      }

      v5 = 1668575852;
    }

    else
    {
      if (v3 == 1652060006)
      {
        return result;
      }

      v5 = 1652060014;
    }
  }

  else
  {
    if (v3 > 1651010920)
    {
      if (v3 > 1651536494)
      {
        if (v3 == 1651536495)
        {
          return result;
        }

        v5 = 1651861860;
        goto LABEL_25;
      }

      if (v3 == 1651010921)
      {
        return result;
      }

      v6 = 30313;
    }

    else
    {
      if (v3 <= 1650751010)
      {
        if (v3 == 1650682915)
        {
          return result;
        }

        v5 = 1650682995;
        goto LABEL_25;
      }

      if (v3 == 1650751011)
      {
        return result;
      }

      v6 = 24949;
    }

    v5 = v6 | 0x62680000;
  }

LABEL_25:
  if (v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_Box::GetMIGDispatchQueue(HALS_Box *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t HALS_Box::GetCommandGate(HALS_Box *this)
{
  return *(this + 6);
}

{
  return *(this + 6);
}

void HALS_Box::~HALS_Box(HALS_Box *this)
{
  HALS_Box::~HALS_Box(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5968D08;
  v2 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  CACFString::~CACFString((this + 72));
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_Box::HALS_Box(HALS_Box *this, HALS_DeviceManager *a2, const __CFString *a3, uint64_t a4, HALS_Object *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1633841016, 0, a2, a5);
  *v6 = &unk_1F5968D08;
  *(v6 + 72) = a3;
  v8 = (v6 + 72);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  if (a3)
  {
    *v16 = 256;
    CACFString::GetCString(a3, (v6 + 88), v16, v7);
    Length = *v8;
    if (*v8)
    {
      Length = CFStringGetLength(Length);
      v10 = Length + 1;
    }

    else
    {
      v10 = 1;
    }

    *v15 = v10;
    MEMORY[0x1EEE9AC00](Length);
    CACFString::GetCString(*v8, (v15 - ((v11 + 15) & 0x1FFFFFFF0) + 8), v15, v12);
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "HALS_Box.cpp";
    v19 = 1024;
    v20 = 37;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Box::HALS_Box: all boxes have to have a UID", &buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE36C778(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1700](v3, v4);
  CACFString::~CACFString(v2);
  v6 = *(v1 + 7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  HALS_Object::~HALS_Object(v1);
  _Unwind_Resume(a1);
}

CFIndex OS::CF::String::AsCString(CFIndex this, UInt8 *a2, uint64_t a3)
{
  *a2 = 0;
  usedBufLen = 1;
  v3 = *(this + 8);
  if (v3)
  {
    v7.length = CFStringGetLength(*(this + 8));
    v7.location = 0;
    this = CFStringGetBytes(v3, v7, 0x8000100u, 0, 0, a2, a3 - 1, &usedBufLen);
    a2[usedBufLen] = 0;
  }

  return this;
}

void sub_1DE36CC98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = DSP_ADM;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

CFComparisonResult HALS_IOContext_MCP_Impl::GetOwningDeviceID(const __CFDictionary **this)
{
  if (this[14])
  {
    cf[0] = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v15 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!v15)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v17, this[14], cf[0], &v15);
    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(cf[0]);
  }

  else
  {
    v17 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!v17)
    {
      v10 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v10, "Could not construct");
      __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v2 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  cf[0] = v2;
  if (!v2)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "Could not construct");
    __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v17, cf);
  CFRelease(v2);
  if (v3 == kCFCompareEqualTo)
  {
    goto LABEL_15;
  }

  v14[0] = 0;
  v14[1] = 0;
  HALS_System::GetInstance(&v15, 0, v14);
  *cf = 0u;
  v12 = 0u;
  v13 = 1065353216;
  v4 = HALS_System::CopyDeviceByUID(v15, v17, 0, cf);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(cf);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v4)
  {
    v3 = v4[4];
  }

  HALS_ObjectMap::ReleaseObject(v4, v5);
  if (!v4)
  {
LABEL_15:
    v3 = kCFCompareEqualTo;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v3;
}

uint64_t HALS_IOContext_MCP_Impl::GetSafetyOffset(HALS_IOContext_MCP_Impl *this, uint64_t a2)
{
  result = *(this + 32);
  if (result)
  {
    result = (*(*result + 120))(result);
    if (result)
    {
      return (*(**(this + 32) + 144))(*(this + 32), a2);
    }
  }

  return result;
}

double HALS_IOContext_MCP_Impl::GetActualSampleRate(HALS_IOContext_MCP_Impl *this)
{
  v2 = *(this + 32);
  if (!v2 || !(*(*v2 + 120))(v2))
  {
    return 0.0;
  }

  v3 = *(**(this + 32) + 152);

  v3();
  return result;
}

uint64_t HALS_IOContext_MCP_Impl::GetStreamInfo(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, uint64_t a5)
{
  v5 = a3 / 0x38;
  if (a3 / 0x38 >= -991146299 * ((*(a1 + 24 * a5 + 200) - *(a1 + 24 * a5 + 192)) >> 3))
  {
    v5 = -991146299 * ((*(a1 + 24 * a5 + 200) - *(a1 + 24 * a5 + 192)) >> 3);
  }

  *a4 = v5;
  if (v5)
  {
    HALS_IOContext_MCP_Impl::get_owning_device_for_stream(a1, a5, 0);
  }

  return a1;
}

void HALS_IOContext_MCP_Impl::get_owning_device_for_stream(uint64_t a1, int a2, uint64_t a3)
{
  v13 = 0x676C6F626E756964;
  LODWORD(v14) = 0;
  v4 = *(a1 + 56);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7)
    {
      AMCP::Core::Core::call_operation_function<applesauce::CF::StringRef>(&v15, v7, &v13);
    }

    else
    {
      v15 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v15 = 0;
  }

  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v10, 0, v12);
  if (v15)
  {
    v8 = *(v10.__r_.__value_.__r.__words[0] + 1744);
    applesauce::CF::convert_to<std::string,0>(__p, v15);
    os_unfair_lock_lock(v8 + 4);
    HALS_IOContext_Manager_Impl::find_wires_for_context(&v13, &v8[6], __p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE36D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a23;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&__p);
  applesauce::CF::StringRef::~StringRef((v23 - 96));
  _Unwind_Resume(a1);
}

void AMCP::Core::Core::call_operation_function<applesauce::CF::StringRef>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "Core.h";
      v31 = 1024;
      v32 = 198;
      v33 = 2080;
      v34 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v27, a2, a3);
  if (!v27)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "Core.h";
      v31 = 1024;
      v32 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Operation does not have requested function", v16);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v35 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = applesauce::CF::StringRef, Argument_Types = <>]";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v37 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  AMCP::Core::Operation::call_function<applesauce::CF::StringRef>(a1, v27);
  v7 = v28;
  if (v28)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE36DBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 145));
  v27 = *(v25 - 136);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::CopyIOThreadOSWorkgroup(HALS_IOContext_MCP_Impl *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*(this + 6))
  {
    HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(v8, this);
    v6 = caulk::mach::details::retain_os_object(v9, v5);
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2[7];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4)
    {
      v6 = a2[6];
      if (v6)
      {
        AMCP::Core::Core::get_simple_required_property<2003267184u>(a1, v6);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a2[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a2);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315906;
    v19 = "HALS_IOContext_MCP_Impl.cpp";
    v20 = 1024;
    v21 = 107;
    v22 = 1024;
    v23 = v12;
    v24 = 2080;
    v25 = v13;
    _os_log_debug_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v11 = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = v11;
  if (v5)
  {
    goto LABEL_13;
  }
}

void sub_1DE36DF60(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContext_MCP_Impl::get_debug_device_name(HALS_IOContext_MCP_Impl *this, uint64_t a2)
{
  if (*(a2 + 112))
  {
    v9 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    cf = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    if (!cf)
    {
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "Could not construct");
      __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(this, *(a2 + 112), v9, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v4 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    *this = v4;
    if (!v4)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
      __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }
}

void AMCP::Core::Core::get_simple_required_property<2003267184u>(uint64_t a1, AMCP::Core::Core *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = 0x676C6F6277676E70;
  v25 = 0;
  has_property = AMCP::Core::Core::has_property(this, &v24);
  if (!has_property)
  {
LABEL_17:
    LOBYTE(v31) = 0;
    v36 = 0;
LABEL_18:
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = 4;
      strcpy(__p, "wgnp");
      *buf = 136316418;
      *v38 = "Core.h";
      *&v38[8] = 1024;
      *&v38[10] = 391;
      *&v38[14] = 2080;
      *&v38[16] = "optional_value.operator BOOL() == true";
      *&v38[24] = 2080;
      *&v38[26] = __p;
      *&v38[34] = 1024;
      strcpy(&v38[36], "bolg");
      v38[41] = 4;
      *&v38[42] = 0;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v29, this, &v24);
  v6 = v29;
  if (v29)
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
    {
      AMCP::Core::Operation::call_function<caulk::mach::os_workgroup_interval_managed>(buf, v6);
      memset(v34, 0, sizeof(v34));
      v33 = 0u;
      v35 = 0;
      v31 = MEMORY[0x1E69E3C20] + 16;
      v32 = *&v38[4];
      *&v38[4] = 0;
      caulk::mach::details::release_os_object(0, v8);
      v9 = *v34;
      v10 = v33;
      v11 = *&v34[16];
      v33 = *&v38[12];
      *v34 = *&v38[28];
      *&v34[16] = *&v38[44];
      *&v38[44] = v11;
      *&v38[12] = v10;
      *&v38[28] = v9;
      LOBYTE(v11) = v34[24];
      v34[24] = v39;
      v39 = v11;
      LOBYTE(v11) = v35;
      v35 = v40;
      v40 = v11;
      v36 = 1;
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(buf);
LABEL_5:
      v12 = 0;
      goto LABEL_10;
    }

    v13 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v13))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(__p, v6);
      AMCP::Thing::convert_to<caulk::mach::os_workgroup_interval_managed>(buf, __p);
      memset(v34, 0, sizeof(v34));
      v33 = 0u;
      v35 = 0;
      v31 = MEMORY[0x1E69E3C20] + 16;
      v32 = *&v38[4];
      *&v38[4] = 0;
      caulk::mach::details::release_os_object(0, v14);
      v15 = *v34;
      v16 = v33;
      v17 = *&v34[16];
      v33 = *&v38[12];
      *v34 = *&v38[28];
      *&v34[16] = *&v38[44];
      *&v38[44] = v17;
      *&v38[12] = v16;
      *&v38[28] = v15;
      LOBYTE(v17) = v34[24];
      v34[24] = v39;
      v39 = v17;
      LOBYTE(v17) = v35;
      v35 = v40;
      v40 = v17;
      v36 = 1;
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(buf);
      if (v28)
      {
        v28(0, __p, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v12 = 1;
LABEL_10:
  has_property = v30;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v12)
  {
    goto LABEL_17;
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  *a1 = MEMORY[0x1E69E3C18] + 16;
  v18 = caulk::mach::details::retain_os_object(v32, v5);
  v19 = *v34;
  *(a1 + 16) = v33;
  *(a1 + 32) = v19;
  *(a1 + 41) = *&v34[9];
  *a1 = MEMORY[0x1E69E3C20] + 16;
  *(a1 + 8) = v18;
  *(a1 + 57) = v35;
  if (v36 == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v31);
  }
}

void sub_1DE36E580(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::GetIOThreadOSWorkgroup(HALS_IOContext_MCP_Impl *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*(this + 6))
  {
    HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(v7, this);
    v5 = v8;
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v7);
  }

  else
  {
    v5 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v5;
}

void HALS_IOContext_MCP_Impl::SetIOThreadOSWorkgroup(HALS_IOContext_MCP_Impl *this, os_workgroup_s *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(this + 7);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!*(this + 6))
      {
LABEL_23:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      caulk::mach::os_workgroup_interval_managed::from_get(&v27, a2);
      v7 = *(this + 7);
      if (v7)
      {
        v7 = std::__shared_weak_count::lock(v7);
        v8 = v7;
        if (v7)
        {
          v9 = *(this + 6);
          if (v9)
          {
            cf = 0x676C6F6277676E70;
            v26 = 0;
            if (AMCP::Core::Core::is_property_settable(v9, &cf))
            {
              AMCP::Core::Core::find_operation(&__p, v9, &cf);
              v10 = __p;
              if (__p)
              {
                v11 = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>();
                if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v11))
                {
                  AMCP::Core::Operation::call_function<void,caulk::mach::os_workgroup_interval_managed const&>(v10, &v27);
                }

                else
                {
                  v20 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
                  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v20))
                  {
                    *&buf_4[4] = 0uLL;
                    *&v30 = 0;
                    *(&v30 + 1) = AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch;
                    operator new();
                  }
                }
              }

              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }
            }

LABEL_21:
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_22:
            caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v27);
            v16 = *(this + 5);
            v17 = v16[4];
            *&v27.mSelector = 0x676C6F626F737767;
            v27.mElement = 0;
            HALS_Object::PropertiesChanged(v16, v17, 0, 1, &v27);
            goto LABEL_23;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *v14;
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      else
      {
        v15 = *v14;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(*(this + 5) + 16);
        HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
        if (!cf)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&__p, cf);
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        buf = 136315906;
        *buf_4 = "HALS_IOContext_MCP_Impl.cpp";
        *&buf_4[8] = 1024;
        *&buf_4[10] = 121;
        *&buf_4[14] = 1024;
        *&buf_4[16] = v18;
        LOWORD(v30) = 2080;
        *(&v30 + 2) = p_p;
        _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", &buf, 0x22u);
        if (v24 < 0)
        {
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }
}

void sub_1DE36E9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t caulk::mach::os_workgroup_interval_managed::from_get(caulk::mach::os_workgroup_interval_managed *this, os_workgroup_s *a2)
{
  v3 = caulk::mach::details::retain_os_object(a2, a2);
  caulk::mach::details::release_os_object(0, v4);
  *this = MEMORY[0x1E69E3C18] + 16;
  *(this + 1) = v3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 41) = 0u;
  caulk::mach::details::release_os_object(0, v5);
  *this = MEMORY[0x1E69E3C20] + 16;
  *(this + 57) = 0;

  return caulk::mach::details::release_os_object(0, v6);
}

void HALS_IOContext_MCP_Impl::GetIOProcStreamUsage(HALS_IOContext_MCP_Impl *this, AudioHardwareIOProcStreamUsage *a2, unsigned int *a3, char a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v5 = *(this + 5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK23HALS_IOContext_MCP_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke;
  v9[3] = &unk_1E8673C08;
  v10 = a4;
  v9[6] = this;
  v9[7] = a3;
  v9[8] = a2;
  v9[4] = &v15;
  v9[5] = &v11;
  v6 = (*(*v5 + 64))(v5);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  if (*(v12 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = *(v12 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v8;
  }

  *a3 = *(v16 + 6);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_1DE36EC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK23HALS_IOContext_MCP_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(result + 72);
  v2 = *(result + 48);
  v3 = *(result + 56);
  v4 = 0x4EC4EC4EC4EC4EC5 * ((*(v2 + 24 * *(result + 72) + 200) - *(v2 + 24 * *(result + 72) + 192)) >> 3);
  *(*(*(result + 32) + 8) + 24) = 330382100 * ((*(v2 + 24 * *(result + 72) + 200) - *(v2 + 24 * *(result + 72) + 192)) >> 3) + 12;
  if (*v3 < *(*(*(result + 32) + 8) + 24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "HALS_IOContext_MCP_Impl.cpp";
      v16 = 1024;
      v17 = 1085;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIOProcStreamUsage", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v5 = *(result + 64);
  *(v5 + 8) = v4;
  if (v4)
  {
    v6 = 0;
    v7 = v1 == 0;
    v8 = 88;
    if (!v7)
    {
      v8 = 64;
    }

    v9 = (v2 + v8);
    v10 = v9[1];
    v11 = v5 + 12;
    do
    {
      if (v10 <= v6)
      {
        LODWORD(v12) = 1;
      }

      else
      {
        v12 = (*(*v9 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
      }

      *(v11 + 4 * v6++) = v12;
    }

    while (v4 != v6);
  }

  return result;
}

void sub_1DE36EE1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v12 = v11[2];
    }

    else
    {
      v12 = 2003329396;
    }

    *(*(*(a10 + 40) + 8) + 24) = v12;
    __cxa_end_catch();
    JUMPOUT(0x1DE36ED38);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::SetIOProcStreamUsage(HALS_IOContext_MCP_Impl *this, const AudioHardwareIOProcStreamUsage *a2, unsigned int a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_IOContext_MCP_Impl.cpp";
      v16 = 1024;
      v17 = 577;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioDevicePropertyIOProcStreamUsage", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = (a3 + 0x3FFFFFFF4) >> 2;
  mNumberStreams = a2->mNumberStreams;
  if (mNumberStreams >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = mNumberStreams;
  }

  if (-991146299 * ((*(this + 3 * a4 + 25) - *(this + 3 * a4 + 24)) >> 3) < v4)
  {
    v4 = -991146299 * ((*(this + 3 * a4 + 25) - *(this + 3 * a4 + 24)) >> 3);
  }

  if (v4)
  {
    v6 = 0;
    v7 = 64;
    if (!a4)
    {
      v7 = 88;
    }

    v8 = *(this + v7);
    do
    {
      v9 = v6 >> 6;
      v10 = 1 << v6;
      if (a2->mStreamIsOn[v6])
      {
        v11 = *(v8 + 8 * v9) | v10;
      }

      else
      {
        v11 = *(v8 + 8 * v9) & ~v10;
      }

      *(v8 + 8 * v9) = v11;
      ++v6;
    }

    while (v4 != v6);
  }

  HALS_IOContext_MCP_Impl::UpdateContext(this);
  return 0;
}

void sub_1DE36F00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE36EF2CLL);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_MCP_Impl::UpdateContext(HALS_IOContext_MCP_Impl *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(this + 14);
  if (v1)
  {
    v2 = HALS_IOContext_MCP_Impl::SetComposition(this, v1);
    if (v2)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v2);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315394;
        v8 = "HALS_IOContext_MCP_Impl.cpp";
        v9 = 1024;
        v10 = 358;
        _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d Error setting IOC composition.", &v7, 0x12u);
      }
    }
  }
}

uint64_t HALS_IOContext_MCP_Impl::SetComposition(HALS_IOContext_MCP_Impl *this, const __CFDictionary *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = applesauce::CF::DictionaryRef::from_get(&v40, a2);
  v4 = v40;
  if (!v40)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 484;
      *&buf[18] = 2080;
      *&buf[20] = "not (description)";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s SetComposition called with null description", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&valuePtr, "SetComposition called with null description", v21);
    std::logic_error::logic_error(&v32, &valuePtr);
    v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5991430;
    v34 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v33);
    v42 = "virtual OSStatus HALS_IOContext_MCP_Impl::SetComposition(CFDictionaryRef)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_MCP_Impl.cpp";
    v44 = 484;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  CFRetain(v40);
  v28 = v4;
  v33.__vftable = CFStringCreateWithBytes(0, "device id", 9, 0x8000100u, 0);
  if (!v33.__vftable)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr.__r_.__value_.__l.__data_) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(buf, v4, v33.__vftable, &cf);
  v5 = *buf;
  if (!*buf)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = applesauce::CF::convert_to<unsigned int,0>(*buf);
  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33.__vftable)
  {
    CFRelease(v33.__vftable);
  }

  v7 = HALS_ObjectMap::CopyObjectByObjectID(v6);
  if (v7)
  {
    v9 = v7[38];
    v10 = v7[39] << 32;
  }

  else
  {
    v10 = 0x200000000;
    v9 = 1;
  }

  HALS_ObjectMap::ReleaseObject(v7, v8);
  CFRelease(v4);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  *&buf[24] = 0;
  v33.__vftable = 0;
  v11 = *(this + 7);
  if (v11 && *(v11 + 8) != -1)
  {
    operator new();
  }

  v12 = *(this + 5);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1174405120;
  v25[2] = ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke;
  v25[3] = &unk_1F5969170;
  v25[5] = this;
  v13 = v40;
  if (v40)
  {
    CFRetain(v40);
  }

  v26 = v13;
  v27 = v10 | v9;
  v25[4] = buf;
  v14 = (*(*v12 + 64))(v12);
  HALB_CommandGate::ExecuteCommand(v14, v25);
  v15 = *(*&buf[8] + 24);
  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(buf, 8);
  if (v40)
  {
    CFRelease(v40);
  }

  return v15;
}

void sub_1DE36F6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, Buffer_Size_Notifier *a35)
{
  std::unique_ptr<Buffer_Size_Notifier>::reset[abi:ne200100](&a35);
  _Block_object_dispose((v35 - 144), 8);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 - 152));
  _Unwind_Resume(a1);
}

void ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v97[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v2 + 8) == -1;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v1 + 112);
  v5 = *(a1 + 48);
  *(v1 + 112) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v65 = v3;
  v71 = 0;
  v72 = 0;
  HALS_System::GetInstance(&v73, 0, &v71);
  v6 = *(v73 + 1744);
  v7 = *(v1 + 112);
  if (v7)
  {
    CFRetain(v7);
    v70 = v7;
    os_unfair_lock_lock(v6 + 4);
    CFRetain(v7);
    cf = v7;
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
    CFRetain(v7);
    v78[1] = v7;
    v8 = applesauce::CF::details::at_key<char const(&)[10]>(v7, "device id");
    if (v8)
    {
      v9 = applesauce::CF::convert_as<unsigned int,0>(v8);
      if ((v9 & 0x100000000) != 0)
      {
        HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(&v6[10], v9);
      }
    }

    CFRelease(v7);
    HALS_IOContext_Manager_Impl::get_graph_builder(v78, &v6[6], 0);
  }

  v70 = 0;
  os_unfair_lock_lock(v6 + 4);
  cf = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  v75 = 0;
  v76 = 0;
  *buf = &v89 + 8;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v88;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  if (cf)
  {
    CFRelease(cf);
  }

  os_unfair_lock_unlock(v6 + 4);
  v11 = v75;
  v10 = v76;
  if (v76)
  {
    atomic_fetch_add_explicit(&v76->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v10)
  {
    if (v10->__shared_owners_ != -1 && v65)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v12 = *(v1 + 56);
      *(v1 + 48) = v11;
      *(v1 + 56) = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v68 = 0;
      v69 = 0;
      HALS_System::GetInstance(&v79, 0, &v68);
      v13 = *(v79 + 1740);
      v84 = 0x676C6F626E64696FLL;
      LODWORD(v85) = 0;
      v15 = *(v1 + 8);
      v14 = *(v1 + 16);
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 2, 1uLL, memory_order_relaxed);
      }

      __p[0] = &unk_1F5969288;
      __p[1] = v15;
      __p[2] = v14;
      __p[3] = __p;
      v16 = *(v1 + 56);
      if (v16)
      {
        v16 = std::__shared_weak_count::lock(v16);
        v17 = v16;
        if (v16)
        {
          v18 = *(v1 + 48);
          if (v18)
          {
            std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](buf, __p);
            AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(v18, &v84, buf);
            std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](buf);
            goto LABEL_47;
          }
        }
      }

      else
      {
        v17 = 0;
      }

      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v16);
      }

      v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v24 = *v23;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(*(v1 + 40) + 16);
        HALS_IOContext_MCP_Impl::get_debug_device_name(v97, v1);
        if (!v97[0])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&v88, v97[0]);
        if ((SBYTE7(v89) & 0x80u) == 0)
        {
          v54 = &v88;
        }

        else
        {
          v54 = v88;
        }

        *buf = 136315906;
        *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 95;
        v93 = 1024;
        v94 = v53;
        v95 = 2080;
        *v96 = v54;
        _os_log_debug_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
        if (SBYTE7(v89) < 0)
        {
          operator delete(v88);
        }

        if (v97[0])
        {
          CFRelease(v97[0]);
        }
      }

      if (!v17)
      {
LABEL_48:
        std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](__p);
        strcpy(buf, "revobolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v25 = *(*(v1 + 40) + 16);
        *&v88 = &unk_1F5969308;
        DWORD2(v88) = v25;
        *(&v89 + 1) = &v88;
        HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()>>(v1, buf, &v88);
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v88);
        strcpy(buf, "pbdnbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v27 = *(v1 + 8);
        v26 = *(v1 + 16);
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 16), 1uLL, memory_order_relaxed);
        }

        v84 = &unk_1F5969388;
        v85 = v27;
        v86 = v26;
        v87 = &v84;
        HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()>>(v1, buf, &v84);
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](&v84);
        strcpy(buf, "pednbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v29 = *(v1 + 8);
        v28 = *(v1 + 16);
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 16), 1uLL, memory_order_relaxed);
        }

        v97[0] = &unk_1F5969408;
        v97[1] = v29;
        v97[2] = v28;
        v97[3] = v97;
        HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()>>(v1, buf, v97);
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v97);
        HALS_IOContext_MCP_Impl::set_simple_mcp_value<1718839674u>(v1, (v1 + 248));
        strcpy(buf, "sppibolg");
        buf[9] = 0;
        *&buf[10] = 0;
        HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<AMCP::Power_State>(v1, buf, v13);
        v30 = *(v1 + 56);
        if (v30)
        {
          v31 = *(*(v1 + 40) + 72);
          v30 = std::__shared_weak_count::lock(v30);
          v32 = v30;
          if (v30)
          {
            v30 = *(v1 + 48);
            if (v30)
            {
              AMCP::Core::Core::set_simple_property_value<1885630071u>(v30, (v31 + 42));
              goto LABEL_64;
            }
          }
        }

        else
        {
          v32 = 0;
        }

        v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v33 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v30);
        }

        v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          v36 = *v35;
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        else
        {
          v36 = *v35;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(*(v1 + 40) + 16);
          HALS_IOContext_MCP_Impl::get_debug_device_name(v81, v1);
          if (!v81[0])
          {
            v62 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v62, "Could not construct");
            __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(&v82, v81[0]);
          if (v83 >= 0)
          {
            v56 = &v82;
          }

          else
          {
            v56 = v82;
          }

          *buf = 136315906;
          *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 121;
          v93 = 1024;
          v94 = v55;
          v95 = 2080;
          *v96 = v56;
          _os_log_debug_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82);
          }

          if (v81[0])
          {
            CFRelease(v81[0]);
          }
        }

        if (!v32)
        {
LABEL_65:
          v37 = *(v1 + 56);
          if (v37)
          {
            v38 = *(*(v1 + 40) + 72);
            v37 = std::__shared_weak_count::lock(v37);
            v39 = v37;
            if (v37)
            {
              v37 = *(v1 + 48);
              if (v37)
              {
                AMCP::Core::Core::set_simple_property_value<1885627511u>(v37, (v38 + 43));
                goto LABEL_77;
              }
            }
          }

          else
          {
            v39 = 0;
          }

          v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v40 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v37);
          }

          v42 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            v43 = *v42;
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          else
          {
            v43 = *v42;
          }

          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v57 = *(*(v1 + 40) + 16);
            HALS_IOContext_MCP_Impl::get_debug_device_name(v81, v1);
            if (!v81[0])
            {
              v63 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v63, "Could not construct");
              __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::convert_to<std::string,0>(&v82, v81[0]);
            if (v83 >= 0)
            {
              v58 = &v82;
            }

            else
            {
              v58 = v82;
            }

            *buf = 136315906;
            *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 121;
            v93 = 1024;
            v94 = v57;
            v95 = 2080;
            *v96 = v58;
            _os_log_debug_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
            if (SHIBYTE(v83) < 0)
            {
              operator delete(v82);
            }

            if (v81[0])
            {
              CFRelease(v81[0]);
            }
          }

          if (!v39)
          {
LABEL_78:
            std::vector<BOOL>::resize((v1 + 64), -991146299 * ((*(v1 + 224) - *(v1 + 216)) >> 3), 1);
            std::vector<BOOL>::resize((v1 + 88), -991146299 * ((*(v1 + 200) - *(v1 + 192)) >> 3), 1);
            v44 = *(v1 + 56);
            if (v44)
            {
              v44 = std::__shared_weak_count::lock(v44);
              v45 = v44;
              if (v44)
              {
                v46 = *(v1 + 48);
                if (v46)
                {
                  *&v82 = 0x676C6F626D746D62;
                  DWORD2(v82) = 0;
                  AMCP::Core::Core::get_property_value(buf, v46, &v82);
                  AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(&v82, buf);
                  if (*&v96[6])
                  {
                    (*&v96[6])(0, buf, 0, 0);
                  }

LABEL_91:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                  v51 = v82;
LABEL_92:
                  v52 = *(v1 + 264);
                  *(v1 + 256) = v51;
                  if (v52)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                  }

                  v82 = 0uLL;
                  HALS_System::GetInstance(buf, 0, &v82);
                  HALS_System::ProcessPropertyChanged(*buf, **(*(v1 + 40) + 72), 1885632035, 1869968496, 1);
                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                  }

                  v81[0] = 0;
                  v81[1] = 0;
                  HALS_System::GetInstance(buf, 0, v81);
                  HALS_System::ProcessPropertyChanged(*buf, **(*(v1 + 40) + 72), 1885632035, 1768845428, 1);
                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                  }

                  if (v80)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                  }

                  if (v69)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
                  }

                  goto LABEL_102;
                }
              }
            }

            else
            {
              v45 = 0;
            }

            v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v47 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v44);
            }

            v49 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v48)
            {
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
              v50 = *v49;
              std::__shared_weak_count::__release_shared[abi:ne200100](v48);
            }

            else
            {
              v50 = *v49;
            }

            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              v59 = *(*(v1 + 40) + 16);
              HALS_IOContext_MCP_Impl::get_debug_device_name(v81, v1);
              if (!v81[0])
              {
                v64 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v64, "Could not construct");
                __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::convert_to<std::string,0>(&v82, v81[0]);
              if (v83 >= 0)
              {
                v60 = &v82;
              }

              else
              {
                v60 = v82;
              }

              *buf = 136315906;
              *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1534;
              v93 = 1024;
              v94 = v59;
              v95 = 2080;
              *v96 = v60;
              _os_log_debug_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
              if (SHIBYTE(v83) < 0)
              {
                operator delete(v82);
              }

              if (v81[0])
              {
                CFRelease(v81[0]);
              }
            }

            v51 = 0uLL;
            v82 = 0u;
            if (!v45)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

LABEL_77:
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          goto LABEL_78;
        }

LABEL_64:
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        goto LABEL_65;
      }

LABEL_47:
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      goto LABEL_48;
    }

    if (v65 || v10->__shared_owners_ != -1)
    {
LABEL_102:
      std::__shared_weak_count::__release_weak(v10);
      return;
    }
  }

  else if (v65)
  {
    return;
  }

  v19 = *(*(v1 + 40) + 16);
  v20 = *(v1 + 464);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke_2;
  block[3] = &__block_descriptor_tmp_15;
  v67 = v19;
  AMCP::Utility::Dispatch_Queue::async(v20, block);
  if (v10)
  {
    goto LABEL_102;
  }
}

void sub_1DE3709FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_t lock, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, char a63)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE370BEC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE370D3CLL);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370C00(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (a2)
  {
    *(v47 - 208) = &a47;
    std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100]((v47 - 208));
    JUMPOUT(0x1DE370CF0);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370C10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60)
{
  if (a2)
  {
    a60 = (v60 - 208);
    std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&a60);
    JUMPOUT(0x1DE370C2CLL);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370C44(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_s *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t *a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, std::runtime_error a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    *(v69 - 136) = v66;
    v72 = *(v69 - 128);
    if (v72)
    {
      *(v69 - 120) = v72;
      operator delete(v72);
    }

    if (__p)
    {
      a34 = __p;
      operator delete(__p);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v69 - 208);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a65);
    std::runtime_error::~runtime_error(&a43);
    if (a42 < 0)
    {
      operator delete(a37);
    }

    if (v65)
    {
      __cxa_free_exception(v68);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a47);
    if (a31)
    {
      std::default_delete<HALIO::HALIO_Graph_Builder>::operator()[abi:ne200100](a31);
    }

    AMCP::Graph_Description::~Graph_Description(&a58);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
    os_unfair_lock_unlock(a12);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a23);
    if (a27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a27);
    }

    if (a25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a25);
    }

    v73 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v67 + 32) + 8) + 24) = v73[2];
    }

    else
    {
      *(*(*(v67 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE370328);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370CE4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE370CF0);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void sub_1DE370CF8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE370D04);
  }

  JUMPOUT(0x1DE370BDCLL);
}

void Buffer_Size_Notifier::~Buffer_Size_Notifier(Buffer_Size_Notifier *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      if (*(v2 + 48))
      {
        simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718839674u>(*(this + 2));
        v7 = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718843939u>(*(this + 2));
        v16 = 0;
        v17 = 0;
        v18 = 0;
        if (simple_mcp != *this && *this)
        {
          v14 = 0x676C6F626673697ALL;
          v15 = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v16, &v14);
        }

        v8 = *(this + 1);
        v10 = v8 == v7 && *(this + 2) == HIDWORD(v7);
        if (v8 && !v10)
        {
          v14 = 0x676C6F6266737A23;
          v15 = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v16, &v14);
        }

        v11 = v16;
        if (v16 != v17)
        {
          v12 = *(*(this + 2) + 40);
          v13 = v12[20];
          if (!v13)
          {
            v13 = v12[4];
          }

          HALS_Object::PropertiesChanged(v12, v13, 0, -1431655765 * ((v17 - v16) >> 2), v16);
        }

        if (v11)
        {
          operator delete(v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

Buffer_Size_Notifier *std::unique_ptr<Buffer_Size_Notifier>::reset[abi:ne200100](Buffer_Size_Notifier **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    Buffer_Size_Notifier::~Buffer_Size_Notifier(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

unint64_t HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718839674u>(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = a1[6];
      if (v2)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1718839674u>(v2);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return simple_required;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    v17 = "HALS_IOContext_MCP_Impl.cpp";
    v18 = 1024;
    v19 = 107;
    v20 = 1024;
    v21 = v10;
    v22 = 2080;
    v23 = v11;
    _os_log_debug_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  simple_required = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1DE3710F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718843939u>(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = a1[6];
      if (v2)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1718843939u>(v2);
        v5 = simple_required & 0xFFFFFFFF00000000;
        v6 = simple_required;
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return v6 | v5;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315906;
    v19 = "HALS_IOContext_MCP_Impl.cpp";
    v20 = 1024;
    v21 = 107;
    v22 = 1024;
    v23 = v12;
    v24 = 2080;
    v25 = v13;
    _os_log_debug_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v5 = 0;
  v6 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1DE371318(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Core::Core::get_simple_required_property<1718843939u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#zsfbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(a1, buf);
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "fsz#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  return result;
}

void sub_1DE3714B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_simple_required_property<1718839674u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "zisfbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 4;
      strcpy(__p, "fsiz");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v9 = 1024;
      v10 = 391;
      v11 = 2080;
      v12 = "optional_value.operator BOOL() == true";
      v13 = 2080;
      v14 = __p;
      v15 = 1024;
      v16 = 1735159650;
      v17 = 1024;
      v18 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  return result;
}

void sub_1DE371638(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void __destroy_helper_block_e8_48c36_ZTSN10applesauce2CF13DictionaryRefE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *__copy_helper_block_e8_48c36_ZTSN10applesauce2CF13DictionaryRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 48);
  if (v3)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v3;
  return result;
}

void ___ZN23HALS_IOContext_MCP_Impl14SetCompositionEPK14__CFDictionary_block_invoke_2(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_IOContext_Manager::destroy_context_core_for_hal_object_id(*(v4 + 1744), *(a1 + 32));
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE371714(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<std::function<void ()(unsigned int)>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v7 = v4;
    if (v4)
    {
      v8 = a1[6];
      if (v8)
      {
        std::__function::__value_func<void ()>::__value_func[abi:ne200100](v27, a3);
        AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v8, a2, v27);
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v27);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v9 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *v11;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v18 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136315906;
    v20 = "HALS_IOContext_MCP_Impl.cpp";
    v21 = 1024;
    v22 = 95;
    v23 = 1024;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    _os_log_debug_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }
}

void sub_1DE37195C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContext_MCP_Impl::set_simple_mcp_value<1718839674u>(void *a1, _DWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  if (v3)
  {
    v3 = std::__shared_weak_count::lock(v3);
    v5 = v3;
    if (v3)
    {
      v3 = a1[6];
      if (v3)
      {
        AMCP::Core::Core::set_simple_property_value<1718839674u>(v3, a2);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *v8;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    v17 = "HALS_IOContext_MCP_Impl.cpp";
    v18 = 1024;
    v19 = 121;
    v20 = 1024;
    v21 = v10;
    v22 = 2080;
    v23 = v11;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v5)
  {
    goto LABEL_13;
  }
}

void sub_1DE371B8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<AMCP::Power_State>(void *a1, unsigned int *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a1[7];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v7 = v4;
    if (v4)
    {
      v4 = a1[6];
      if (v4)
      {
        AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(v4, a2, a3);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *v10;
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315906;
    v19 = "HALS_IOContext_MCP_Impl.cpp";
    v20 = 1024;
    v21 = 95;
    v22 = 1024;
    v23 = v12;
    v24 = 2080;
    v25 = v13;
    _os_log_debug_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }
}

void sub_1DE371DA4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<BOOL>::resize(void *result, unint64_t a2, int a3)
{
  v4 = result[1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    result[1] = a2;
  }

  else
  {
    v7 = result[2];
    v8 = v7 << 6;
    if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
    {
      __dst = 0;
      v19 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v7 << 7;
      if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v8 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v11);
      v12 = *result;
      v13 = result[1];
      *&v19 = v13 + v5;
      v14 = __dst;
      if (v13 < 1)
      {
        LODWORD(v17) = 0;
        v16 = __dst;
      }

      else
      {
        v15 = v13 >> 6;
        if (v13 >= 0x40)
        {
          memmove(__dst, v12, 8 * v15);
        }

        v16 = &v14[8 * v15];
        v17 = v13 & 0x3F;
        if (v17)
        {
          *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v12 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
        }

        v12 = *result;
      }

      *result = v14;
      *(result + 1) = v19;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      v16 = (*result + 8 * (v4 >> 6));
      v17 = result[1] & 0x3FLL;
      result[1] = a2;
    }

    if (a3)
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&__dst, v5);
    }

    else
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&__dst, v5);
    }
  }
}

void sub_1DE371F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t AMCP::Core::Core::set_simple_property_value<1885627511u>(int8x8_t *a1, _BYTE *a2)
{
  v12 = 0x676C6F6270646477;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LOBYTE(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,BOOL const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE3721F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3721D8);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1885630071u>(int8x8_t *a1, _BYTE *a2)
{
  v12 = 0x676C6F6270646E77;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LOBYTE(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,BOOL const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE372334(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE37231CLL);
}

void AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(AMCP::Address *a1, unsigned int *a2, int a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 198;
      v46 = 2080;
      v47 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v31, a1, a2);
  v7 = v31;
  if (!v31)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v44 = 1024;
      v45 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v34, "Operation does not have requested function", v29);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Power_State>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v50 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v34, "Operation does not have requested function", v30);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Power_State>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>(), (v9 = (*(v10 + 7))(4, v10 + 24, 0, buf)) == 0))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v44 = 1024;
      v45 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v34, "Invalid cast", v28);
    std::runtime_error::runtime_error(&v35, &v34);
    std::runtime_error::runtime_error(&v36, &v35);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v36.__vftable = &unk_1F5992170;
    v37 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
    v48 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Power_State>]";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v50 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  *buf = a3;
  v11 = *(v9 + 3);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v11 + 48))(v11, buf);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_1DE372ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1718839674u>(int8x8_t *a1, _DWORD *a2)
{
  v12 = 0x676C6F626673697ALL;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LODWORD(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,unsigned int const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE372CB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE372C9CLL);
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 28) - 1;
        *(v5 + 28) = v6;
        if (!v6)
        {
          v7 = *(v5 + 40);
          v8 = *(v7 + 80);
          if (!v8)
          {
            v8 = *(v7 + 16);
          }

          v20 = v5;
          v21 = v8;
          v13 = caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::end_processing(void)::$_0>;
          v14[0] = &v20;
          caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::end_processing(void)::$_0>(v14);
          v9 = *(*(v5 + 40) + 88);
          if (v9)
          {
            (*(*v9 + 120))(v9);
            v9 = (*(**(*(v5 + 40) + 88) + 128))(*(*(v5 + 40) + 88));
          }

          HALS_IOContext::UpdateInputStreamUsageStatus(v9);
          v10 = *(*(v5 + 40) + 16);
          v11 = *(v5 + 472);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN23HALS_IOContext_MCP_Impl14end_processingEv_block_invoke;
          block[3] = &__block_descriptor_tmp_24_3470;
          v19 = v10;
          AMCP::Utility::Dispatch_Queue::async(v11, block);
          std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v16, *(v5 + 8), *(v5 + 16));
          v12 = *(v5 + 472);
          v13 = MEMORY[0x1E69E9820];
          v14[0] = 1174405120;
          v14[1] = ___ZN23HALS_IOContext_MCP_Impl14end_processingEv_block_invoke_2;
          v14[2] = &__block_descriptor_tmp_27_3471;
          v14[3] = v16;
          v15 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Utility::Dispatch_Queue::async(v12, &v13);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::end_processing(void)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 40);
  v3 = *(v1 + 8);
  *&v4.mSelector = 0x676C6F62676F696ELL;
  v4.mElement = 0;
  HALS_Object::PropertiesChanged_Sync(v2, v3, 0, 1, &v4);
}

void ___ZN23HALS_IOContext_MCP_Impl14end_processingEv_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_System::SetIOContextIsRunning(v4, *(a1 + 32), 0);
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE373008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c51_ZTSNSt3__110shared_ptrI23HALS_IOContext_MCP_ImplEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c51_ZTSNSt3__110shared_ptrI23HALS_IOContext_MCP_ImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t HALS_IOContext_MCP_Impl::send_is_running_somewhere_else(HALS_IOContext_MCP_Impl *this)
{
  v21 = *MEMORY[0x1E69E9840];
  strcpy(buf, "frbtbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Graph::Timebase_Set>(v14, this, buf);
  if (!v15)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      v19 = 1024;
      v20 = 1401;
      _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl::send_is_running_somewhere_else - no timebases found", buf, 0x12u);
    }
  }

  v7 = *(this + 59);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN23HALS_IOContext_MCP_Impl30send_is_running_somewhere_elseEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_19_3473;
  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(v10, v14);
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(&__p, v16, v17, (v17 - v16) >> 2);
  AMCP::Utility::Dispatch_Queue::async(v7, v9);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v10);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v14);
}

void sub_1DE373224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AMCP::Graph::Timebase_Set::~Timebase_Set(va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Graph::Timebase_Set>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 56);
  if (v4 && (v7 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v8 = v7;
    v9 = *(a2 + 48);
    if (v9)
    {
      if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
      {
        v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v11 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
        }

        v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          v14 = *v13;
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          v14 = *v13;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v33 = "Core.h";
          v34 = 1024;
          v35 = 198;
          v36 = 2080;
          v37 = "!in_address.has_wildcards()";
          _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
        }

        abort();
      }

      operation = AMCP::Core::Core::find_operation(&v30, v9, a3);
      if (!v30)
      {
        v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v15 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
        }

        v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "Core.h";
          v34 = 1024;
          v35 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v21, "Operation does not have requested function", v19);
        std::runtime_error::runtime_error(&v22, &v21);
        std::runtime_error::runtime_error(&v23, &v22);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = -1;
        v23.__vftable = &unk_1F5992170;
        v24 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v23);
        v38 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = AMCP::Graph::Timebase_Set, Argument_Types = <>]";
        v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v40 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v20);
      }

      AMCP::Core::Operation::call_function<AMCP::Graph::Timebase_Set>(a1, v30);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 1065353216;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1065353216;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }
}

void sub_1DE373700(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE373708);
  }

  __clang_call_terminate(a1);
}

void ___ZN23HALS_IOContext_MCP_Impl30send_is_running_somewhere_elseEv_block_invoke(uint64_t a1)
{
  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(v2, a1 + 32);
  memset(v3, 0, sizeof(v3));
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(v3, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&__p, 0, v5);
  HALS_IOContext_Manager::find_contexts_and_devices_with_timebases(&v6, *(__p + 218), v2);
}

void sub_1DE373874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  AMCP::Graph::Timebase_Set::~Timebase_Set(&a10);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_32c31_ZTSN4AMCP5Graph12Timebase_SetE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(a1 + 32);
}

uint64_t *__copy_helper_block_e8_32c31_ZTSN4AMCP5Graph12Timebase_SetE(uint64_t *a1, uint64_t a2)
{
  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(a1 + 4, a2 + 32);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  return std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(a1 + 9, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
}

uint64_t std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5969408;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969408;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_3>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969408;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(v5 + 28);
    *(v5 + 28) = v6 + 1;
    if (!v6)
    {
      v7 = *(*(v5 + 40) + 16);
      IOStatus = HALB_IOBufferManager_Server::GetIOStatus(*(v5 + 240));
      if (!IOStatus)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1445;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1970171760;
      }

      IOStatus[17] = 0u;
      IOStatus[18] = 0u;
      IOStatus[15] = 0u;
      IOStatus[16] = 0u;
      IOStatus[13] = 0u;
      IOStatus[14] = 0u;
      IOStatus[11] = 0u;
      IOStatus[12] = 0u;
      IOStatus[9] = 0u;
      IOStatus[10] = 0u;
      IOStatus[7] = 0u;
      IOStatus[8] = 0u;
      IOStatus[5] = 0u;
      IOStatus[6] = 0u;
      IOStatus[3] = 0u;
      IOStatus[4] = 0u;
      IOStatus[1] = 0u;
      IOStatus[2] = 0u;
      *IOStatus = 0u;
      HALS_IOContext_MCP_Impl::update_status_time_info(v5);
      OSMemoryBarrier();
      v9 = *(v5 + 40);
      v10 = *(v9 + 80);
      if (!v10)
      {
        v10 = *(v9 + 16);
      }

      block = v5;
      LODWORD(v25) = v10;
      *buf = caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::begin_processing(void)::$_0>;
      *&buf[8] = &block;
      caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::begin_processing(void)::$_0>(&buf[8]);
      v11 = HALS_IOContext::WaitForClientToBeginTransport(*(v5 + 40));
      v12 = v11;
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *v15;
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      else
      {
        v16 = *v15;
      }

      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (v17)
      {
        v20 = "NO";
        *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
        *buf = 136315650;
        if (v12)
        {
          v20 = "YES";
        }

        *&buf[12] = 1024;
        *&buf[14] = 1466;
        *&buf[18] = 2080;
        *&buf[20] = v20;
        _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d finished WaitForClientToBeginTransport: did start: %s", buf, 0x1Cu);
        if (v12)
        {
          goto LABEL_16;
        }
      }

      else if (v12)
      {
LABEL_16:
        HALS_IOContext::UpdateInputStreamUsageStatus(v17);
        v18 = *(v5 + 472);
        block = MEMORY[0x1E69E9820];
        v25 = 0x40000000;
        v26 = ___ZN23HALS_IOContext_MCP_Impl16begin_processingEv_block_invoke;
        v27 = &__block_descriptor_tmp_22_3479;
        v28 = v7;
        AMCP::Utility::Dispatch_Queue::async(v18, &block);
        std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v22, *(v5 + 8), *(v5 + 16));
        v19 = *(v5 + 472);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 1174405120;
        *&buf[16] = ___ZN23HALS_IOContext_MCP_Impl16begin_processingEv_block_invoke_2;
        *&buf[24] = &__block_descriptor_tmp_23_3480;
        v30 = v22;
        v31 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::Utility::Dispatch_Queue::async(v19, buf);
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        goto LABEL_26;
      }

      HALS_IOContext_MCP_Impl::stop(v5);
    }
  }

LABEL_26:

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

void HALS_IOContext_MCP_Impl::update_status_time_info(HALS_IOContext_MCP_Impl *this)
{
  v39 = *MEMORY[0x1E69E9840];
  IOStatus = HALB_IOBufferManager_Server::GetIOStatus(*(this + 30));
  if (!IOStatus)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "HALS_IOContext_MCP_Impl.cpp";
      v33 = 1024;
      v34 = 1543;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  v3 = IOStatus;
  v4 = *(this + 7);
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    v5 = v4;
    if (v4 && *(this + 6))
    {
      v6 = *(this + 32);
      if (!v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v32 = "HALS_IOContext_MCP_Impl.cpp";
          v33 = 1024;
          v34 = 1564;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  master timebase not found!", buf, 0x12u);
        }

        v25 = __cxa_allocate_exception(0x10uLL);
        *v25 = off_1F5991DD8;
        v25[2] = 1970171760;
      }

      v7 = COERCE_DOUBLE((*(*v6 + 136))(v6));
      if (v8)
      {
        (*(**(this + 32) + 56))(*(this + 32), v7);
        (*(**(this + 32) + 160))(*(this + 32));
      }

      v26 = (*(**(this + 32) + 72))(*(this + 32));
      v9 = (*(**(this + 32) + 160))(*(this + 32));
      v10.f64[0] = v26;
      v10.f64[1] = 1.0 / v26;
      v11 = vmulq_f64(v10, vdupq_n_s64(0x4176E36000000000uLL));
LABEL_17:
      v27 = v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      v11 = v27;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v4);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(*(this + 5) + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
    if (!cf)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v24, "Could not construct");
      __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v30 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    *buf = 136315906;
    v32 = "HALS_IOContext_MCP_Impl.cpp";
    v33 = 1024;
    v34 = 1577;
    v35 = 1024;
    v36 = v21;
    v37 = 2080;
    v38 = v22;
    _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v11 = 0uLL;
  v9 = 0;
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_18:
  v16 = *(*(*(this + 5) + 72) + 40);
  v17 = vdivq_f64(v11, vdupq_n_s64(0x4176E36000000000uLL));
  v18 = vdup_n_s32(v16);
  v19.i64[0] = v18.u32[0];
  v19.i64[1] = v18.u32[1];
  *v3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), vrev64q_s8(v17), v17);
  if (v16)
  {
    v9 = bswap64(v9);
    v20 = bswap32(*(this + 62));
  }

  else
  {
    v20 = *(this + 62);
  }

  v3[1].i64[0] = v9;
  v3[1].i32[2] = v20;
}

void sub_1DE374488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext_MCP_Impl::begin_processing(void)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 40);
  v3 = *(v1 + 8);
  *&v4.mSelector = 0x676C6F62676F696ELL;
  v4.mElement = 0;
  HALS_Object::PropertiesChanged_Sync(v2, v3, 0, 1, &v4);
}

uint64_t HALS_IOContext_MCP_Impl::stop(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = this;
    *(this + 32) = v1 - 1;
    v3 = *(*(this + 40) + 88);
    if (v3)
    {
      (*(*v3 + 120))(v3);
      (*(**(*(v2 + 40) + 88) + 128))(*(*(v2 + 40) + 88));
    }

    v4 = 0x676C6F6273746F70;
    v5 = 0;
    return HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(v2, &v4);
  }

  return this;
}

void ___ZN23HALS_IOContext_MCP_Impl16begin_processingEv_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_System::SetIOContextIsRunning(v4, *(a1 + 32), 1);
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE374664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = AMCP::Core::Core::call_operation_function<BOOL>(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

uint64_t AMCP::Core::Core::call_operation_function<BOOL>(AMCP::Address *a1, unsigned int *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Core.h";
      v29 = 1024;
      v30 = 198;
      v31 = 2080;
      v32 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  AMCP::Core::Core::find_operation(&v25, a1, a2);
  if (!v25)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "Core.h";
      v29 = 1024;
      v30 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v16, "Operation does not have requested function", v14);
    std::runtime_error::runtime_error(&v17, &v16);
    std::runtime_error::runtime_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5992170;
    v19 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
    v33 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <>]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v35 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = AMCP::Core::Operation::call_function<BOOL>(v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  return v4;
}

void sub_1DE374A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 145));
  v27 = *(v25 - 136);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5969388;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_2>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5969388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int)>>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 198;
      v48 = 2080;
      v49 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v32, a1, a2);
  v7 = v32;
  if (!v32)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v30);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void >>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v52 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::__function::__value_func<void ()>::__value_func[abi:ne200100](v44, a3);
  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void >>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>(), v9 = (*(v10 + 7))(4, v10 + 24, 0, buf), (v11 = v9) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Invalid cast", v29);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void >>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::__function::__value_func<void ()>::__value_func[abi:ne200100](buf, v44);
  v12 = *(v11 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](buf);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v44);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }
}

void sub_1DE3754AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 161));
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v27 - 160);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[281];
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1>,void ()(unsigned int)>::operator()(uint64_t a1, unsigned int a2)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 8));
  v4 = v2;
  if (v2)
  {
    HALS_IOContext::SignalOverloadToClient(v2);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_1>,void ()(unsigned int)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5969308;
  *(a2 + 8) = *(result + 8);
  return result;
}

void AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 198;
      v48 = 2080;
      v49 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v32, a1, a2);
  v7 = v32;
  if (!v32)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v30);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v52 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v44, a3);
  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>(), v9 = (*(v10 + 7))(4, v10 + 24, 0, buf), (v11 = v9) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Invalid cast", v29);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](buf, v44);
  v12 = *(v11 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v44);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }
}

void sub_1DE375FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 161));
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v27 - 160);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[279];
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23HALS_IOContext_MCP_Impl24attach_ioproc_to_contextEN4AMCP11Power_StateEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *a4;
    v11 = *a5;
    v35 = *a7;
    v36 = *a6;
    v12 = std::__shared_weak_count::lock(v8);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 8);
      if (v14)
      {
        ++*(v14 + 24);
        IOStatus = HALB_IOBufferManager_Server::GetIOStatus(*(v14 + 240));
        if (!IOStatus)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v38 = "HALS_IOContext_MCP_Impl.cpp";
            v39 = 1024;
            v40 = 1588;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = 1970171760;
        }

        if (*(*(*(v14 + 40) + 72) + 40))
        {
          v16 = bswap64(*(a3 + 8));
          *(v14 + 272) = bswap64(*a3);
          *(v14 + 280) = v16;
          *(v14 + 288) = bswap64(*(a3 + 16));
          *(v14 + 328) = bswap32(*(a3 + 56));
          v17 = (v14 + 336);
          v18 = bswap64(*(a3 + 72));
          *(v14 + 336) = bswap64(*(a3 + 64));
          *(v14 + 344) = v18;
          *(v14 + 352) = bswap64(*(a3 + 16));
          *(v14 + 392) = bswap32(*(a3 + 56));
          v19 = (v14 + 400);
          v20 = bswap64(*(a3 + 136));
          *(v14 + 400) = bswap64(*(a3 + 128));
          *(v14 + 408) = v20;
          v21 = bswap64(*(a3 + 16));
          v22 = bswap32(*(a3 + 56));
        }

        else
        {
          *(v14 + 272) = *a3;
          *(v14 + 280) = *(a3 + 8);
          *(v14 + 288) = *(a3 + 16);
          *(v14 + 328) = *(a3 + 56);
          v17 = (v14 + 336);
          *(v14 + 336) = *(a3 + 64);
          *(v14 + 344) = *(a3 + 72);
          *(v14 + 352) = *(a3 + 16);
          *(v14 + 392) = *(a3 + 56);
          v19 = (v14 + 400);
          *(v14 + 400) = *(a3 + 128);
          *(v14 + 408) = *(a3 + 136);
          v21 = *(a3 + 16);
          v22 = *(a3 + 56);
        }

        *(v14 + 416) = v21;
        *(v14 + 456) = v22;
        v23 = *(v14 + 272);
        v24 = *(v14 + 288);
        v25 = *(v14 + 320);
        IOStatus[8] = *(v14 + 304);
        IOStatus[9] = v25;
        IOStatus[6] = v23;
        IOStatus[7] = v24;
        v26 = *v17;
        v27 = v17[1];
        v28 = v17[3];
        IOStatus[12] = v17[2];
        IOStatus[13] = v28;
        IOStatus[10] = v26;
        IOStatus[11] = v27;
        v29 = *v19;
        v30 = v19[1];
        v31 = v19[3];
        IOStatus[16] = v19[2];
        IOStatus[17] = v31;
        IOStatus[14] = v29;
        IOStatus[15] = v30;
        HALS_IOContext_MCP_Impl::update_status_time_info(v14);
        OSMemoryBarrier();
        v33 = *(v14 + 192);
        v32 = *(v14 + 200);
        if (-991146299 * ((*(v14 + 224) - *(v14 + 216)) >> 3))
        {
          HALS_IOContext_MCP_Impl::copy_buffers(v14, 1u, v10, v11);
        }

        kdebug_trace();
        HALS_IOContext::CallClientIOProc(*(v14 + 40), *(v14 + 24), *(v14 + 248), 0, 0);
        kdebug_trace();
        if (-991146299 * ((v32 - v33) >> 3))
        {
          HALS_IOContext_MCP_Impl::copy_buffers(v14, 0, v36, v35);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_MCP_Impl::copy_buffers(AMCP::Log::AMCP_Scope_Registry *result, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v7 = result;
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 72);
  if (v8 && *v8 != 1)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v25 = *v29;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1677;
      *&buf[18] = 2080;
      *&buf[20] = "in_streams[0].m_buffer_list == nullptr or in_streams[0].m_buffer_list->mNumberBuffers == 1";
      v26 = "%32s:%-5d Assertion Failed: %s The ABL from the MCP is supposed to have 1 buffer";
LABEL_25:
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x1Cu);
    }

LABEL_26:
    abort();
  }

  if (a3)
  {
    v9 = 0;
    v30 = result + 24 * a2;
    v10 = 1;
    do
    {
      v11 = a4 + 80 * v9;
      v14 = *(v11 + 72);
      v13 = (v11 + 72);
      v12 = v14;
      if (v14)
      {
        if (*v12 != 1)
        {
          v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v22 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(result);
          }

          v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            v25 = *v24;
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          else
          {
            v25 = *v24;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1683;
            *&buf[18] = 2080;
            *&buf[20] = "in_streams[i].m_buffer_list->mNumberBuffers == 1";
            v26 = "%32s:%-5d Assertion Failed: %s The input ABL from the MCP is supposed to have 1 buffer";
            goto LABEL_25;
          }

          goto LABEL_26;
        }

        v31 = 0;
        IOBuffer = HALB_IOBufferManager_Server::GetIOBuffer(*(v7 + 30), a2 == 1, v10 - 1, &v31);
        v16 = IOBuffer;
        v17 = *v13;
        v18 = *(*v13 + 12);
        if (v18 >= v31)
        {
          v19 = v31;
        }

        else
        {
          v19 = v18;
        }

        if (a2 == 1)
        {
          result = memcpy(IOBuffer, *(v17 + 16), v19);
          if (*(*(*(v7 + 5) + 72) + 40) == 1)
          {
            v20 = *(v7 + 27) + 104 * v9;
            *buf = *v20;
            *&buf[16] = *(v20 + 16);
            v33 = *(v20 + 32);
            result = endian_swap_samples(buf, v16, v19);
          }
        }

        else
        {
          if (*(*(*(v7 + 5) + 72) + 40) == 1)
          {
            v21 = *(v30 + 24) + 104 * v9;
            *buf = *v21;
            *&buf[16] = *(v21 + 16);
            v33 = *(v21 + 32);
            endian_swap_samples(buf, IOBuffer, v19);
            v17 = *v13;
          }

          result = memcpy(*(v17 + 16), v16, v19);
        }
      }

      v9 = v10++;
    }

    while (v9 < a3);
  }

  return result;
}

_DWORD *endian_swap_samples(_DWORD *result, byte *a2, int a3)
{
  if (result[2] == 1819304813)
  {
    v3 = result[7];
    v4 = result[6] / v3;
    v5 = v3 * a3;
    if (v4 == 4)
    {
      if (v5)
      {
        do
        {
          *a2 = bswap32(*a2);
          a2 += 4;
          --v5;
        }

        while (v5);
      }
    }

    else if (v4 == 2 && v5 != 0)
    {
      do
      {
        *a2 = bswap32(*a2) >> 16;
        a2 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5969288;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_1F5969288;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0,std::allocator<HALS_IOContext_MCP_Impl::attach_ioproc_to_context(AMCP::Power_State)::$_0>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_1F5969288;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t HALS_IOContext_MCP_Impl::GetStreamUsage(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 24 * a4 + 200) - *(a1 + 24 * a4 + 192)) >> 3);
  result = 330382100 * ((*(a1 + 24 * a4 + 200) - *(a1 + 24 * a4 + 192)) >> 3) + 4;
  if (result > a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_IOContext_MCP_Impl.cpp";
      v15 = 1024;
      v16 = 968;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_MCP_Impl::GetStreamUsage: bad property data size for kAudioIOContextProperty_StreamUsage", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  *a2 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 88;
    if (a4)
    {
      v8 = 64;
    }

    v9 = (a1 + v8);
    v10 = v9[1];
    do
    {
      if (v10 <= v7)
      {
        LODWORD(v11) = 1;
      }

      else
      {
        v11 = (*(*v9 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1;
      }

      a2[++v7] = v11;
    }

    while (v5 != v7);
  }

  return result;
}

uint64_t HALS_IOContext_MCP_Impl::SetStreamUsage(HALS_IOContext_MCP_Impl *a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_IOContext_MCP_Impl.cpp";
      v15 = 1024;
      v16 = 560;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioIOContextProperty_StreamUsage", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = (a3 + 0x3FFFFFFFCLL) >> 2;
  if (*a2 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = *a2;
  }

  if (-991146299 * ((*(a1 + 3 * a4 + 25) - *(a1 + 3 * a4 + 24)) >> 3) < v4)
  {
    v4 = -991146299 * ((*(a1 + 3 * a4 + 25) - *(a1 + 3 * a4 + 24)) >> 3);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 64;
    if (!a4)
    {
      v6 = 88;
    }

    v7 = *(a1 + v6);
    do
    {
      v8 = v5 >> 6;
      v9 = 1 << v5;
      if (a2[v5 + 1])
      {
        v10 = *(v7 + 8 * v8) | v9;
      }

      else
      {
        v10 = *(v7 + 8 * v8) & ~v9;
      }

      *(v7 + 8 * v8) = v10;
      ++v5;
    }

    while (v4 != v5);
  }

  HALS_IOContext_MCP_Impl::UpdateContext(a1);
  return 0;
}

void sub_1DE376E40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE376D60);
  }

  _Unwind_Resume(a1);
}

uint64_t **HALS_IOContext_MCP_Impl::GetMasterDevice(HALS_IOContext_MCP_Impl *this)
{
  (*(**(this + 32) + 24))(__p);
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  hal_object_id_for_device_uid = HALS_IOContext_Manager::get_hal_object_id_for_device_uid(*(v4 + 1744), __p);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return hal_object_id_for_device_uid;
}

void sub_1DE376F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float HALS_IOContext_MCP_Impl::get_simple_mcp_property<1852012899u>(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = a1[6];
      if (v2)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1852012899u>(v2);
LABEL_13:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return simple_required;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1[5] + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, a1);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315906;
    v17 = "HALS_IOContext_MCP_Impl.cpp";
    v18 = 1024;
    v19 = 107;
    v20 = 1024;
    v21 = v10;
    v22 = 2080;
    v23 = v11;
    _os_log_debug_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  simple_required = 0.0;
  if (v3)
  {
    goto LABEL_13;
  }

  return simple_required;
}

void sub_1DE377138(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

float AMCP::Core::Core::get_simple_required_property<1852012899u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "cycnbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v1 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(v1))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v1);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "ncyc");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  return *&v1;
}

void sub_1DE3772E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_IOContext_MCP_Impl::SetIOCycleUsage(HALS_IOContext_MCP_Impl *this, float a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = a2;
  simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1852012899u>(this);
  v5 = *(this + 7);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    v6 = v5;
    if (v5)
    {
      v7 = *(this + 6);
      if (v7)
      {
        cf = 0x676C6F626E637963;
        v25 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &cf))
        {
          AMCP::Core::Core::find_operation(&__p, v7, &cf);
          v8 = __p;
          if (__p)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v20);
            }

            else
            {
              v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
              if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v18))
              {
                memset(buf, 0, 32);
                *buf = a2;
                *&buf[32] = AMCP::Implementation::In_Place_Storage<float>::dispatch;
                AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, buf);
                if (*&buf[32])
                {
                  (*&buf[32])(0, buf, 0, 0);
                }
              }
            }
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v10 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v5);
  }

  v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = *v12;
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  else
  {
    v13 = *v12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(*(this + 5) + 16);
    HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(&__p, cf);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_MCP_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 121;
    *&buf[18] = 1024;
    *&buf[20] = v16;
    *&buf[24] = 2080;
    *&buf[26] = p_p;
    _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (HALS_IOContext_MCP_Impl::get_simple_mcp_property<1852012899u>(this) != simple_mcp)
  {
    v14 = *(this + 5);
    v15 = v14[20];
    if (!v15)
    {
      v15 = v14[4];
    }

    strcpy(buf, "cycnbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(v14, v15, 0, 1, buf);
  }
}

void sub_1DE3775E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

unint64_t HALS_IOContext_MCP_Impl::SetBufferFrameSize(HALS_IOContext_MCP_Impl *this, int a2, char a3)
{
  v5 = a2;
  if ((a3 & 1) == 0)
  {
    operator new();
  }

  HALS_IOContext_MCP_Impl::set_simple_mcp_value<1718839674u>(this, &v5);
  return HALS_IOContext_MCP_Impl::GetIOBufferFrameSize(this);
}

unint64_t HALS_IOContext_MCP_Impl::GetIOBufferFrameSize(HALS_IOContext_MCP_Impl *this)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return *(this + 62);
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return *(this + 62);
  }

  v4 = v3;
  if (*(this + 6))
  {
    simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718839674u>(this);
    *(this + 62) = simple_mcp;
  }

  else
  {
    simple_mcp = *(this + 62);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_mcp;
}

double HALS_IOContext_MCP_Impl::GetBufferFrameSizeRange(HALS_IOContext_MCP_Impl *this, AudioValueRange *a2)
{
  simple_mcp = HALS_IOContext_MCP_Impl::get_simple_mcp_property<1718843939u>(this);
  result = simple_mcp;
  a2->mMinimum = simple_mcp;
  a2->mMaximum = HIDWORD(simple_mcp);
  return result;
}

void HALS_IOContext_MCP_Impl::SleepingIsAllowedChanged(HALS_IOContext_MCP_Impl *this, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v2 = *(*(this + 5) + 72);
  if (*(v2 + 44) != a2)
  {
    *(v2 + 44) = a2;
    v4 = *(this + 7);
    if (v4)
    {
      v4 = std::__shared_weak_count::lock(v4);
      v5 = v4;
      if (v4)
      {
        v4 = *(this + 6);
        if (v4)
        {
          AMCP::Core::Core::set_simple_property_value<1936484705u>(v4, &v13);
LABEL_14:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          return;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(this + 5) + 16);
      HALS_IOContext_MCP_Impl::get_debug_device_name(&cf, this);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(__p, cf);
      if (v16 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315906;
      v18 = "HALS_IOContext_MCP_Impl.cpp";
      v19 = 1024;
      v20 = 121;
      v21 = 1024;
      v22 = v10;
      v23 = 2080;
      v24 = v11;
      _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_MCP_Impl core ptr is null: %u\t%s", buf, 0x22u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (v5)
    {
      goto LABEL_14;
    }
  }
}

void sub_1DE3779D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1936484705u>(int8x8_t *a1, _BYTE *a2)
{
  v12 = 0x676C6F62736C6961;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      memset(v8, 0, sizeof(v8));
      LOBYTE(v8[0]) = *a2;
      v9 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,BOOL const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE377B10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE377AF8);
}

void HALS_IOContext_MCP_Impl::PowerChanged(void *a1, int a2)
{
  v2 = 0x676C6F6269707073;
  v3 = 0;
  HALS_IOContext_MCP_Impl::call_mcp_operation_void_function<AMCP::Power_State>(a1, &v2, a2);
}

uint64_t HALS_IOContext_MCP_Impl::Server_Internal_StopIOProcID(HALS_IOContext_MCP_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(this + 5);
    if (*(v3 + 120) && *(v3 + 144) != a2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 136315394;
        *&v7[1] = "HALS_IOContext_MCP_Impl.cpp";
        v8 = 1024;
        v9 = 745;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::StopIOProcID: failed to stop because the IOProcID wasn't nullptr or wasn't registered", v7, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    HALS_IOContext_MCP_Impl::stop(this);
  }

  else
  {
    strcpy(v7, "wppsbolg");
    BYTE1(v7[2]) = 0;
    HIWORD(v7[2]) = 0;
    HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(this, v7);
  }

  strcpy(v7, "tsrtbolg");
  BYTE1(v7[2]) = 0;
  HIWORD(v7[2]) = 0;
  result = HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, v7);
  if (result != 2)
  {
    v5 = *(*(this + 5) + 120);
    if (v5)
    {
      if (*(v5 + 32) == 1)
      {
        *(v5 + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(uint64_t a1, unsigned int *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 48);
  if (v7)
  {
    if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "Core.h";
        v33 = 1024;
        v34 = 198;
        v35 = 2080;
        v36 = "!in_address.has_wildcards()";
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
      }

      abort();
    }

    AMCP::Core::Core::find_operation(&v29, v7, a2);
    if (!v29)
    {
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
      }

      v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = *v15;
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      else
      {
        v16 = *v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "Core.h";
        v33 = 1024;
        v34 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v20, "Operation does not have requested function", v17);
      std::runtime_error::runtime_error(&v21, &v20);
      std::runtime_error::runtime_error(&v22, &v21);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = -1;
      v22.__vftable = &unk_1F5992170;
      v23 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
      v37 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = AMCP::Transport_State, Argument_Types = <>]";
      v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v39 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v19);
    }

    v8 = AMCP::Core::Operation::call_function<AMCP::Transport_State>(v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE37815C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE378164);
  }

  __clang_call_terminate(a1);
}

void HALS_IOContext_MCP_Impl::Server_Internal_StartIOProcID(HALS_IOContext_MCP_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, unsigned int a4)
{
  v4 = (a4 >> 3) & 1;
  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = *(*(this + 5) + 120);
    if (v5 && (*(v5 + 32) & 1) == 0)
    {
      *(v5 + 32) = 1;
    }

    if (v4)
    {
      mHostTime = a3->mHostTime;
      v7 = this;
      v8 = 1;
    }

    else
    {
      v7 = this;
      mHostTime = 0;
      v8 = 0;
    }

    HALS_IOContext_MCP_Impl::start(&v9, v7, mHostTime, v8);
    HALB_MachPort::DestroyPort(name, 1, 0);
  }

  else
  {
    *(this + 6) = 0;
    v9 = 0x676C6F6273747077;
    name = 0;
    HALS_IOContext_MCP_Impl::call_mcp_operation_function<BOOL>(this, &v9);
  }
}

void HALS_IOContext_MCP_Impl::start(uint64_t a1, HALS_IOContext_MCP_Impl *a2, uint64_t a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  strcpy(buf, "frbtbolg");
  buf[9] = 0;
  v14 = 0;
  HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Graph::Timebase_Set>(v9, a2, buf);
  if (v9[3])
  {
    v11[0] = 0;
    v11[1] = 0;
    HALS_System::GetInstance(&v12, 0, v11);
    HALS_IOContext_Manager::find_contexts_and_devices_with_timebases(buf, v12.__vftable[72].what, v9);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v9);
  v6 = *(*(a2 + 5) + 88);
  if (v6)
  {
    v7 = (*(*v6 + 96))(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = HALS_IOContext_MCP_Impl::CopyWorkIntervalPort(a2);
  *a1 = 0;
  *(a1 + 4) = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
}

void sub_1DE3790A4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE3790B0);
  }

  JUMPOUT(0x1DE3791F4);
}

void sub_1DE3790C0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE3790CCLL);
  }

  JUMPOUT(0x1DE3791F4);
}

void sub_1DE3790F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  AMCP::Graph::Timebase_Set::~Timebase_Set(&a14);
  JUMPOUT(0x1DE3791F4);
}

void sub_1DE379104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AMCP::Graph::Timebase_Set::~Timebase_Set(va);
  JUMPOUT(0x1DE3791F4);
}

void sub_1DE379110(uint64_t a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(v3 - 176);
  JUMPOUT(0x1DE379140);
}

void sub_1DE379124(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE3791F4);
}

void sub_1DE379154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v46 - 176);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a44);
  MEMORY[0x1E12C0F00](&a42);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (v45)
  {
    __cxa_free_exception(v44);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a12);
  AMCP::Node_Description::~Node_Description(&a14);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_MCP_Impl::CopyWorkIntervalPort(HALS_IOContext_MCP_Impl *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2 && *(this + 6))
    {
      HALS_IOContext_MCP_Impl::get_simple_mcp_property<2003267184u>(&v10, this);
      v4 = caulk::mach::os_workgroup_managed::copy_mach_port(&v10);
      caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&v10);
LABEL_14:
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      return v4;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "HALS_IOContext_MCP_Impl.cpp";
    v12 = 1024;
    v13 = 1070;
    _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d HALS_IOContext_MCP_Impl::CopyWorkIntervalPort - Workgroup Context pointer is invalid.", &v10, 0x12u);
  }

  v4 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1DE37934C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Node_Description::~Node_Description(void **this)
{
  for (i = 12; i != 6; i -= 3)
  {
    v3 = &this[i];
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t AMCP::Core::Core::call_operation_function<BOOL,unsigned long long>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 198;
      v48 = 2080;
      v49 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v33, a1, a2);
  v7 = v33;
  if (!v33)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <unsigned long long>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v52 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v8 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>();
  v9 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8);
  if (!v9)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Operation does not have requested function", v32);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <unsigned long long>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>(), (v9 = (*(v10 + 7))(4, v10 + 24, 0, buf)) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Invalid cast", v30);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <unsigned long long>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  *buf = a3;
  v11 = *(v9 + 3);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v12 = (*(*v11 + 48))(v11, buf);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  return v12;
}

void sub_1DE379B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

double HALS_IOContext_MCP_Impl::TranslateTime(HALS_IOContext_MCP_Impl *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0x676C6F6274726E74;
  v14 = 0;
  v4 = *&a2->mRateScalar;
  v21 = *&a2->mSampleTime;
  v22 = v4;
  v5 = *&a2->mSMPTETime.mHours;
  v23[0] = *&a2->mSMPTETime.mSubframes;
  v23[1] = v5;
  v6 = *(this + 7);
  if (v6 && (v8 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v9 = v8;
    v10 = *(this + 6);
    if (v10)
    {
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23[0];
      v20[3] = v23[1];
      AMCP::Core::Core::call_operation_function<std::optional<CA::TimeStamp>,CA::TimeStamp>(&v15, v10, &v13, v20);
    }

    else
    {
      v15 = 0;
      v19 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    v21 = v16;
    v22 = v17;
    v23[0] = *v18;
    result = *&v18[15];
    *(v23 + 15) = *&v18[15];
    if (v19)
    {
      LOBYTE(a3->mSampleTime) = v15;
      v12 = v22;
      *(&a3->mSampleTime + 1) = v21;
      *(&a3->mRateScalar + 1) = v12;
      *(&a3->mSMPTETime.mSubframes + 1) = v23[0];
      result = *(v23 + 15);
      *&a3->mSMPTETime.mHours = *(v23 + 15);
    }
  }

  else
  {
    v21 = v16;
    v22 = v17;
    v23[0] = *v18;
    result = *&v18[15];
    *(v23 + 15) = *&v18[15];
  }

  return result;
}

void sub_1DE379D6C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE379D70);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Core::call_operation_function<std::optional<CA::TimeStamp>,CA::TimeStamp>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 198;
      *&buf[18] = 2080;
      *&buf[20] = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v38, a2, a3);
  v8 = v38;
  if (!v38)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v41, "Operation does not have requested function", v32);
    std::runtime_error::runtime_error(&v40, &v41);
    std::runtime_error::runtime_error(&v34, &v40);
    *(&v35 + 1) = 0;
    v36 = 0uLL;
    LODWORD(v37) = -1;
    v34.__vftable = &unk_1F5992170;
    *&v35 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
    *&v52 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <CA::TimeStamp>]";
    *(&v52 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    LODWORD(v53) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  v9 = *(a4 + 16);
  v34 = *a4;
  v35 = v9;
  v10 = *(a4 + 48);
  v36 = *(a4 + 32);
  v37 = v10;
  v11 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>();
  v12 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11);
  if (!v12)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *v29;
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    else
    {
      v30 = *v29;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Operation does not have requested function", v33);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    *&v52 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <CA::TimeStamp>]";
    *(&v52 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v53) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v13 = v12;
  if (!*(v12 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>(), (v12 = (*(v13 + 7))(4, v13 + 24, 0, buf)) == 0))
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Invalid cast", v31);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    *&v52 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <CA::TimeStamp>]";
    *(&v52 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v53) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v52 = v36;
  v53 = v37;
  *buf = v34;
  *&buf[16] = v35;
  v14 = *(v12 + 3);
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v14 + 48))(v14, buf);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

void sub_1DE37A50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::runtime_error a19, uint64_t a20, uint64_t a21, void *a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::runtime_error a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19.__vftable)
  {
    operator delete(a19.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v38 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a34);
  std::runtime_error::~runtime_error(&a33);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v37)
  {
    __cxa_free_exception(v36);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v38 - 129));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(CA::TimeStamp)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[317];
}

double HALS_IOContext_MCP_Impl::GetCurrentTime(HALS_IOContext_MCP_Impl *this, AudioTimeStamp *a2)
{
  result = 0.0;
  *&a2->mSMPTETime.mSubframes = 0u;
  *&a2->mSMPTETime.mHours = 0u;
  *&a2->mSampleTime = 0u;
  *&a2->mRateScalar = 0u;
  v4 = *(this + 32);
  if (v4 && (*(*v4 + 120))(v4))
  {
    (*(**(this + 32) + 32))(v8);
    if (*(&v8[0] + 1))
    {
      v6 = v8[1];
      *&a2->mSampleTime = v8[0];
      *&a2->mRateScalar = v6;
      result = *&v9;
      v7 = v10;
      *&a2->mSMPTETime.mSubframes = v9;
      *&a2->mSMPTETime.mHours = v7;
    }
  }

  return result;
}

BOOL HALS_IOContext_MCP_Impl::ThreadHasBeenStopped(HALS_IOContext_MCP_Impl *this)
{
  v2 = 0x676C6F6274727374;
  v3 = 0;
  return HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, &v2) == 0;
}

uint64_t HALS_IOContext_MCP_Impl::ExecuteWorkWithControlAndIOThreadLocker(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return a2(&v5);
}

uint64_t HALS_IOContext_MCP_Impl::ExecuteWorkWithIOThreadUnlocker(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return a2(&v5);
}

uint64_t HALS_IOContext_MCP_Impl::ExecuteWorkWithIOThreadLocker(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return a2(&v5);
}

BOOL HALS_IOContext_MCP_Impl::IsIOThreadRunning(HALS_IOContext_MCP_Impl *this)
{
  v2 = 0x676C6F6274727374;
  v3 = 0;
  return HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, &v2) != 0;
}

BOOL HALS_IOContext_MCP_Impl::IsIORunning(HALS_IOContext_MCP_Impl *this)
{
  v2 = 0x676C6F6274727374;
  v3 = 0;
  return HALS_IOContext_MCP_Impl::call_mcp_operation_function<AMCP::Transport_State>(this, &v2) != 0;
}

double HALS_IOContext_MCP_Impl::GetDeviceSet@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

void HALS_IOContext_MCP_Impl::reassert_description_for_device_change(CFTypeRef *this, const __CFString *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  HALS_System::GetInstance(&v41, 0, &v39);
  v4 = *(v41 + 1744);
  applesauce::CF::DictionaryRef::from_get(&cf, this[14]);
  applesauce::CF::StringRef::from_get(&v37, a2);
  if (!cf)
  {
    v16 = 0;
    goto LABEL_69;
  }

  os_unfair_lock_lock(v4 + 4);
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v44 = v5;
  v6 = v37;
  if (v37)
  {
    CFRetain(v37);
  }

  v43 = v6;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
  *theArray = v7;
  if (!v7)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Could not construct");
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(v5, v7);
  CFRelease(v7);
  if (!v8)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *theArray = 136315650;
      *&theArray[4] = "HALS_IOContext_Manager_Impl.cpp";
      v55 = 1024;
      v56 = 109;
      v57 = 2080;
      v58 = "in_aggregate_description->has_key(AMCP::CF::String{kAudioAggregateDeviceUIDKey})";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s We should have already exited if the aggregate UID were missing.", theArray, 0x1Cu);
    }

    abort();
  }

  v10 = CFStringCreateWithBytes(0, "clock", 5, 0x8000100u, 0);
  *theArray = v10;
  if (!v10)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v51 = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v53, v5, v10, &v51);
  if (v51)
  {
    CFRelease(v51);
  }

  CFRelease(v10);
  v11 = v53;
  if (v53 && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v53, &v43) == kCFCompareEqualTo)
  {
    v16 = 1;
    goto LABEL_63;
  }

  v12 = CFStringCreateWithBytes(0, "subdevices", 10, 0x8000100u, 0);
  v51 = v12;
  if (!v12)
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(theArray, v5, v12);
  CFRelease(v12);
  if (theArray[8] != 1)
  {
    v16 = 0;
    goto LABEL_62;
  }

  v13 = *theArray;
  if (!*theArray)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v36, "Could not construct");
    __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!CFArrayGetCount(*theArray))
  {
    v16 = 0;
    goto LABEL_60;
  }

  applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v51, v13, 0);
  applesauce::CF::details::at_as<applesauce::CF::ArrayRef>(&v49, v13);
  v14 = v50;
  Count = CFArrayGetCount(v13);
  v17 = Count;
  if (!Count)
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  v18 = 0;
  v16 = 1;
  do
  {
    applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v47, v13, v18);
    std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(&v51, &v47);
    if (v48 == 1 && v47)
    {
      CFRelease(v47);
    }

    if (v14)
    {
      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&v47, v13, v18);
      std::__optional_storage_base<applesauce::CF::DictionaryRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DictionaryRef,false>>(&v51, &v47);
      if (v48 == 1 && v47)
      {
        CFRelease(v47);
      }

      v19 = v51;
      if (!v51)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v28, "Could not construct");
        __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v20 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
      v46 = v20;
      if (!v20)
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Could not construct");
        __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v45 = 0;
      applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v47, v19, v20, &v45);
      v21 = v53;
      v11 = v47;
      v53 = v47;
      v47 = v21;
      if (v21)
      {
        CFRelease(v21);
      }

      if (v45)
      {
        CFRelease(v45);
      }

      goto LABEL_46;
    }

    if (v52)
    {
      v22 = v51;
      if (!v51)
      {
        v35 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v35, "Could not construct");
        __cxa_throw(v35, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v20 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
      v46 = v20;
      if (!v20)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v34, "Could not construct");
        __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v45 = 0;
      applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v47, v22, v20, &v45);
      v23 = v53;
      v11 = v47;
      v53 = v47;
      v47 = v23;
      if (v23)
      {
        CFRelease(v23);
      }

      if (v45)
      {
        CFRelease(v45);
      }

LABEL_46:
      CFRelease(v20);
      if (!v11)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v11 = v53;
    if (!v53)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v11, &v43) == kCFCompareEqualTo)
    {
      break;
    }

LABEL_50:
    v16 = ++v18 < v17;
  }

  while (v17 != v18);
  if ((v50 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (v49)
  {
    CFRelease(v49);
  }

LABEL_56:
  if (v52 == 1 && v51)
  {
    CFRelease(v51);
  }

  if (theArray[8])
  {
LABEL_60:
    if (*theArray)
    {
      CFRelease(*theArray);
    }
  }

LABEL_62:
  if (v11)
  {
LABEL_63:
    CFRelease(v11);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  os_unfair_lock_unlock(v4 + 4);
LABEL_69:
  if (v37)
  {
    CFRelease(v37);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v16)
  {
    HALS_IOContext_MCP_Impl::UpdateContext(this);
  }
}

void sub_1DE37B190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_MCP_Impl::DeviceArrived(CFTypeRef *this, HALS_Device *a2)
{
  v3 = (*(*a2 + 208))(a2);

  HALS_IOContext_MCP_Impl::reassert_description_for_device_change(this, v3);
}

uint64_t HALS_IOContext_MCP_Impl::GetSimpleStreamUsage(HALS_IOContext_MCP_Impl *this)
{
  v2 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 8), 0, *(this + 9));
  v3 = std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 11), 0, *(this + 12));
  if (v2 >= 1 && v3 > 0)
  {
    return 6;
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 <= 0;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 <= 0;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t HALS_IOContext_MCP_Impl::IsStreamEnabledAtIndex(HALS_IOContext_MCP_Impl *this, int a2, unsigned int a3)
{
  v3 = 88;
  if (a2)
  {
    v3 = 64;
  }

  v4 = (this + v3);
  if (v4[1] <= a3)
  {
    return 1;
  }

  else
  {
    return (*(*v4 + ((a3 >> 3) & 0x1FFFFFF8)) >> a3) & 1;
  }
}

uint64_t HALS_IOContext_MCP_Impl::GetNumberActiveStreams(HALS_IOContext_MCP_Impl *this, int a2)
{
  v2 = 88;
  if (a2)
  {
    v2 = 64;
  }

  v3 = 96;
  if (a2)
  {
    v3 = 72;
  }

  return std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + v2), 0, *(this + v3));
}

void HALS_IOContext_MCP_Impl::Deactivate(HALS_IOContext_MCP_Impl *this)
{
  v9[0] = 0;
  v9[1] = 0;
  HALS_System::GetInstance(&v10, 0, v9);
  HALS_System::ProcessPropertyChanged(v10, **(*(this + 5) + 72), 1885632035, 1869968496, 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v8[0] = 0;
  v8[1] = 0;
  HALS_System::GetInstance(&v10, 0, v8);
  HALS_System::ProcessPropertyChanged(v10, **(*(this + 5) + 72), 1885632035, 1768845428, 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v2 = *(this + 5);
  v3 = *(v2 + 88);
  if (v3)
  {
    (*(*v3 + 120))(v3);
    v2 = *(this + 5);
  }

  v4 = *(v2 + 16);
  v5 = *(this + 58);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN23HALS_IOContext_MCP_Impl10DeactivateEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3506;
  v7 = v4;
  AMCP::Utility::Dispatch_Queue::async(v5, block);
}

void sub_1DE37B764(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN23HALS_IOContext_MCP_Impl10DeactivateEv_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  HALS_IOContext_Manager::destroy_context_core_for_hal_object_id(*(v4 + 1744), *(a1 + 32));
  v2 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE37B800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext_MCP_Impl::~HALS_IOContext_MCP_Impl(HALS_IOContext_MCP_Impl *this)
{
  HALS_IOContext_MCP_Impl::~HALS_IOContext_MCP_Impl(this);

  JUMPOUT(0x1E12C1730);
}

{
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 59, 0);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 58, 0);
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<HALB_IOBufferManager_Server>::reset[abi:ne200100](this + 30, 0);
  for (i = 216; i != 168; i -= 24)
  {
    v9 = (this + i);
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

HALB_IOBufferManager_Server *std::unique_ptr<HALB_IOBufferManager_Server>::reset[abi:ne200100](HALB_IOBufferManager_Server **a1, HALB_IOBufferManager_Server *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALB_IOBufferManager_Server::~HALB_IOBufferManager_Server(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_IORawClock::~HALS_IORawClock(void **this)
{
  HALS_IORawClock::~HALS_IORawClock(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59694E0;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100]((this + 1));
}

uint64_t std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HALS_IOClock::~HALS_IOClock(HALS_IOClock *this)
{
  HALS_IOClock::~HALS_IOClock(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5969500;
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](this + 608);
  v2 = *(this + 67);
  if (v2)
  {
    *(this + 68) = v2;
    operator delete(v2);
  }

  HALS_IORawClock::~HALS_IORawClock(this + 2);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::CheckHostTimeOutOfBounds(unsigned long long)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Out of bounds host time detected, host time %llu, out of bound time %llu", &v11, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::CheckHostTimeOutOfBounds(unsigned long long)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_3,std::tuple<char const*,int,char const*,char const*,double,double,double>>::perform(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v14 = 136316674;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 2080;
    v19 = v8;
    v20 = 2080;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Sample time %s consecutive, HostTime %s increasing, Ring buffer size: %f, sample diff: %f, host diff %f", &v14, 0x44u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_3,std::tuple<char const*,int,char const*,char const*,double,double,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_2,std::tuple<char const*,int,char const*,char const*>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Sample time is%s consecutive, host time is%s consecutive.", &v11, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_2,std::tuple<char const*,int,char const*,char const*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Zero timestamp seed changed", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IORawClock::Update: Re-anchoring IO timeline. Initial host time is out of bounds. ZTS Host Time: %llu, OoB Time: %llu", &v11, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IORawClock::Update(HALS_ZeroTimeStamp,double,BOOL &,unsigned int &)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__value_func<unsigned long long ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
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

void sub_1DE37C560(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<HALS_IOClock::HALS_IOClock(unsigned int,unsigned int,std::string const&)::$_0,std::allocator<HALS_IOClock::HALS_IOClock(unsigned int,unsigned int,std::string const&)::$_0>,unsigned long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12HALS_IOClockC1EjjRKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOClock::HALS_IOClock(uint64_t a1, int a2, int a3, __int128 *a4)
{
  v9[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5969500;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = &unk_1F59694E0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 60) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v5;
  }

  v6 = 0;
  *(a1 + 88) = 1;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 188) = 8;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x6969726600000001;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  do
  {
    v7 = (a1 + v6);
    v7[25] = 0;
    v7[26] = 0;
    v7[28] = 0;
    v7[29] = 0;
    v6 += 40;
    v7[27] = 0x3FF0000000000000;
  }

  while (v6 != 320);
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 556) = 0u;
  *(a1 + 572) = 12;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 632) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 592) = 0u;
  v9[0] = &unk_1F59696F8;
  v9[3] = v9;
  std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](v9, (a1 + 608));
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v9);
  return a1;
}

uint64_t HALS_IOClock::Reset(HALS_IOClock *this, double a2, int a3, int a4, char a5, int a6)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[3] = 0;
  if (a6)
  {
    v16[0] = &unk_1F5969788;
    v16[1] = this + 608;
    v16[3] = v16;
    std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](v16, v15);
    std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v16);
  }

  std::__function::__value_func<unsigned long long ()(void)>::__value_func[abi:ne200100](v14, v15);
  *(this + 22) = a3;
  *(this + 92) = a5;
  std::__function::__value_func<unsigned long long ()(void)>::__value_func[abi:ne200100](v16, v14);
  std::__function::__value_func<unsigned long long ()(void)>::swap[abi:ne200100](v16, this + 3);
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v16);
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 24000000.0 / a2;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0;
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v14);
  *(this + 44) = a3;
  *(this + 45) = a4;
  *(this + 184) = a5;
  *(this + 48) = 0;
  *(this + 65) = 0;
  bzero(this + 200, 40 * *(this + 47));
  v11.n128_u64[0] = *(this + 14);
  HALS_IOClock::ResetFilter(this, v11, v12);
  *(this + 146) = 0;
  *(this + 37) = 0u;
  return std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](v15);
}

void sub_1DE37C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<unsigned long long ()(void)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,std::allocator<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0>,unsigned long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12HALS_IOClock5ResetEdjjjbbE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,std::allocator<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0>,unsigned long long ()(void)>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1) + 24000;
}

uint64_t std::__function::__func<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0,std::allocator<HALS_IOClock::Reset(double,unsigned int,unsigned int,unsigned int,BOOL,BOOL)::$_0>,unsigned long long ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969788;
  a2[1] = v2;
  return result;
}

void AMCP::IOAudio2::Device::Device(uint64_t a1, uint64_t a2, unsigned int *a3, CFDictionaryRef *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if (*a4)
  {
    applesauce::CF::details::find_at_key<applesauce::CF::StringRef,__CFString const*>((a1 + 8), *a4, @"device UID");
    *(a1 + 16) = 0;
    v7 = *(a1 + 8);
    if (v7)
    {
      applesauce::CF::convert_to<std::string,0>(queue, v7);
      if (v30 >= 0)
      {
        v9 = queue;
      }

      else
      {
        v9 = queue[0];
      }

      caulk::make_string(__p, "%s Work Queue", v8, v9);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0].__r_.__value_.__r.__words[0];
      }

      v11 = dispatch_queue_create(v10, 0);
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(a1 + 24, v11);
      if (v11)
      {
        dispatch_release(v11);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v30 < 0)
      {
        operator delete(queue[0]);
      }

      v12 = *a3;
      *(a1 + 360) = v12;
      if (!v12 || (v12 = IOObjectRetain(v12), v13 = v12, !v12))
      {
        *(a1 + 368) = 0;
        *(a1 + 376) = 0;
        *(a1 + 384) = AMCP::Utility::Mach_Port::create_port(v12);
        *(a1 + 388) = 257;
        *(a1 + 392) = 850045863;
        *(a1 + 400) = 0u;
        *(a1 + 416) = 0u;
        *(a1 + 432) = 0u;
        *(a1 + 448) = 0u;
        *(a1 + 464) = *a4;
        *a4 = 0;
        *(a1 + 520) = 0u;
        v14 = (a1 + 520);
        *(a1 + 536) = 0;
        *(a1 + 488) = 0u;
        *(a1 + 504) = 0u;
        *(a1 + 472) = 0u;
        v15 = *(a1 + 464);
        if (v15)
        {
          __p[0].__r_.__value_.__r.__words[0] = 0;
          applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v27, v15, @"input streams", __p);
          if (__p[0].__r_.__value_.__r.__words[0])
          {
            CFRelease(__p[0].__r_.__value_.__l.__data_);
          }

          AMCP::IOAudio2::Stream::create_from_dictionary_list(&__p[0].__r_.__value_.__l.__data_, a1, 1, &v27);
          std::vector<std::shared_ptr<AMCP::IOAudio2::Stream>>::__vdeallocate((a1 + 496));
          *(a1 + 496) = __p[0];
          memset(__p, 0, 24);
          queue[0] = __p;
          std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](queue);
          v16 = *(a1 + 464);
          if (v16)
          {
            __p[0].__r_.__value_.__r.__words[0] = 0;
            applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v26, v16, @"output streams", __p);
            if (__p[0].__r_.__value_.__r.__words[0])
            {
              CFRelease(__p[0].__r_.__value_.__l.__data_);
            }

            AMCP::IOAudio2::Stream::create_from_dictionary_list(&__p[0].__r_.__value_.__l.__data_, a1, 0, &v26);
            std::vector<std::shared_ptr<AMCP::IOAudio2::Stream>>::__vdeallocate((a1 + 472));
            *(a1 + 472) = __p[0];
            memset(__p, 0, 24);
            queue[0] = __p;
            std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](queue);
            v17 = *(a1 + 464);
            if (v17)
            {
              __p[0].__r_.__value_.__r.__words[0] = 0;
              applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v25, v17, @"controls", __p);
              if (__p[0].__r_.__value_.__r.__words[0])
              {
                CFRelease(__p[0].__r_.__value_.__l.__data_);
              }

              AMCP::IOAudio2::Control::create_from_dictionary_list(__p, a1, &v25);
              if (*v14)
              {
                std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100]((a1 + 520));
                operator delete(*v14);
                *v14 = 0;
                *(a1 + 528) = 0;
                *(a1 + 536) = 0;
              }

              *v14 = *&__p[0].__r_.__value_.__l.__data_;
              *(a1 + 536) = *(&__p[0].__r_.__value_.__l + 2);
              memset(__p, 0, 24);
              queue[0] = __p;
              std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](queue);
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(__p, (*(*(*a1 + 32) + 32) + 368));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (*(*(*a1 + 32) + 32) + 704));
              AMCP::Utility::Dispatch_Queue::Dispatch_Queue(object, &__p[0].__r_.__value_.__l.__data_);
              dispatch_set_target_queue(object[0], queue[0]);
              AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(object);
              operator new();
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v21 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v21, "Could not construct");
          __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Could not construct");
        __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v23 = __cxa_allocate_exception(0x20uLL);
      v24 = std::system_category();
      MEMORY[0x1E12C10C0](v23, v13, v24, "Error on Retain");
      __cxa_throw(v23, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(v18);
  __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE37E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34)
{
  __cxa_free_exception(v36);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v40;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v39;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v38;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v34 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v37);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v34 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v34 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v34 + 24));
  applesauce::CF::StringRef::~StringRef(v35);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  JUMPOUT(0x1DE37E4F8);
}

void sub_1DE37E190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35)
{
  if (!*(v35 - 128))
  {
    std::optional<applesauce::CF::NumberRef>::~optional(&a19);
    applesauce::CF::StringRef::~StringRef(&a35);
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a23);
    JUMPOUT(0x1DE37E518);
  }

  JUMPOUT(0x1DE37E208);
}

void sub_1DE37E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, _Unwind_Exception *exception_object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34, const void *a35)
{
  if (exception_object)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](exception_object);
  }

  std::optional<applesauce::CF::NumberRef>::~optional(&a19);
  applesauce::CF::StringRef::~StringRef(&a35);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a23);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v39;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = a11;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v38;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v35 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v37);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v35 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v35 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v35 + 24));
  applesauce::CF::StringRef::~StringRef(v36);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  JUMPOUT(0x1DE37E4F8);
}

void sub_1DE37E288(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int buf, int a40, int a41, __int16 a42, __int16 a43, __int16 a44, __int16 a45)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v45, 0x1000C4052888210, a3, a4, a5, a6, a7, a8);
    v49 = __cxa_begin_catch(a1);
    v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if (a2 == 2)
    {
      v51 = v49;
      if ((v50 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v49);
      }

      v53 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v52 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        v54 = *v53;
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      else
      {
        v54 = *v53;
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v58 = (*(*v51 + 16))(v51);
        buf = 136315650;
        *(v46 + 4) = "IOAudio2_Device.cpp";
        a42 = 1024;
        *(v46 + 14) = 86;
        a45 = 2080;
        *(v46 + 20) = v58;
        _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver: %s", &buf, 0x1Cu);
      }

      __cxa_rethrow();
    }

    if ((v50 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = *v56;
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    else
    {
      v57 = *v56;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *(v46 + 4) = "IOAudio2_Device.cpp";
      a42 = 1024;
      *(v46 + 14) = 91;
      _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d failed to open a connect to the driver", &buf, 0x12u);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE37E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34)
{
  __cxa_end_catch();
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v39;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v38;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v37;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v34 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v36);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v34 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v34 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v34 + 24));
  applesauce::CF::StringRef::~StringRef(v35);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E468(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE37E478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a49);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v54;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v53;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v52;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v49 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v51);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v49 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v49 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v49 + 24));
  applesauce::CF::StringRef::~StringRef(v50);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, const void *a33, const void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](&a39);
  if (v46)
  {
    dispatch_release(v46);
  }

  MEMORY[0x1E12C1730](v45, 0x1020C40DCC910D7);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v44;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v43;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v42;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v41);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v39 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v39 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v39 + 24));
  applesauce::CF::StringRef::~StringRef(v40);
  JUMPOUT(0x1DE37E620);
}

void sub_1DE37E520(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, io_object_t *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(&a39);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error((v47 - 136));
  if (v41)
  {
    __cxa_free_exception(v46);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a36);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x2B0]);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&STACK[0x400]);
  applesauce::CF::ArrayRef::~ArrayRef(&a32);
  applesauce::CF::ArrayRef::~ArrayRef(&a33);
  applesauce::CF::ArrayRef::~ArrayRef(&a34);
  STACK[0x400] = v45;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v44;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  STACK[0x400] = v43;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x400]);
  applesauce::CF::DictionaryRef::~DictionaryRef((v39 + 464));
  AMCP::Utility::Mach_Port::~Mach_Port(v42);
  std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100]((v39 + 376), 0);
  std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100]((v39 + 368), 0);
  applesauce::iokit::io_object_holder::~io_object_holder(a12);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v39 + 24));
  applesauce::CF::StringRef::~StringRef(v40);
  JUMPOUT(0x1DE37E620);
}

uint64_t AMCP::Utility::Dispatch_Queue::Dispatch_Queue(uint64_t a1, dispatch_object_t object)
{
  *a1 = object;
  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 850045863;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 850045863;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = dispatch_semaphore_create(0);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void std::vector<std::shared_ptr<AMCP::IOAudio2::Stream>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t applesauce::iokit::io_service_notifications::io_service_notifications(uint64_t a1, io_service_t a2, NSObject **a3, const char *a4, uint64_t a5)
{
  applesauce::iokit::details::io_notificationport_holder::io_notificationport_holder(a1);
  v10 = *a3;
  *(a1 + 8) = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a5 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

  if (v11 != a5)
  {
    v11 = (*(*v11 + 16))(v11);
LABEL_6:
    *(a1 + 40) = v11;
    goto LABEL_8;
  }

  *(a1 + 40) = a1 + 16;
  (*(**(a5 + 24) + 24))(*(a5 + 24), a1 + 16);
LABEL_8:
  *(a1 + 48) = 0;
  v12 = (a1 + 48);
  IONotificationPortSetDispatchQueue(*a1, *(a1 + 8));
  notification = 0;
  v13 = IOServiceAddInterestNotification(*a1, a2, a4, applesauce::iokit::io_service_notifications::notification_callback_, a1, &notification);
  if (v13)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v17 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v13, v17, "Error on IOServiceAddInterestNotification");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v14 = *v12;
  *v12 = notification;
  if (v14)
  {
    IOObjectRelease(v14);
  }

  return a1;
}

void sub_1DE37E87C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v4);
  applesauce::iokit::io_object_holder::~io_object_holder(v3);
  std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](v2);
  v6 = *(v1 + 8);
  if (v6)
  {
    dispatch_release(v6);
  }

  applesauce::iokit::details::io_notificationport_holder::~io_notificationport_holder(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<applesauce::iokit::io_service_notifications>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      IOObjectRelease(v3);
    }

    std::__function::__value_func<void ()(unsigned int,void *)>::~__value_func[abi:ne200100](v2 + 16);
    v4 = *(v2 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    IONotificationPortDestroy(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

io_connect_t *applesauce::iokit::io_connect_holder::io_connect_holder(io_connect_t *connect, io_service_t service)
{
  *connect = 0;
  v3 = IOServiceOpen(service, *MEMORY[0x1E69E9A60], 0, connect);
  if (v3)
  {
    v5 = v3;
    std::string::basic_string[abi:ne200100]<0>(&v12, "Could not create ioconnect for service ");
    v6 = mach_error_string(v5);
    v7 = strlen(v6);
    v8 = std::string::append(&v12, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!*connect)
  {
    std::string::basic_string[abi:ne200100]<0>(&v13, "Could not create ioservice for service ");
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, &v13);
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return connect;
}

void sub_1DE37EB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

io_connect_t **std::unique_ptr<applesauce::iokit::io_connect_holder>::reset[abi:ne200100](io_connect_t **result, io_connect_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    IOConnectRelease(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

__n128 boost::exception_detail::error_info_injector<std::system_error>::error_info_injector(std::runtime_error *a1, uint64_t a2)
{
  v3 = std::runtime_error::runtime_error(a1, a2);
  v3->n128_u64[0] = MEMORY[0x1E69E5510] + 16;
  result = *(a2 + 16);
  v3[1] = result;
  v3[3].n128_u64[0] = 0;
  v3[3].n128_u64[1] = 0;
  v3[4].n128_u32[0] = -1;
  v3->n128_u64[0] = &unk_1F5991520;
  v3[2].n128_u64[0] = &unk_1F5991548;
  v3[2].n128_u64[1] = 0;
  return result;
}

void AMCP::Utility::Mach_Port::~Mach_Port(AMCP::Utility::Mach_Port *this)
{
  AMCP::Utility::Mach_Port::reset(this);
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::mutex::~mutex((this + 8));
}

void AMCP::IOAudio2::Device::update_core_common(const __CFDictionary **a1, float *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1[58];
  if (v2)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(&v9, v2, @"device name");
    if (v10)
    {
      v17 = 0x676C6F626C6E616DLL;
      LODWORD(v18) = 0;
      AMCP::Core::Operation_Utilities::make_constant_property<applesauce::CF::StringRef>(&v11, &v17, v9);
    }

    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "IOAudio2_Device.cpp";
      v13 = 1024;
      v14 = 124;
      connect_2 = 2080;
      v16 = "device_name_opt.operator BOOL() == true";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Devices have to have a name", &v11, 0x1Cu);
    }

    abort();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(exception);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE380D28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t connect, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (a2)
  {
    __cxa_free_exception(v61);
    applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a61);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE381544(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device10build_coreEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::operator()(uint64_t a1, const __CFDictionary **a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_26;
  }

  v3 = *(a1 + 8);
  LODWORD(valuePtr) = 0;
  cf[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf[0])
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(v22, *a2, @"kind", cf);
  v4 = v22[0];
  if (!v22[0])
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::convert_to<unsigned long long,0>(v22[0]);
  CFRelease(v4);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
LABEL_26:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  cf[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf[0])
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(v22, *a2, @"UsageCaseSampleRate", cf);
  v6 = v22[0];
  if (!v22[0])
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = applesauce::CF::convert_to<double,0>(v22[0]);
  CFRelease(v6);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v5 - 2 >= 4)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_1DE7AA190[v5 - 2];
  }

  AMCP::IOAudio2::Device::get_device_connection(&connection, **(v3 + 376));
  v9 = connection;
  if (!connection)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  input[0] = v8;
  input[1] = vcvtd_n_u64_f64(v7 - floor(v7), 0x20uLL) + (vcvtmd_u64_f64(v7) << 32);
  memset(v22, 0, sizeof(v22));
  outputCnt = 0;
  memset(cf, 0, sizeof(cf));
  v19 = 0;
  if (IOConnectCallMethod(connection, 0xCu, input, 2u, 0, 0, 0, &outputCnt, 0, &v19))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v22, outputCnt);
  if (v19)
  {
    std::vector<unsigned char>::__append(cf, v19);
    if (cf[0])
    {
      operator delete(cf[0]);
    }
  }

  if (v22[0])
  {
    operator delete(v22[0]);
  }

  return IOConnectRelease(v9);
}